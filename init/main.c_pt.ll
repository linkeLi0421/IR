; ModuleID = '/llk/IR/init/main.c_pt.bc'
source_filename = "../init/main.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_system_state:\09\09\09\09\09"
module asm "\09.asciz \09\22system_state\22\09\09\09\09\09"
module asm "__kstrtabns_system_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_static_key_initialized:\09\09\09\09\09"
module asm "\09.asciz \09\22static_key_initialized\22\09\09\09\09\09"
module asm "__kstrtabns_static_key_initialized:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reset_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22reset_devices\22\09\09\09\09\09"
module asm "__kstrtabns_reset_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_loops_per_jiffy:\09\09\09\09\09"
module asm "\09.asciz \09\22loops_per_jiffy\22\09\09\09\09\09"
module asm "__kstrtabns_loops_per_jiffy:\09\09\09\09\09"
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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.74 }
%union.anon.74 = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.25 }
%struct.llist_node = type { ptr }
%union.anon.25 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.26 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.56 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.static_key_false = type { %struct.static_key }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_initcall_level = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_initcall_start = type { %struct.trace_entry, ptr, [0 x i8] }
%struct.trace_event_raw_initcall_finish = type { %struct.trace_entry, ptr, i32, [0 x i8] }
%struct.blacklist_entry = type { %struct.list_head, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_initcall_level = internal constant [15 x i8] c"initcall_level\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_initcall_level = dso_local global %struct.static_call_key { ptr @__traceiter_initcall_level }, align 4
@__tracepoint_initcall_level = dso_local global %struct.tracepoint { ptr @__tpstrtab_initcall_level, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_initcall_level, ptr null, ptr @__traceiter_initcall_level, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_initcall_level = internal constant ptr @__tracepoint_initcall_level, section "__tracepoints_ptrs", align 4
@__tpstrtab_initcall_start = internal constant [15 x i8] c"initcall_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_initcall_start = dso_local global %struct.static_call_key { ptr @__traceiter_initcall_start }, align 4
@__tracepoint_initcall_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_initcall_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_initcall_start, ptr null, ptr @__traceiter_initcall_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_initcall_start = internal constant ptr @__tracepoint_initcall_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_initcall_finish = internal constant [16 x i8] c"initcall_finish\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_initcall_finish = dso_local global %struct.static_call_key { ptr @__traceiter_initcall_finish }, align 4
@__tracepoint_initcall_finish = dso_local global %struct.tracepoint { ptr @__tpstrtab_initcall_finish, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_initcall_finish, ptr null, ptr @__traceiter_initcall_finish, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_initcall_finish = internal constant ptr @__tracepoint_initcall_finish, section "__tracepoints_ptrs", align 4
@str__initcall__trace_system_name = internal constant [9 x i8] c"initcall\00", align 1
@trace_event_fields_initcall_level = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.19, %union.anon { %struct.anon { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_initcall_level = internal global %struct.trace_event_class { ptr @str__initcall__trace_system_name, ptr @trace_event_raw_event_initcall_level, ptr @perf_trace_initcall_level, ptr @trace_event_reg, ptr @trace_event_fields_initcall_level, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_initcall_level, i64 24), ptr getelementptr (i8, ptr @event_class_initcall_level, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_initcall_level = internal global %struct.trace_event_functions { ptr @trace_raw_output_initcall_level, ptr null, ptr null, ptr null }, align 4
@print_fmt_initcall_level = internal global [29 x i8] c"\22level=%s\22, __get_str(level)\00", align 1
@event_initcall_level = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_initcall_level, %union.anon.0 { ptr @__tracepoint_initcall_level }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_initcall_level }, ptr @print_fmt_initcall_level, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_initcall_level = internal global ptr @event_initcall_level, section "_ftrace_events", align 4
@trace_event_fields_initcall_start = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.22, %union.anon { %struct.anon { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_initcall_start = internal global %struct.trace_event_class { ptr @str__initcall__trace_system_name, ptr @trace_event_raw_event_initcall_start, ptr @perf_trace_initcall_start, ptr @trace_event_reg, ptr @trace_event_fields_initcall_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_initcall_start, i64 24), ptr getelementptr (i8, ptr @event_class_initcall_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_initcall_start = internal global %struct.trace_event_functions { ptr @trace_raw_output_initcall_start, ptr null, ptr null, ptr null }, align 4
@print_fmt_initcall_start = internal global [22 x i8] c"\22func=%pS\22, REC->func\00", align 1
@event_initcall_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_initcall_start, %union.anon.0 { ptr @__tracepoint_initcall_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_initcall_start }, ptr @print_fmt_initcall_start, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_initcall_start = internal global ptr @event_initcall_start, section "_ftrace_events", align 4
@trace_event_fields_initcall_finish = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.22, %union.anon { %struct.anon { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon { %struct.anon { ptr @.str.26, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_initcall_finish = internal global %struct.trace_event_class { ptr @str__initcall__trace_system_name, ptr @trace_event_raw_event_initcall_finish, ptr @perf_trace_initcall_finish, ptr @trace_event_reg, ptr @trace_event_fields_initcall_finish, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_initcall_finish, i64 24), ptr getelementptr (i8, ptr @event_class_initcall_finish, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_initcall_finish = internal global %struct.trace_event_functions { ptr @trace_raw_output_initcall_finish, ptr null, ptr null, ptr null }, align 4
@print_fmt_initcall_finish = internal global [39 x i8] c"\22func=%pS ret=%d\22, REC->func, REC->ret\00", align 1
@event_initcall_finish = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_initcall_finish, %union.anon.0 { ptr @__tracepoint_initcall_finish }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_initcall_finish }, ptr @print_fmt_initcall_finish, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_initcall_finish = internal global ptr @event_initcall_finish, section "_ftrace_events", align 4
@system_state = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_system_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_system_state = external dso_local constant [0 x i8], align 1
@__ksymtab_system_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @system_state to i32), ptr @__kstrtab_system_state, ptr @__kstrtabns_system_state }, section "___ksymtab+system_state", align 4
@static_key_initialized = dso_local global i8 0, section ".data..read_mostly", align 1
@__kstrtab_static_key_initialized = external dso_local constant [0 x i8], align 1
@__kstrtabns_static_key_initialized = external dso_local constant [0 x i8], align 1
@__ksymtab_static_key_initialized = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @static_key_initialized to i32), ptr @__kstrtab_static_key_initialized, ptr @__kstrtabns_static_key_initialized }, section "___ksymtab_gpl+static_key_initialized", align 4
@reset_devices = dso_local global i32 0, align 4
@__kstrtab_reset_devices = external dso_local constant [0 x i8], align 1
@__kstrtabns_reset_devices = external dso_local constant [0 x i8], align 1
@__ksymtab_reset_devices = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reset_devices to i32), ptr @__kstrtab_reset_devices, ptr @__kstrtabns_reset_devices }, section "___ksymtab+reset_devices", align 4
@__setup_str_set_reset_devices = internal constant [14 x i8] c"reset_devices\00", section ".init.rodata", align 1
@__setup_set_reset_devices = internal global %struct.obs_kernel_param { ptr @__setup_str_set_reset_devices, ptr @set_reset_devices, i32 0 }, section ".init.setup", align 4
@.str = private unnamed_addr constant [7 x i8] c"HOME=/\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"TERM=linux\00", align 1
@envp_init = dso_local global <{ ptr, ptr, [32 x ptr] }> <{ ptr @.str, ptr @.str.1, [32 x ptr] zeroinitializer }>, align 4
@loops_per_jiffy = dso_local global i32 4096, align 4
@__kstrtab_loops_per_jiffy = external dso_local constant [0 x i8], align 1
@__kstrtabns_loops_per_jiffy = external dso_local constant [0 x i8], align 1
@__ksymtab_loops_per_jiffy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @loops_per_jiffy to i32), ptr @__kstrtab_loops_per_jiffy, ptr @__kstrtabns_loops_per_jiffy }, section "___ksymtab+loops_per_jiffy", align 4
@__setup_str_debug_kernel = internal constant [6 x i8] c"debug\00", section ".init.rodata", align 1
@__setup_debug_kernel = internal global %struct.obs_kernel_param { ptr @__setup_str_debug_kernel, ptr @debug_kernel, i32 1 }, section ".init.setup", align 4
@__setup_str_quiet_kernel = internal constant [6 x i8] c"quiet\00", section ".init.rodata", align 1
@__setup_quiet_kernel = internal global %struct.obs_kernel_param { ptr @__setup_str_quiet_kernel, ptr @quiet_kernel, i32 1 }, section ".init.setup", align 4
@__setup_str_loglevel = internal constant [9 x i8] c"loglevel\00", section ".init.rodata", align 1
@__setup_loglevel = internal global %struct.obs_kernel_param { ptr @__setup_str_loglevel, ptr @loglevel, i32 1 }, section ".init.setup", align 4
@__setup_str_warn_bootconfig = internal constant [11 x i8] c"bootconfig\00", section ".init.rodata", align 1
@__setup_warn_bootconfig = internal global %struct.obs_kernel_param { ptr @__setup_str_warn_bootconfig, ptr @warn_bootconfig, i32 1 }, section ".init.setup", align 4
@__setup_str_init_setup = internal constant [6 x i8] c"init=\00", section ".init.rodata", align 1
@__setup_init_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_init_setup, ptr @init_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_rdinit_setup = internal constant [8 x i8] c"rdinit=\00", section ".init.rodata", align 1
@__setup_rdinit_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_rdinit_setup, ptr @rdinit_setup, i32 0 }, section ".init.setup", align 4
@init_pid_ns = external dso_local global %struct.pid_namespace, align 4
@kthreadd_task = external dso_local local_unnamed_addr global ptr, align 4
@kthreadd_done = internal global %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @kthreadd_done, i64 8), ptr getelementptr (i8, ptr @kthreadd_done, i64 8) } } }, section ".init.data", align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"early options\00", align 1
@parse_early_param.done = internal unnamed_addr global i1 false, section ".init.data", align 4
@parse_early_param.tmp_cmdline = internal global [1024 x i8] zeroinitializer, section ".init.data", align 1
@boot_command_line = dso_local global [1024 x i8] zeroinitializer, section ".init.data", align 1
@__param_str_initcall_debug = internal constant [15 x i8] c"initcall_debug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@initcall_debug = dso_local global i8 0, align 1
@__param_initcall_debug = internal constant %struct.kernel_param { ptr @__param_str_initcall_debug, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.74 { ptr @initcall_debug } }, section "__param", align 4
@init_task = external dso_local global %struct.task_struct, align 64
@early_boot_irqs_disabled = dso_local local_unnamed_addr global i8 0, section ".data..read_mostly", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\015%s\00", align 1
@linux_banner = external dso_local constant [0 x i8], align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\015Kernel command line: %s\0A\00", align 1
@saved_command_line = dso_local local_unnamed_addr global ptr null, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"Booting kernel\00", align 1
@static_command_line = internal unnamed_addr global ptr null, align 4
@__start___param = external dso_local constant [0 x %struct.kernel_param], align 4
@__stop___param = external dso_local constant [0 x %struct.kernel_param], align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"Setting init args\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"init/main.c\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"Interrupts were enabled *very* early, fixing it\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Interrupts were enabled early\0A\00", align 1
@panic_later = internal unnamed_addr global ptr null, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"Too many boot %s vars at `%s'\00", align 1
@panic_param = internal unnamed_addr global ptr null, align 4
@initrd_start = external dso_local local_unnamed_addr global i32, align 4
@initrd_below_start_ok = external dso_local local_unnamed_addr global i32, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@min_low_pfn = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [58 x i8] c"\012initrd overwritten (0x%08lx < 0x%08lx) - disabling it.\0A\00", align 1
@late_time_init = dso_local local_unnamed_addr global ptr null, section ".init.data", align 4
@__setup_str_initcall_blacklist = internal constant [20 x i8] c"initcall_blacklist=\00", section ".init.rodata", align 1
@__setup_initcall_blacklist = internal global %struct.obs_kernel_param { ptr @__setup_str_initcall_blacklist, ptr @initcall_blacklist, i32 0 }, section ".init.setup", align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"preemption imbalance \00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"disabled interrupts \00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"initcall %pS returned with %s\0A\00", align 1
@rodata_enabled = dso_local global i8 1, section ".data..ro_after_init", align 1
@__setup_str_set_debug_rodata = internal constant [8 x i8] c"rodata=\00", section ".init.rodata", align 1
@__setup_set_debug_rodata = internal global %struct.obs_kernel_param { ptr @__setup_str_set_debug_rodata, ptr @set_debug_rodata, i32 0 }, section ".init.setup", align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"/dev/console\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"\013Warning: unable to open an initial console.\0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"level=%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"initcall_t\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"func=%pS\0A\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"func=%pS ret=%d\0A\00", align 1
@console_printk = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.28 = private unnamed_addr constant [93 x i8] c"\014WARNING: 'bootconfig' found on the kernel command line but CONFIG_BOOT_CONFIG is not set.\0A\00", align 1
@execute_command = internal unnamed_addr global ptr null, align 4
@.str.29 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@argv_init = internal global <{ ptr, [33 x ptr] }> <{ ptr @.str.29, [33 x ptr] zeroinitializer }>, align 4
@ramdisk_execute_command = internal unnamed_addr global ptr @.str.31, align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"/init\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@__setup_start = external dso_local constant [0 x %struct.obs_kernel_param], align 4
@__setup_end = external dso_local constant [0 x %struct.obs_kernel_param], align 4
@.str.32 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"earlycon\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"\014Malformed early option '%s'\0A\00", align 1
@initrd_end = external dso_local local_unnamed_addr global i32, align 4
@.str.35 = private unnamed_addr constant [13 x i8] c"#BOOTCONFIG\0A\00", align 1
@.str.36 = private unnamed_addr constant [54 x i8] c"\013bootconfig size %d is greater than initrd size %ld\0A\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"%s: Failed to allocate %zu bytes\0A\00", align 1
@__func__.setup_command_line = private unnamed_addr constant [19 x i8] c"setup_command_line\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"env\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"\014Parameter %s is obsolete, ignored\0A\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"\013%s: Failed to allocate %zu bytes\0A\00", align 1
@__func__.print_unknown_bootoptions = private unnamed_addr constant [26 x i8] c"print_unknown_bootoptions\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.43 = private unnamed_addr constant [78 x i8] c"\015Unknown kernel command line parameters \22%s\22, will be passed to user space.\0A\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"all(zero)\00", align 1
@.str.45 = private unnamed_addr constant [56 x i8] c"\016mem auto-init: stack:%s, heap alloc:%s, heap free:%s\0A\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.48 = private unnamed_addr constant [63 x i8] c"\016mem auto-init: clearing system memory may take some time...\0A\00", align 1
@init_on_alloc = external dso_local global %struct.static_key_false, align 4
@init_on_free = external dso_local global %struct.static_key_false, align 4
@__stack_chk_guard = external dso_local local_unnamed_addr global i32, align 4
@.str.49 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"\017blacklisting initcall %s\0A\00", align 1
@__func__.initcall_blacklist = private unnamed_addr constant [19 x i8] c"initcall_blacklist\00", align 1
@blacklisted_initcalls = internal global %struct.list_head { ptr @blacklisted_initcalls, ptr @blacklisted_initcalls }, align 4
@initcall_calltime = internal global i64 0, align 8
@.str.51 = private unnamed_addr constant [41 x i8] c"Failed to register initcall tracepoints\0A\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"\017calling  %pS @ %i\0A\00", align 1
@.str.53 = private unnamed_addr constant [45 x i8] c"\017initcall %pS returned %d after %lld usecs\0A\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"\017initcall %s blacklisted\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__init_begin = external dso_local global [0 x i8], align 1
@__init_end = external dso_local global [0 x i8], align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"unused kernel image (initmem)\00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c"\013Failed to execute %s (error %d)\0A\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"Requested init %s failed (error %d).\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"/sbin/init\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"/etc/init\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"/bin/init\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.63 = private unnamed_addr constant [119 x i8] c"No working init found.  Try passing init= option to kernel. See Linux Documentation/admin-guide/init.rst for guidance.\00", align 1
@gfp_allowed_mask = external dso_local local_unnamed_addr global i32, align 4
@cad_pid = external dso_local local_unnamed_addr global ptr, align 4
@setup_max_cpus = external dso_local local_unnamed_addr global i32, align 4
@.str.64 = private unnamed_addr constant [6 x i8] c"early\00", align 1
@__initcall_start = external dso_local global [0 x ptr], align 4
@__initcall0_start = external dso_local global [0 x ptr], align 4
@__func__.do_initcalls = private unnamed_addr constant [13 x i8] c"do_initcalls\00", align 1
@initcall_level_names = internal unnamed_addr constant [8 x ptr] [ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], section ".init.data", align 4
@initcall_levels = internal unnamed_addr constant [9 x ptr] [ptr @__initcall0_start, ptr @__initcall1_start, ptr @__initcall2_start, ptr @__initcall3_start, ptr @__initcall4_start, ptr @__initcall5_start, ptr @__initcall6_start, ptr @__initcall7_start, ptr @__initcall_end], section ".init.data", align 4
@.str.65 = private unnamed_addr constant [5 x i8] c"pure\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"postcore\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"arch\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"subsys\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"late\00", align 1
@__initcall1_start = external dso_local global [0 x ptr], align 4
@__initcall2_start = external dso_local global [0 x ptr], align 4
@__initcall3_start = external dso_local global [0 x ptr], align 4
@__initcall4_start = external dso_local global [0 x ptr], align 4
@__initcall5_start = external dso_local global [0 x ptr], align 4
@__initcall6_start = external dso_local global [0 x ptr], align 4
@__initcall7_start = external dso_local global [0 x ptr], align 4
@__initcall_end = external dso_local global [0 x ptr], align 4
@.str.73 = private unnamed_addr constant [38 x i8] c"\016Kernel memory protection disabled.\0A\00", align 1
@.str.74 = private unnamed_addr constant [26 x i8] c"\016Run %s as init process\0A\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"\017  with arguments:\0A\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"\017    %s\0A\00", align 1
@.str.77 = private unnamed_addr constant [23 x i8] c"\017  with environment:\0A\00", align 1
@.str.78 = private unnamed_addr constant [63 x i8] c"\013Starting init: %s exists but couldn't execute it (error %d)\0A\00", align 1
@llvm.compiler.used = appending global [29 x ptr] [ptr @__event_initcall_finish, ptr @__event_initcall_level, ptr @__event_initcall_start, ptr @__ksymtab_loops_per_jiffy, ptr @__ksymtab_reset_devices, ptr @__ksymtab_static_key_initialized, ptr @__ksymtab_system_state, ptr @__param_initcall_debug, ptr @__setup_debug_kernel, ptr @__setup_init_setup, ptr @__setup_initcall_blacklist, ptr @__setup_loglevel, ptr @__setup_quiet_kernel, ptr @__setup_rdinit_setup, ptr @__setup_set_debug_rodata, ptr @__setup_set_reset_devices, ptr @__setup_warn_bootconfig, ptr @__tracepoint_initcall_finish, ptr @__tracepoint_initcall_level, ptr @__tracepoint_initcall_start, ptr @__tracepoint_ptr_initcall_finish, ptr @__tracepoint_ptr_initcall_level, ptr @__tracepoint_ptr_initcall_start, ptr @event_class_initcall_finish, ptr @event_class_initcall_level, ptr @event_class_initcall_start, ptr @event_initcall_finish, ptr @event_initcall_level, ptr @event_initcall_start], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_initcall_level(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_initcall_level, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #21
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
define dso_local i32 @__traceiter_initcall_start(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_initcall_start, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #21
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_initcall_finish(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_initcall_finish, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #21
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_initcall_level(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #21
  br i1 %12, label %26, label %13

13:                                               ; preds = %11, %8, %2
  %14 = icmp eq ptr %1, null
  %15 = select i1 %14, ptr @.str.18, ptr %1
  %16 = tail call i32 @strlen(ptr noundef %15) #21
  %17 = add i32 %16, 13
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %17) #21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = shl i32 %16, 16
  %22 = add i32 %21, 65548
  %23 = getelementptr inbounds %struct.trace_event_raw_initcall_level, ptr %18, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr i8, ptr %18, i32 12
  %25 = call ptr @strcpy(ptr noundef %24, ptr noundef %15)
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #21
  br label %26

26:                                               ; preds = %20, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_initcall_level(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = icmp eq ptr %1, null
  %6 = select i1 %5, ptr @.str.18, ptr %1
  %7 = tail call i32 @strlen(ptr noundef %6) #21
  %8 = shl i32 %7, 16
  %9 = add i32 %8, 65548
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #14, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load volatile ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %21, %2
  %25 = add i32 %7, 24
  %26 = and i32 %25, -8
  %27 = add i32 %26, -4
  %28 = call ptr @perf_trace_buf_alloc(i32 noundef %27, ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %3, align 4
  %32 = call ptr @llvm.returnaddress(i32 0) #21
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr [18 x i32], ptr %31, i32 0, i32 15
  store i32 %33, ptr %34, align 4
  %35 = call ptr @llvm.frameaddress.p0(i32 0) #21
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %31, i32 0, i32 11
  store i32 %36, ptr %37, align 4
  %38 = call i32 @llvm.read_register.i32(metadata !0) #21
  %39 = getelementptr [18 x i32], ptr %31, i32 0, i32 13
  store i32 %38, ptr %39, align 4
  %40 = getelementptr [18 x i32], ptr %31, i32 0, i32 16
  store i32 19, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_initcall_level, ptr %28, i32 0, i32 1
  store i32 %9, ptr %41, align 4
  %42 = getelementptr i8, ptr %28, i32 12
  %43 = call ptr @strcpy(ptr noundef %42, ptr noundef %6)
  %44 = load i32, ptr %4, align 4
  %45 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %28, i32 noundef %27, i32 noundef %44, ptr noundef %0, i64 noundef 1, ptr noundef %45, ptr noundef %17, ptr noundef null) #21
  br label %46

46:                                               ; preds = %30, %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_initcall_start(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #21
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #21
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_initcall_start, ptr %14, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #21
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_initcall_start(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #21
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
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #21
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #21
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #21
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_initcall_start, ptr %20, i32 0, i32 1
  store ptr %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #21
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_initcall_finish(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #21
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_initcall_finish, ptr %15, i32 0, i32 1
  store ptr %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_initcall_finish, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #21
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_initcall_finish(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #21
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #14, !srcloc !12
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
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #21
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #21
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #21
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_initcall_finish, ptr %21, i32 0, i32 1
  store ptr %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_initcall_finish, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #21
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @set_reset_devices(ptr nocapture noundef readnone %0) #3 section ".init.text" {
  store i32 1, ptr @reset_devices, align 4
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @debug_kernel(ptr nocapture noundef readnone %0) #3 section ".init.text" {
  store i32 10, ptr @console_printk, align 4
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @quiet_kernel(ptr nocapture noundef readnone %0) #3 section ".init.text" {
  store i32 4, ptr @console_printk, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @loglevel(ptr noundef %0) #4 section ".init.text" {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = call i32 @get_option(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr %3, align 4
  store i32 %7, ptr @console_printk, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ 0, %6 ], [ -22, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret i32 %9
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @warn_bootconfig(ptr nocapture noundef readnone %0) #4 section ".init.text" {
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #22
  ret i32 0
}

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong writeonly uwtable(sync)
define internal i32 @init_setup(ptr noundef %0) #5 section ".init.text" {
  store ptr %0, ptr @execute_command, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(124) getelementptr inbounds (<{ ptr, [33 x ptr] }>, ptr @argv_init, i32 0, i32 1, i32 0), i8 0, i32 124, i1 false)
  ret i32 1
}

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong writeonly uwtable(sync)
define internal i32 @rdinit_setup(ptr noundef %0) #5 section ".init.text" {
  store ptr %0, ptr @ramdisk_execute_command, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(124) getelementptr inbounds (<{ ptr, [33 x ptr] }>, ptr @argv_init, i32 0, i32 1, i32 0), i8 0, i32 124, i1 false)
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rest_init() local_unnamed_addr #6 section ".ref.text" {
  tail call void @rcu_scheduler_starting() #21
  %1 = tail call i32 @kernel_thread(ptr noundef nonnull @kernel_init, ptr noundef null, i32 noundef 512) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %2 = tail call ptr @find_task_by_pid_ns(i32 noundef %1, ptr noundef nonnull @init_pid_ns) #21
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = or i32 %4, 67108864
  store i32 %5, ptr %3, align 4
  %6 = tail call ptr @llvm.thread.pointer() #21
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 31
  %10 = add nuw nsw i32 %9, 1
  %11 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %10
  %12 = lshr i32 %8, 5
  %13 = sub nsw i32 0, %12
  %14 = getelementptr i32, ptr %11, i32 %13
  %15 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %2, ptr noundef %14) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !14
  %16 = tail call i32 @kernel_thread(ptr noundef nonnull @kthreadd, ptr noundef null, i32 noundef 1536) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !13
  %17 = tail call ptr @find_task_by_pid_ns(i32 noundef %16, ptr noundef nonnull @init_pid_ns) #21
  store ptr %17, ptr @kthreadd_task, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !14
  store i32 1, ptr @system_state, align 4
  tail call void @complete(ptr noundef nonnull @kthreadd_done) #21
  tail call void @schedule_preempt_disabled() #21
  tail call void @cpu_startup_entry(i32 noundef 229) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_scheduler_starting() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_thread(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kernel_init(ptr nocapture noundef readnone %0) #6 section ".ref.text" {
  tail call void @wait_for_completion(ptr noundef nonnull @kthreadd_done) #21
  tail call fastcc void @kernel_init_freeable() #23
  tail call void @async_synchronize_full() #21
  store i32 2, ptr @system_state, align 4
  tail call void @free_initmem()
  %2 = load i8, ptr @rodata_enabled, align 1, !range !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @rcu_barrier() #21
  tail call void @mark_rodata_ro() #21
  br label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #22
  br label %7

7:                                                ; preds = %5, %4
  store i32 3, ptr @system_state, align 4
  tail call void @rcu_end_inkernel_boot() #21
  tail call void @do_sysctl_args() #21
  %8 = load ptr, ptr @ramdisk_execute_command, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @run_init_process(ptr noundef nonnull %8)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %41, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr @ramdisk_execute_command, align 4
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %14, i32 noundef %11) #22
  br label %16

16:                                               ; preds = %13, %7
  %17 = load ptr, ptr @execute_command, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = tail call fastcc i32 @run_init_process(ptr noundef nonnull %17)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @execute_command, align 4
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.58, ptr noundef %23, i32 noundef %20) #24
  unreachable

24:                                               ; preds = %16
  %25 = tail call fastcc i32 @run_init_process(ptr noundef nonnull @.str.59) #21
  switch i32 %25, label %26 [
    i32 0, label %41
    i32 -2, label %28
  ]

26:                                               ; preds = %24
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.59, i32 noundef %25) #22
  br label %28

28:                                               ; preds = %26, %24
  %29 = tail call fastcc i32 @run_init_process(ptr noundef nonnull @.str.60) #21
  switch i32 %29, label %30 [
    i32 0, label %41
    i32 -2, label %32
  ]

30:                                               ; preds = %28
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.60, i32 noundef %29) #22
  br label %32

32:                                               ; preds = %30, %28
  %33 = tail call fastcc i32 @run_init_process(ptr noundef nonnull @.str.61) #21
  switch i32 %33, label %34 [
    i32 0, label %41
    i32 -2, label %36
  ]

34:                                               ; preds = %32
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.61, i32 noundef %33) #22
  br label %36

36:                                               ; preds = %34, %32
  %37 = tail call fastcc i32 @run_init_process(ptr noundef nonnull @.str.62) #21
  switch i32 %37, label %38 [
    i32 0, label %41
    i32 -2, label %40
  ]

38:                                               ; preds = %36
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.62, i32 noundef %37) #22
  br label %40

40:                                               ; preds = %38, %36
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.63) #24
  unreachable

41:                                               ; preds = %36, %32, %28, %24, %19, %10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_pid_ns(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthreadd(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule_preempt_disabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_startup_entry(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @parse_early_options(ptr noundef %0) local_unnamed_addr #4 section ".init.text" {
  %2 = tail call ptr @parse_args(ptr noundef nonnull @.str.2, ptr noundef %0, ptr noundef null, i32 noundef 0, i16 noundef signext 0, i16 noundef signext 0, ptr noundef null, ptr noundef nonnull @do_early_param) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parse_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @do_early_param(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #4 section ".init.text" {
  br i1 icmp ult (ptr @__setup_start, ptr @__setup_end), label %5, label %30

5:                                                ; preds = %27, %4
  %6 = phi ptr [ %28, %27 ], [ @__setup_start, %4 ]
  %7 = getelementptr inbounds %struct.obs_kernel_param, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %6, align 4
  %12 = tail call zeroext i1 @parameq(ptr noundef %0, ptr noundef %11) #21
  br i1 %12, label %20, label %13

13:                                               ; preds = %10, %5
  %14 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(8) @.str.32)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 4
  %18 = tail call i32 @strcmp(ptr noundef %17, ptr noundef nonnull dereferenceable(9) @.str.33)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16, %10
  %21 = getelementptr inbounds %struct.obs_kernel_param, ptr %6, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef %1) #21
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %0) #22
  br label %27

27:                                               ; preds = %25, %20, %16, %13
  %28 = getelementptr %struct.obs_kernel_param, ptr %6, i32 1
  %29 = icmp ult ptr %28, @__setup_end
  br i1 %29, label %5, label %30

30:                                               ; preds = %27, %4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @parse_early_param() local_unnamed_addr #4 section ".init.text" {
  %1 = load i1, ptr @parse_early_param.done, align 4
  br i1 %1, label %5, label %2

2:                                                ; preds = %0
  %3 = tail call i32 @strlcpy(ptr noundef nonnull @parse_early_param.tmp_cmdline, ptr noundef nonnull @boot_command_line, i32 noundef 1024) #21
  %4 = tail call ptr @parse_args(ptr noundef nonnull @.str.2, ptr noundef nonnull @parse_early_param.tmp_cmdline, ptr noundef null, i32 noundef 0, i16 noundef signext 0, i16 noundef signext 0, ptr noundef null, ptr noundef nonnull @do_early_param) #21
  store i1 true, ptr @parse_early_param.done, align 4
  br label %5

5:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define weak dso_local void @arch_post_acpi_subsys_init() local_unnamed_addr #4 section ".init.text" {
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define weak dso_local void @smp_setup_processor_id() local_unnamed_addr #4 section ".init.text" {
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define weak dso_local void @thread_stack_cache_init() local_unnamed_addr #4 section ".init.text" {
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define weak dso_local void @mem_encrypt_init() local_unnamed_addr #4 section ".init.text" {
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define weak dso_local void @poking_init() local_unnamed_addr #4 section ".init.text" {
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define weak dso_local void @pgtable_cache_init() local_unnamed_addr #4 section ".init.text" {
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define weak dso_local void @trap_init() local_unnamed_addr #4 section ".init.text" {
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define weak dso_local void @arch_call_rest_init() local_unnamed_addr #4 section ".init.text" {
  tail call void @rest_init()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @start_kernel() local_unnamed_addr #4 section ".init.text" {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  store ptr null, ptr %2, align 4, !annotation !9
  tail call void @set_task_stack_end_magic(ptr noundef nonnull @init_task) #21
  tail call void @smp_setup_processor_id() #23
  tail call void @init_vmlinux_build_id() #21
  %3 = tail call i32 @cgroup_init_early() #21
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #21, !srcloc !16
  store i8 1, ptr @early_boot_irqs_disabled, align 1
  tail call void @boot_cpu_init() #21
  tail call void @page_address_init() #21
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @linux_banner) #22
  call void @setup_arch(ptr noundef nonnull %2) #21
  call fastcc void @get_boot_config_from_initrd() #22
  %5 = load ptr, ptr %2, align 4
  call fastcc void @setup_command_line(ptr noundef %5) #23
  call void @setup_nr_cpu_ids() #22
  call void @setup_per_cpu_areas() #22
  call void @smp_prepare_boot_cpu() #21
  call void @boot_cpu_hotplug_init() #21
  call void @build_all_zonelists(ptr noundef null) #21
  call void @page_alloc_init() #21
  %6 = load ptr, ptr @saved_command_line, align 4
  %7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %6) #22
  store i8 1, ptr @static_key_initialized, align 1
  call void @parse_early_param() #23
  %8 = load ptr, ptr @static_command_line, align 4
  %9 = call ptr @parse_args(ptr noundef nonnull @.str.5, ptr noundef %8, ptr noundef nonnull @__start___param, i32 noundef sdiv (i32 sub (i32 ptrtoint (ptr @__stop___param to i32), i32 ptrtoint (ptr @__start___param to i32)), i32 20), i16 noundef signext -1, i16 noundef signext -1, ptr noundef null, ptr noundef nonnull @unknown_bootoption) #21
  call fastcc void @print_unknown_bootoptions() #23
  %10 = icmp eq ptr %9, null
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %12 = or i1 %10, %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %0
  %14 = call ptr @parse_args(ptr noundef nonnull @.str.6, ptr noundef nonnull %9, ptr noundef null, i32 noundef 0, i16 noundef signext -1, i16 noundef signext -1, ptr noundef null, ptr noundef nonnull @set_init_arg) #21
  br label %15

15:                                               ; preds = %13, %0
  call void @setup_log_buf(i32 noundef 0) #22
  call void @vfs_caches_init_early() #22
  call void @sort_main_extable() #21
  call void @trap_init() #23
  call fastcc void @mm_init() #23
  call void @early_trace_init() #21
  call void @sched_init() #21
  %16 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #21, !srcloc !17
  %17 = and i32 %16, 128
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20, !prof !11

19:                                               ; preds = %15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1000, i32 noundef 9, ptr noundef nonnull @.str.9) #21
  call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #21, !srcloc !16
  br label %20

20:                                               ; preds = %19, %15
  call void @radix_tree_init() #21
  call void @housekeeping_init() #22
  call void @workqueue_init_early() #22
  call void @rcu_init() #21
  call void @trace_init() #21
  %21 = load i8, ptr @initcall_debug, align 1, !range !15
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call fastcc void @initcall_debug_enable() #23
  br label %24

24:                                               ; preds = %23, %20
  %25 = call i32 @early_irq_init() #21
  call void @init_IRQ() #21
  call void @tick_init() #22
  call void @init_timers() #21
  call void @srcu_init() #21
  call void @hrtimers_init() #22
  call void @softirq_init() #21
  call void @timekeeping_init() #21
  %26 = call i32 @rand_initialize() #22
  %27 = load ptr, ptr %2, align 4
  %28 = call i32 @strlen(ptr noundef %27)
  call void @add_device_randomness(ptr noundef %27, i32 noundef %28) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #21
  store i32 0, ptr %1, align 4, !annotation !9
  call void @get_random_bytes(ptr noundef nonnull %1, i32 noundef 4) #21
  %29 = load i32, ptr %1, align 4
  %30 = xor i32 %29, 332032
  %31 = tail call ptr @llvm.thread.pointer() #21
  %32 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 54
  store i32 %30, ptr %32, align 16
  store i32 %30, ptr @__stack_chk_guard, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #21
  call void @time_init() #21
  call void @perf_event_init() #21
  call void @call_function_init() #22
  %33 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #21, !srcloc !17
  %34 = and i32 %33, 128
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37, !prof !11

36:                                               ; preds = %24
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1055, i32 noundef 9, ptr noundef nonnull @.str.10) #21
  br label %37

37:                                               ; preds = %36, %24
  store i8 0, ptr @early_boot_irqs_disabled, align 1
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #21, !srcloc !18
  call void @kmem_cache_init_late() #22
  call void @console_init() #21
  %38 = load ptr, ptr @panic_later, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr @panic_param, align 4
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.11, ptr noundef nonnull %38, ptr noundef %41) #24
  unreachable

42:                                               ; preds = %37
  call void @mem_encrypt_init() #23
  %43 = load i32, ptr @initrd_start, align 4
  %44 = icmp eq i32 %43, 0
  %45 = load i32, ptr @initrd_below_start_ok, align 4
  %46 = icmp ne i32 %45, 0
  %47 = select i1 %44, i1 true, i1 %46
  br i1 %47, label %57, label %48

48:                                               ; preds = %42
  %49 = add i32 %43, 1073741824
  %50 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %51 = lshr i32 %49, 12
  %52 = add i32 %50, %51
  %53 = load i32, ptr @min_low_pfn, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %52, i32 noundef %53) #22
  store i32 0, ptr @initrd_start, align 4
  br label %57

57:                                               ; preds = %55, %48, %42
  call void @setup_per_cpu_pageset() #21
  %58 = load ptr, ptr @late_time_init, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  call void %58() #21
  br label %61

61:                                               ; preds = %60, %57
  call void @sched_clock_init() #21
  call void @calibrate_delay() #21
  call void @pid_idr_init() #21
  call void @anon_vma_init() #21
  call void @thread_stack_cache_init() #23
  call void @cred_init() #22
  call void @fork_init() #21
  call void @proc_caches_init() #21
  call void @key_init() #21
  call void @vfs_caches_init() #22
  call void @pagecache_init() #22
  call void @signals_init() #21
  call void @seq_file_init() #21
  call void @proc_root_init() #21
  call void @nsfs_init() #21
  %62 = call i32 @cgroup_init() #21
  call void @poking_init() #23
  call void @check_bugs() #21
  call void @arch_post_acpi_subsys_init() #23
  call void @arch_call_rest_init() #23
  call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !19
  call void @arm_heavy_mb() #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_task_stack_end_magic(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_vmlinux_build_id() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_init_early() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @boot_cpu_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_address_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_arch(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @setup_command_line(ptr nocapture noundef readonly %0) unnamed_addr #4 section ".init.text" {
  %2 = tail call i32 @strlen(ptr noundef nonnull @boot_command_line)
  %3 = add i32 %2, 1
  %4 = tail call ptr @memblock_alloc_try_nid(i32 noundef %3, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef -1) #21
  store ptr %4, ptr @saved_command_line, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.setup_command_line, i32 noundef %3) #24
  unreachable

7:                                                ; preds = %1
  %8 = tail call ptr @memblock_alloc_try_nid(i32 noundef %3, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef -1) #21
  store ptr %8, ptr @static_command_line, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.setup_command_line, i32 noundef %3) #24
  unreachable

11:                                               ; preds = %7
  %12 = load ptr, ptr @saved_command_line, align 4
  %13 = tail call ptr @strcpy(ptr noundef %12, ptr noundef nonnull @boot_command_line)
  %14 = tail call ptr @strcpy(ptr noundef nonnull %8, ptr noundef %0)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @setup_nr_cpu_ids() local_unnamed_addr #8 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @setup_per_cpu_areas() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_prepare_boot_cpu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @boot_cpu_hotplug_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @build_all_zonelists(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_alloc_init() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @unknown_bootoption(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #4 section ".init.text" {
  %5 = tail call i32 @strlen(ptr noundef %0)
  tail call fastcc void @repair_env_string(ptr noundef %0, ptr noundef %1) #23
  %6 = tail call fastcc zeroext i1 @obsolete_checksetup(ptr noundef %0) #23
  br i1 %6, label %48, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @strnchr(ptr noundef %0, i32 noundef %5, i32 noundef 46) #21
  %9 = icmp eq ptr %8, null
  %10 = load ptr, ptr @panic_later, align 4
  %11 = icmp eq ptr %10, null
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %48

13:                                               ; preds = %7
  %14 = icmp eq ptr %1, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @envp_init, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %46, label %18

18:                                               ; preds = %15
  %19 = add i32 %5, 1
  br label %28

20:                                               ; preds = %13
  %21 = load ptr, ptr @argv_init, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %46, label %37

23:                                               ; preds = %34
  %24 = add i32 %31, 1
  %25 = getelementptr [34 x ptr], ptr @envp_init, i32 0, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %23, %18
  %29 = phi ptr [ %16, %18 ], [ %26, %23 ]
  %30 = phi ptr [ @envp_init, %18 ], [ %25, %23 ]
  %31 = phi i32 [ 0, %18 ], [ %24, %23 ]
  %32 = icmp eq i32 %31, 32
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store ptr @.str.39, ptr @panic_later, align 4
  store ptr %0, ptr @panic_param, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull %29, i32 noundef %19)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %46, label %23

37:                                               ; preds = %41, %20
  %38 = phi i32 [ %42, %41 ], [ 0, %20 ]
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store ptr @.str.29, ptr @panic_later, align 4
  store ptr %0, ptr @panic_param, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = add i32 %38, 1
  %43 = getelementptr [34 x ptr], ptr @argv_init, i32 0, i32 %42
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %37

46:                                               ; preds = %41, %34, %23, %20, %15
  %47 = phi ptr [ @envp_init, %15 ], [ @argv_init, %20 ], [ %43, %41 ], [ %30, %34 ], [ %25, %23 ]
  store ptr %0, ptr %47, align 4
  br label %48

48:                                               ; preds = %46, %7, %4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @print_unknown_bootoptions() unnamed_addr #4 section ".init.text" {
  %1 = load ptr, ptr @panic_later, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %68

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (<{ ptr, [33 x ptr] }>, ptr @argv_init, i32 0, i32 1, i32 0), align 4
  %5 = icmp ne ptr %4, null
  %6 = load ptr, ptr getelementptr inbounds (<{ ptr, ptr, [32 x ptr] }>, ptr @envp_init, i32 0, i32 2, i32 0), align 4
  %7 = icmp ne ptr %6, null
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %9, label %68

9:                                                ; preds = %3
  %10 = icmp eq ptr %4, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %14, %9
  %12 = phi i32 [ 1, %9 ], [ %20, %14 ]
  %13 = icmp eq ptr %6, null
  br i1 %13, label %34, label %24

14:                                               ; preds = %14, %9
  %15 = phi i32 [ %20, %14 ], [ 1, %9 ]
  %16 = phi ptr [ %21, %14 ], [ getelementptr inbounds (<{ ptr, [33 x ptr] }>, ptr @argv_init, i32 0, i32 1, i32 0), %9 ]
  %17 = phi ptr [ %22, %14 ], [ %4, %9 ]
  %18 = add i32 %15, 1
  %19 = tail call i32 @strlen(ptr noundef nonnull %17)
  %20 = add i32 %18, %19
  %21 = getelementptr ptr, ptr %16, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %11, label %14

24:                                               ; preds = %24, %11
  %25 = phi ptr [ %32, %24 ], [ %6, %11 ]
  %26 = phi i32 [ %30, %24 ], [ %12, %11 ]
  %27 = phi ptr [ %31, %24 ], [ getelementptr inbounds (<{ ptr, ptr, [32 x ptr] }>, ptr @envp_init, i32 0, i32 2, i32 0), %11 ]
  %28 = add i32 %26, 1
  %29 = tail call i32 @strlen(ptr noundef nonnull %25)
  %30 = add i32 %28, %29
  %31 = getelementptr ptr, ptr %27, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %24

34:                                               ; preds = %24, %11
  %35 = phi i32 [ %12, %11 ], [ %30, %24 ]
  %36 = tail call ptr @memblock_alloc_try_nid(i32 noundef %35, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef -1) #21
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr getelementptr inbounds (<{ ptr, [33 x ptr] }>, ptr @argv_init, i32 0, i32 1, i32 0), align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %47

41:                                               ; preds = %34
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.print_unknown_bootoptions, i32 noundef %35) #22
  br label %68

43:                                               ; preds = %47, %38
  %44 = phi ptr [ %36, %38 ], [ %52, %47 ]
  %45 = load ptr, ptr getelementptr inbounds (<{ ptr, ptr, [32 x ptr] }>, ptr @envp_init, i32 0, i32 2, i32 0), align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %65, label %56

47:                                               ; preds = %47, %38
  %48 = phi ptr [ %54, %47 ], [ %39, %38 ]
  %49 = phi ptr [ %52, %47 ], [ %36, %38 ]
  %50 = phi ptr [ %53, %47 ], [ getelementptr inbounds (<{ ptr, [33 x ptr] }>, ptr @argv_init, i32 0, i32 1, i32 0), %38 ]
  %51 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %49, ptr noundef nonnull @.str.42, ptr noundef nonnull %48)
  %52 = getelementptr i8, ptr %49, i32 %51
  %53 = getelementptr ptr, ptr %50, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %43, label %47

56:                                               ; preds = %56, %43
  %57 = phi ptr [ %63, %56 ], [ %45, %43 ]
  %58 = phi ptr [ %61, %56 ], [ %44, %43 ]
  %59 = phi ptr [ %62, %56 ], [ getelementptr inbounds (<{ ptr, ptr, [32 x ptr] }>, ptr @envp_init, i32 0, i32 2, i32 0), %43 ]
  %60 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %58, ptr noundef nonnull @.str.42, ptr noundef nonnull %57)
  %61 = getelementptr i8, ptr %58, i32 %60
  %62 = getelementptr ptr, ptr %59, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %56

65:                                               ; preds = %56, %43
  %66 = getelementptr i8, ptr %36, i32 1
  %67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %66) #22
  tail call void @memblock_free(ptr noundef nonnull %36, i32 noundef %35) #21
  br label %68

68:                                               ; preds = %65, %41, %3, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @set_init_arg(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #4 section ".init.text" {
  %5 = load ptr, ptr @panic_later, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  tail call fastcc void @repair_env_string(ptr noundef %0, ptr noundef %1) #23
  %8 = load ptr, ptr @argv_init, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %15

10:                                               ; preds = %15
  %11 = add nuw nsw i32 %16, 1
  %12 = getelementptr [34 x ptr], ptr @argv_init, i32 0, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10, %7
  %16 = phi i32 [ %11, %10 ], [ 0, %7 ]
  %17 = icmp eq i32 %16, 32
  br i1 %17, label %18, label %10

18:                                               ; preds = %15
  store ptr @.str.29, ptr @panic_later, align 4
  br label %19

19:                                               ; preds = %18, %10, %7
  %20 = phi ptr [ @panic_param, %18 ], [ @argv_init, %7 ], [ %12, %10 ]
  store ptr %0, ptr %20, align 4
  br label %21

21:                                               ; preds = %19, %4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @setup_log_buf(i32 noundef) local_unnamed_addr #8 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @vfs_caches_init_early() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort_main_extable() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @mm_init() unnamed_addr #4 section ".init.text" {
  tail call void @init_mem_debugging_and_hardening() #21
  tail call fastcc void @report_meminit() #23
  tail call void @mem_init() #21
  tail call void @mem_init_print_info() #21
  tail call void @kmem_cache_init() #22
  tail call void @pgtable_cache_init() #22
  tail call void @vmalloc_init() #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_trace_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radix_tree_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @housekeeping_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @workqueue_init_early() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_init() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @initcall_debug_enable() unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_initcall_start, ptr noundef nonnull @trace_initcall_start_cb, ptr noundef nonnull @initcall_calltime) #21
  %2 = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_initcall_finish, ptr noundef nonnull @trace_initcall_finish_cb, ptr noundef nonnull @initcall_calltime) #21
  %3 = or i32 %2, %1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !10

5:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1271, i32 noundef 9, ptr noundef nonnull @.str.51) #21
  br label %6

6:                                                ; preds = %5, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @early_irq_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_IRQ() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @tick_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timers() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @srcu_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @hrtimers_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @softirq_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @timekeeping_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @rand_initialize() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @time_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @call_function_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @kmem_cache_init_late() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_init() local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_per_cpu_pageset() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @calibrate_delay() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pid_idr_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @anon_vma_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @cred_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fork_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_caches_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @vfs_caches_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @pagecache_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @signals_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_file_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_root_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nsfs_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_bugs() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @initcall_blacklist(ptr noundef %0) #4 section ".init.text" {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.49) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %20, %1
  %6 = phi ptr [ %25, %20 ], [ %3, %1 ]
  %7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull %6) #22
  %8 = call ptr @memblock_alloc_try_nid(i32 noundef 12, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef -1) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.initcall_blacklist, i32 noundef 12) #24
  unreachable

11:                                               ; preds = %5
  %12 = call i32 @strlen(ptr noundef nonnull %6)
  %13 = add i32 %12, 1
  %14 = call ptr @memblock_alloc_try_nid(i32 noundef %13, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef -1) #21
  %15 = getelementptr inbounds %struct.blacklist_entry, ptr %8, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = call i32 @strlen(ptr noundef nonnull %6)
  %19 = add i32 %18, 1
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.initcall_blacklist, i32 noundef %19) #24
  unreachable

20:                                               ; preds = %11
  %21 = call ptr @strcpy(ptr noundef nonnull %14, ptr noundef nonnull %6)
  %22 = load ptr, ptr @blacklisted_initcalls, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %8, ptr %23, align 4
  store ptr %22, ptr %8, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr @blacklisted_initcalls, ptr %24, align 4
  store volatile ptr %8, ptr @blacklisted_initcalls, align 4
  %25 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.49) #21
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %5

27:                                               ; preds = %20, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_one_initcall(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [266 x i8], align 1
  %3 = alloca [64 x i8], align 1
  %4 = tail call ptr @llvm.thread.pointer() #21
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %3, i8 0, i32 64, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 266, ptr nonnull %2) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(266) %2, i8 0, i32 266, i1 false) #21, !annotation !9
  %7 = load volatile ptr, ptr @blacklisted_initcalls, align 4
  %8 = icmp eq ptr %7, @blacklisted_initcalls
  br i1 %8, label %24, label %9

9:                                                ; preds = %1
  %10 = ptrtoint ptr %0 to i32
  %11 = call i32 @sprint_symbol_no_offset(ptr noundef nonnull %2, i32 noundef %10) #21
  %12 = call ptr @strreplace(ptr noundef nonnull %2, i8 noundef zeroext 32, i8 noundef zeroext 0) #21
  br label %13

13:                                               ; preds = %17, %9
  %14 = phi ptr [ @blacklisted_initcalls, %9 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, @blacklisted_initcalls
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.blacklist_entry, ptr %15, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @strcmp(ptr noundef nonnull %2, ptr noundef %19) #21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %13

22:                                               ; preds = %17
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 266, ptr nonnull %2) #21
  br label %91

24:                                               ; preds = %13, %1
  call void @llvm.lifetime.end.p0(i64 266, ptr nonnull %2) #21
  %25 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_initcall_start, i32 0, i32 1), align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = lshr i32 %29, 5
  %31 = getelementptr i32, ptr @__cpu_online_mask, i32 %30
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %29, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %27
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !20
  %38 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_initcall_start, i32 0, i32 7), align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %40, %37
  %41 = phi ptr [ %45, %40 ], [ %38, %37 ]
  %42 = load volatile ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.tracepoint_func, ptr %41, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  call void %42(ptr noundef %44, ptr noundef %0) #21
  %45 = getelementptr %struct.tracepoint_func, ptr %41, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %40

48:                                               ; preds = %40, %37
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  br label %49

49:                                               ; preds = %48, %27, %24
  %50 = call i32 %0() #21
  %51 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_initcall_finish, i32 0, i32 1), align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %55 = load i32, ptr %54, align 8
  %56 = lshr i32 %55, 5
  %57 = getelementptr i32, ptr @__cpu_online_mask, i32 %56
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %55, 31
  %60 = shl nuw i32 1, %59
  %61 = and i32 %60, %58
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %53
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  %64 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_initcall_finish, i32 0, i32 7), align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %66, %63
  %67 = phi ptr [ %71, %66 ], [ %64, %63 ]
  %68 = load volatile ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.tracepoint_func, ptr %67, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  call void %68(ptr noundef %70, ptr noundef %0, i32 noundef %50) #21
  %71 = getelementptr %struct.tracepoint_func, ptr %67, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %66

74:                                               ; preds = %66, %63
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !23
  br label %75

75:                                               ; preds = %74, %53, %49
  store i8 0, ptr %3, align 1
  %76 = load volatile i32, ptr %5, align 4
  %77 = icmp eq i32 %76, %6
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(22) %3, ptr noundef nonnull align 1 dereferenceable(22) @.str.13, i32 22, i1 false)
  store volatile i32 %6, ptr %5, align 4
  br label %79

79:                                               ; preds = %78, %75
  %80 = phi i8 [ 112, %78 ], [ 0, %75 ]
  %81 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #21, !srcloc !17
  %82 = and i32 %81, 128
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = call i32 @strlcat(ptr noundef nonnull %3, ptr noundef nonnull @.str.14, i32 noundef 64) #21
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #21, !srcloc !18
  %86 = load i8, ptr %3, align 1
  br label %87

87:                                               ; preds = %84, %79
  %88 = phi i8 [ %86, %84 ], [ %80, %79 ]
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %91, label %90, !prof !10

90:                                               ; preds = %87
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1313, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %0, ptr noundef nonnull %3) #21
  br label %91

91:                                               ; preds = %90, %87, %22
  %92 = phi i32 [ -1, %22 ], [ %50, %90 ], [ %50, %87 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #21
  ret i32 %92
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @set_debug_rodata(ptr noundef %0) #4 section ".init.text" {
  %2 = tail call i32 @kstrtobool(ptr noundef %0, ptr noundef nonnull @rodata_enabled) #21
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @free_initmem() local_unnamed_addr #0 {
  %1 = tail call i32 @free_reserved_area(ptr noundef nonnull @__init_begin, ptr noundef nonnull @__init_end, i32 noundef 204, ptr noundef nonnull @.str.56) #21
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @console_on_rootfs() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call ptr @filp_open(ptr noundef nonnull @.str.16, i32 noundef 2, i16 noundef zeroext 0) #21
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #22
  br label %9

5:                                                ; preds = %0
  %6 = tail call i32 @init_dup(ptr noundef %1) #22
  %7 = tail call i32 @init_dup(ptr noundef %1) #22
  %8 = tail call i32 @init_dup(ptr noundef %1) #22
  tail call void @fput(ptr noundef %1) #21
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_dup(ptr noundef) local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_initcall_level(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #21
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_initcall_level, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %13) #21
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #21
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_initcall_start(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #21
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_initcall_start, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef %11) #21
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #21
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_initcall_finish(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #21
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_initcall_finish, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_initcall_finish, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef %11, i32 noundef %13) #21
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #21
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
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #15

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @parameq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @get_boot_config_from_initrd() unnamed_addr #4 section ".init.text" {
  %1 = load i32, ptr @initrd_end, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %27, label %3

3:                                                ; preds = %0
  %4 = inttoptr i32 %1 to ptr
  %5 = getelementptr i8, ptr %4, i32 -12
  br label %6

6:                                                ; preds = %11, %3
  %7 = phi i32 [ 0, %3 ], [ %13, %11 ]
  %8 = phi ptr [ %5, %3 ], [ %12, %11 ]
  %9 = tail call i32 @bcmp(ptr noundef dereferenceable(12) %8, ptr noundef nonnull dereferenceable(12) @.str.35, i32 12)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %8, i32 -1
  %13 = add nuw nsw i32 %7, 1
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %27, label %6

15:                                               ; preds = %6
  %16 = getelementptr i8, ptr %8, i32 -8
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 0, %17
  %19 = getelementptr i8, ptr %16, i32 %18
  %20 = ptrtoint ptr %19 to i32
  %21 = load i32, ptr @initrd_start, align 4
  %22 = icmp ugt i32 %21, %20
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = sub i32 %1, %21
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %17, i32 noundef %24) #22
  br label %27

26:                                               ; preds = %15
  store i32 %20, ptr @initrd_end, align 4
  br label %27

27:                                               ; preds = %26, %23, %11, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @repair_env_string(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #4 section ".init.text" {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @strlen(ptr noundef %0)
  %6 = getelementptr i8, ptr %0, i32 %5
  %7 = getelementptr i8, ptr %6, i32 1
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %1, i32 -1
  store i8 61, ptr %10, align 1
  br label %20

11:                                               ; preds = %4
  %12 = getelementptr i8, ptr %6, i32 2
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %1, i32 -2
  store i8 61, ptr %15, align 1
  %16 = getelementptr i8, ptr %1, i32 -1
  %17 = tail call i32 @strlen(ptr noundef nonnull %1)
  %18 = add i32 %17, 1
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %16, ptr nonnull align 1 %1, i32 %18, i1 false)
  br label %20

19:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22init/main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 499, 0\0A.popsection", ""() #21, !srcloc !24
  unreachable

20:                                               ; preds = %14, %9, %2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc zeroext i1 @obsolete_checksetup(ptr noundef %0) unnamed_addr #4 section ".init.text" {
  br label %2

2:                                                ; preds = %27, %1
  %3 = phi ptr [ @__setup_start, %1 ], [ %29, %27 ]
  %4 = phi i1 [ false, %1 ], [ %28, %27 ]
  %5 = load ptr, ptr %3, align 4
  %6 = tail call i32 @strlen(ptr noundef %5)
  %7 = tail call zeroext i1 @parameqn(ptr noundef %0, ptr noundef %5, i32 noundef %6) #21
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.obs_kernel_param, ptr %3, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %0, i32 %6
  %14 = load i8, ptr %13, align 1
  switch i8 %14, label %27 [
    i8 0, label %15
    i8 61, label %15
  ]

15:                                               ; preds = %12, %12
  br label %27

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.obs_kernel_param, ptr %3, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load ptr, ptr %3, align 4
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %21) #22
  br label %31

23:                                               ; preds = %16
  %24 = getelementptr i8, ptr %0, i32 %6
  %25 = tail call i32 %18(ptr noundef %24) #21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23, %15, %12, %2
  %28 = phi i1 [ true, %15 ], [ %4, %23 ], [ %4, %2 ], [ %4, %12 ]
  %29 = getelementptr %struct.obs_kernel_param, ptr %3, i32 1
  %30 = icmp ult ptr %29, @__setup_end
  br i1 %30, label %2, label %31

31:                                               ; preds = %27, %23, %20
  %32 = phi i1 [ true, %20 ], [ true, %23 ], [ %28, %27 ]
  ret i1 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #16

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @parameqn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_mem_debugging_and_hardening() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @report_meminit() unnamed_addr #4 section ".init.text" {
  %1 = load volatile i32, ptr @init_on_alloc, align 4
  %2 = icmp sgt i32 %1, 0
  %3 = select i1 %2, ptr @.str.46, ptr @.str.47
  %4 = load volatile i32, ptr @init_on_free, align 4
  %5 = icmp sgt i32 %4, 0
  %6 = select i1 %5, ptr @.str.46, ptr @.str.47
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.44, ptr noundef nonnull %3, ptr noundef nonnull %6) #22
  %8 = load volatile i32, ptr @init_on_free, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #22
  br label %12

12:                                               ; preds = %10, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_init_print_info() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @kmem_cache_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @vmalloc_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_initcall_start_cb(ptr nocapture noundef writeonly %0, ptr noundef %1) #0 {
  %3 = tail call ptr @llvm.thread.pointer() #21
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 52
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %1, i32 noundef %5) #22
  %7 = tail call i64 @ktime_get() #21
  store i64 %7, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_initcall_finish_cb(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i64 @ktime_get() #21
  %5 = load i64, ptr %0, align 8
  %6 = sub i64 %4, %5
  %7 = lshr i64 %6, 10
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %1, i32 noundef %2, i64 noundef %7) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracepoint_probe_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprint_symbol_no_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @free_reserved_area(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @kernel_init_freeable() unnamed_addr #17 section ".init.text" {
  store i32 33554431, ptr @gfp_allowed_mask, align 4
  %1 = tail call ptr @llvm.thread.pointer() #21
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 62
  %3 = load ptr, ptr %2, align 64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %0
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %3) #21, !srcloc !25
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #21, !srcloc !26
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9, !prof !11

9:                                                ; preds = %5
  %10 = add i32 %7, 1
  %11 = or i32 %10, %7
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %15, label %13, !prof !10

13:                                               ; preds = %9, %5
  %14 = phi i32 [ 2, %5 ], [ 1, %9 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef %14) #21
  br label %15

15:                                               ; preds = %13, %9, %0
  store ptr %3, ptr @cad_pid, align 4
  %16 = load i32, ptr @setup_max_cpus, align 4
  tail call void @smp_prepare_cpus(i32 noundef %16) #21
  tail call void @workqueue_init() #22
  tail call void @init_mm_internals() #21
  tail call fastcc void @do_pre_smp_initcalls() #23
  tail call void @smp_init() #22
  tail call void @sched_init_smp() #21
  tail call void @page_alloc_init_late() #21
  tail call fastcc void @do_basic_setup() #23
  tail call void @wait_for_initramfs() #21
  tail call void @console_on_rootfs() #23
  %17 = load ptr, ptr @ramdisk_execute_command, align 4
  %18 = tail call i32 @init_eaccess(ptr noundef %17) #22
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store ptr null, ptr @ramdisk_execute_command, align 4
  tail call void @prepare_namespace() #21
  br label %21

21:                                               ; preds = %20, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_synchronize_full() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_end_inkernel_boot() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_sysctl_args() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @run_init_process(ptr noundef %0) unnamed_addr #0 {
  store ptr %0, ptr @argv_init, align 4
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %0) #22
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #22
  %4 = load ptr, ptr @argv_init, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %11, %6 ], [ %4, %1 ]
  %8 = phi ptr [ %10, %6 ], [ @argv_init, %1 ]
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull %7) #22
  %10 = getelementptr ptr, ptr %8, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6

13:                                               ; preds = %6, %1
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #22
  %15 = load ptr, ptr @envp_init, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %17, %13
  %18 = phi ptr [ %22, %17 ], [ %15, %13 ]
  %19 = phi ptr [ %21, %17 ], [ @envp_init, %13 ]
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull %18) #22
  %21 = getelementptr ptr, ptr %19, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %17

24:                                               ; preds = %17, %13
  %25 = tail call i32 @kernel_execve(ptr noundef %0, ptr noundef nonnull @argv_init, ptr noundef nonnull @envp_init) #21
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_prepare_cpus(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @workqueue_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_mm_internals() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @do_pre_smp_initcalls() unnamed_addr #4 section ".init.text" {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_initcall_level, i32 0, i32 1), align 4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %26

3:                                                ; preds = %0
  %4 = tail call ptr @llvm.thread.pointer() #21
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 5
  %8 = getelementptr i32, ptr @__cpu_online_mask, i32 %7
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %6, 31
  %11 = shl nuw i32 1, %10
  %12 = and i32 %11, %9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !27
  %15 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_initcall_level, i32 0, i32 7), align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %17, %14
  %18 = phi ptr [ %22, %17 ], [ %15, %14 ]
  %19 = load volatile ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.tracepoint_func, ptr %18, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void %19(ptr noundef %21, ptr noundef nonnull @.str.64) #21
  %22 = getelementptr %struct.tracepoint_func, ptr %18, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %17

25:                                               ; preds = %17, %14
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !28
  br label %26

26:                                               ; preds = %25, %3, %0
  br i1 icmp ult (ptr @__initcall_start, ptr @__initcall0_start), label %27, label %33

27:                                               ; preds = %27, %26
  %28 = phi ptr [ %31, %27 ], [ @__initcall_start, %26 ]
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @do_one_initcall(ptr noundef %29)
  %31 = getelementptr ptr, ptr %28, i32 1
  %32 = icmp ult ptr %31, @__initcall0_start
  br i1 %32, label %27, label %33

33:                                               ; preds = %27, %26
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @smp_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_init_smp() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_alloc_init_late() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @do_basic_setup() unnamed_addr #4 section ".init.text" {
  tail call void @driver_init() #21
  tail call void @init_irq_proc() #21
  tail call fastcc void @do_initcalls() #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_initramfs() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_eaccess(ptr noundef) local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_namespace() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_irq_proc() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @do_initcalls() unnamed_addr #4 section ".init.text" {
  %1 = load ptr, ptr @saved_command_line, align 4
  %2 = tail call i32 @strlen(ptr noundef %1)
  %3 = add i32 %2, 1
  %4 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #25
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.do_initcalls, i32 noundef %3) #24
  unreachable

7:                                                ; preds = %7, %0
  %8 = phi i32 [ %11, %7 ], [ 0, %0 ]
  %9 = load ptr, ptr @saved_command_line, align 4
  %10 = tail call ptr @strcpy(ptr noundef nonnull %4, ptr noundef %9)
  tail call fastcc void @do_initcall_level(i32 noundef %8, ptr noundef nonnull %4) #23
  %11 = add nuw nsw i32 %8, 1
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %13, label %7

13:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %4) #21
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @do_initcall_level(i32 noundef %0, ptr noundef %1) unnamed_addr #4 section ".init.text" {
  %3 = getelementptr [8 x ptr], ptr @initcall_level_names, i32 0, i32 %0
  %4 = load ptr, ptr %3, align 4
  %5 = trunc i32 %0 to i16
  %6 = tail call ptr @parse_args(ptr noundef %4, ptr noundef %1, ptr noundef nonnull @__start___param, i32 noundef sdiv (i32 sub (i32 ptrtoint (ptr @__stop___param to i32), i32 ptrtoint (ptr @__start___param to i32)), i32 20), i16 noundef signext %5, i16 noundef signext %5, ptr noundef null, ptr noundef nonnull @ignore_unknown_bootoption) #21
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_initcall_level, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %2
  %10 = tail call ptr @llvm.thread.pointer() #21
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !27
  %21 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_initcall_level, i32 0, i32 7), align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %23, %20
  %24 = phi ptr [ %28, %23 ], [ %21, %20 ]
  %25 = load volatile ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tracepoint_func, ptr %24, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void %25(ptr noundef %27, ptr noundef %4) #21
  %28 = getelementptr %struct.tracepoint_func, ptr %24, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %23

31:                                               ; preds = %23, %20
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !28
  br label %32

32:                                               ; preds = %31, %9, %2
  %33 = getelementptr [9 x ptr], ptr @initcall_levels, i32 0, i32 %0
  %34 = load ptr, ptr %33, align 4
  %35 = add i32 %0, 1
  %36 = getelementptr [9 x ptr], ptr @initcall_levels, i32 0, i32 %35
  %37 = load ptr, ptr %36, align 4
  %38 = icmp ult ptr %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %39, %32
  %40 = phi ptr [ %43, %39 ], [ %34, %32 ]
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @do_one_initcall(ptr noundef %41)
  %43 = getelementptr ptr, ptr %40, i32 1
  %44 = icmp ult ptr %43, %37
  br i1 %44, label %39, label %45

45:                                               ; preds = %39, %32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define internal i32 @ignore_unknown_bootoption(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #19 section ".init.text" {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_rodata_ro() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_execve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #16

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #20

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind readonly }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { argmemonly nofree nounwind willreturn }
attributes #17 = { cold noinline nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { nounwind }
attributes #22 = { cold nounwind }
attributes #23 = { cold }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { nounwind allocsize(0) }

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
!12 = !{i64 506190}
!13 = !{i64 2149084523}
!14 = !{i64 2149084740}
!15 = !{i8 0, i8 2}
!16 = !{i64 487925}
!17 = !{i64 490222}
!18 = !{i64 487735}
!19 = !{i64 2155824518}
!20 = !{i64 2155314730}
!21 = !{i64 2155314878}
!22 = !{i64 2155334639}
!23 = !{i64 2155334799}
!24 = !{i64 2155799643, i64 2155800119, i64 2155799680, i64 2155799736, i64 2155799770, i64 2155799794, i64 2155799835, i64 2155799856, i64 2155799884, i64 2155799918}
!25 = !{i64 581812, i64 2148071783, i64 2148071809, i64 2148071856, i64 2148071878, i64 2148071906, i64 2148071926}
!26 = !{i64 2148084656, i64 2148084688, i64 2148084717, i64 2148084751, i64 2148084782, i64 2148084805}
!27 = !{i64 2155299079}
!28 = !{i64 2155299229}
