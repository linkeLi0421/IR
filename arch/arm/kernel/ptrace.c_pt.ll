; ModuleID = '/llk/IR/arch/arm/kernel/ptrace.c_pt.bc'
source_filename = "../arch/arm/kernel/ptrace.c"
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
%struct.pt_regs_offset = type { ptr, i32 }
%struct.user_regset_view = type { ptr, ptr, i32, i32, i16, i8 }
%struct.undef_hook = type { %struct.list_head, i32, i32, i32, i32, ptr }
%struct.user_regset = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_sys_enter = type { %struct.trace_entry, i32, [6 x i32], [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_sys_exit = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.74, i64, i64, i64, %union.anon.75, i32, %union.anon.76, %union.anon.77, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.74 = type { i64 }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i64 }
%union.anon.77 = type { i64 }
%struct.pt_regs = type { [18 x i32] }
%struct.anon.12 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.local64_t = type { %struct.atomic64_t }
%struct.hw_perf_event = type { %union.anon.78, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.85, i64, i64, i64, i64 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { i64, %struct.local64_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.arch_hw_breakpoint = type { i32, i32, %struct.arch_hw_breakpoint_ctrl, %struct.arch_hw_breakpoint_ctrl }
%struct.arch_hw_breakpoint_ctrl = type { i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_sys_enter = internal constant [10 x i8] c"sys_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sys_enter = dso_local global %struct.static_call_key { ptr @__traceiter_sys_enter }, align 4
@__tracepoint_sys_enter = dso_local global %struct.tracepoint { ptr @__tpstrtab_sys_enter, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sys_enter, ptr null, ptr @__traceiter_sys_enter, ptr @syscall_regfunc, ptr @syscall_unregfunc, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sys_enter = internal constant ptr @__tracepoint_sys_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_sys_exit = internal constant [9 x i8] c"sys_exit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sys_exit = dso_local global %struct.static_call_key { ptr @__traceiter_sys_exit }, align 4
@__tracepoint_sys_exit = dso_local global %struct.tracepoint { ptr @__tpstrtab_sys_exit, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sys_exit, ptr null, ptr @__traceiter_sys_exit, ptr @syscall_regfunc, ptr @syscall_unregfunc, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sys_exit = internal constant ptr @__tracepoint_sys_exit, section "__tracepoints_ptrs", align 4
@__initcall__kmod_ptrace__293_42_trace_init_flags_sys_enterearly = internal global ptr @trace_init_flags_sys_enter, section ".initcallearly.init", align 4
@__initcall__kmod_ptrace__294_66_trace_init_flags_sys_exitearly = internal global ptr @trace_init_flags_sys_exit, section ".initcallearly.init", align 4
@str__raw_syscalls__trace_system_name = internal constant [13 x i8] c"raw_syscalls\00", align 1
@trace_event_fields_sys_enter = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon { %struct.anon { ptr @.str.3, i32 24, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_sys_enter = internal global %struct.trace_event_class { ptr @str__raw_syscalls__trace_system_name, ptr @trace_event_raw_event_sys_enter, ptr @perf_trace_sys_enter, ptr @trace_event_reg, ptr @trace_event_fields_sys_enter, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_sys_enter, i64 24), ptr getelementptr (i8, ptr @event_class_sys_enter, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_sys_enter = internal global %struct.trace_event_functions { ptr @trace_raw_output_sys_enter, ptr null, ptr null, ptr null }, align 4
@print_fmt_sys_enter = internal global [133 x i8] c"\22NR %ld (%lx, %lx, %lx, %lx, %lx, %lx)\22, REC->id, REC->args[0], REC->args[1], REC->args[2], REC->args[3], REC->args[4], REC->args[5]\00", align 1
@event_sys_enter = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sys_enter, %union.anon.0 { ptr @__tracepoint_sys_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sys_enter }, ptr @print_fmt_sys_enter, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sys_enter = internal global ptr @event_sys_enter, section "_ftrace_events", align 4
@trace_event_fields_sys_exit = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.5, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_sys_exit = internal global %struct.trace_event_class { ptr @str__raw_syscalls__trace_system_name, ptr @trace_event_raw_event_sys_exit, ptr @perf_trace_sys_exit, ptr @trace_event_reg, ptr @trace_event_fields_sys_exit, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_sys_exit, i64 24), ptr getelementptr (i8, ptr @event_class_sys_exit, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_sys_exit = internal global %struct.trace_event_functions { ptr @trace_raw_output_sys_exit, ptr null, ptr null, ptr null }, align 4
@print_fmt_sys_exit = internal global [34 x i8] c"\22NR %ld = %ld\22, REC->id, REC->ret\00", align 1
@event_sys_exit = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sys_exit, %union.anon.0 { ptr @__tracepoint_sys_exit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sys_exit }, ptr @print_fmt_sys_exit, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sys_exit = internal global ptr @event_sys_exit, section "_ftrace_events", align 4
@regoffset_table = internal unnamed_addr constant [19 x %struct.pt_regs_offset] [%struct.pt_regs_offset { ptr @.str.7, i32 0 }, %struct.pt_regs_offset { ptr @.str.8, i32 4 }, %struct.pt_regs_offset { ptr @.str.9, i32 8 }, %struct.pt_regs_offset { ptr @.str.10, i32 12 }, %struct.pt_regs_offset { ptr @.str.11, i32 16 }, %struct.pt_regs_offset { ptr @.str.12, i32 20 }, %struct.pt_regs_offset { ptr @.str.13, i32 24 }, %struct.pt_regs_offset { ptr @.str.14, i32 28 }, %struct.pt_regs_offset { ptr @.str.15, i32 32 }, %struct.pt_regs_offset { ptr @.str.16, i32 36 }, %struct.pt_regs_offset { ptr @.str.17, i32 40 }, %struct.pt_regs_offset { ptr @.str.18, i32 44 }, %struct.pt_regs_offset { ptr @.str.19, i32 48 }, %struct.pt_regs_offset { ptr @.str.20, i32 52 }, %struct.pt_regs_offset { ptr @.str.21, i32 56 }, %struct.pt_regs_offset { ptr @.str.22, i32 60 }, %struct.pt_regs_offset { ptr @.str.23, i32 64 }, %struct.pt_regs_offset { ptr @.str.24, i32 68 }, %struct.pt_regs_offset zeroinitializer], align 4
@__initcall__kmod_ptrace__295_245_ptrace_break_init1 = internal global ptr @ptrace_break_init, section ".initcall1.init", align 4
@user_arm_view = internal constant %struct.user_regset_view { ptr @.str.25, ptr @arm_regsets, i32 3, i32 0, i16 40, i8 0 }, align 4
@.str = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"unsigned long[6]\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"NR %ld (%lx, %lx, %lx, %lx, %lx, %lx)\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"NR %ld = %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"r0\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"r1\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"r2\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"r3\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"r4\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"r5\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"r6\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"r7\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"r8\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"r9\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"r10\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"fp\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"lr\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"cpsr\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"ORIG_r0\00", align 1
@arm_break_hook = internal global %struct.undef_hook { %struct.list_head zeroinitializer, i32 268435455, i32 133169648, i32 32, i32 0, ptr @break_trap }, align 4
@thumb_break_hook = internal global %struct.undef_hook { %struct.list_head zeroinitializer, i32 -1, i32 56833, i32 32, i32 32, ptr @break_trap }, align 4
@thumb2_break_hook = internal global %struct.undef_hook { %struct.list_head zeroinitializer, i32 -1, i32 -135225344, i32 32, i32 32, ptr @break_trap }, align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@arm_regsets = internal constant [3 x %struct.user_regset] [%struct.user_regset { ptr @gpr_get, ptr @gpr_set, ptr null, ptr null, i32 18, i32 4, i32 4, i32 0, i32 1 }, %struct.user_regset { ptr @fpa_get, ptr @fpa_set, ptr null, ptr null, i32 29, i32 4, i32 4, i32 0, i32 2 }, %struct.user_regset { ptr @vfp_get, ptr @vfp_set, ptr null, ptr null, i32 65, i32 4, i32 4, i32 0, i32 1024 }], align 4
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@llvm.compiler.used = appending global [13 x ptr] [ptr @__event_sys_enter, ptr @__event_sys_exit, ptr @__initcall__kmod_ptrace__293_42_trace_init_flags_sys_enterearly, ptr @__initcall__kmod_ptrace__294_66_trace_init_flags_sys_exitearly, ptr @__initcall__kmod_ptrace__295_245_ptrace_break_init1, ptr @__tracepoint_ptr_sys_enter, ptr @__tracepoint_ptr_sys_exit, ptr @__tracepoint_sys_enter, ptr @__tracepoint_sys_exit, ptr @event_class_sys_enter, ptr @event_class_sys_exit, ptr @event_sys_enter, ptr @event_sys_exit], section "llvm.metadata"
@switch.table.regs_query_register_name = private unnamed_addr constant [18 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sys_enter(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sys_enter, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #18
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @syscall_regfunc() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @syscall_unregfunc() #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sys_exit(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sys_exit, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #18
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @trace_init_flags_sys_enter() #3 section ".init.text" {
  %1 = load i32, ptr getelementptr inbounds (%struct.trace_event_call, ptr @event_sys_enter, i32 0, i32 8), align 4
  %2 = or i32 %1, 2
  store i32 %2, ptr getelementptr inbounds (%struct.trace_event_call, ptr @event_sys_enter, i32 0, i32 8), align 4
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @trace_init_flags_sys_exit() #3 section ".init.text" {
  %1 = load i32, ptr getelementptr inbounds (%struct.trace_event_call, ptr @event_sys_exit, i32 0, i32 8), align 4
  %2 = or i32 %1, 2
  store i32 %2, ptr getelementptr inbounds (%struct.trace_event_call, ptr @event_sys_exit, i32 0, i32 8), align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_sys_enter(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #18
  br i1 %13, label %24, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 36) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_sys_enter, ptr %15, i32 0, i32 1
  store i32 %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_sys_enter, ptr %15, i32 0, i32 2
  %20 = getelementptr [18 x i32], ptr %1, i32 0, i32 17
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %19, align 4
  %22 = getelementptr %struct.trace_event_raw_sys_enter, ptr %15, i32 0, i32 2, i32 1
  %23 = getelementptr i32, ptr %1, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %22, ptr noundef align 4 dereferenceable(20) %23, i32 20, i1 false) #18
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #18
  br label %24

24:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_sys_enter(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #18
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
  br i1 %19, label %42, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %22 = icmp eq ptr %21, null
  br i1 %22, label %42, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #18
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #18
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_sys_enter, ptr %21, i32 0, i32 1
  store i32 %2, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_sys_enter, ptr %21, i32 0, i32 2
  %36 = getelementptr [18 x i32], ptr %1, i32 0, i32 17
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %35, align 4
  %38 = getelementptr %struct.trace_event_raw_sys_enter, ptr %21, i32 0, i32 2, i32 1
  %39 = getelementptr i32, ptr %1, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %38, ptr noundef align 4 dereferenceable(20) %39, i32 20, i1 false) #18
  %40 = load i32, ptr %5, align 4
  %41 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 36, i32 noundef %40, ptr noundef %0, i64 noundef 1, ptr noundef %41, ptr noundef %13, ptr noundef null) #18
  br label %42

42:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_sys_exit(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #18
  br i1 %13, label %23, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = tail call ptr @llvm.thread.pointer() #18
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %19, align 64
  %21 = getelementptr inbounds %struct.trace_event_raw_sys_exit, ptr %15, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_sys_exit, ptr %15, i32 0, i32 2
  store i32 %2, ptr %22, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #18
  br label %23

23:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_sys_exit(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #18
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
  br i1 %19, label %41, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %22 = icmp eq ptr %21, null
  br i1 %22, label %41, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #18
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #18
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = tail call ptr @llvm.thread.pointer() #18
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 5
  %36 = load i32, ptr %35, align 64
  %37 = getelementptr inbounds %struct.trace_event_raw_sys_exit, ptr %21, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_sys_exit, ptr %21, i32 0, i32 2
  store i32 %2, ptr %38, align 4
  %39 = load i32, ptr %5, align 4
  %40 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %39, ptr noundef %0, i64 noundef 1, ptr noundef %40, ptr noundef %13, ptr noundef null) #18
  br label %41

41:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @regs_query_register_offset(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.7, ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8, %1
  %5 = phi ptr [ @regoffset_table, %1 ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 1), %8 ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 2), %11 ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 3), %14 ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 4), %17 ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 5), %20 ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 6), %23 ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 7), %26 ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 8), %29 ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 9), %32 ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 10), %35 ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 11), %38 ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 12), %41 ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 13), %44 ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 14), %47 ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 15), %50 ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 16), %53 ], [ getelementptr inbounds ([19 x %struct.pt_regs_offset], ptr @regoffset_table, i32 0, i32 17), %56 ]
  %6 = getelementptr inbounds %struct.pt_regs_offset, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  br label %59

8:                                                ; preds = %1
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.8, ptr noundef %0)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %4, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.9, ptr noundef %0)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %4, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.10, ptr noundef %0)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %4, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.11, ptr noundef %0)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %4, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.12, ptr noundef %0)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %4, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.13, ptr noundef %0)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %4, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.14, ptr noundef %0)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %4, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.15, ptr noundef %0)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %4, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.16, ptr noundef %0)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %4, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.17, ptr noundef %0)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %4, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.18, ptr noundef %0)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %4, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.19, ptr noundef %0)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %4, label %44

44:                                               ; preds = %41
  %45 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.20, ptr noundef %0)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %4, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.21, ptr noundef %0)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %4, label %50

50:                                               ; preds = %47
  %51 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.22, ptr noundef %0)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %4, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.23, ptr noundef %0)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %4, label %56

56:                                               ; preds = %53
  %57 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.24, ptr noundef %0)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %4, label %59

59:                                               ; preds = %56, %4
  %60 = phi i32 [ %7, %4 ], [ -22, %56 ]
  ret i32 %60
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @regs_query_register_name(i32 noundef %0) local_unnamed_addr #6 {
  %2 = call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 30)
  %3 = icmp ult i32 %2, 18
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds [18 x ptr], ptr @switch.table.regs_query_register_name, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @regs_within_kernel_stack(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr [18 x i32], ptr %0, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = xor i32 %4, %1
  %6 = icmp ult i32 %5, 8192
  ret i1 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @regs_get_kernel_stack_nth(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr [18 x i32], ptr %0, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr i32, ptr %5, i32 %1
  %7 = ptrtoint ptr %6 to i32
  %8 = xor i32 %4, %7
  %9 = icmp ult i32 %8, 8192
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, ptr %6, align 4
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ %11, %10 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @ptrace_disable(ptr nocapture noundef %0) local_unnamed_addr #9 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ptrace_break(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr [18 x i32], ptr %0, i32 0, i32 15
  %3 = load i32, ptr %2, align 4
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 @force_sig_fault(i32 noundef 5, i32 noundef 1, ptr noundef %4) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @force_sig_fault(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ptrace_break_init() #10 section ".init.text" {
  tail call void @register_undef_hook(ptr noundef nonnull @arm_break_hook) #18
  tail call void @register_undef_hook(ptr noundef nonnull @thumb_break_hook) #18
  tail call void @register_undef_hook(ptr noundef nonnull @thumb2_break_hook) #18
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @clear_ptrace_hw_breakpoint(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 152, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(128) %2, i8 0, i32 128, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flush_ptrace_hw_breakpoint(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 152, i32 3
  br label %3

3:                                                ; preds = %9, %1
  %4 = phi i32 [ 0, %1 ], [ %10, %9 ]
  %5 = getelementptr [32 x ptr], ptr %2, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @unregister_hw_breakpoint(ptr noundef nonnull %6) #18
  store ptr null, ptr %5, align 4
  br label %9

9:                                                ; preds = %8, %3
  %10 = add nuw nsw i32 %4, 1
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %12, label %3

12:                                               ; preds = %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_hw_breakpoint(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @task_user_regset_view(ptr nocapture noundef readnone %0) local_unnamed_addr #9 {
  ret ptr @user_arm_view
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @arch_ptrace(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.perf_event_attr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_event_attr, align 8
  %9 = alloca %struct.pt_regs, align 4
  %10 = inttoptr i32 %3 to ptr
  switch i32 %1, label %311 [
    i32 3, label %11
    i32 6, label %49
    i32 12, label %79
    i32 13, label %81
    i32 14, label %87
    i32 15, label %89
    i32 18, label %95
    i32 19, label %113
    i32 22, label %134
    i32 23, label %143
    i32 27, label %146
    i32 28, label %148
    i32 29, label %154
    i32 30, label %229
  ]

11:                                               ; preds = %4
  %12 = and i32 %2, 3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %313

14:                                               ; preds = %11
  switch i32 %2, label %30 [
    i32 65536, label %15
    i32 65540, label %20
    i32 65544, label %25
  ]

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 37
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.anon.12, ptr %17, i32 0, i32 28
  %19 = load i32, ptr %18, align 8
  br label %41

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 37
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.anon.12, ptr %22, i32 0, i32 30
  %24 = load i32, ptr %23, align 8
  br label %41

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 37
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.anon.12, ptr %27, i32 0, i32 29
  %29 = load i32, ptr %28, align 4
  br label %41

30:                                               ; preds = %14
  %31 = icmp ult i32 %2, 72
  br i1 %31, label %32, label %39

32:                                               ; preds = %30
  %33 = lshr i32 %2, 2
  %34 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 8112
  %37 = getelementptr [18 x i32], ptr %36, i32 0, i32 %33
  %38 = load i32, ptr %37, align 4
  br label %41

39:                                               ; preds = %30
  %40 = icmp ugt i32 %2, 295
  br i1 %40, label %313, label %41

41:                                               ; preds = %39, %32, %25, %20, %15
  %42 = phi i32 [ %19, %15 ], [ %24, %20 ], [ %29, %25 ], [ %38, %32 ], [ 0, %39 ]
  %43 = tail call ptr @llvm.thread.pointer() #18
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %45 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %44) #14, !srcloc !13
  %46 = and i32 %45, -13
  %47 = or i32 %46, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #18, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !15
  %48 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %10, i32 %42, i32 -1090519041) #18, !srcloc !16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #18, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !15
  br label %313

49:                                               ; preds = %4
  %50 = and i32 %2, 3
  %51 = icmp ne i32 %50, 0
  %52 = icmp ugt i32 %2, 295
  %53 = or i1 %52, %51
  br i1 %53, label %313, label %54

54:                                               ; preds = %49
  %55 = icmp ugt i32 %2, 71
  br i1 %55, label %313, label %56

56:                                               ; preds = %54
  %57 = lshr i32 %2, 2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %9) #18
  %58 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 8112
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %9, ptr noundef align 4 dereferenceable(72) %60, i32 72, i1 false) #18
  %61 = getelementptr [18 x i32], ptr %9, i32 0, i32 %57
  store i32 %3, ptr %61, align 4
  %62 = getelementptr inbounds [18 x i32], ptr %9, i32 0, i32 16
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 31
  %65 = and i32 %63, 128
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %56
  %68 = icmp eq i32 %64, 16
  br i1 %68, label %75, label %69

69:                                               ; preds = %67
  %70 = load i32, ptr @elf_hwcap, align 4
  %71 = and i32 %70, 8
  %72 = icmp ne i32 %71, 0
  %73 = icmp eq i32 %64, 0
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %75, label %77

75:                                               ; preds = %69, %67
  %76 = getelementptr [18 x i32], ptr %60, i32 0, i32 %57
  store i32 %3, ptr %76, align 4
  br label %77

77:                                               ; preds = %75, %69, %56
  %78 = phi i32 [ 0, %75 ], [ -22, %69 ], [ -22, %56 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %9) #18
  br label %313

79:                                               ; preds = %4
  %80 = tail call i32 @copy_regset_to_user(ptr noundef %0, ptr noundef nonnull @user_arm_view, i32 noundef 0, i32 noundef 0, i32 noundef 72, ptr noundef %10) #18
  br label %313

81:                                               ; preds = %4
  %82 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 72, i32 -1090519040) #19, !srcloc !17
  %83 = extractvalue { i32, i32 } %82, 0
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %313

85:                                               ; preds = %81
  %86 = tail call i32 @gpr_set(ptr noundef %0, ptr noundef nonnull @arm_regsets, i32 noundef 0, i32 noundef 72, ptr noundef null, ptr noundef %10) #18
  br label %313

87:                                               ; preds = %4
  %88 = tail call i32 @copy_regset_to_user(ptr noundef %0, ptr noundef nonnull @user_arm_view, i32 noundef 1, i32 noundef 0, i32 noundef 152, ptr noundef %10) #18
  br label %313

89:                                               ; preds = %4
  %90 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 152, i32 -1090519040) #19, !srcloc !17
  %91 = extractvalue { i32, i32 } %90, 0
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %313

93:                                               ; preds = %89
  %94 = tail call i32 @fpa_set(ptr noundef %0, ptr noundef getelementptr inbounds ([3 x %struct.user_regset], ptr @arm_regsets, i32 0, i32 1), i32 noundef 0, i32 noundef 152, ptr noundef null, ptr noundef %10) #18
  br label %313

95:                                               ; preds = %4
  %96 = load volatile i32, ptr %0, align 4
  %97 = and i32 %96, 131072
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %313, label %99

99:                                               ; preds = %95
  tail call void @iwmmxt_task_disable(ptr noundef %0) #18
  %100 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 152, i32 -1090519040) #19, !srcloc !18
  %101 = extractvalue { i32, i32 } %100, 0
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %313

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 9
  %105 = tail call ptr @llvm.thread.pointer() #18
  %106 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 3
  %107 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %106) #14, !srcloc !13
  %108 = and i32 %107, -13
  %109 = or i32 %108, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %109) #18, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !15
  %110 = tail call i32 @arm_copy_to_user(ptr noundef %10, ptr noundef %104, i32 noundef 152) #18
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %107) #18, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !15
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %111, i32 0, i32 -14
  br label %313

113:                                              ; preds = %4
  %114 = load volatile i32, ptr %0, align 4
  %115 = and i32 %114, 131072
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %313, label %117

117:                                              ; preds = %113
  tail call void @iwmmxt_task_release(ptr noundef %0) #18
  %118 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 9
  %119 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 152, i32 -1090519040) #19, !srcloc !19
  %120 = extractvalue { i32, i32 } %119, 0
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %130, !prof !10

122:                                              ; preds = %117
  %123 = tail call ptr @llvm.thread.pointer() #18
  %124 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 3
  %125 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %124) #14, !srcloc !13
  %126 = and i32 %125, -13
  %127 = or i32 %126, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %127) #18, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !15
  %128 = tail call i32 @arm_copy_from_user(ptr noundef %118, ptr noundef %10, i32 noundef 152) #18
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %125) #18, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !15
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %313, label %130, !prof !10

130:                                              ; preds = %122, %117
  %131 = phi i32 [ %128, %122 ], [ 152, %117 ]
  %132 = sub i32 152, %131
  %133 = getelementptr i8, ptr %118, i32 %132
  tail call void @llvm.memset.p0.i32(ptr align 1 %133, i8 0, i32 %131, i1 false) #18
  br label %313

134:                                              ; preds = %4
  %135 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 7
  %136 = load i32, ptr %135, align 4
  %137 = tail call ptr @llvm.thread.pointer() #18
  %138 = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 3
  %139 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %138) #14, !srcloc !13
  %140 = and i32 %139, -13
  %141 = or i32 %140, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %141) #18, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !15
  %142 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %10, i32 %136, i32 -1090519041) #18, !srcloc !20
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %139) #18, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !15
  br label %313

143:                                              ; preds = %4
  %144 = and i32 %3, 1048575
  %145 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 5
  store i32 %144, ptr %145, align 64
  br label %313

146:                                              ; preds = %4
  %147 = tail call i32 @copy_regset_to_user(ptr noundef %0, ptr noundef nonnull @user_arm_view, i32 noundef 2, i32 noundef 0, i32 noundef 260, ptr noundef %10) #18
  br label %313

148:                                              ; preds = %4
  %149 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 260, i32 -1090519040) #19, !srcloc !17
  %150 = extractvalue { i32, i32 } %149, 0
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %313

152:                                              ; preds = %148
  %153 = tail call i32 @vfp_set(ptr noundef %0, ptr noundef getelementptr inbounds ([3 x %struct.user_regset], ptr @arm_regsets, i32 0, i32 2), i32 noundef 0, i32 noundef 260, ptr noundef null, ptr noundef %10) #18
  br label %313

154:                                              ; preds = %4
  %155 = icmp eq i32 %2, 0
  br i1 %155, label %156, label %171

156:                                              ; preds = %154
  %157 = tail call i32 @hw_breakpoint_slots(i32 noundef 0) #18
  %158 = tail call i32 @hw_breakpoint_slots(i32 noundef 1) #18
  %159 = tail call zeroext i8 @arch_get_debug_arch() #18
  %160 = tail call zeroext i8 @arch_get_max_wp_len() #18
  %161 = zext i8 %159 to i32
  %162 = zext i8 %160 to i32
  %163 = shl nuw nsw i32 %161, 16
  %164 = shl nuw nsw i32 %162, 8
  %165 = or i32 %164, %163
  %166 = and i32 %158, 255
  %167 = or i32 %165, %166
  %168 = shl nuw i32 %167, 8
  %169 = and i32 %157, 255
  %170 = or i32 %168, %169
  br label %219

171:                                              ; preds = %154
  %172 = icmp slt i32 %2, 0
  %173 = sub i32 32, %2
  %174 = select i1 %172, i32 %173, i32 %2
  %175 = add i32 %174, -1
  %176 = icmp ugt i32 %175, 63
  br i1 %176, label %313, label %177

177:                                              ; preds = %171
  %178 = lshr i32 %175, 1
  %179 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 152, i32 3
  %180 = getelementptr [32 x ptr], ptr %179, i32 0, i32 %178
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %219, label %183

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.perf_event, ptr %181, i32 0, i32 25
  %185 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %184, i32 0, i32 3
  %186 = load i32, ptr %185, align 4
  %187 = and i32 %186, 524288
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %189, %183
  %190 = phi i32 [ %194, %189 ], [ %186, %183 ]
  %191 = lshr i32 %190, 1
  %192 = and i32 %191, 66584576
  %193 = and i32 %190, -133693441
  %194 = or i32 %192, %193
  %195 = and i32 %190, 1048576
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %189, label %197

197:                                              ; preds = %189, %183
  %198 = phi i32 [ %186, %183 ], [ %194, %189 ]
  %199 = and i32 %2, 1
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.perf_event, ptr %181, i32 0, i32 21, i32 9
  %203 = load i64, ptr %202, align 8
  %204 = trunc i64 %203 to i32
  br label %219

205:                                              ; preds = %197
  %206 = shl i32 %198, 13
  %207 = and i32 %206, 4194304
  %208 = lshr i32 %198, 14
  %209 = and i32 %208, 8160
  %210 = lshr i32 %198, 24
  %211 = and i32 %210, 24
  %212 = lshr i32 %198, 28
  %213 = and i32 %212, 6
  %214 = lshr i32 %198, 31
  %215 = or i32 %209, %214
  %216 = or i32 %215, %207
  %217 = or i32 %216, %211
  %218 = or i32 %217, %213
  br label %219

219:                                              ; preds = %205, %201, %177, %156
  %220 = phi i32 [ %170, %156 ], [ %204, %201 ], [ %218, %205 ], [ 0, %177 ]
  %221 = tail call ptr @llvm.thread.pointer() #18
  %222 = getelementptr inbounds %struct.thread_info, ptr %221, i32 0, i32 3
  %223 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %222) #14, !srcloc !13
  %224 = and i32 %223, -13
  %225 = or i32 %224, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %225) #18, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !15
  %226 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %10, i32 %220, i32 -1090519041) #18, !srcloc !21
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %223) #18, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !15
  %227 = icmp eq i32 %226, 0
  %228 = select i1 %227, i32 0, i32 -14
  br label %313

229:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 0, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #18
  %230 = icmp eq i32 %2, 0
  br i1 %230, label %309, label %231

231:                                              ; preds = %229
  %232 = icmp slt i32 %2, 0
  %233 = select i1 %232, i32 3, i32 4
  %234 = sub i32 32, %2
  %235 = select i1 %232, i32 %234, i32 %2
  %236 = add i32 %235, -1
  %237 = ashr i32 %236, 1
  %238 = icmp ugt i32 %236, 63
  br i1 %238, label %309, label %239

239:                                              ; preds = %231
  %240 = tail call ptr @llvm.thread.pointer() #18
  %241 = getelementptr inbounds %struct.thread_info, ptr %240, i32 0, i32 3
  %242 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %241) #14, !srcloc !13
  %243 = and i32 %242, -13
  %244 = or i32 %243, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %244) #18, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !15
  %245 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %10, i32 -1090519041) #18, !srcloc !22
  %246 = extractvalue { i32, i32 } %245, 0
  %247 = extractvalue { i32, i32 } %245, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %242) #18, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !15
  %248 = icmp eq i32 %246, 0
  br i1 %248, label %249, label %309

249:                                              ; preds = %239
  %250 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 152, i32 3
  %251 = getelementptr [32 x ptr], ptr %250, i32 0, i32 %237
  %252 = load ptr, ptr %251, align 4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %266

254:                                              ; preds = %249
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #18
  %255 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(120) %255, i8 0, i64 120, i1 false) #18
  store i32 5, ptr %5, align 8
  %256 = getelementptr inbounds %struct.perf_event_attr, ptr %5, i32 0, i32 1
  store i32 128, ptr %256, align 4
  %257 = getelementptr inbounds %struct.perf_event_attr, ptr %5, i32 0, i32 6
  %258 = getelementptr inbounds %struct.perf_event_attr, ptr %5, i32 0, i32 3
  store i64 1, ptr %258, align 8
  %259 = getelementptr inbounds %struct.perf_event_attr, ptr %5, i32 0, i32 10
  store i64 4, ptr %259, align 8
  %260 = getelementptr inbounds %struct.perf_event_attr, ptr %5, i32 0, i32 8
  store i32 %233, ptr %260, align 4
  store i64 37, ptr %257, align 8
  %261 = call ptr @register_user_hw_breakpoint(ptr noundef nonnull %5, ptr noundef nonnull @ptrace_hbptriggered, ptr noundef null, ptr noundef %0) #18
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #18
  %262 = icmp ugt ptr %261, inttoptr (i32 -4096 to ptr)
  br i1 %262, label %263, label %265

263:                                              ; preds = %254
  %264 = ptrtoint ptr %261 to i32
  br label %309

265:                                              ; preds = %254
  store ptr %261, ptr %251, align 4
  br label %266

266:                                              ; preds = %265, %249
  %267 = phi ptr [ %252, %249 ], [ %261, %265 ]
  %268 = getelementptr inbounds %struct.perf_event, ptr %267, i32 0, i32 21
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %8, ptr noundef align 8 dereferenceable(128) %268, i32 128, i1 false) #18
  %269 = and i32 %2, 1
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %274, label %271

271:                                              ; preds = %266
  %272 = zext i32 %247 to i64
  %273 = getelementptr inbounds %struct.perf_event_attr, ptr %8, i32 0, i32 9
  store i64 %272, ptr %273, align 8
  br label %307

274:                                              ; preds = %266
  %275 = shl i32 %247, 31
  %276 = shl i32 %247, 28
  %277 = and i32 %276, 1610612736
  %278 = or i32 %277, %275
  %279 = shl i32 %247, 24
  %280 = and i32 %279, 402653184
  %281 = or i32 %278, %280
  %282 = shl i32 %247, 14
  %283 = and i32 %282, 133693440
  %284 = or i32 %281, %283
  %285 = lshr i32 %247, 13
  %286 = and i32 %285, 512
  %287 = or i32 %284, %286
  %288 = insertvalue [1 x i32] poison, i32 %287, 0
  %289 = call i32 @arch_bp_generic_fields([1 x i32] %288, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %309

291:                                              ; preds = %274
  %292 = load i32, ptr %7, align 4
  %293 = and i32 %292, %233
  %294 = icmp eq i32 %293, %292
  br i1 %294, label %295, label %309

295:                                              ; preds = %291
  %296 = load i32, ptr %6, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.perf_event_attr, ptr %8, i32 0, i32 10
  store i64 %297, ptr %298, align 8
  %299 = getelementptr inbounds %struct.perf_event_attr, ptr %8, i32 0, i32 8
  store i32 %292, ptr %299, align 4
  %300 = xor i32 %275, -1
  %301 = lshr i32 %300, 31
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds %struct.perf_event_attr, ptr %8, i32 0, i32 6
  %304 = load i64, ptr %303, align 8
  %305 = and i64 %304, -2
  %306 = or i64 %305, %302
  store i64 %306, ptr %303, align 8
  br label %307

307:                                              ; preds = %295, %271
  %308 = call i32 @modify_user_hw_breakpoint(ptr noundef %267, ptr noundef nonnull %8) #18
  br label %309

309:                                              ; preds = %307, %291, %274, %263, %239, %231, %229
  %310 = phi i32 [ 0, %229 ], [ %308, %307 ], [ %289, %274 ], [ %264, %263 ], [ -22, %231 ], [ -14, %239 ], [ -22, %291 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  br label %313

311:                                              ; preds = %4
  %312 = tail call i32 @ptrace_request(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #18
  br label %313

313:                                              ; preds = %311, %309, %219, %171, %152, %148, %146, %143, %134, %130, %122, %113, %103, %99, %95, %93, %89, %87, %85, %81, %79, %77, %54, %49, %41, %39, %11
  %314 = phi i32 [ %312, %311 ], [ %310, %309 ], [ %147, %146 ], [ 0, %143 ], [ %142, %134 ], [ %88, %87 ], [ %80, %79 ], [ %48, %41 ], [ -5, %11 ], [ -5, %39 ], [ %78, %77 ], [ -5, %49 ], [ 0, %54 ], [ %86, %85 ], [ -14, %81 ], [ %94, %93 ], [ -14, %89 ], [ -61, %95 ], [ -14, %99 ], [ %112, %103 ], [ -13, %113 ], [ 0, %122 ], [ -14, %130 ], [ %153, %152 ], [ -14, %148 ], [ -22, %171 ], [ %228, %219 ]
  ret i32 %314
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_regset_to_user(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptrace_request(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @syscall_trace_enter(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #18
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %1
  %7 = getelementptr [18 x i32], ptr %0, i32 0, i32 12
  %8 = load i32, ptr %7, align 4
  store i32 0, ptr %7, align 4
  %9 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 120
  store i32 1, ptr %14, align 8
  %15 = shl i32 %10, 4
  %16 = and i32 %15, 128
  %17 = or i32 %16, 5
  tail call void @ptrace_notify(i32 noundef %17) #18
  %18 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 42
  %19 = load i32, ptr %18, align 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %13
  %22 = tail call i32 @send_sig(i32 noundef %19, ptr noundef %2, i32 noundef 1) #18
  store i32 0, ptr %18, align 64
  br label %23

23:                                               ; preds = %21, %13
  store i32 0, ptr %14, align 8
  %24 = load volatile i32, ptr %2, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 98, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 256
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 5
  store i32 -1, ptr %33, align 8
  br label %34

34:                                               ; preds = %32, %27, %23, %6
  store i32 %8, ptr %7, align 4
  br label %35

35:                                               ; preds = %34, %1
  %36 = load volatile i32, ptr %2, align 4
  %37 = and i32 %36, 128
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39, !prof !10

39:                                               ; preds = %35
  %40 = tail call i32 @__secure_computing(ptr noundef null) #18
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %73, label %42

42:                                               ; preds = %39, %35
  %43 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 5
  %44 = load i32, ptr %43, align 64
  %45 = load volatile i32, ptr %2, align 4
  %46 = and i32 %45, 64
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %73, label %48

48:                                               ; preds = %42
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sys_enter, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 5
  %55 = getelementptr i32, ptr @__cpu_online_mask, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %53, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %51
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !23
  %62 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sys_enter, i32 0, i32 7), align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %64, %61
  %65 = phi ptr [ %69, %64 ], [ %62, %61 ]
  %66 = load volatile ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.tracepoint_func, ptr %65, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  tail call void %66(ptr noundef %68, ptr noundef %0, i32 noundef %44) #18
  %69 = getelementptr %struct.tracepoint_func, ptr %65, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %64

72:                                               ; preds = %64, %61
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !24
  br label %73

73:                                               ; preds = %72, %51, %48, %42, %39
  %74 = phi i32 [ -1, %39 ], [ %44, %72 ], [ %44, %51 ], [ %44, %48 ], [ %44, %42 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @syscall_trace_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #18
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %32, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr %0, align 4
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sys_exit, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  %21 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sys_exit, i32 0, i32 7), align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %23, %20
  %24 = phi ptr [ %28, %23 ], [ %21, %20 ]
  %25 = load volatile ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tracepoint_func, ptr %24, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void %25(ptr noundef %27, ptr noundef %0, i32 noundef %7) #18
  %28 = getelementptr %struct.tracepoint_func, ptr %24, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %23

31:                                               ; preds = %23, %20
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  br label %32

32:                                               ; preds = %31, %10, %6, %1
  %33 = load volatile i32, ptr %2, align 4
  %34 = and i32 %33, 16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %32
  %37 = getelementptr [18 x i32], ptr %0, i32 0, i32 12
  %38 = load i32, ptr %37, align 4
  store i32 1, ptr %37, align 4
  %39 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 5
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 120
  store i32 2, ptr %44, align 8
  %45 = shl i32 %40, 4
  %46 = and i32 %45, 128
  %47 = or i32 %46, 5
  tail call void @ptrace_notify(i32 noundef %47) #18
  %48 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 42
  %49 = load i32, ptr %48, align 64
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %43
  %52 = tail call i32 @send_sig(i32 noundef %49, ptr noundef %2, i32 noundef 1) #18
  store i32 0, ptr %48, align 64
  br label %53

53:                                               ; preds = %51, %43
  store i32 0, ptr %44, align 8
  %54 = load volatile i32, ptr %2, align 4
  br label %55

55:                                               ; preds = %53, %36
  store i32 %38, ptr %37, align 4
  br label %56

56:                                               ; preds = %55, %32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #13

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_sys_enter(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #18
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_sys_enter, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_sys_enter, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.trace_event_raw_sys_enter, ptr %5, i32 0, i32 2, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.trace_event_raw_sys_enter, ptr %5, i32 0, i32 2, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.trace_event_raw_sys_enter, ptr %5, i32 0, i32 2, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.trace_event_raw_sys_enter, ptr %5, i32 0, i32 2, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr %struct.trace_event_raw_sys_enter, ptr %5, i32 0, i32 2, i32 5
  %23 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #18
  %24 = tail call i32 @trace_handle_return(ptr noundef %9) #18
  br label %25

25:                                               ; preds = %8, %3
  %26 = phi i32 [ %24, %8 ], [ %6, %3 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_sys_exit(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #18
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_sys_exit, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_sys_exit, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %11, i32 noundef %13) #18
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #18
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_undef_hook(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @break_trap(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr [18 x i32], ptr %0, i32 0, i32 15
  %4 = load i32, ptr %3, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i32 @force_sig_fault(i32 noundef 5, i32 noundef 1, ptr noundef %5) #18
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @gpr_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, [2 x i32] %2) #16 {
  %4 = extractvalue [2 x i32] %2, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 8112
  %10 = extractvalue [2 x i32] %2, 0
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 @llvm.umin.i32(i32 %4, i32 72) #18
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %11, ptr align 1 %9, i32 %12, i1 false) #18
  %13 = sub i32 %4, %12
  br label %14

14:                                               ; preds = %6, %3
  %15 = phi i32 [ %13, %6 ], [ 0, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpr_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.pt_regs, align 4
  store ptr %4, ptr %7, align 4
  store ptr %5, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %9) #18
  %10 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 8112
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %9, ptr noundef align 4 dereferenceable(72) %12, i32 72, i1 false)
  %13 = icmp ne i32 %3, 0
  %14 = icmp ult i32 %2, 72
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %34

16:                                               ; preds = %6
  %17 = sub nuw nsw i32 72, %2
  %18 = tail call i32 @llvm.umin.i32(i32 %3, i32 %17) #18
  %19 = getelementptr i8, ptr %9, i32 %2
  %20 = icmp eq ptr %4, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %19, ptr nonnull align 1 %4, i32 %18, i1 false) #18
  br label %30

22:                                               ; preds = %16
  %23 = tail call ptr @llvm.thread.pointer() #18
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #14, !srcloc !13
  %26 = and i32 %25, -13
  %27 = or i32 %26, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #18, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !15
  %28 = call i32 @arm_copy_from_user(ptr noundef %19, ptr noundef %5, i32 noundef %18) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #18, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !15
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %22, %21
  %31 = phi ptr [ %4, %21 ], [ %5, %22 ]
  %32 = phi ptr [ %7, %21 ], [ %8, %22 ]
  %33 = getelementptr i8, ptr %31, i32 %18
  store ptr %33, ptr %32, align 4
  br label %34

34:                                               ; preds = %30, %6
  %35 = getelementptr inbounds [18 x i32], ptr %9, i32 0, i32 16
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 31
  %38 = and i32 %36, -321
  store i32 %38, ptr %35, align 4
  %39 = and i32 %36, 128
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = icmp eq i32 %37, 16
  br i1 %42, label %49, label %43

43:                                               ; preds = %41
  %44 = load i32, ptr @elf_hwcap, align 4
  %45 = and i32 %44, 8
  %46 = icmp ne i32 %45, 0
  %47 = icmp eq i32 %37, 0
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %52

49:                                               ; preds = %43, %41
  %50 = load ptr, ptr %10, align 4
  %51 = getelementptr i8, ptr %50, i32 8112
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(72) %51, ptr noundef nonnull align 4 dereferenceable(72) %9, i32 72, i1 false)
  br label %52

52:                                               ; preds = %49, %43, %34, %22
  %53 = phi i32 [ 0, %49 ], [ -14, %22 ], [ -22, %43 ], [ -22, %34 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %9) #18
  ret i32 %53
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fpa_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, [2 x i32] %2) #16 {
  %4 = extractvalue [2 x i32] %2, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 9
  %8 = extractvalue [2 x i32] %2, 0
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 @llvm.umin.i32(i32 %4, i32 116) #18
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %9, ptr align 1 %7, i32 %10, i1 false) #18
  %11 = sub i32 %4, %10
  br label %12

12:                                               ; preds = %6, %3
  %13 = phi i32 [ %11, %6 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fpa_set(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  store ptr %4, ptr %7, align 4
  store ptr %5, ptr %8, align 4
  %9 = getelementptr %struct.thread_info, ptr %0, i32 0, i32 6, i32 2
  store i8 1, ptr %9, align 2
  %10 = getelementptr %struct.thread_info, ptr %0, i32 0, i32 6, i32 1
  store i8 1, ptr %10, align 1
  %11 = icmp ne i32 %3, 0
  %12 = icmp ult i32 %2, 116
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %33

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 9
  %16 = sub nuw nsw i32 116, %2
  %17 = tail call i32 @llvm.umin.i32(i32 %3, i32 %16) #18
  %18 = getelementptr i8, ptr %15, i32 %2
  %19 = icmp eq ptr %4, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %18, ptr nonnull align 1 %4, i32 %17, i1 false) #18
  br label %29

21:                                               ; preds = %14
  %22 = tail call ptr @llvm.thread.pointer() #18
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %23) #14, !srcloc !13
  %25 = and i32 %24, -13
  %26 = or i32 %25, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #18, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !15
  %27 = tail call i32 @arm_copy_from_user(ptr noundef %18, ptr noundef %5, i32 noundef %17) #18
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #18, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21, %20
  %30 = phi ptr [ %4, %20 ], [ %5, %21 ]
  %31 = phi ptr [ %7, %20 ], [ %8, %21 ]
  %32 = getelementptr i8, ptr %30, i32 %17
  store ptr %32, ptr %31, align 4
  br label %33

33:                                               ; preds = %29, %21, %6
  %34 = phi i32 [ 0, %6 ], [ -14, %21 ], [ 0, %29 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_get(ptr noundef %0, ptr nocapture noundef readnone %1, [2 x i32] %2) #0 {
  %4 = alloca i32, align 4
  %5 = extractvalue [2 x i32] %2, 1
  tail call void @vfp_sync_hwstate(ptr noundef %0) #18
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 10
  %9 = extractvalue [2 x i32] %2, 0
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 @llvm.umin.i32(i32 %5, i32 256) #18
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %10, ptr align 1 %8, i32 %11, i1 false) #18
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = sub i32 %5, %11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %16 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 10, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %4, align 4
  %18 = icmp ult i32 %13, 4
  br i1 %18, label %19, label %20, !prof !11

19:                                               ; preds = %15
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %12, ptr nonnull align 4 %4, i32 %13, i1 false)
  br label %21

20:                                               ; preds = %15
  store i32 %17, ptr %12, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = phi i32 [ %13, %19 ], [ 4, %20 ]
  %23 = sub i32 %13, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %24

24:                                               ; preds = %21, %7, %3
  %25 = phi i32 [ 0, %7 ], [ %23, %21 ], [ 0, %3 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vfp_set(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.vfp_hard_struct, align 8
  store ptr %4, ptr %7, align 4
  store ptr %5, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %9) #18
  tail call void @vfp_sync_hwstate(ptr noundef %0) #18
  %10 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(280) %9, ptr noundef align 8 dereferenceable(280) %10, i32 280, i1 false)
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %64, label %12

12:                                               ; preds = %6
  %13 = icmp ult i32 %2, 256
  br i1 %13, label %14, label %38

14:                                               ; preds = %12
  %15 = sub nuw nsw i32 256, %2
  %16 = tail call i32 @llvm.umin.i32(i32 %3, i32 %15) #18
  %17 = getelementptr i8, ptr %9, i32 %2
  %18 = icmp eq ptr %4, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %17, ptr nonnull align 1 %4, i32 %16, i1 false) #18
  br label %28

20:                                               ; preds = %14
  %21 = tail call ptr @llvm.thread.pointer() #18
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #14, !srcloc !13
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #18, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !15
  %26 = call i32 @arm_copy_from_user(ptr noundef %17, ptr noundef %5, i32 noundef %16) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #18, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %20, %19
  %29 = phi ptr [ %4, %19 ], [ %5, %20 ]
  %30 = phi ptr [ %7, %19 ], [ %8, %20 ]
  %31 = getelementptr i8, ptr %29, i32 %16
  store ptr %31, ptr %30, align 4
  %32 = sub i32 %3, %16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %64, label %34

34:                                               ; preds = %28
  %35 = add nuw nsw i32 %16, %2
  %36 = icmp ult i32 %35, 256
  br i1 %36, label %37, label %38, !prof !11

37:                                               ; preds = %34
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/regset.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 287, 0\0A.popsection", ""() #18, !srcloc !27
  unreachable

38:                                               ; preds = %34, %12
  %39 = phi i32 [ %32, %34 ], [ %3, %12 ]
  %40 = phi i32 [ %35, %34 ], [ %2, %12 ]
  %41 = icmp ult i32 %40, 260
  br i1 %41, label %42, label %64

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.vfp_hard_struct, ptr %9, i32 0, i32 2
  %44 = sub nuw nsw i32 260, %40
  %45 = call i32 @llvm.umin.i32(i32 %39, i32 %44) #18
  %46 = add nsw i32 %40, -256
  %47 = getelementptr i8, ptr %43, i32 %46
  %48 = load ptr, ptr %7, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %47, ptr nonnull align 1 %48, i32 %45, i1 false) #18
  br label %60

51:                                               ; preds = %42
  %52 = load ptr, ptr %8, align 4
  %53 = tail call ptr @llvm.thread.pointer() #18
  %54 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %55 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %54) #14, !srcloc !13
  %56 = and i32 %55, -13
  %57 = or i32 %56, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #18, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !15
  %58 = call i32 @arm_copy_from_user(ptr noundef %47, ptr noundef %52, i32 noundef %45) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #18, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !15
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %51, %50
  %61 = phi ptr [ %48, %50 ], [ %52, %51 ]
  %62 = phi ptr [ %7, %50 ], [ %8, %51 ]
  %63 = getelementptr i8, ptr %61, i32 %45
  store ptr %63, ptr %62, align 4
  br label %64

64:                                               ; preds = %60, %38, %28, %6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(280) %10, ptr noundef nonnull align 8 dereferenceable(280) %9, i32 280, i1 false)
  call void @vfp_flush_hwstate(ptr noundef %0) #18
  br label %65

65:                                               ; preds = %64, %51, %20
  %66 = phi i32 [ 0, %64 ], [ -14, %20 ], [ -14, %51 ]
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %9) #18
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfp_sync_hwstate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfp_flush_hwstate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwmmxt_task_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwmmxt_task_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_breakpoint_slots(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @arch_get_debug_arch() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @arch_get_max_wp_len() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_bp_generic_fields([1 x i32], ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @modify_user_hw_breakpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_user_hw_breakpoint(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ptrace_hbptriggered(ptr noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call ptr @llvm.thread.pointer() #18
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 152, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %132, label %8

8:                                                ; preds = %3
  %9 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %132, label %12

12:                                               ; preds = %8
  %13 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %132, label %16

16:                                               ; preds = %12
  %17 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %132, label %20

20:                                               ; preds = %16
  %21 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %132, label %24

24:                                               ; preds = %20
  %25 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %132, label %28

28:                                               ; preds = %24
  %29 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %132, label %32

32:                                               ; preds = %28
  %33 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %0
  br i1 %35, label %132, label %36

36:                                               ; preds = %32
  %37 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %0
  br i1 %39, label %132, label %40

40:                                               ; preds = %36
  %41 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 9
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %132, label %44

44:                                               ; preds = %40
  %45 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 10
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %0
  br i1 %47, label %132, label %48

48:                                               ; preds = %44
  %49 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 11
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %0
  br i1 %51, label %132, label %52

52:                                               ; preds = %48
  %53 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 12
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %0
  br i1 %55, label %132, label %56

56:                                               ; preds = %52
  %57 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 13
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, %0
  br i1 %59, label %132, label %60

60:                                               ; preds = %56
  %61 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 14
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %0
  br i1 %63, label %132, label %64

64:                                               ; preds = %60
  %65 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 15
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %0
  br i1 %67, label %132, label %68

68:                                               ; preds = %64
  %69 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 16
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, %0
  br i1 %71, label %132, label %72

72:                                               ; preds = %68
  %73 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 17
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %0
  br i1 %75, label %132, label %76

76:                                               ; preds = %72
  %77 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 18
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, %0
  br i1 %79, label %132, label %80

80:                                               ; preds = %76
  %81 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 19
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, %0
  br i1 %83, label %132, label %84

84:                                               ; preds = %80
  %85 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 20
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, %0
  br i1 %87, label %132, label %88

88:                                               ; preds = %84
  %89 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 21
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, %0
  br i1 %91, label %132, label %92

92:                                               ; preds = %88
  %93 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 22
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, %0
  br i1 %95, label %132, label %96

96:                                               ; preds = %92
  %97 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 23
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, %0
  br i1 %99, label %132, label %100

100:                                              ; preds = %96
  %101 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 24
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, %0
  br i1 %103, label %132, label %104

104:                                              ; preds = %100
  %105 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 25
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, %0
  br i1 %107, label %132, label %108

108:                                              ; preds = %104
  %109 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 26
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, %0
  br i1 %111, label %132, label %112

112:                                              ; preds = %108
  %113 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 27
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, %0
  br i1 %115, label %132, label %116

116:                                              ; preds = %112
  %117 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 28
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, %0
  br i1 %119, label %132, label %120

120:                                              ; preds = %116
  %121 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 29
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, %0
  br i1 %123, label %132, label %124

124:                                              ; preds = %120
  %125 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 30
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, %0
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 152, i32 3, i32 0, i32 31
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, %0
  br i1 %131, label %132, label %137

132:                                              ; preds = %128, %124, %120, %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16, %12, %8, %3
  %133 = phi i1 [ false, %3 ], [ false, %8 ], [ false, %12 ], [ false, %16 ], [ false, %20 ], [ false, %24 ], [ false, %28 ], [ false, %32 ], [ false, %36 ], [ false, %40 ], [ false, %44 ], [ false, %48 ], [ false, %52 ], [ false, %56 ], [ false, %60 ], [ false, %64 ], [ true, %68 ], [ true, %72 ], [ true, %76 ], [ true, %80 ], [ true, %84 ], [ true, %88 ], [ true, %92 ], [ true, %96 ], [ true, %100 ], [ true, %104 ], [ true, %108 ], [ true, %112 ], [ true, %116 ], [ true, %120 ], [ true, %124 ], [ true, %128 ]
  %134 = phi i32 [ 1, %3 ], [ 3, %8 ], [ 5, %12 ], [ 7, %16 ], [ 9, %20 ], [ 11, %24 ], [ 13, %28 ], [ 15, %32 ], [ 17, %36 ], [ 19, %40 ], [ 21, %44 ], [ 23, %48 ], [ 25, %52 ], [ 27, %56 ], [ 29, %60 ], [ 31, %64 ], [ 33, %68 ], [ 35, %72 ], [ 37, %76 ], [ 39, %80 ], [ 41, %84 ], [ 43, %88 ], [ 45, %92 ], [ 47, %96 ], [ 49, %100 ], [ 51, %104 ], [ 53, %108 ], [ 55, %112 ], [ 57, %116 ], [ 59, %120 ], [ 61, %124 ], [ 63, %128 ]
  %135 = sub nsw i32 32, %134
  %136 = select i1 %133, i32 %135, i32 %134
  br label %137

137:                                              ; preds = %132, %128
  %138 = phi i32 [ %136, %132 ], [ 0, %128 ]
  %139 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25
  %140 = getelementptr inbounds %struct.arch_hw_breakpoint, ptr %139, i32 0, i32 1
  %141 = load i32, ptr %140, align 4
  %142 = inttoptr i32 %141 to ptr
  %143 = tail call i32 @force_sig_ptrace_errno_trap(i32 noundef %138, ptr noundef %142) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @force_sig_ptrace_errno_trap(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptrace_notify(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__secure_computing(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #17

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { argmemonly nofree nounwind willreturn }
attributes #14 = { nounwind readonly }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind readnone }

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
!12 = !{i64 343918}
!13 = !{i64 2474881}
!14 = !{i64 2475078}
!15 = !{i64 2149960357}
!16 = !{i64 2154521523, i64 2154521803, i64 2154522137, i64 2154522471}
!17 = !{i64 2153418469, i64 2153418494}
!18 = !{i64 2149979347, i64 2149979372}
!19 = !{i64 2149978769, i64 2149978794}
!20 = !{i64 2154552090, i64 2154552370, i64 2154552704, i64 2154553038}
!21 = !{i64 2154529910, i64 2154530190, i64 2154530524, i64 2154530858}
!22 = !{i64 2154541132, i64 2154541412, i64 2154541746, i64 2154542080}
!23 = !{i64 2154045066}
!24 = !{i64 2154045212}
!25 = !{i64 2154060522}
!26 = !{i64 2154060668}
!27 = !{i64 2153416005, i64 2153416492, i64 2153416042, i64 2153416098, i64 2153416132, i64 2153416156, i64 2153416197, i64 2153416218, i64 2153416246, i64 2153416280}
