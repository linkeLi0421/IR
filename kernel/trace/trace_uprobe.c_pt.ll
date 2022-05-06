; ModuleID = '/llk/IR/kernel/trace/trace_uprobe.c_pt.bc'
source_filename = "../kernel/trace/trace_uprobe.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.dyn_event_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_fields = type { ptr, %union.anon.65 }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, i32, i32, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type {}
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.71, i64, i64, i64, %union.anon.72, i32, %union.anon.73, %union.anon.74, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.71 = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { i64 }
%union.anon.74 = type { i64 }
%struct.hw_perf_event = type { %union.anon.75, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.82, i64, i64, i64, i64 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i64, %struct.local64_t }
%struct.atomic64_t = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.67, %struct.trace_event, ptr, ptr, %union.anon.68, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.67 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%union.anon.68 = type { ptr }
%struct.dyn_event = type { %struct.list_head, ptr }
%struct.trace_uprobe = type { %struct.dyn_event, %struct.uprobe_consumer, %struct.path, ptr, ptr, i32, i32, i32, %struct.trace_probe }
%struct.uprobe_consumer = type { ptr, ptr, ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.trace_probe = type { %struct.list_head, ptr, i32, i32, [0 x %struct.probe_arg] }
%struct.probe_arg = type { ptr, i8, i32, i32, ptr, ptr, ptr, ptr }
%struct.trace_probe_event = type { i32, %struct.trace_event_class, %struct.trace_event_call, %struct.list_head, %struct.list_head, [0 x %struct.trace_uprobe_filter] }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.trace_uprobe_filter = type { %struct.rwlock_t, i32, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.57, %struct.list_head, %struct.list_head, %union.anon.58 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { i64 }
%union.anon.57 = type { %struct.list_head }
%union.anon.58 = type { %struct.hlist_node }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.uprobe_dispatch_data = type { ptr, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.uprobe_task = type { i32, %union.anon.54, ptr, i32, ptr, i32 }
%union.anon.54 = type { %struct.anon.55 }
%struct.anon.55 = type { %struct.arch_uprobe_task, i32 }
%struct.arch_uprobe_task = type { i32, i32 }
%struct.uprobe_cpu_buffer = type { %struct.mutex, ptr }
%struct.fetch_insn = type { i32, %union.anon.94 }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { i32, i32 }
%struct.anon.96 = type { i8, i8, i8 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.uprobe_trace_entry_head = type { %struct.trace_entry, [0 x i32] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.fetch_type = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"uprobes\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"DUMMY_EVENT\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"\016trace_uprobe: Failed to allocate trace_uprobe.(%d)\0A\00", align 1
@__initcall__kmod_trace_uprobe__272_1663_init_uprobe_trace5 = internal global ptr @init_uprobe_trace, section ".initcall5.init", align 4
@dyn_event_list = external dso_local global %struct.list_head, align 4
@trace_uprobe_ops = internal global %struct.dyn_event_operations { %struct.list_head zeroinitializer, ptr @trace_uprobe_create, ptr @trace_uprobe_show, ptr @trace_uprobe_is_busy, ptr @trace_uprobe_release, ptr @trace_uprobe_match }, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"trace_uprobe\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%return\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c".-_\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%c_%s_0x%lx\00", align 1
@__trace_uprobe_create.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"kernel/trace/trace_uprobe.c\00", align 1
@event_mutex = external dso_local global %struct.mutex, align 4
@.str.8 = private unnamed_addr constant [52 x i8] c"\014trace_uprobe: Failed to register probe event(%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"\014trace_uprobe: Reference counter offset mismatch.\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"%c:%s/%s %s:0x%0*lx\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"(0x%lx)\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c" %s=%s\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"0x%0*lx\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"0x%0*lx(0x%lx)\00", align 1
@trace_uprobe_primary_from_call.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@uprobe_dispatcher.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@uprobe_cpu_buffer = internal unnamed_addr global ptr null, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__uprobe_trace_func.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__uprobe_perf_func.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"profile buffer not large enough\00", align 1
@uretprobe_dispatcher.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@uprobe_funcs = internal global %struct.trace_event_functions { ptr @print_uprobe_event, ptr null, ptr null, ptr null }, align 4
@.str.18 = private unnamed_addr constant [21 x i8] c"%s: (0x%lx <- 0x%lx)\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"%s: (0x%lx)\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c" %s=\00", align 1
@uprobe_fields_array = internal global <{ { ptr, { ptr, [16 x i8] } }, %struct.trace_event_fields }> <{ { ptr, { ptr, [16 x i8] } } { ptr inttoptr (i32 -1 to ptr), { ptr, [16 x i8] } { ptr @uprobe_event_define_fields, [16 x i8] undef } }, %struct.trace_event_fields zeroinitializer }>, align 4
@.str.22 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"__probe_func\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"__probe_ret_ip\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"__probe_ip\00", align 1
@probe_event_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@uprobe_buffer_refcnt = internal unnamed_addr global i32 0, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@uprobe_buffer_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"&per_cpu_ptr(uprobe_cpu_buffer, cpu)->mutex\00", align 1
@probe_event_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@uprobe_perf_open.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@uprobe_perf_close.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"uprobe_events\00", align 1
@uprobe_events_ops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @probes_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @probes_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.28 = private unnamed_addr constant [15 x i8] c"uprobe_profile\00", align 1
@uprobe_profile_ops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @profile_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@probes_seq_op = internal constant %struct.seq_operations { ptr @dyn_event_seq_start, ptr @dyn_event_seq_stop, ptr @dyn_event_seq_next, ptr @probes_seq_show }, align 4
@profile_seq_op = internal constant %struct.seq_operations { ptr @dyn_event_seq_start, ptr @dyn_event_seq_stop, ptr @dyn_event_seq_next, ptr @probes_profile_seq_show }, align 4
@.str.29 = private unnamed_addr constant [18 x i8] c"  %s %-44s %15lu\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_trace_uprobe__272_1663_init_uprobe_trace5], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bpf_get_uprobe_info(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 62
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %7, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  br i1 %11, label %18, label %14

14:                                               ; preds = %5
  %15 = icmp eq ptr %13, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %13, align 4
  br label %18

18:                                               ; preds = %16, %14, %5
  %19 = phi ptr [ %17, %16 ], [ null, %14 ], [ %13, %5 ]
  br i1 %4, label %20, label %59

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.trace_event_call, ptr %7, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr @dyn_event_list, align 4
  %25 = icmp eq ptr %24, @dyn_event_list
  br i1 %25, label %82, label %26

26:                                               ; preds = %56, %20
  %27 = phi ptr [ %57, %56 ], [ %24, %20 ]
  %28 = getelementptr inbounds %struct.dyn_event, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp ne ptr %29, @trace_uprobe_ops
  %31 = icmp eq ptr %27, null
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %56, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.trace_uprobe, ptr %27, i32 0, i32 8, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_probe_event, ptr %35, i32 0, i32 2, i32 8
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 16
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr inbounds %struct.trace_probe_event, ptr %35, i32 0, i32 2, i32 2
  %41 = load ptr, ptr %40, align 4
  br i1 %39, label %46, label %42

42:                                               ; preds = %33
  %43 = icmp eq ptr %41, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr %41, align 4
  br label %46

46:                                               ; preds = %44, %42, %33
  %47 = phi ptr [ %45, %44 ], [ null, %42 ], [ %41, %33 ]
  %48 = tail call i32 @strcmp(ptr noundef %47, ptr noundef %19) #18
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.trace_probe_event, ptr %35, i32 0, i32 2, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 @strcmp(ptr noundef %53, ptr noundef %23) #18
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %50, %46, %26
  %57 = load ptr, ptr %27, align 4
  %58 = icmp eq ptr %57, @dyn_event_list
  br i1 %58, label %82, label %26

59:                                               ; preds = %18
  %60 = getelementptr i8, ptr %7, i32 84
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  %63 = load i1, ptr @trace_uprobe_primary_from_call.__already_done, align 1
  %64 = xor i1 %63, true
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %67, !prof !9

66:                                               ; preds = %59
  store i1 true, ptr @trace_uprobe_primary_from_call.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 326, i32 noundef 9, ptr noundef null) #18
  br label %67

67:                                               ; preds = %66, %59
  %68 = getelementptr i8, ptr %61, i32 -56
  %69 = icmp eq ptr %68, null
  %70 = or i1 %62, %69
  br i1 %70, label %82, label %71

71:                                               ; preds = %67, %50
  %72 = phi ptr [ %68, %67 ], [ %27, %50 ]
  %73 = getelementptr inbounds %struct.trace_uprobe, ptr %72, i32 0, i32 1, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  %76 = select i1 %75, i32 4, i32 5
  store i32 %76, ptr %1, align 4
  %77 = getelementptr inbounds %struct.trace_uprobe, ptr %72, i32 0, i32 4
  %78 = load ptr, ptr %77, align 4
  store ptr %78, ptr %2, align 4
  %79 = getelementptr inbounds %struct.trace_uprobe, ptr %72, i32 0, i32 5
  %80 = load i32, ptr %79, align 4
  %81 = zext i32 %80 to i64
  store i64 %81, ptr %3, align 8
  br label %82

82:                                               ; preds = %71, %67, %56, %20
  %83 = phi i32 [ 0, %71 ], [ -22, %20 ], [ -22, %67 ], [ -22, %56 ]
  ret i32 %83
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @create_local_trace_uprobe(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  store i64 0, ptr %5, align 8, !annotation !10
  %6 = call i32 @kern_path(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %5) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = inttoptr i32 %6 to ptr
  br label %78

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.path, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 7340032
  %15 = icmp eq i32 %14, 4194304
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  call void @path_put(ptr noundef nonnull %5) #18
  br label %78

17:                                               ; preds = %10
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %19 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 76) #19
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.trace_uprobe, ptr %19, i32 0, i32 8
  %23 = call i32 @trace_probe_init(ptr noundef %22, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i1 noundef zeroext true) #18
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %21
  store volatile ptr %19, ptr %19, align 8
  %26 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %19, ptr %26, align 4
  %27 = getelementptr inbounds %struct.dyn_event, ptr %19, i32 0, i32 1
  store ptr @trace_uprobe_ops, ptr %27, align 8
  %28 = getelementptr inbounds %struct.trace_uprobe, ptr %19, i32 0, i32 1
  store ptr @uprobe_dispatcher, ptr %28, align 4
  br i1 %3, label %29, label %31

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.trace_uprobe, ptr %19, i32 0, i32 1, i32 1
  store ptr @uretprobe_dispatcher, ptr %30, align 8
  br label %31

31:                                               ; preds = %29, %25
  %32 = getelementptr inbounds %struct.trace_uprobe, ptr %19, i32 0, i32 8, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.trace_probe_event, ptr %33, i32 0, i32 5
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_probe_event, ptr %33, i32 1, i32 1
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_probe_event, ptr %33, i32 1, i32 1, i32 1
  store volatile ptr %36, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_probe_event, ptr %33, i32 1, i32 1, i32 2
  store ptr %36, ptr %37, align 4
  br label %40

38:                                               ; preds = %21
  call void @kfree(ptr noundef nonnull %19) #18
  %39 = inttoptr i32 %23 to ptr
  br label %40

40:                                               ; preds = %38, %31
  %41 = phi ptr [ %39, %38 ], [ %19, %31 ]
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %47

43:                                               ; preds = %40, %17
  %44 = phi ptr [ %41, %40 ], [ inttoptr (i32 -12 to ptr), %17 ]
  %45 = ptrtoint ptr %44 to i32
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %45) #20
  call void @path_put(ptr noundef nonnull %5) #18
  br label %78

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.trace_uprobe, ptr %41, i32 0, i32 5
  store i32 %1, ptr %48, align 4
  %49 = getelementptr inbounds %struct.trace_uprobe, ptr %41, i32 0, i32 2
  %50 = load i64, ptr %5, align 8
  store i64 %50, ptr %49, align 4
  %51 = getelementptr inbounds %struct.trace_uprobe, ptr %41, i32 0, i32 6
  store i32 %2, ptr %51, align 4
  %52 = call noalias ptr @kstrdup(ptr noundef %0, i32 noundef 3264) #18
  %53 = getelementptr inbounds %struct.trace_uprobe, ptr %41, i32 0, i32 4
  store ptr %52, ptr %53, align 4
  %54 = icmp eq ptr %52, null
  br i1 %54, label %75, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.trace_uprobe, ptr %41, i32 0, i32 8, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.trace_probe_event, ptr %57, i32 0, i32 2, i32 3, i32 3
  store ptr @uprobe_funcs, ptr %58, align 4
  %59 = getelementptr inbounds %struct.trace_probe_event, ptr %57, i32 0, i32 2, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.trace_event_class, ptr %60, i32 0, i32 4
  store ptr @uprobe_fields_array, ptr %61, align 4
  %62 = getelementptr inbounds %struct.trace_probe_event, ptr %57, i32 0, i32 2, i32 8
  store i32 130, ptr %62, align 4
  %63 = load ptr, ptr %59, align 4
  %64 = getelementptr inbounds %struct.trace_event_class, ptr %63, i32 0, i32 3
  store ptr @trace_uprobe_register, ptr %64, align 4
  %65 = getelementptr inbounds %struct.trace_uprobe, ptr %41, i32 0, i32 1, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp ne ptr %66, null
  %68 = zext i1 %67 to i32
  %69 = getelementptr inbounds %struct.trace_uprobe, ptr %41, i32 0, i32 8
  %70 = call i32 @traceprobe_set_print_fmt(ptr noundef %69, i32 noundef %68) #18
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %55
  %73 = load ptr, ptr %56, align 4
  %74 = getelementptr inbounds %struct.trace_probe_event, ptr %73, i32 0, i32 2
  br label %78

75:                                               ; preds = %55, %47
  call void @path_put(ptr noundef %49) #18
  %76 = getelementptr inbounds %struct.trace_uprobe, ptr %41, i32 0, i32 8
  call void @trace_probe_cleanup(ptr noundef %76) #18
  %77 = load ptr, ptr %53, align 4
  call void @kfree(ptr noundef %77) #18
  call void @kfree(ptr noundef nonnull %41) #18
  br label %78

78:                                               ; preds = %75, %72, %43, %16, %8
  %79 = phi ptr [ %9, %8 ], [ %44, %43 ], [ inttoptr (i32 -12 to ptr), %75 ], [ %74, %72 ], [ inttoptr (i32 -22 to ptr), %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret ptr %79
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @alloc_trace_uprobe(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 32) #18
  %6 = extractvalue { i32, i1 } %5, 1
  %7 = extractvalue { i32, i1 } %5, 0
  %8 = tail call i32 @llvm.uadd.sat.i32(i32 %7, i32 76) #18
  %9 = select i1 %6, i32 -1, i32 %8
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.trace_uprobe, ptr %10, i32 0, i32 8
  %14 = tail call i32 @trace_probe_init(ptr noundef %13, ptr noundef %1, ptr noundef %0, i1 noundef zeroext true) #18
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %12
  store volatile ptr %10, ptr %10, align 64
  %17 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %10, ptr %17, align 4
  %18 = getelementptr inbounds %struct.dyn_event, ptr %10, i32 0, i32 1
  store ptr @trace_uprobe_ops, ptr %18, align 8
  %19 = getelementptr inbounds %struct.trace_uprobe, ptr %10, i32 0, i32 1
  store ptr @uprobe_dispatcher, ptr %19, align 4
  br i1 %3, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.trace_uprobe, ptr %10, i32 0, i32 1, i32 1
  store ptr @uretprobe_dispatcher, ptr %21, align 16
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.trace_uprobe, ptr %10, i32 0, i32 8, i32 1
  %24 = load ptr, ptr %23, align 64
  %25 = getelementptr inbounds %struct.trace_probe_event, ptr %24, i32 0, i32 5
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_probe_event, ptr %24, i32 1, i32 1
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_probe_event, ptr %24, i32 1, i32 1, i32 1
  store volatile ptr %27, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_probe_event, ptr %24, i32 1, i32 1, i32 2
  store ptr %27, ptr %28, align 4
  br label %31

29:                                               ; preds = %12
  tail call void @kfree(ptr noundef nonnull %10) #18
  %30 = inttoptr i32 %14 to ptr
  br label %31

31:                                               ; preds = %29, %22, %4
  %32 = phi ptr [ %30, %29 ], [ %10, %22 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %32
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @traceprobe_set_print_fmt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_trace_uprobe(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.trace_uprobe, ptr %0, i32 0, i32 2
  tail call void @path_put(ptr noundef %4) #18
  %5 = getelementptr inbounds %struct.trace_uprobe, ptr %0, i32 0, i32 8
  tail call void @trace_probe_cleanup(ptr noundef %5) #18
  %6 = getelementptr inbounds %struct.trace_uprobe, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #18
  tail call void @kfree(ptr noundef nonnull %0) #18
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @destroy_local_trace_uprobe(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 84
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = load i1, ptr @trace_uprobe_primary_from_call.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %1
  store i1 true, ptr @trace_uprobe_primary_from_call.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 326, i32 noundef 9, ptr noundef null) #18
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr i8, ptr %3, i32 -56
  %11 = icmp eq ptr %10, null
  %12 = or i1 %4, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %3, i32 -28
  tail call void @path_put(ptr noundef %14) #18
  tail call void @trace_probe_cleanup(ptr noundef nonnull %3) #18
  %15 = getelementptr i8, ptr %3, i32 -16
  %16 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %16) #18
  tail call void @kfree(ptr noundef nonnull %10) #18
  br label %17

17:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_uprobe_trace() #6 section ".init.text" {
  %1 = tail call i32 @dyn_event_register(ptr noundef nonnull @trace_uprobe_ops) #18
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = tail call i32 @tracing_init_dentry() #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = tail call ptr @trace_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext 416, ptr noundef null, ptr noundef null, ptr noundef nonnull @uprobe_events_ops) #18
  %8 = tail call ptr @trace_create_file(ptr noundef nonnull @.str.28, i16 noundef zeroext 288, ptr noundef null, ptr noundef null, ptr noundef nonnull @uprobe_profile_ops) #18
  br label %9

9:                                                ; preds = %6, %3, %0
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_uprobe_create(ptr noundef %0) #0 {
  %2 = tail call i32 @trace_probe_create(ptr noundef %0, ptr noundef nonnull @__trace_uprobe_create) #18
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_uprobe_show(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.trace_uprobe, ptr %1, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i32 112, i32 114
  %7 = getelementptr inbounds %struct.trace_uprobe, ptr %1, i32 0, i32 8, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.trace_probe_event, ptr %8, i32 0, i32 2, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_probe_event, ptr %8, i32 0, i32 2, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.trace_probe_event, ptr %8, i32 0, i32 2, i32 2
  %17 = load ptr, ptr %16, align 4
  br i1 %15, label %22, label %18

18:                                               ; preds = %2
  %19 = icmp eq ptr %17, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %17, align 4
  br label %22

22:                                               ; preds = %20, %18, %2
  %23 = phi ptr [ %21, %20 ], [ null, %18 ], [ %17, %2 ]
  %24 = getelementptr inbounds %struct.trace_uprobe, ptr %1, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_uprobe, ptr %1, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %6, ptr noundef %11, ptr noundef %23, ptr noundef %25, i32 noundef 8, i32 noundef %27) #18
  %28 = getelementptr inbounds %struct.trace_uprobe, ptr %1, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %29) #18
  br label %32

32:                                               ; preds = %31, %22
  %33 = getelementptr inbounds %struct.trace_uprobe, ptr %1, i32 0, i32 8, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.trace_uprobe, ptr %1, i32 1
  br label %38

38:                                               ; preds = %38, %36
  %39 = phi i32 [ 0, %36 ], [ %45, %38 ]
  %40 = getelementptr [0 x %struct.probe_arg], ptr %37, i32 0, i32 %39
  %41 = getelementptr inbounds %struct.probe_arg, ptr %40, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.probe_arg, ptr %40, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %42, ptr noundef %44) #18
  %45 = add nuw i32 %39, 1
  %46 = load i32, ptr %33, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %38, label %48

48:                                               ; preds = %38, %32
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #18
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @trace_uprobe_is_busy(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.trace_uprobe, ptr %0, i32 0, i32 8, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 3
  %6 = icmp ne i32 %5, 0
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_uprobe_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.trace_uprobe, ptr %0, i32 0, i32 8
  %3 = getelementptr inbounds %struct.trace_uprobe, ptr %0, i32 0, i32 8, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.trace_probe_event, ptr %4, i32 0, i32 4
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = load volatile ptr, ptr %5, align 4
  %10 = icmp eq ptr %9, %5
  br i1 %10, label %23, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.trace_probe_event, ptr %4, i32 0, i32 4, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %9, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11, %1
  %16 = getelementptr inbounds %struct.trace_probe_event, ptr %4, i32 0, i32 2
  %17 = tail call zeroext i1 @trace_event_dyn_busy(ptr noundef %16) #18
  br i1 %17, label %33, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.trace_probe_event, ptr %19, i32 0, i32 2
  %21 = tail call i32 @trace_remove_event_call(ptr noundef %20) #18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18, %11, %8
  %24 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %24, align 4
  tail call void @trace_probe_unlink(ptr noundef %2) #18
  %28 = icmp eq ptr %0, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.trace_uprobe, ptr %0, i32 0, i32 2
  tail call void @path_put(ptr noundef %30) #18
  tail call void @trace_probe_cleanup(ptr noundef %2) #18
  %31 = getelementptr inbounds %struct.trace_uprobe, ptr %0, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %32) #18
  tail call void @kfree(ptr noundef nonnull %0) #18
  br label %33

33:                                               ; preds = %29, %23, %18, %15
  %34 = phi i32 [ -16, %15 ], [ %21, %18 ], [ 0, %23 ], [ 0, %29 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @trace_uprobe_match(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca [64 x i8], align 1
  %7 = getelementptr inbounds %struct.trace_uprobe, ptr %4, i32 0, i32 8
  %8 = getelementptr inbounds %struct.trace_uprobe, ptr %4, i32 0, i32 8, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.trace_probe_event, ptr %9, i32 0, i32 2, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.trace_probe_event, ptr %9, i32 0, i32 2, i32 2
  %15 = load ptr, ptr %14, align 4
  br i1 %13, label %20, label %16

16:                                               ; preds = %5
  %17 = icmp eq ptr %15, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %15, align 4
  br label %20

20:                                               ; preds = %18, %16, %5
  %21 = phi ptr [ %19, %18 ], [ null, %16 ], [ %15, %5 ]
  %22 = tail call i32 @strcmp(ptr noundef %21, ptr noundef %1)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %20
  %25 = icmp eq ptr %0, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.trace_probe_event, ptr %9, i32 0, i32 2, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @strcmp(ptr noundef %29, ptr noundef nonnull %0)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %67

32:                                               ; preds = %26, %24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %6, i8 0, i32 64, i1 false) #18, !annotation !10
  %33 = icmp eq i32 %2, 0
  br i1 %33, label %65, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.trace_uprobe, ptr %4, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @strlen(ptr noundef %36) #18
  %38 = load ptr, ptr %3, align 4
  %39 = tail call i32 @strncmp(ptr noundef %36, ptr noundef %38, i32 noundef %37) #18
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %34
  %42 = getelementptr i8, ptr %38, i32 %37
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %43, 58
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.trace_uprobe, ptr %4, i32 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr inbounds %struct.trace_uprobe, ptr %4, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  br i1 %48, label %51, label %53

51:                                               ; preds = %45
  %52 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 64, ptr noundef nonnull @.str.13, i32 noundef 8, i32 noundef %50) #18
  br label %55

53:                                               ; preds = %45
  %54 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 64, ptr noundef nonnull @.str.14, i32 noundef 8, i32 noundef %50, i32 noundef %47) #18
  br label %55

55:                                               ; preds = %53, %51
  %56 = load ptr, ptr %3, align 4
  %57 = add i32 %37, 1
  %58 = getelementptr i8, ptr %56, i32 %57
  %59 = call i32 @strcmp(ptr noundef nonnull %6, ptr noundef %58) #18
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = add i32 %2, -1
  %63 = getelementptr ptr, ptr %3, i32 1
  %64 = tail call zeroext i1 @trace_probe_match_command_args(ptr noundef %7, i32 noundef %62, ptr noundef %63) #18
  br label %65

65:                                               ; preds = %61, %55, %41, %34, %32
  %66 = phi i1 [ %64, %61 ], [ true, %32 ], [ false, %41 ], [ false, %34 ], [ false, %55 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #18
  br label %67

67:                                               ; preds = %65, %26, %20
  %68 = phi i1 [ false, %26 ], [ false, %20 ], [ %66, %65 ]
  ret i1 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__trace_uprobe_create(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca [64 x i8], align 1
  %6 = alloca %struct.path, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store ptr null, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store ptr @.str, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store i64 0, ptr %6, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  store i32 0, ptr %7, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %1, align 4
  %10 = load i8, ptr %9, align 1
  switch i8 %10, label %178 [
    i8 114, label %11
    i8 112, label %12
  ]

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %2
  %13 = phi i1 [ false, %2 ], [ true, %11 ]
  %14 = icmp slt i32 %0, 2
  br i1 %14, label %178, label %15

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %9, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 58
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %9, i32 2
  store ptr %20, ptr %3, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr ptr, ptr %1, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call ptr @strchr(ptr noundef %23, i32 noundef 47)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %178, label %26

26:                                               ; preds = %21
  %27 = tail call noalias ptr @kstrdup(ptr noundef %23, i32 noundef 3264) #18
  %28 = icmp eq ptr %27, null
  br i1 %28, label %178, label %29

29:                                               ; preds = %26
  %30 = tail call ptr @strrchr(ptr noundef nonnull %27, i32 noundef 58)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = getelementptr i8, ptr %30, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, -58
  %37 = icmp ult i32 %36, -10
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %29
  tail call void @kfree(ptr noundef nonnull %27) #18
  br label %178

39:                                               ; preds = %32
  tail call void @trace_probe_log_init(ptr noundef nonnull @.str.3, i32 noundef %0, ptr noundef %1) #18
  tail call void @trace_probe_log_set_index(i32 noundef 1) #18
  store i8 0, ptr %30, align 1
  %40 = call i32 @kern_path(ptr noundef nonnull %27, i32 noundef 1, ptr noundef nonnull %6) #18
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  call void @__trace_probe_log_err(i32 noundef 0, i32 noundef 0) #18
  call void @kfree(ptr noundef nonnull %27) #18
  call void @trace_probe_log_clear() #18
  br label %178

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.path, ptr %6, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 7340032
  %48 = icmp eq i32 %47, 4194304
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  call void @__trace_probe_log_err(i32 noundef 0, i32 noundef 1) #18
  br label %176

50:                                               ; preds = %43
  %51 = call ptr @strchr(ptr noundef %33, i32 noundef 40)
  %52 = icmp eq ptr %51, null
  br i1 %52, label %78, label %53

53:                                               ; preds = %50
  %54 = call ptr @strchr(ptr noundef nonnull %51, i32 noundef 41)
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = call i32 @strlen(ptr noundef nonnull %51)
  %58 = getelementptr i8, ptr %51, i32 %57
  %59 = ptrtoint ptr %58 to i32
  %60 = ptrtoint ptr %27 to i32
  %61 = sub i32 %59, %60
  call void @__trace_probe_log_err(i32 noundef %61, i32 noundef 3) #18
  br label %176

62:                                               ; preds = %53
  %63 = getelementptr i8, ptr %54, i32 1
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = ptrtoint ptr %63 to i32
  %68 = ptrtoint ptr %27 to i32
  %69 = sub i32 %67, %68
  call void @__trace_probe_log_err(i32 noundef %69, i32 noundef 4) #18
  br label %176

70:                                               ; preds = %62
  %71 = getelementptr i8, ptr %51, i32 1
  store i8 0, ptr %51, align 1
  store i8 0, ptr %54, align 1
  %72 = call i32 @_kstrtoul(ptr noundef %71, i32 noundef 0, ptr noundef nonnull %8) #18
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = ptrtoint ptr %71 to i32
  %76 = ptrtoint ptr %27 to i32
  %77 = sub i32 %75, %76
  call void @__trace_probe_log_err(i32 noundef %77, i32 noundef 2) #18
  br label %176

78:                                               ; preds = %70, %50
  %79 = call ptr @strchr(ptr noundef %33, i32 noundef 37)
  %80 = icmp eq ptr %79, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %78
  %82 = call i32 @strcmp(ptr noundef nonnull %79, ptr noundef nonnull dereferenceable(8) @.str.4)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i8 0, ptr %79, align 1
  br label %89

85:                                               ; preds = %81
  %86 = ptrtoint ptr %79 to i32
  %87 = ptrtoint ptr %27 to i32
  %88 = sub i32 %86, %87
  call void @__trace_probe_log_err(i32 noundef %88, i32 noundef 11) #18
  br label %176

89:                                               ; preds = %84, %78
  %90 = phi i1 [ true, %84 ], [ %13, %78 ]
  %91 = call i32 @_kstrtoul(ptr noundef %33, i32 noundef 0, ptr noundef nonnull %7) #18
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = ptrtoint ptr %33 to i32
  %95 = ptrtoint ptr %27 to i32
  %96 = sub i32 %94, %95
  call void @__trace_probe_log_err(i32 noundef %96, i32 noundef 5) #18
  br label %176

97:                                               ; preds = %89
  call void @trace_probe_log_set_index(i32 noundef 0) #18
  %98 = load ptr, ptr %3, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %109, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr %1, align 4
  %102 = ptrtoint ptr %98 to i32
  %103 = ptrtoint ptr %101 to i32
  %104 = sub i32 %102, %103
  %105 = call i32 @traceprobe_parse_event_name(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %104) #18
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %176

107:                                              ; preds = %100
  %108 = load ptr, ptr %3, align 4
  br label %123

109:                                              ; preds = %97
  %110 = call ptr @strrchr(ptr noundef nonnull %27, i32 noundef 47) #18
  %111 = icmp eq ptr %110, null
  %112 = getelementptr i8, ptr %110, i32 1
  %113 = select i1 %111, ptr %27, ptr %112
  %114 = call noalias ptr @kstrdup(ptr noundef %113, i32 noundef 3264) #18
  %115 = icmp eq ptr %114, null
  br i1 %115, label %176, label %116

116:                                              ; preds = %109
  %117 = call ptr @strpbrk(ptr noundef nonnull %114, ptr noundef nonnull @.str.5)
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  store i8 0, ptr %117, align 1
  br label %120

120:                                              ; preds = %119, %116
  %121 = load i32, ptr %7, align 4
  %122 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 64, ptr noundef nonnull @.str.6, i32 noundef 112, ptr noundef nonnull %114, i32 noundef %121)
  store ptr %5, ptr %3, align 4
  call void @kfree(ptr noundef nonnull %114) #18
  br label %123

123:                                              ; preds = %120, %107
  %124 = phi ptr [ %108, %107 ], [ %5, %120 ]
  %125 = add nsw i32 %0, -2
  %126 = getelementptr ptr, ptr %1, i32 2
  %127 = load ptr, ptr %4, align 4
  %128 = call fastcc ptr @alloc_trace_uprobe(ptr noundef %127, ptr noundef %124, i32 noundef %125, i1 noundef zeroext %90)
  %129 = icmp ugt ptr %128, inttoptr (i32 -4096 to ptr)
  br i1 %129, label %130, label %137

130:                                              ; preds = %123
  %131 = ptrtoint ptr %128 to i32
  %132 = icmp ne ptr %128, inttoptr (i32 -12 to ptr)
  %133 = load i1, ptr @__trace_uprobe_create.__already_done, align 1
  %134 = xor i1 %133, true
  %135 = select i1 %132, i1 %134, i1 false
  br i1 %135, label %136, label %176, !prof !9

136:                                              ; preds = %130
  store i1 true, ptr @__trace_uprobe_create.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 678, i32 noundef 9, ptr noundef null) #18
  br label %176

137:                                              ; preds = %123
  %138 = load i32, ptr %7, align 4
  %139 = getelementptr inbounds %struct.trace_uprobe, ptr %128, i32 0, i32 5
  store i32 %138, ptr %139, align 4
  %140 = load i32, ptr %8, align 4
  %141 = getelementptr inbounds %struct.trace_uprobe, ptr %128, i32 0, i32 6
  store i32 %140, ptr %141, align 4
  %142 = getelementptr inbounds %struct.trace_uprobe, ptr %128, i32 0, i32 2
  %143 = load i64, ptr %6, align 8
  store i64 %143, ptr %142, align 4
  %144 = getelementptr inbounds %struct.trace_uprobe, ptr %128, i32 0, i32 4
  store ptr %27, ptr %144, align 4
  %145 = icmp ugt i32 %0, 2
  br i1 %145, label %146, label %161

146:                                              ; preds = %137
  %147 = getelementptr inbounds %struct.trace_uprobe, ptr %128, i32 0, i32 8
  %148 = zext i1 %90 to i32
  %149 = add nsw i32 %0, -3
  %150 = call i32 @llvm.umin.i32(i32 %149, i32 127)
  br label %154

151:                                              ; preds = %154
  %152 = add nuw nsw i32 %155, 1
  %153 = icmp eq i32 %155, %150
  br i1 %153, label %161, label %154

154:                                              ; preds = %151, %146
  %155 = phi i32 [ 0, %146 ], [ %152, %151 ]
  %156 = add nuw nsw i32 %155, 2
  call void @trace_probe_log_set_index(i32 noundef %156) #18
  %157 = getelementptr ptr, ptr %126, i32 %155
  %158 = load ptr, ptr %157, align 4
  %159 = call i32 @traceprobe_parse_probe_arg(ptr noundef %147, i32 noundef %155, ptr noundef %158, i32 noundef %148) #18
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %151, label %172

161:                                              ; preds = %151, %137
  %162 = getelementptr inbounds %struct.trace_uprobe, ptr %128, i32 0, i32 1, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = icmp ne ptr %163, null
  %165 = zext i1 %164 to i32
  %166 = getelementptr inbounds %struct.trace_uprobe, ptr %128, i32 0, i32 8
  %167 = call i32 @traceprobe_set_print_fmt(ptr noundef %166, i32 noundef %165) #18
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %161
  %170 = call fastcc i32 @register_trace_uprobe(ptr noundef %128)
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %169, %161, %154
  %173 = phi i32 [ %167, %161 ], [ %170, %169 ], [ %159, %154 ]
  call fastcc void @free_trace_uprobe(ptr noundef %128)
  br label %174

174:                                              ; preds = %172, %169
  %175 = phi i32 [ %173, %172 ], [ 0, %169 ]
  call void @trace_probe_log_clear() #18
  br label %178

176:                                              ; preds = %136, %130, %109, %100, %93, %85, %74, %66, %56, %49
  %177 = phi i32 [ -22, %66 ], [ %72, %74 ], [ -22, %85 ], [ %91, %93 ], [ %105, %100 ], [ -22, %56 ], [ -22, %49 ], [ %131, %136 ], [ %131, %130 ], [ -12, %109 ]
  call void @trace_probe_log_clear() #18
  call void @path_put(ptr noundef nonnull %6) #18
  call void @kfree(ptr noundef nonnull %27) #18
  br label %178

178:                                              ; preds = %176, %174, %42, %38, %26, %21, %12, %2
  %179 = phi i32 [ %40, %42 ], [ %177, %176 ], [ %175, %174 ], [ -125, %38 ], [ -125, %2 ], [ -125, %12 ], [ -125, %21 ], [ -12, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret i32 %179
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_probe_log_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_probe_log_set_index(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__trace_probe_log_err(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_probe_log_clear() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @traceprobe_parse_event_name(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @traceprobe_parse_probe_arg(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @register_trace_uprobe(ptr noundef %0) unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  %2 = getelementptr inbounds %struct.trace_uprobe, ptr %0, i32 0, i32 2, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 67108864
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7, !prof !11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.dentry_operations, ptr %9, i32 0, i32 12
  %11 = load ptr, ptr %10, align 16
  %12 = tail call ptr %11(ptr noundef %3, ptr noundef null) #18
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi ptr [ %12, %7 ], [ %3, %1 ]
  %15 = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 8
  %17 = load ptr, ptr @dyn_event_list, align 4
  %18 = icmp eq ptr %17, @dyn_event_list
  br i1 %18, label %61, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.trace_uprobe, ptr %0, i32 0, i32 5
  %21 = getelementptr inbounds %struct.trace_uprobe, ptr %0, i32 0, i32 6
  br label %22

22:                                               ; preds = %56, %19
  %23 = phi ptr [ %17, %19 ], [ %57, %56 ]
  %24 = getelementptr inbounds %struct.dyn_event, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp ne ptr %25, @trace_uprobe_ops
  %27 = icmp eq ptr %23, null
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %56, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.trace_uprobe, ptr %23, i32 0, i32 2, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 67108864
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35, !prof !11

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 8
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.dentry_operations, ptr %37, i32 0, i32 12
  %39 = load ptr, ptr %38, align 16
  %40 = tail call ptr %39(ptr noundef %31, ptr noundef null) #18
  br label %41

41:                                               ; preds = %35, %29
  %42 = phi ptr [ %40, %35 ], [ %31, %29 ]
  %43 = getelementptr inbounds %struct.dentry, ptr %42, i32 0, i32 5
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %16, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load i32, ptr %20, align 4
  %48 = getelementptr inbounds %struct.trace_uprobe, ptr %23, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32, ptr %21, align 4
  %53 = getelementptr inbounds %struct.trace_uprobe, ptr %23, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51, %46, %41, %22
  %57 = load ptr, ptr %23, align 4
  %58 = icmp eq ptr %57, @dyn_event_list
  br i1 %58, label %61, label %22

59:                                               ; preds = %51
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #20
  br label %237

61:                                               ; preds = %56, %13
  %62 = getelementptr inbounds %struct.trace_uprobe, ptr %0, i32 0, i32 8
  %63 = getelementptr inbounds %struct.trace_uprobe, ptr %0, i32 0, i32 8, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.trace_probe_event, ptr %64, i32 0, i32 2, i32 8
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 16
  %68 = icmp eq i32 %67, 0
  %69 = getelementptr inbounds %struct.trace_probe_event, ptr %64, i32 0, i32 2, i32 2
  %70 = load ptr, ptr %69, align 4
  br i1 %68, label %75, label %71

71:                                               ; preds = %61
  %72 = icmp eq ptr %70, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %71
  %74 = load ptr, ptr %70, align 4
  br label %75

75:                                               ; preds = %73, %71, %61
  %76 = phi ptr [ %74, %73 ], [ null, %71 ], [ %70, %61 ]
  %77 = getelementptr inbounds %struct.trace_probe_event, ptr %64, i32 0, i32 2, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr @dyn_event_list, align 4
  %81 = icmp eq ptr %80, @dyn_event_list
  br i1 %81, label %215, label %82

82:                                               ; preds = %112, %75
  %83 = phi ptr [ %113, %112 ], [ %80, %75 ]
  %84 = getelementptr inbounds %struct.dyn_event, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = icmp ne ptr %85, @trace_uprobe_ops
  %87 = icmp eq ptr %83, null
  %88 = select i1 %86, i1 true, i1 %87
  br i1 %88, label %112, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.trace_uprobe, ptr %83, i32 0, i32 8, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.trace_probe_event, ptr %91, i32 0, i32 2, i32 8
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, 16
  %95 = icmp eq i32 %94, 0
  %96 = getelementptr inbounds %struct.trace_probe_event, ptr %91, i32 0, i32 2, i32 2
  %97 = load ptr, ptr %96, align 4
  br i1 %95, label %102, label %98

98:                                               ; preds = %89
  %99 = icmp eq ptr %97, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %98
  %101 = load ptr, ptr %97, align 4
  br label %102

102:                                              ; preds = %100, %98, %89
  %103 = phi ptr [ %101, %100 ], [ null, %98 ], [ %97, %89 ]
  %104 = tail call i32 @strcmp(ptr noundef %103, ptr noundef %76) #18
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.trace_probe_event, ptr %91, i32 0, i32 2, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = load ptr, ptr %108, align 4
  %110 = tail call i32 @strcmp(ptr noundef %109, ptr noundef %79) #18
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %106, %102, %82
  %113 = load ptr, ptr %83, align 4
  %114 = icmp eq ptr %113, @dyn_event_list
  br i1 %114, label %215, label %82

115:                                              ; preds = %106
  %116 = getelementptr inbounds %struct.trace_uprobe, ptr %83, i32 0, i32 8, i32 1
  %117 = getelementptr inbounds %struct.trace_uprobe, ptr %0, i32 0, i32 1, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = icmp ne ptr %118, null
  %120 = getelementptr inbounds %struct.trace_uprobe, ptr %83, i32 0, i32 1, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = icmp ne ptr %121, null
  %123 = xor i1 %119, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  tail call void @trace_probe_log_set_index(i32 noundef 0) #18
  tail call void @__trace_probe_log_err(i32 noundef 0, i32 noundef 51) #18
  br label %237

125:                                              ; preds = %115
  %126 = getelementptr inbounds %struct.trace_uprobe, ptr %83, i32 0, i32 8
  %127 = tail call i32 @trace_probe_compare_arg_type(ptr noundef %62, ptr noundef %126) #18
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %125
  %130 = add i32 %127, 1
  tail call void @trace_probe_log_set_index(i32 noundef %130) #18
  tail call void @__trace_probe_log_err(i32 noundef 0, i32 noundef 52) #18
  br label %237

131:                                              ; preds = %125
  %132 = load ptr, ptr %116, align 4
  %133 = load ptr, ptr %2, align 4
  %134 = load i32, ptr %133, align 8
  %135 = and i32 %134, 67108864
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %143, label %137, !prof !11

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.dentry, ptr %133, i32 0, i32 8
  %139 = load ptr, ptr %138, align 8
  %140 = getelementptr inbounds %struct.dentry_operations, ptr %139, i32 0, i32 12
  %141 = load ptr, ptr %140, align 16
  %142 = tail call ptr %141(ptr noundef %133, ptr noundef null) #18
  br label %143

143:                                              ; preds = %137, %131
  %144 = phi ptr [ %142, %137 ], [ %133, %131 ]
  %145 = getelementptr inbounds %struct.dentry, ptr %144, i32 0, i32 5
  %146 = load ptr, ptr %145, align 8
  %147 = getelementptr inbounds %struct.trace_probe_event, ptr %132, i32 0, i32 4
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, %147
  br i1 %149, label %199, label %150

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.trace_uprobe, ptr %0, i32 0, i32 5
  %152 = getelementptr inbounds %struct.trace_uprobe, ptr %0, i32 1
  br label %153

153:                                              ; preds = %195, %150
  %154 = phi ptr [ %148, %150 ], [ %196, %195 ]
  %155 = getelementptr i8, ptr %154, i32 -24
  %156 = load ptr, ptr %155, align 4
  %157 = load i32, ptr %156, align 8
  %158 = and i32 %157, 67108864
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %166, label %160, !prof !11

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.dentry, ptr %156, i32 0, i32 8
  %162 = load ptr, ptr %161, align 8
  %163 = getelementptr inbounds %struct.dentry_operations, ptr %162, i32 0, i32 12
  %164 = load ptr, ptr %163, align 16
  %165 = tail call ptr %164(ptr noundef %156, ptr noundef null) #18
  br label %166

166:                                              ; preds = %160, %153
  %167 = phi ptr [ %165, %160 ], [ %156, %153 ]
  %168 = getelementptr inbounds %struct.dentry, ptr %167, i32 0, i32 5
  %169 = load ptr, ptr %168, align 8
  %170 = icmp eq ptr %146, %169
  br i1 %170, label %171, label %195

171:                                              ; preds = %166
  %172 = load i32, ptr %151, align 4
  %173 = getelementptr i8, ptr %154, i32 -12
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %172, %174
  br i1 %175, label %176, label %195

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.trace_probe, ptr %154, i32 0, i32 3
  %178 = load i32, ptr %177, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %192, label %180

180:                                              ; preds = %189, %176
  %181 = phi i32 [ %190, %189 ], [ 0, %176 ]
  %182 = getelementptr %struct.trace_probe, ptr %154, i32 0, i32 4, i32 %181, i32 5
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr [0 x %struct.probe_arg], ptr %152, i32 0, i32 %181
  %185 = getelementptr inbounds %struct.probe_arg, ptr %184, i32 0, i32 5
  %186 = load ptr, ptr %185, align 4
  %187 = tail call i32 @strcmp(ptr noundef %183, ptr noundef %186) #18
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %180
  %190 = add nuw i32 %181, 1
  %191 = icmp eq i32 %190, %178
  br i1 %191, label %198, label %180

192:                                              ; preds = %180, %176
  %193 = phi i32 [ 0, %176 ], [ %181, %180 ]
  %194 = icmp eq i32 %193, %178
  br i1 %194, label %198, label %195

195:                                              ; preds = %192, %171, %166
  %196 = load ptr, ptr %154, align 4
  %197 = icmp eq ptr %196, %147
  br i1 %197, label %199, label %153

198:                                              ; preds = %192, %189
  tail call void @trace_probe_log_set_index(i32 noundef 0) #18
  tail call void @__trace_probe_log_err(i32 noundef 0, i32 noundef 53) #18
  br label %237

199:                                              ; preds = %195, %143
  %200 = tail call i32 @trace_probe_append(ptr noundef %62, ptr noundef %126) #18
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %237

202:                                              ; preds = %199
  %203 = load ptr, ptr %63, align 4
  %204 = icmp eq ptr %0, null
  br i1 %204, label %237, label %205

205:                                              ; preds = %202
  %206 = getelementptr inbounds %struct.dyn_event, ptr %0, i32 0, i32 1
  %207 = load ptr, ptr %206, align 4
  %208 = icmp eq ptr %207, null
  br i1 %208, label %237, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.trace_probe_event, ptr %203, i32 0, i32 2, i32 8
  %211 = load i32, ptr %210, align 4
  %212 = or i32 %211, 32
  store i32 %212, ptr %210, align 4
  %213 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dyn_event_list, i32 0, i32 1), align 4
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @dyn_event_list, i32 0, i32 1), align 4
  store ptr @dyn_event_list, ptr %0, align 4
  %214 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %213, ptr %214, align 4
  store volatile ptr %0, ptr %213, align 4
  br label %237

215:                                              ; preds = %112, %75
  %216 = getelementptr inbounds %struct.trace_probe_event, ptr %64, i32 0, i32 2, i32 3, i32 3
  store ptr @uprobe_funcs, ptr %216, align 4
  %217 = getelementptr inbounds %struct.trace_event_class, ptr %78, i32 0, i32 4
  store ptr @uprobe_fields_array, ptr %217, align 4
  store i32 130, ptr %65, align 4
  %218 = load ptr, ptr %77, align 4
  %219 = getelementptr inbounds %struct.trace_event_class, ptr %218, i32 0, i32 3
  store ptr @trace_uprobe_register, ptr %219, align 4
  %220 = tail call i32 @trace_probe_register_event_call(ptr noundef %62) #18
  switch i32 %220, label %222 [
    i32 0, label %224
    i32 -17, label %221
  ]

221:                                              ; preds = %215
  tail call void @trace_probe_log_set_index(i32 noundef 0) #18
  tail call void @__trace_probe_log_err(i32 noundef 0, i32 noundef 18) #18
  br label %237

222:                                              ; preds = %215
  %223 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %220) #20
  br label %237

224:                                              ; preds = %215
  %225 = load ptr, ptr %63, align 4
  %226 = icmp eq ptr %0, null
  br i1 %226, label %237, label %227

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.dyn_event, ptr %0, i32 0, i32 1
  %229 = load ptr, ptr %228, align 4
  %230 = icmp eq ptr %229, null
  br i1 %230, label %237, label %231

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.trace_probe_event, ptr %225, i32 0, i32 2, i32 8
  %233 = load i32, ptr %232, align 4
  %234 = or i32 %233, 32
  store i32 %234, ptr %232, align 4
  %235 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dyn_event_list, i32 0, i32 1), align 4
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @dyn_event_list, i32 0, i32 1), align 4
  store ptr @dyn_event_list, ptr %0, align 4
  %236 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %235, ptr %236, align 4
  store volatile ptr %0, ptr %235, align 4
  br label %237

237:                                              ; preds = %231, %227, %224, %222, %221, %209, %205, %202, %199, %198, %129, %124, %59
  %238 = phi i32 [ -22, %59 ], [ -17, %124 ], [ -17, %221 ], [ %220, %222 ], [ -17, %129 ], [ -17, %198 ], [ %200, %199 ], [ 0, %202 ], [ 0, %205 ], [ 0, %209 ], [ 0, %224 ], [ 0, %227 ], [ 0, %231 ]
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  ret i32 %238
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_compare_arg_type(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_append(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_register_event_call(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trace_event_dyn_busy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_probe_unlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_remove_event_call(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trace_probe_match_command_args(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_init(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uprobe_dispatcher(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.uprobe_dispatch_data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = getelementptr i8, ptr %0, i32 40
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 4
  store ptr %4, ptr %3, align 8
  %8 = getelementptr [18 x i32], ptr %1, i32 0, i32 15
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.uprobe_dispatch_data, ptr %3, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = ptrtoint ptr %3 to i32
  %12 = tail call ptr @llvm.thread.pointer() #18
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 147
  %14 = load ptr, ptr %13, align 16
  %15 = getelementptr inbounds %struct.uprobe_task, ptr %14, i32 0, i32 1, i32 0, i32 1
  store i32 %11, ptr %15, align 4
  %16 = load ptr, ptr @uprobe_cpu_buffer, align 4
  %17 = icmp eq ptr %16, null
  %18 = load i1, ptr @uprobe_dispatcher.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %2
  store i1 true, ptr @uprobe_dispatcher.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1488, i32 noundef 9, ptr noundef null) #18
  br label %22

22:                                               ; preds = %21, %2
  br i1 %17, label %174, label %23

23:                                               ; preds = %22
  %24 = getelementptr i8, ptr %0, i32 60
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %48, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %0, i32 64
  br label %29

29:                                               ; preds = %43, %27
  %30 = phi i32 [ %25, %27 ], [ %44, %43 ]
  %31 = phi i32 [ 0, %27 ], [ %45, %43 ]
  %32 = phi i32 [ 0, %27 ], [ %46, %43 ]
  %33 = getelementptr %struct.probe_arg, ptr %28, i32 %32, i32 1
  %34 = load i8, ptr %33, align 4, !range !12
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %43, label %36, !prof !11

36:                                               ; preds = %29
  %37 = getelementptr %struct.probe_arg, ptr %28, i32 %32
  %38 = load ptr, ptr %37, align 4
  %39 = call fastcc i32 @process_fetch_insn(ptr noundef %38, ptr noundef %1, ptr noundef null, ptr noundef null) #18
  %40 = call i32 @llvm.smax.i32(i32 %39, i32 0) #18
  %41 = add i32 %40, %31
  %42 = load i32, ptr %24, align 4
  br label %43

43:                                               ; preds = %36, %29
  %44 = phi i32 [ %30, %29 ], [ %42, %36 ]
  %45 = phi i32 [ %31, %29 ], [ %41, %36 ]
  %46 = add nuw i32 %32, 1
  %47 = icmp ult i32 %46, %44
  br i1 %47, label %29, label %48

48:                                               ; preds = %43, %23
  %49 = phi i32 [ 0, %23 ], [ %45, %43 ]
  %50 = getelementptr i8, ptr %0, i32 4
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  %53 = select i1 %52, i32 -12, i32 -16
  %54 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %55 = load i32, ptr %54, align 8
  %56 = load ptr, ptr @uprobe_cpu_buffer, align 4
  %57 = ptrtoint ptr %56 to i32
  %58 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %55
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, %57
  %61 = inttoptr i32 %60 to ptr
  call void @mutex_lock(ptr noundef %61) #18
  %62 = getelementptr inbounds %struct.uprobe_cpu_buffer, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 %53
  %65 = load i32, ptr %24, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %110, label %67

67:                                               ; preds = %48
  %68 = getelementptr i8, ptr %0, i32 56
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr i8, ptr %63, i32 %69
  %71 = getelementptr i8, ptr %0, i32 64
  %72 = ptrtoint ptr %64 to i32
  br label %73

73:                                               ; preds = %104, %67
  %74 = phi i32 [ 0, %67 ], [ %107, %104 ]
  %75 = phi ptr [ %70, %67 ], [ %106, %104 ]
  %76 = phi i32 [ %49, %67 ], [ %105, %104 ]
  %77 = getelementptr %struct.probe_arg, ptr %71, i32 %74
  %78 = getelementptr %struct.probe_arg, ptr %71, i32 %74, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr i8, ptr %63, i32 %79
  %81 = getelementptr %struct.probe_arg, ptr %71, i32 %74, i32 1
  %82 = load i8, ptr %81, align 4, !range !12
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %90, label %84, !prof !11

84:                                               ; preds = %73
  %85 = shl i32 %76, 16
  %86 = ptrtoint ptr %75 to i32
  %87 = sub i32 %86, %72
  %88 = and i32 %87, 65535
  %89 = or i32 %88, %85
  store i32 %89, ptr %80, align 4
  br label %90

90:                                               ; preds = %84, %73
  %91 = load ptr, ptr %77, align 4
  %92 = call fastcc i32 @process_fetch_insn(ptr noundef %91, ptr noundef %1, ptr noundef %80, ptr noundef %64) #18
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load i8, ptr %81, align 4, !range !12
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %101, label %97, !prof !11

97:                                               ; preds = %94
  %98 = ptrtoint ptr %75 to i32
  %99 = sub i32 %98, %72
  %100 = and i32 %99, 65535
  store i32 %100, ptr %80, align 4
  br label %104

101:                                              ; preds = %94, %90
  %102 = getelementptr i8, ptr %75, i32 %92
  %103 = sub i32 %76, %92
  br label %104

104:                                              ; preds = %101, %97
  %105 = phi i32 [ %76, %97 ], [ %103, %101 ]
  %106 = phi ptr [ %75, %97 ], [ %102, %101 ]
  %107 = add nuw i32 %74, 1
  %108 = load i32, ptr %24, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %73, label %110

110:                                              ; preds = %104, %48
  %111 = getelementptr i8, ptr %0, i32 52
  %112 = load ptr, ptr %111, align 4
  %113 = load i32, ptr %112, align 4
  %114 = and i32 %113, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %135, label %116

116:                                              ; preds = %110
  %117 = load ptr, ptr %50, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %135

119:                                              ; preds = %116
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  %120 = load ptr, ptr %111, align 4
  %121 = getelementptr inbounds %struct.trace_probe_event, ptr %120, i32 0, i32 3
  %122 = load volatile ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, %121
  br i1 %123, label %132, label %124

124:                                              ; preds = %124, %119
  %125 = phi ptr [ %128, %124 ], [ %122, %119 ]
  %126 = getelementptr i8, ptr %125, i32 -4
  %127 = load ptr, ptr %126, align 4
  call fastcc void @__uprobe_trace_func(ptr noundef %4, i32 noundef 0, ptr noundef %1, ptr noundef %61, i32 noundef %49, ptr noundef %127) #18
  %128 = load volatile ptr, ptr %125, align 4
  %129 = load ptr, ptr %111, align 4
  %130 = getelementptr inbounds %struct.trace_probe_event, ptr %129, i32 0, i32 3
  %131 = icmp eq ptr %128, %130
  br i1 %131, label %132, label %124

132:                                              ; preds = %124, %119
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !14
  %133 = load ptr, ptr %111, align 4
  %134 = load i32, ptr %133, align 4
  br label %135

135:                                              ; preds = %132, %116, %110
  %136 = phi i32 [ %134, %132 ], [ %113, %116 ], [ %113, %110 ]
  %137 = phi ptr [ %133, %132 ], [ %112, %116 ], [ %112, %110 ]
  %138 = and i32 %136, 2
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %172, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 37
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.trace_probe_event, ptr %137, i32 0, i32 5
  call void @_raw_read_lock(ptr noundef %143) #18
  %144 = getelementptr inbounds %struct.trace_probe_event, ptr %137, i32 1, i32 1
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct.trace_probe_event, ptr %137, i32 1, i32 1, i32 1
  br label %149

149:                                              ; preds = %153, %147
  %150 = phi ptr [ %148, %147 ], [ %151, %153 ]
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, %148
  br i1 %152, label %159, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.hw_perf_event, ptr %151, i32 0, i32 1
  %155 = load ptr, ptr %154, align 8
  %156 = getelementptr inbounds %struct.task_struct, ptr %155, i32 0, i32 37
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, %142
  br i1 %158, label %159, label %149

159:                                              ; preds = %153, %149
  %160 = xor i1 %152, true
  br label %161

161:                                              ; preds = %159, %140
  %162 = phi i1 [ true, %140 ], [ %160, %159 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %143) #18, !srcloc !16
  %163 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %143) #18, !srcloc !17
  %164 = extractvalue { i32, i32 } %163, 0
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !19
  br label %167

167:                                              ; preds = %166, %161
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !20
  br i1 %162, label %168, label %172

168:                                              ; preds = %167
  %169 = load ptr, ptr %50, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  call fastcc void @__uprobe_perf_func(ptr noundef %4, i32 noundef 0, ptr noundef %1, ptr noundef %61, i32 noundef %49) #18
  br label %172

172:                                              ; preds = %171, %168, %167, %135
  %173 = phi i32 [ 0, %135 ], [ 1, %167 ], [ 0, %171 ], [ 0, %168 ]
  call void @mutex_unlock(ptr noundef %61) #18
  br label %174

174:                                              ; preds = %172, %22
  %175 = phi i32 [ %173, %172 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i32 %175
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uretprobe_dispatcher(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.uprobe_dispatch_data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %5 = getelementptr i8, ptr %0, i32 -12
  store ptr %5, ptr %4, align 8
  %6 = getelementptr inbounds %struct.uprobe_dispatch_data, ptr %4, i32 0, i32 1
  store i32 %1, ptr %6, align 4
  %7 = ptrtoint ptr %4 to i32
  %8 = tail call ptr @llvm.thread.pointer() #18
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 147
  %10 = load ptr, ptr %9, align 16
  %11 = getelementptr inbounds %struct.uprobe_task, ptr %10, i32 0, i32 1, i32 0, i32 1
  store i32 %7, ptr %11, align 4
  %12 = load ptr, ptr @uprobe_cpu_buffer, align 4
  %13 = icmp eq ptr %12, null
  %14 = load i1, ptr @uretprobe_dispatcher.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !9

17:                                               ; preds = %3
  store i1 true, ptr @uretprobe_dispatcher.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1523, i32 noundef 9, ptr noundef null) #18
  br label %18

18:                                               ; preds = %17, %3
  br i1 %13, label %134, label %19

19:                                               ; preds = %18
  %20 = getelementptr i8, ptr %0, i32 60
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %0, i32 64
  br label %25

25:                                               ; preds = %39, %23
  %26 = phi i32 [ %21, %23 ], [ %40, %39 ]
  %27 = phi i32 [ 0, %23 ], [ %41, %39 ]
  %28 = phi i32 [ 0, %23 ], [ %42, %39 ]
  %29 = getelementptr %struct.probe_arg, ptr %24, i32 %28, i32 1
  %30 = load i8, ptr %29, align 4, !range !12
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %39, label %32, !prof !11

32:                                               ; preds = %25
  %33 = getelementptr %struct.probe_arg, ptr %24, i32 %28
  %34 = load ptr, ptr %33, align 4
  %35 = call fastcc i32 @process_fetch_insn(ptr noundef %34, ptr noundef %2, ptr noundef null, ptr noundef null) #18
  %36 = call i32 @llvm.smax.i32(i32 %35, i32 0) #18
  %37 = add i32 %36, %27
  %38 = load i32, ptr %20, align 4
  br label %39

39:                                               ; preds = %32, %25
  %40 = phi i32 [ %26, %25 ], [ %38, %32 ]
  %41 = phi i32 [ %27, %25 ], [ %37, %32 ]
  %42 = add nuw i32 %28, 1
  %43 = icmp ult i32 %42, %40
  br i1 %43, label %25, label %44

44:                                               ; preds = %39, %19
  %45 = phi i32 [ 0, %19 ], [ %41, %39 ]
  %46 = getelementptr i8, ptr %0, i32 4
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  %49 = select i1 %48, i32 -12, i32 -16
  %50 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %51 = load i32, ptr %50, align 8
  %52 = load ptr, ptr @uprobe_cpu_buffer, align 4
  %53 = ptrtoint ptr %52 to i32
  %54 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %51
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, %53
  %57 = inttoptr i32 %56 to ptr
  call void @mutex_lock(ptr noundef %57) #18
  %58 = getelementptr inbounds %struct.uprobe_cpu_buffer, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 %49
  %61 = load i32, ptr %20, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %106, label %63

63:                                               ; preds = %44
  %64 = getelementptr i8, ptr %0, i32 56
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr i8, ptr %59, i32 %65
  %67 = getelementptr i8, ptr %0, i32 64
  %68 = ptrtoint ptr %60 to i32
  br label %69

69:                                               ; preds = %100, %63
  %70 = phi i32 [ 0, %63 ], [ %103, %100 ]
  %71 = phi ptr [ %66, %63 ], [ %102, %100 ]
  %72 = phi i32 [ %45, %63 ], [ %101, %100 ]
  %73 = getelementptr %struct.probe_arg, ptr %67, i32 %70
  %74 = getelementptr %struct.probe_arg, ptr %67, i32 %70, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr i8, ptr %59, i32 %75
  %77 = getelementptr %struct.probe_arg, ptr %67, i32 %70, i32 1
  %78 = load i8, ptr %77, align 4, !range !12
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %86, label %80, !prof !11

80:                                               ; preds = %69
  %81 = shl i32 %72, 16
  %82 = ptrtoint ptr %71 to i32
  %83 = sub i32 %82, %68
  %84 = and i32 %83, 65535
  %85 = or i32 %84, %81
  store i32 %85, ptr %76, align 4
  br label %86

86:                                               ; preds = %80, %69
  %87 = load ptr, ptr %73, align 4
  %88 = call fastcc i32 @process_fetch_insn(ptr noundef %87, ptr noundef %2, ptr noundef %76, ptr noundef %60) #18
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i8, ptr %77, align 4, !range !12
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %97, label %93, !prof !11

93:                                               ; preds = %90
  %94 = ptrtoint ptr %71 to i32
  %95 = sub i32 %94, %68
  %96 = and i32 %95, 65535
  store i32 %96, ptr %76, align 4
  br label %100

97:                                               ; preds = %90, %86
  %98 = getelementptr i8, ptr %71, i32 %88
  %99 = sub i32 %72, %88
  br label %100

100:                                              ; preds = %97, %93
  %101 = phi i32 [ %72, %93 ], [ %99, %97 ]
  %102 = phi ptr [ %71, %93 ], [ %98, %97 ]
  %103 = add nuw i32 %70, 1
  %104 = load i32, ptr %20, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %69, label %106

106:                                              ; preds = %100, %44
  %107 = getelementptr i8, ptr %0, i32 52
  %108 = load ptr, ptr %107, align 4
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %128, label %112

112:                                              ; preds = %106
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  %113 = load ptr, ptr %107, align 4
  %114 = getelementptr inbounds %struct.trace_probe_event, ptr %113, i32 0, i32 3
  %115 = load volatile ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, %114
  br i1 %116, label %125, label %117

117:                                              ; preds = %117, %112
  %118 = phi ptr [ %121, %117 ], [ %115, %112 ]
  %119 = getelementptr i8, ptr %118, i32 -4
  %120 = load ptr, ptr %119, align 4
  call fastcc void @__uprobe_trace_func(ptr noundef %5, i32 noundef %1, ptr noundef %2, ptr noundef %57, i32 noundef %45, ptr noundef %120) #18
  %121 = load volatile ptr, ptr %118, align 4
  %122 = load ptr, ptr %107, align 4
  %123 = getelementptr inbounds %struct.trace_probe_event, ptr %122, i32 0, i32 3
  %124 = icmp eq ptr %121, %123
  br i1 %124, label %125, label %117

125:                                              ; preds = %117, %112
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !14
  %126 = load ptr, ptr %107, align 4
  %127 = load i32, ptr %126, align 4
  br label %128

128:                                              ; preds = %125, %106
  %129 = phi i32 [ %127, %125 ], [ %109, %106 ]
  %130 = and i32 %129, 2
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  call fastcc void @__uprobe_perf_func(ptr noundef %5, i32 noundef %1, ptr noundef %2, ptr noundef %57, i32 noundef %45) #18
  br label %133

133:                                              ; preds = %132, %128
  call void @mutex_unlock(ptr noundef %57) #18
  br label %134

134:                                              ; preds = %133, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @process_fetch_insn(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, ptr %0, align 4
  switch i32 %7, label %392 [
    i32 1, label %8
    i32 2, label %17
    i32 3, label %44
    i32 4, label %47
    i32 5, label %49
    i32 6, label %72
    i32 9, label %52
    i32 8, label %56
  ]

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.fetch_insn, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 68
  br i1 %11, label %72, label %12, !prof !9

12:                                               ; preds = %8
  %13 = ptrtoint ptr %1 to i32
  %14 = add i32 %10, %13
  %15 = inttoptr i32 %14 to ptr
  %16 = load i32, ptr %15, align 4
  br label %72

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.fetch_insn, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 0, ptr %6, align 4, !annotation !10
  %20 = getelementptr [18 x i32], ptr %1, i32 0, i32 13
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 %19, 2
  %23 = add i32 %21, %22
  %24 = inttoptr i32 %23 to ptr
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %24, i32 4, i32 -1090519040) #22, !srcloc !21
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36, !prof !11

28:                                               ; preds = %17
  %29 = tail call ptr @llvm.thread.pointer() #18
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %30) #16, !srcloc !22
  %32 = and i32 %31, -13
  %33 = or i32 %32, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #18, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !24
  %34 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %24, i32 noundef 4) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #18, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !24
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36, !prof !11

36:                                               ; preds = %28, %17
  %37 = phi i32 [ %34, %28 ], [ 4, %17 ]
  %38 = sub i32 4, %37
  %39 = getelementptr i8, ptr %6, i32 %38
  call void @llvm.memset.p0.i32(ptr align 1 %39, i8 0, i32 %37, i1 false) #18
  br label %42

40:                                               ; preds = %28
  %41 = load i32, ptr %6, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi i32 [ %41, %40 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  br label %72

44:                                               ; preds = %4
  %45 = getelementptr [18 x i32], ptr %1, i32 0, i32 13
  %46 = load i32, ptr %45, align 4
  br label %72

47:                                               ; preds = %4
  %48 = load i32, ptr %1, align 4
  br label %72

49:                                               ; preds = %4
  %50 = getelementptr inbounds %struct.fetch_insn, ptr %0, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  br label %72

52:                                               ; preds = %4
  %53 = getelementptr inbounds %struct.fetch_insn, ptr %0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = ptrtoint ptr %54 to i32
  br label %72

56:                                               ; preds = %4
  %57 = getelementptr inbounds %struct.fetch_insn, ptr %0, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = tail call ptr @llvm.thread.pointer() #18
  %60 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 147
  %61 = load ptr, ptr %60, align 16
  %62 = getelementptr inbounds %struct.uprobe_task, ptr %61, i32 0, i32 1, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = inttoptr i32 %63 to ptr
  %65 = getelementptr inbounds %struct.uprobe_dispatch_data, ptr %64, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr %64, align 4
  %68 = getelementptr inbounds %struct.trace_uprobe, ptr %67, i32 0, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %66, %58
  %71 = sub i32 %70, %69
  br label %72

72:                                               ; preds = %56, %52, %49, %47, %44, %42, %12, %8, %4
  %73 = phi i32 [ %71, %56 ], [ %55, %52 ], [ %51, %49 ], [ %48, %47 ], [ %46, %44 ], [ %43, %42 ], [ -70, %4 ], [ %16, %12 ], [ 0, %8 ]
  %74 = getelementptr %struct.fetch_insn, ptr %0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 %73, ptr %5, align 4
  br label %75

75:                                               ; preds = %380, %72
  %76 = phi ptr [ %74, %72 ], [ %370, %380 ]
  %77 = phi ptr [ %2, %72 ], [ %381, %380 ]
  %78 = phi i32 [ 0, %72 ], [ %354, %380 ]
  %79 = phi i32 [ 0, %72 ], [ %350, %380 ]
  %80 = phi i32 [ 0, %72 ], [ %355, %380 ]
  %81 = phi i32 [ 0, %72 ], [ %351, %380 ]
  %82 = phi i32 [ %73, %72 ], [ %86, %380 ]
  br label %83

83:                                               ; preds = %138, %75
  %84 = phi ptr [ %76, %75 ], [ %140, %138 ]
  %85 = phi i32 [ %79, %75 ], [ 0, %138 ]
  %86 = phi i32 [ %82, %75 ], [ %139, %138 ]
  %87 = load i32, ptr %84, align 4
  switch i32 %87, label %88 [
    i32 10, label %96
    i32 11, label %117
  ]

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.fetch_insn, ptr %84, i32 0, i32 1, i32 0, i32 1
  %90 = getelementptr inbounds %struct.fetch_insn, ptr %84, i32 0, i32 1
  %91 = getelementptr %struct.fetch_insn, ptr %84, i32 1
  %92 = getelementptr %struct.fetch_insn, ptr %84, i32 1, i32 1
  %93 = getelementptr inbounds %struct.anon.96, ptr %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.anon.96, ptr %92, i32 0, i32 2
  %95 = getelementptr %struct.fetch_insn, ptr %84, i32 2
  br label %141

96:                                               ; preds = %83
  %97 = load i32, ptr %5, align 4
  %98 = inttoptr i32 %97 to ptr
  %99 = getelementptr inbounds %struct.fetch_insn, ptr %84, i32 0, i32 1, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr i8, ptr %98, i32 %100
  %102 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %101, i32 4, i32 -1090519040) #22, !srcloc !21
  %103 = extractvalue { i32, i32 } %102, 0
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %113, !prof !11

105:                                              ; preds = %96
  %106 = tail call ptr @llvm.thread.pointer() #18
  %107 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 3
  %108 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %107) #16, !srcloc !22
  %109 = and i32 %108, -13
  %110 = or i32 %109, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %110) #18, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !24
  %111 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %101, i32 noundef 4) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %108) #18, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !24
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %138, label %113, !prof !11

113:                                              ; preds = %105, %96
  %114 = phi i32 [ %111, %105 ], [ 4, %96 ]
  %115 = sub i32 4, %114
  %116 = getelementptr i8, ptr %5, i32 %115
  call void @llvm.memset.p0.i32(ptr align 1 %116, i8 0, i32 %114, i1 false) #18
  br label %390

117:                                              ; preds = %83
  %118 = load i32, ptr %5, align 4
  %119 = inttoptr i32 %118 to ptr
  %120 = getelementptr inbounds %struct.fetch_insn, ptr %84, i32 0, i32 1, i32 0, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr i8, ptr %119, i32 %121
  %123 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %122, i32 4, i32 -1090519040) #22, !srcloc !21
  %124 = extractvalue { i32, i32 } %123, 0
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %134, !prof !11

126:                                              ; preds = %117
  %127 = tail call ptr @llvm.thread.pointer() #18
  %128 = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 3
  %129 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %128) #16, !srcloc !22
  %130 = and i32 %129, -13
  %131 = or i32 %130, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %131) #18, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !24
  %132 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %122, i32 noundef 4) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %129) #18, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !24
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %138, label %134, !prof !11

134:                                              ; preds = %126, %117
  %135 = phi i32 [ %132, %126 ], [ 4, %117 ]
  %136 = sub i32 4, %135
  %137 = getelementptr i8, ptr %5, i32 %136
  call void @llvm.memset.p0.i32(ptr align 1 %137, i8 0, i32 %135, i1 false) #18
  br label %390

138:                                              ; preds = %126, %105
  %139 = phi i32 [ %97, %105 ], [ %118, %126 ]
  %140 = getelementptr %struct.fetch_insn, ptr %84, i32 1
  br label %83

141:                                              ; preds = %363, %88
  %142 = phi i32 [ %368, %363 ], [ %87, %88 ]
  %143 = phi ptr [ %365, %363 ], [ %77, %88 ]
  %144 = phi i32 [ %354, %363 ], [ %78, %88 ]
  %145 = phi i32 [ %350, %363 ], [ %85, %88 ]
  %146 = phi i32 [ %355, %363 ], [ %80, %88 ]
  %147 = phi i32 [ %351, %363 ], [ %81, %88 ]
  %148 = icmp eq ptr %143, null
  br i1 %148, label %149, label %161, !prof !9

149:                                              ; preds = %141
  switch i32 %142, label %390 [
    i32 15, label %150
    i32 16, label %155
  ]

150:                                              ; preds = %149
  %151 = load i32, ptr %5, align 4
  %152 = load i32, ptr %89, align 4
  %153 = add i32 %152, %151
  %154 = call fastcc i32 @fetch_store_strlen(i32 noundef %153) #18
  br label %342

155:                                              ; preds = %149
  %156 = load i32, ptr %5, align 4
  %157 = load i32, ptr %89, align 4
  %158 = add i32 %157, %156
  %159 = call fastcc i32 @fetch_store_strlen_user(i32 noundef %158) #18
  %160 = add i32 %159, %145
  br label %342

161:                                              ; preds = %141
  switch i32 %142, label %390 [
    i32 12, label %162
    i32 13, label %173
    i32 14, label %202
    i32 15, label %231
    i32 16, label %263
  ]

162:                                              ; preds = %161
  %163 = load i32, ptr %5, align 4
  %164 = load i32, ptr %90, align 4
  switch i32 %164, label %172 [
    i32 1, label %165
    i32 2, label %167
    i32 4, label %169
    i32 8, label %170
  ]

165:                                              ; preds = %162
  %166 = trunc i32 %163 to i8
  store i8 %166, ptr %143, align 1
  br label %295

167:                                              ; preds = %162
  %168 = trunc i32 %163 to i16
  store i16 %168, ptr %143, align 2
  br label %295

169:                                              ; preds = %162
  store i32 %163, ptr %143, align 4
  br label %295

170:                                              ; preds = %162
  %171 = zext i32 %163 to i64
  store i64 %171, ptr %143, align 8
  br label %295

172:                                              ; preds = %162
  store i32 %163, ptr %143, align 4
  br label %295

173:                                              ; preds = %161
  %174 = load i32, ptr %5, align 4
  %175 = inttoptr i32 %174 to ptr
  %176 = load i32, ptr %89, align 4
  %177 = getelementptr i8, ptr %175, i32 %176
  %178 = load i32, ptr %90, align 4
  %179 = icmp slt i32 %178, 0
  %180 = load i1, ptr @check_copy_size.__already_done, align 1
  %181 = xor i1 %180, true
  %182 = select i1 %179, i1 %181, i1 false
  br i1 %182, label %183, label %184, !prof !9

183:                                              ; preds = %173
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 230, i32 noundef 9, ptr noundef null) #18
  br label %184

184:                                              ; preds = %183, %173
  br i1 %179, label %295, label %185, !prof !9

185:                                              ; preds = %184
  %186 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %177, i32 %178, i32 -1090519040) #22, !srcloc !21
  %187 = extractvalue { i32, i32 } %186, 0
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %196, !prof !11

189:                                              ; preds = %185
  %190 = tail call ptr @llvm.thread.pointer() #18
  %191 = getelementptr inbounds %struct.thread_info, ptr %190, i32 0, i32 3
  %192 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %191) #16, !srcloc !22
  %193 = and i32 %192, -13
  %194 = or i32 %193, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %194) #18, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !24
  %195 = call i32 @arm_copy_from_user(ptr noundef nonnull %143, ptr noundef %177, i32 noundef %178) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %192) #18, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !24
  br label %196

196:                                              ; preds = %189, %185
  %197 = phi i32 [ %195, %189 ], [ %178, %185 ]
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %295, label %199, !prof !11

199:                                              ; preds = %196
  %200 = sub i32 %178, %197
  %201 = getelementptr i8, ptr %143, i32 %200
  call void @llvm.memset.p0.i32(ptr align 1 %201, i8 0, i32 %197, i1 false) #18
  br label %295

202:                                              ; preds = %161
  %203 = load i32, ptr %5, align 4
  %204 = inttoptr i32 %203 to ptr
  %205 = load i32, ptr %89, align 4
  %206 = getelementptr i8, ptr %204, i32 %205
  %207 = load i32, ptr %90, align 4
  %208 = icmp slt i32 %207, 0
  %209 = load i1, ptr @check_copy_size.__already_done, align 1
  %210 = xor i1 %209, true
  %211 = select i1 %208, i1 %210, i1 false
  br i1 %211, label %212, label %213, !prof !9

212:                                              ; preds = %202
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 230, i32 noundef 9, ptr noundef null) #18
  br label %213

213:                                              ; preds = %212, %202
  br i1 %208, label %295, label %214, !prof !9

214:                                              ; preds = %213
  %215 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %206, i32 %207, i32 -1090519040) #22, !srcloc !21
  %216 = extractvalue { i32, i32 } %215, 0
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %225, !prof !11

218:                                              ; preds = %214
  %219 = tail call ptr @llvm.thread.pointer() #18
  %220 = getelementptr inbounds %struct.thread_info, ptr %219, i32 0, i32 3
  %221 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %220) #16, !srcloc !22
  %222 = and i32 %221, -13
  %223 = or i32 %222, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %223) #18, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !24
  %224 = call i32 @arm_copy_from_user(ptr noundef nonnull %143, ptr noundef %206, i32 noundef %207) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %221) #18, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !24
  br label %225

225:                                              ; preds = %218, %214
  %226 = phi i32 [ %224, %218 ], [ %207, %214 ]
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %295, label %228, !prof !11

228:                                              ; preds = %225
  %229 = sub i32 %207, %226
  %230 = getelementptr i8, ptr %143, i32 %229
  call void @llvm.memset.p0.i32(ptr align 1 %230, i8 0, i32 %226, i1 false) #18
  br label %295

231:                                              ; preds = %161
  %232 = load i32, ptr %143, align 4
  %233 = load i32, ptr %5, align 4
  %234 = load i32, ptr %89, align 4
  %235 = add i32 %234, %233
  %236 = lshr i32 %232, 16
  %237 = and i32 %232, 65535
  %238 = getelementptr i8, ptr %3, i32 %237
  %239 = inttoptr i32 %235 to ptr
  %240 = icmp ult i32 %232, 65536
  br i1 %240, label %295, label %241, !prof !9

241:                                              ; preds = %231
  %242 = icmp eq i32 %235, -70
  br i1 %242, label %243, label %247

243:                                              ; preds = %241
  %244 = tail call ptr @llvm.thread.pointer() #18
  %245 = getelementptr inbounds %struct.task_struct, ptr %244, i32 0, i32 85
  %246 = call i32 @strlcpy(ptr noundef %238, ptr noundef %245, i32 noundef %236) #18
  br label %249

247:                                              ; preds = %241
  %248 = call i32 @strncpy_from_user(ptr noundef %238, ptr noundef %239, i32 noundef %236) #18
  br label %249

249:                                              ; preds = %247, %243
  %250 = phi i32 [ %246, %243 ], [ %248, %247 ]
  %251 = icmp sgt i32 %250, -1
  br i1 %251, label %252, label %295

252:                                              ; preds = %249
  %253 = icmp eq i32 %250, %236
  br i1 %253, label %254, label %257

254:                                              ; preds = %252
  %255 = add nsw i32 %236, -1
  %256 = getelementptr i8, ptr %238, i32 %255
  store i8 0, ptr %256, align 1
  br label %259

257:                                              ; preds = %252
  %258 = add nuw i32 %250, 1
  br label %259

259:                                              ; preds = %257, %254
  %260 = phi i32 [ %236, %254 ], [ %258, %257 ]
  %261 = shl i32 %260, 16
  %262 = or i32 %261, %237
  store i32 %262, ptr %143, align 4
  br label %295

263:                                              ; preds = %161
  %264 = load i32, ptr %143, align 4
  %265 = load i32, ptr %5, align 4
  %266 = load i32, ptr %89, align 4
  %267 = add i32 %266, %265
  %268 = lshr i32 %264, 16
  %269 = and i32 %264, 65535
  %270 = getelementptr i8, ptr %3, i32 %269
  %271 = inttoptr i32 %267 to ptr
  %272 = icmp ult i32 %264, 65536
  br i1 %272, label %295, label %273, !prof !9

273:                                              ; preds = %263
  %274 = icmp eq i32 %267, -70
  br i1 %274, label %275, label %279

275:                                              ; preds = %273
  %276 = tail call ptr @llvm.thread.pointer() #18
  %277 = getelementptr inbounds %struct.task_struct, ptr %276, i32 0, i32 85
  %278 = call i32 @strlcpy(ptr noundef %270, ptr noundef %277, i32 noundef %268) #18
  br label %281

279:                                              ; preds = %273
  %280 = call i32 @strncpy_from_user(ptr noundef %270, ptr noundef %271, i32 noundef %268) #18
  br label %281

281:                                              ; preds = %279, %275
  %282 = phi i32 [ %278, %275 ], [ %280, %279 ]
  %283 = icmp sgt i32 %282, -1
  br i1 %283, label %284, label %295

284:                                              ; preds = %281
  %285 = icmp eq i32 %282, %268
  br i1 %285, label %286, label %289

286:                                              ; preds = %284
  %287 = add nsw i32 %268, -1
  %288 = getelementptr i8, ptr %270, i32 %287
  store i8 0, ptr %288, align 1
  br label %291

289:                                              ; preds = %284
  %290 = add nuw i32 %282, 1
  br label %291

291:                                              ; preds = %289, %286
  %292 = phi i32 [ %268, %286 ], [ %290, %289 ]
  %293 = shl i32 %292, 16
  %294 = or i32 %293, %269
  store i32 %294, ptr %143, align 4
  br label %295

295:                                              ; preds = %291, %281, %263, %259, %249, %231, %228, %225, %213, %199, %196, %184, %172, %170, %169, %167, %165
  %296 = phi i32 [ %145, %165 ], [ %145, %167 ], [ %145, %169 ], [ %145, %170 ], [ %145, %172 ], [ %145, %184 ], [ %145, %196 ], [ %145, %199 ], [ %145, %213 ], [ %145, %225 ], [ %145, %228 ], [ -12, %231 ], [ %260, %259 ], [ %250, %249 ], [ -12, %263 ], [ %292, %291 ], [ %282, %281 ]
  %297 = phi i32 [ %147, %165 ], [ %147, %167 ], [ %147, %169 ], [ %147, %170 ], [ %147, %172 ], [ %147, %184 ], [ %147, %196 ], [ %147, %199 ], [ %147, %213 ], [ %147, %225 ], [ %147, %228 ], [ %232, %231 ], [ %232, %259 ], [ %232, %249 ], [ %264, %263 ], [ %264, %291 ], [ %264, %281 ]
  %298 = load i32, ptr %91, align 4
  %299 = icmp eq i32 %298, 17
  br i1 %299, label %300, label %347

300:                                              ; preds = %295
  %301 = load i8, ptr %92, align 4
  switch i8 %301, label %342 [
    i8 1, label %302
    i8 2, label %314
    i8 4, label %326
    i8 8, label %334
  ]

302:                                              ; preds = %300
  %303 = load i8, ptr %93, align 1
  %304 = zext i8 %303 to i32
  %305 = load i8, ptr %143, align 1
  %306 = zext i8 %305 to i32
  %307 = shl i32 %306, %304
  %308 = trunc i32 %307 to i8
  store i8 %308, ptr %143, align 1
  %309 = load i8, ptr %94, align 2
  %310 = zext i8 %309 to i32
  %311 = and i32 %307, 255
  %312 = lshr i32 %311, %310
  %313 = trunc i32 %312 to i8
  store i8 %313, ptr %143, align 1
  br label %342

314:                                              ; preds = %300
  %315 = load i8, ptr %93, align 1
  %316 = zext i8 %315 to i32
  %317 = load i16, ptr %143, align 2
  %318 = zext i16 %317 to i32
  %319 = shl i32 %318, %316
  %320 = trunc i32 %319 to i16
  store i16 %320, ptr %143, align 2
  %321 = load i8, ptr %94, align 2
  %322 = zext i8 %321 to i32
  %323 = and i32 %319, 65535
  %324 = lshr i32 %323, %322
  %325 = trunc i32 %324 to i16
  store i16 %325, ptr %143, align 2
  br label %342

326:                                              ; preds = %300
  %327 = load i8, ptr %93, align 1
  %328 = zext i8 %327 to i32
  %329 = load i32, ptr %143, align 4
  %330 = shl i32 %329, %328
  store i32 %330, ptr %143, align 4
  %331 = load i8, ptr %94, align 2
  %332 = zext i8 %331 to i32
  %333 = lshr i32 %330, %332
  store i32 %333, ptr %143, align 4
  br label %342

334:                                              ; preds = %300
  %335 = load i8, ptr %93, align 1
  %336 = load i64, ptr %143, align 8
  %337 = zext i8 %335 to i64
  %338 = shl i64 %336, %337
  store i64 %338, ptr %143, align 8
  %339 = load i8, ptr %94, align 2
  %340 = zext i8 %339 to i64
  %341 = lshr i64 %338, %340
  store i64 %341, ptr %143, align 8
  br label %342

342:                                              ; preds = %334, %326, %314, %302, %300, %155, %150
  %343 = phi ptr [ %91, %155 ], [ %91, %150 ], [ %95, %300 ], [ %95, %302 ], [ %95, %314 ], [ %95, %326 ], [ %95, %334 ]
  %344 = phi i32 [ %160, %155 ], [ %154, %150 ], [ %296, %300 ], [ %296, %302 ], [ %296, %314 ], [ %296, %326 ], [ %296, %334 ]
  %345 = phi i32 [ %147, %155 ], [ %147, %150 ], [ %297, %300 ], [ %297, %302 ], [ %297, %314 ], [ %297, %326 ], [ %297, %334 ]
  %346 = load i32, ptr %343, align 4
  br label %347

347:                                              ; preds = %342, %295
  %348 = phi i32 [ %346, %342 ], [ %298, %295 ]
  %349 = phi ptr [ %343, %342 ], [ %91, %295 ]
  %350 = phi i32 [ %344, %342 ], [ %296, %295 ]
  %351 = phi i32 [ %345, %342 ], [ %297, %295 ]
  %352 = icmp eq i32 %348, 18
  br i1 %352, label %353, label %385

353:                                              ; preds = %347
  %354 = add i32 %350, %144
  %355 = add i32 %146, 1
  %356 = getelementptr inbounds %struct.fetch_insn, ptr %349, i32 0, i32 1
  %357 = load i32, ptr %356, align 4
  %358 = icmp ult i32 %355, %357
  br i1 %358, label %359, label %382

359:                                              ; preds = %353
  %360 = load i32, ptr %84, align 4
  %361 = add i32 %360, -15
  %362 = icmp ult i32 %361, 2
  br i1 %362, label %369, label %363

363:                                              ; preds = %359
  %364 = load i32, ptr %90, align 4
  %365 = getelementptr i8, ptr %143, i32 %364
  %366 = load i32, ptr %5, align 4
  %367 = add i32 %366, %364
  store i32 %367, ptr %5, align 4
  %368 = load i32, ptr %84, align 4
  br label %141

369:                                              ; preds = %359
  %370 = getelementptr %struct.fetch_insn, ptr %84, i32 -1
  %371 = add i32 %86, 4
  store i32 %371, ptr %5, align 4
  br i1 %148, label %380, label %372

372:                                              ; preds = %369
  %373 = getelementptr i8, ptr %143, i32 4
  %374 = mul i32 %350, -65536
  %375 = add i32 %374, %351
  %376 = and i32 %375, -65536
  %377 = add i32 %351, %350
  %378 = and i32 %377, 65535
  %379 = or i32 %376, %378
  store i32 %379, ptr %373, align 4
  br label %380

380:                                              ; preds = %372, %369
  %381 = phi ptr [ %373, %372 ], [ null, %369 ]
  br label %75

382:                                              ; preds = %353
  %383 = getelementptr %struct.fetch_insn, ptr %349, i32 1
  %384 = load i32, ptr %383, align 4
  br label %385

385:                                              ; preds = %382, %347
  %386 = phi i32 [ %384, %382 ], [ %348, %347 ]
  %387 = phi i32 [ %354, %382 ], [ %350, %347 ]
  %388 = icmp eq i32 %386, 20
  %389 = select i1 %388, i32 %387, i32 -84
  br label %390

390:                                              ; preds = %385, %161, %149, %134, %113
  %391 = phi i32 [ %389, %385 ], [ -14, %113 ], [ -14, %134 ], [ -84, %161 ], [ -84, %149 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br label %392

392:                                              ; preds = %390, %4
  %393 = phi i32 [ %391, %390 ], [ -84, %4 ]
  ret i32 %393
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fetch_store_strlen(i32 noundef %0) unnamed_addr #14 {
  %2 = icmp eq i32 %0, -70
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = tail call ptr @llvm.thread.pointer() #18
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 85
  %6 = tail call i32 @strlen(ptr noundef %5)
  %7 = add i32 %6, 1
  br label %11

8:                                                ; preds = %1
  %9 = inttoptr i32 %0 to ptr
  %10 = tail call i32 @strnlen_user(ptr noundef %9, i32 noundef 4096) #18
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ %7, %3 ], [ %10, %8 ]
  %13 = icmp sgt i32 %12, 4096
  %14 = select i1 %13, i32 0, i32 %12
  ret i32 %14
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fetch_store_strlen_user(i32 noundef %0) unnamed_addr #14 {
  %2 = icmp eq i32 %0, -70
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = tail call ptr @llvm.thread.pointer() #18
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 85
  %6 = tail call i32 @strlen(ptr noundef %5) #18
  %7 = add i32 %6, 1
  br label %11

8:                                                ; preds = %1
  %9 = inttoptr i32 %0 to ptr
  %10 = tail call i32 @strnlen_user(ptr noundef %9, i32 noundef 4096) #18
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ %7, %3 ], [ %10, %8 ]
  %13 = icmp sgt i32 %12, 4096
  %14 = select i1 %13, i32 0, i32 %12
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strnlen_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__uprobe_trace_func(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !10
  %8 = getelementptr inbounds %struct.trace_uprobe, ptr %0, i32 0, i32 8, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.trace_probe_event, ptr %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.trace_event_file, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %15, label %14, !prof !11

14:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 956, i32 noundef 9, ptr noundef null) #18
  br label %15

15:                                               ; preds = %14, %6
  %16 = getelementptr inbounds %struct.trace_uprobe, ptr %0, i32 0, i32 8, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %4
  %19 = icmp ugt i32 %18, 4096
  %20 = load i1, ptr @__uprobe_trace_func.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !9

23:                                               ; preds = %15
  store i1 true, ptr @__uprobe_trace_func.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 958, i32 noundef 9, ptr noundef null) #18
  br label %24

24:                                               ; preds = %23, %15
  br i1 %19, label %64, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.trace_event_file, ptr %5, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 704
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30, !prof !11

30:                                               ; preds = %25
  %31 = and i32 %27, 256
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35, !prof !9

33:                                               ; preds = %30
  %34 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %5) #18
  br i1 %34, label %64, label %35

35:                                               ; preds = %33, %30, %25
  %36 = getelementptr inbounds %struct.trace_uprobe, ptr %0, i32 0, i32 1, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, i32 12, i32 16
  %40 = load i32, ptr %16, align 4
  %41 = add i32 %40, %4
  %42 = add i32 %41, %39
  %43 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %5, i32 noundef %42) #18
  %44 = icmp eq ptr %43, null
  br i1 %44, label %64, label %45

45:                                               ; preds = %35
  %46 = load ptr, ptr %36, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.uprobe_trace_entry_head, ptr %43, i32 0, i32 1
  store i32 %1, ptr %49, align 4
  %50 = getelementptr [18 x i32], ptr %2, i32 0, i32 15
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr %struct.uprobe_trace_entry_head, ptr %43, i32 1, i32 0, i32 3
  store i32 %51, ptr %52, align 4
  br label %57

53:                                               ; preds = %45
  %54 = getelementptr [18 x i32], ptr %2, i32 0, i32 15
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.uprobe_trace_entry_head, ptr %43, i32 0, i32 1
  store i32 %55, ptr %56, align 4
  br label %57

57:                                               ; preds = %53, %48
  %58 = phi i32 [ 12, %53 ], [ 16, %48 ]
  %59 = getelementptr i8, ptr %43, i32 %58
  %60 = getelementptr inbounds %struct.uprobe_cpu_buffer, ptr %3, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = load i32, ptr %16, align 4
  %63 = add i32 %62, %4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %59, ptr align 1 %61, i32 %63, i1 false)
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #18
  br label %64

64:                                               ; preds = %57, %35, %33, %24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @uprobe_perf_filter(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 52
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.trace_probe_event, ptr %5, i32 0, i32 5
  tail call void @_raw_read_lock(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.trace_probe_event, ptr %5, i32 1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.trace_probe_event, ptr %5, i32 1, i32 1, i32 1
  br label %12

12:                                               ; preds = %16, %10
  %13 = phi ptr [ %11, %10 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %11
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.hw_perf_event, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 37
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %22, label %12

22:                                               ; preds = %16, %12
  %23 = xor i1 %15, true
  br label %24

24:                                               ; preds = %22, %3
  %25 = phi i1 [ true, %3 ], [ %23, %22 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #18, !srcloc !16
  %26 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %6) #18, !srcloc !17
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !19
  br label %30

30:                                               ; preds = %29, %24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !20
  ret i1 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__uprobe_perf_func(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.trace_uprobe, ptr %0, i32 0, i32 8, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 0, ptr %6, align 4, !annotation !10
  %9 = getelementptr inbounds %struct.trace_probe_event, ptr %8, i32 0, i32 2, i32 11
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  br label %13

13:                                               ; preds = %12, %5
  %14 = getelementptr inbounds %struct.trace_uprobe, ptr %0, i32 0, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, i32 12, i32 16
  %18 = getelementptr inbounds %struct.trace_uprobe, ptr %0, i32 0, i32 8, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %4, 11
  %21 = add i32 %20, %19
  %22 = add i32 %21, %17
  %23 = and i32 %22, -8
  %24 = add i32 %23, -4
  %25 = icmp sgt i32 %24, 8192
  %26 = load i1, ptr @__uprobe_perf_func.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %30, !prof !9

29:                                               ; preds = %13
  store i1 true, ptr @__uprobe_perf_func.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1360, i32 noundef 9, ptr noundef nonnull @.str.17) #18
  br label %30

30:                                               ; preds = %29, %13
  br i1 %25, label %77, label %31

31:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !27
  %32 = getelementptr inbounds %struct.trace_probe_event, ptr %8, i32 0, i32 2, i32 10
  %33 = load ptr, ptr %32, align 4
  %34 = ptrtoint ptr %33 to i32
  %35 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %36 = inttoptr i32 %35 to ptr
  %37 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %36) #16, !srcloc !28
  %38 = add i32 %37, %34
  %39 = inttoptr i32 %38 to ptr
  %40 = load volatile ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %76, label %42

42:                                               ; preds = %31
  %43 = call ptr @perf_trace_buf_alloc(i32 noundef %24, ptr noundef null, ptr noundef nonnull %6) #18
  %44 = icmp eq ptr %43, null
  br i1 %44, label %76, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %14, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.uprobe_trace_entry_head, ptr %43, i32 0, i32 1
  store i32 %1, ptr %49, align 4
  %50 = getelementptr [18 x i32], ptr %2, i32 0, i32 15
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr %struct.uprobe_trace_entry_head, ptr %43, i32 1, i32 0, i32 3
  store i32 %51, ptr %52, align 4
  br label %57

53:                                               ; preds = %45
  %54 = getelementptr [18 x i32], ptr %2, i32 0, i32 15
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.uprobe_trace_entry_head, ptr %43, i32 0, i32 1
  store i32 %55, ptr %56, align 4
  br label %57

57:                                               ; preds = %53, %48
  %58 = phi i32 [ 12, %53 ], [ 16, %48 ]
  %59 = getelementptr i8, ptr %43, i32 %58
  %60 = getelementptr inbounds %struct.uprobe_cpu_buffer, ptr %3, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = load i32, ptr %18, align 4
  %63 = add i32 %62, %4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %59, ptr align 1 %61, i32 %63, i1 false)
  %64 = sub i32 %24, %17
  %65 = load i32, ptr %18, align 4
  %66 = add i32 %65, %4
  %67 = icmp sgt i32 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = getelementptr i8, ptr %59, i32 %66
  %70 = sub i32 %64, %66
  call void @llvm.memset.p0.i32(ptr align 1 %69, i8 0, i32 %70, i1 false)
  br label %71

71:                                               ; preds = %68, %57
  %72 = load i32, ptr %6, align 4
  %73 = getelementptr inbounds %struct.trace_probe_event, ptr %8, i32 0, i32 2, i32 3, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = trunc i32 %74 to i16
  call void @perf_tp_event(i16 noundef zeroext %75, i64 noundef 1, ptr noundef nonnull %43, i32 noundef %24, ptr noundef %2, ptr noundef %39, i32 noundef %72, ptr noundef null) #18
  br label %76

76:                                               ; preds = %71, %42, %31
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !29
  br label %77

77:                                               ; preds = %76, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_tp_event(i16 noundef zeroext, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_uprobe_register(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  switch i32 %1, label %91 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %7
    i32 3, label %9
    i32 4, label %10
    i32 5, label %89
  ]

4:                                                ; preds = %3
  %5 = tail call fastcc i32 @probe_event_enable(ptr noundef %0, ptr noundef %2, ptr noundef null)
  br label %91

6:                                                ; preds = %3
  tail call fastcc void @probe_event_disable(ptr noundef %0, ptr noundef %2)
  br label %91

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @probe_event_enable(ptr noundef %0, ptr noundef null, ptr noundef nonnull @uprobe_perf_filter)
  br label %91

9:                                                ; preds = %3
  tail call fastcc void @probe_event_disable(ptr noundef %0, ptr noundef null)
  br label %91

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %0, i32 84
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = load i1, ptr @uprobe_perf_open.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !9

17:                                               ; preds = %10
  store i1 true, ptr @uprobe_perf_open.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1300, i32 noundef 9, ptr noundef null) #18
  br label %18

18:                                               ; preds = %17, %10
  br i1 %13, label %91, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.trace_probe, ptr %12, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_probe_event, ptr %21, i32 0, i32 5
  tail call void @_raw_write_lock(ptr noundef %22) #18
  %23 = getelementptr inbounds %struct.perf_event, ptr %2, i32 0, i32 25
  %24 = getelementptr inbounds %struct.perf_event, ptr %2, i32 0, i32 25, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds %struct.trace_probe_event, ptr %21, i32 1, i32 1
  %28 = load i32, ptr %27, align 4
  br i1 %26, label %62, label %29

29:                                               ; preds = %19
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.perf_event, ptr %2, i32 0, i32 32
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.perf_event, ptr %2, i32 0, i32 21, i32 6
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 4096
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 37
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.trace_probe_event, ptr %21, i32 1, i32 1, i32 1
  br label %44

44:                                               ; preds = %48, %40
  %45 = phi ptr [ %43, %40 ], [ %46, %48 ]
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %43
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.hw_perf_event, ptr %46, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 37
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %42
  br i1 %53, label %54, label %44

54:                                               ; preds = %48, %44
  %55 = xor i1 %47, true
  br label %56

56:                                               ; preds = %54, %35, %31, %29
  %57 = phi i1 [ true, %35 ], [ true, %31 ], [ true, %29 ], [ %55, %54 ]
  %58 = getelementptr inbounds %struct.trace_probe_event, ptr %21, i32 1, i32 1, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  store ptr %23, ptr %60, align 4
  store ptr %59, ptr %23, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %58, ptr %61, align 4
  store volatile ptr %23, ptr %58, align 4
  br label %65

62:                                               ; preds = %19
  %63 = icmp ne i32 %28, 0
  %64 = add i32 %28, 1
  store i32 %64, ptr %27, align 4
  br label %65

65:                                               ; preds = %62, %56
  %66 = phi i1 [ %57, %56 ], [ %63, %62 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !30
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %22, i32 0) #18, !srcloc !31
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !32
  br i1 %66, label %91, label %67

67:                                               ; preds = %65
  %68 = load ptr, ptr %20, align 4
  %69 = getelementptr inbounds %struct.trace_probe_event, ptr %68, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, %69
  br i1 %71, label %91, label %72

72:                                               ; preds = %82, %67
  %73 = phi ptr [ %84, %82 ], [ %70, %67 ]
  %74 = getelementptr i8, ptr %73, i32 -20
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %73, i32 -12
  %77 = load i32, ptr %76, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr i8, ptr %73, i32 -44
  %80 = tail call i32 @uprobe_apply(ptr noundef %75, i64 noundef %78, ptr noundef %79, i1 noundef zeroext true) #18
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %72
  %83 = load ptr, ptr %20, align 4
  %84 = load ptr, ptr %73, align 4
  %85 = getelementptr inbounds %struct.trace_probe_event, ptr %83, i32 0, i32 4
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %91, label %72

87:                                               ; preds = %72
  %88 = tail call fastcc i32 @uprobe_perf_close(ptr noundef %0, ptr noundef %2) #18
  br label %91

89:                                               ; preds = %3
  %90 = tail call fastcc i32 @uprobe_perf_close(ptr noundef %0, ptr noundef %2)
  br label %91

91:                                               ; preds = %89, %87, %82, %67, %65, %18, %9, %7, %6, %4, %3
  %92 = phi i32 [ %90, %89 ], [ 0, %9 ], [ %8, %7 ], [ 0, %6 ], [ %5, %4 ], [ 0, %3 ], [ -19, %18 ], [ 0, %65 ], [ %80, %87 ], [ 0, %67 ], [ 0, %82 ]
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @print_uprobe_event(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %2, i32 68
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = load i1, ptr @trace_uprobe_primary_from_call.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %3
  store i1 true, ptr @trace_uprobe_primary_from_call.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 326, i32 noundef 9, ptr noundef null) #18
  br label %14

14:                                               ; preds = %13, %3
  %15 = getelementptr i8, ptr %8, i32 -56
  %16 = icmp eq ptr %15, null
  %17 = or i1 %9, %16
  br i1 %17, label %107, label %18, !prof !9

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %8, i32 -40
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = getelementptr inbounds %struct.trace_probe, ptr %8, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.trace_probe_event, ptr %23, i32 0, i32 2, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 16
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.trace_probe_event, ptr %23, i32 0, i32 2, i32 2
  %29 = load ptr, ptr %28, align 4
  br i1 %21, label %41, label %30

30:                                               ; preds = %18
  br i1 %27, label %35, label %31

31:                                               ; preds = %30
  %32 = icmp eq ptr %29, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %31
  %34 = load ptr, ptr %29, align 4
  br label %35

35:                                               ; preds = %33, %31, %30
  %36 = phi ptr [ %34, %33 ], [ null, %31 ], [ %29, %30 ]
  %37 = getelementptr inbounds %struct.uprobe_trace_entry_head, ptr %6, i32 0, i32 1
  %38 = getelementptr %struct.uprobe_trace_entry_head, ptr %6, i32 1, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = load i32, ptr %37, align 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %4, ptr noundef nonnull @.str.18, ptr noundef %36, i32 noundef %39, i32 noundef %40) #18
  br label %50

41:                                               ; preds = %18
  br i1 %27, label %46, label %42

42:                                               ; preds = %41
  %43 = icmp eq ptr %29, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr %29, align 4
  br label %46

46:                                               ; preds = %44, %42, %41
  %47 = phi ptr [ %45, %44 ], [ null, %42 ], [ %29, %41 ]
  %48 = getelementptr inbounds %struct.uprobe_trace_entry_head, ptr %6, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %4, ptr noundef nonnull @.str.19, ptr noundef %47, i32 noundef %49) #18
  br label %50

50:                                               ; preds = %46, %35
  %51 = phi i32 [ 12, %46 ], [ 16, %35 ]
  %52 = getelementptr i8, ptr %6, i32 %51
  %53 = getelementptr i8, ptr %8, i32 20
  %54 = getelementptr i8, ptr %8, i32 16
  %55 = load i32, ptr %54, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %106

57:                                               ; preds = %103, %50
  %58 = phi i32 [ %104, %103 ], [ 0, %50 ]
  %59 = getelementptr %struct.probe_arg, ptr %53, i32 %58, i32 4
  %60 = load ptr, ptr %59, align 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %4, ptr noundef nonnull @.str.20, ptr noundef %60) #18
  %61 = getelementptr %struct.probe_arg, ptr %53, i32 %58, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %74, !prof !11

64:                                               ; preds = %57
  %65 = getelementptr %struct.probe_arg, ptr %53, i32 %58, i32 7
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.fetch_type, ptr %66, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr %struct.probe_arg, ptr %53, i32 %58, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr i8, ptr %52, i32 %70
  %72 = tail call i32 %68(ptr noundef %4, ptr noundef %71, ptr noundef %6) #18
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %107, label %103

74:                                               ; preds = %57
  tail call void @trace_seq_putc(ptr noundef %4, i8 noundef zeroext 123) #18
  %75 = load i32, ptr %61, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %103, label %77

77:                                               ; preds = %74
  %78 = getelementptr %struct.probe_arg, ptr %53, i32 %58, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr i8, ptr %52, i32 %79
  %81 = getelementptr %struct.probe_arg, ptr %53, i32 %58, i32 7
  %82 = load ptr, ptr %81, align 4
  br label %83

83:                                               ; preds = %91, %77
  %84 = phi ptr [ %82, %77 ], [ %96, %91 ]
  %85 = phi i32 [ 0, %77 ], [ %100, %91 ]
  %86 = phi ptr [ %80, %77 ], [ %99, %91 ]
  %87 = getelementptr inbounds %struct.fetch_type, ptr %84, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = tail call i32 %88(ptr noundef %4, ptr noundef %86, ptr noundef %6) #18
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %83
  %92 = load i32, ptr %61, align 4
  %93 = add i32 %92, -1
  %94 = icmp eq i32 %85, %93
  %95 = select i1 %94, i8 125, i8 44
  tail call void @trace_seq_putc(ptr noundef %4, i8 noundef zeroext %95) #18
  %96 = load ptr, ptr %81, align 4
  %97 = getelementptr inbounds %struct.fetch_type, ptr %96, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr i8, ptr %86, i32 %98
  %100 = add nuw i32 %85, 1
  %101 = load i32, ptr %61, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %83, label %103

103:                                              ; preds = %91, %74, %64
  %104 = add nuw nsw i32 %58, 1
  %105 = icmp eq i32 %104, %55
  br i1 %105, label %106, label %57

106:                                              ; preds = %103, %50
  tail call void @trace_seq_putc(ptr noundef %4, i8 noundef zeroext 10) #18
  br label %107

107:                                              ; preds = %106, %83, %64, %14
  %108 = tail call i32 @trace_handle_return(ptr noundef %4) #18
  ret i32 %108
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uprobe_event_define_fields(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 84
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = load i1, ptr @trace_uprobe_primary_from_call.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %1
  store i1 true, ptr @trace_uprobe_primary_from_call.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 326, i32 noundef 9, ptr noundef null) #18
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr i8, ptr %3, i32 -56
  %11 = icmp eq ptr %10, null
  %12 = or i1 %4, %11
  br i1 %12, label %29, label %13, !prof !9

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %3, i32 -40
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @trace_define_field(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 8, i32 noundef 4, i32 noundef 0, i32 noundef 0) #18
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = tail call i32 @trace_define_field(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.24, i32 noundef 12, i32 noundef 4, i32 noundef 0, i32 noundef 0) #18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %29

23:                                               ; preds = %13
  %24 = tail call i32 @trace_define_field(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.25, i32 noundef 8, i32 noundef 4, i32 noundef 0, i32 noundef 0) #18
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %20
  %27 = phi i32 [ 16, %20 ], [ 12, %23 ]
  %28 = tail call i32 @traceprobe_define_arg_fields(ptr noundef %0, i32 noundef %27, ptr noundef nonnull %3) #18
  br label %29

29:                                               ; preds = %26, %23, %20, %17, %9
  %30 = phi i32 [ %28, %26 ], [ -19, %9 ], [ %18, %17 ], [ %21, %20 ], [ %24, %23 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_define_field(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @traceprobe_define_arg_fields(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @probe_event_enable(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 84
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = load i1, ptr @probe_event_enable.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %3
  store i1 true, ptr @probe_event_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1097, i32 noundef 9, ptr noundef null) #18
  br label %11

11:                                               ; preds = %10, %3
  br i1 %6, label %189, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.trace_probe, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 0
  %18 = icmp eq ptr %1, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %12
  %20 = and i32 %15, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %189

22:                                               ; preds = %19
  %23 = tail call i32 @trace_probe_add_file(ptr noundef nonnull %5, ptr noundef nonnull %1) #18
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %189, label %30

25:                                               ; preds = %12
  %26 = and i32 %15, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %189

28:                                               ; preds = %25
  %29 = or i32 %15, 2
  store i32 %29, ptr %14, align 4
  br label %30

30:                                               ; preds = %28, %22
  %31 = load ptr, ptr %13, align 4
  %32 = getelementptr inbounds %struct.trace_probe_event, ptr %31, i32 1, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39, !prof !33

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.trace_probe_event, ptr %31, i32 1, i32 1, i32 1
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %40, label %39, !prof !11

39:                                               ; preds = %35, %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1117, i32 noundef 9, ptr noundef null) #18
  br label %40

40:                                               ; preds = %39, %35
  br i1 %17, label %41, label %189

41:                                               ; preds = %40
  %42 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @event_mutex) #18
  br i1 %42, label %44, label %43, !prof !11

43:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/trace/trace_uprobe.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 896, 0\0A.popsection", ""() #18, !srcloc !34
  unreachable

44:                                               ; preds = %41
  %45 = load i32, ptr @uprobe_buffer_refcnt, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr @uprobe_buffer_refcnt, align 4
  %47 = icmp eq i32 %45, 0
  br i1 %47, label %48, label %101

48:                                               ; preds = %44
  %49 = tail call noalias ptr @__alloc_percpu(i32 noundef 24, i32 noundef 4) #21
  store ptr %49, ptr @uprobe_cpu_buffer, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %98, label %51

51:                                               ; preds = %48
  %52 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  %53 = load i32, ptr @nr_cpu_ids, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %101

55:                                               ; preds = %59, %51
  %56 = phi i32 [ %71, %59 ], [ %52, %51 ]
  %57 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #18
  %58 = icmp eq ptr %57, null
  br i1 %58, label %74, label %59

59:                                               ; preds = %55
  %60 = tail call ptr @page_address(ptr noundef nonnull %57) #18
  %61 = load ptr, ptr @uprobe_cpu_buffer, align 4
  %62 = ptrtoint ptr %61 to i32
  %63 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, %62
  %66 = inttoptr i32 %65 to ptr
  %67 = getelementptr inbounds %struct.uprobe_cpu_buffer, ptr %66, i32 0, i32 1
  store ptr %60, ptr %67, align 4
  %68 = load i32, ptr %63, align 4
  %69 = add i32 %68, %62
  %70 = inttoptr i32 %69 to ptr
  tail call void @__mutex_init(ptr noundef %70, ptr noundef nonnull @.str.26, ptr noundef nonnull @uprobe_buffer_init.__key) #18
  %71 = tail call i32 @cpumask_next(i32 noundef %56, ptr noundef nonnull @__cpu_possible_mask) #23
  %72 = load i32, ptr @nr_cpu_ids, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %55, label %101

74:                                               ; preds = %55
  %75 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  %76 = load i32, ptr @nr_cpu_ids, align 4
  %77 = icmp uge i32 %75, %76
  %78 = icmp eq i32 %75, %56
  %79 = select i1 %77, i1 true, i1 %78
  br i1 %79, label %96, label %80

80:                                               ; preds = %80, %74
  %81 = phi i32 [ %91, %80 ], [ %75, %74 ]
  %82 = load ptr, ptr @uprobe_cpu_buffer, align 4
  %83 = ptrtoint ptr %82 to i32
  %84 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %81
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, %83
  %87 = inttoptr i32 %86 to ptr
  %88 = getelementptr inbounds %struct.uprobe_cpu_buffer, ptr %87, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = ptrtoint ptr %89 to i32
  tail call void @free_pages(i32 noundef %90, i32 noundef 0) #18
  %91 = tail call i32 @cpumask_next(i32 noundef %81, ptr noundef nonnull @__cpu_possible_mask) #23
  %92 = load i32, ptr @nr_cpu_ids, align 4
  %93 = icmp uge i32 %91, %92
  %94 = icmp eq i32 %91, %56
  %95 = select i1 %93, i1 true, i1 %94
  br i1 %95, label %96, label %80

96:                                               ; preds = %80, %74
  %97 = load ptr, ptr @uprobe_cpu_buffer, align 4
  tail call void @free_percpu(ptr noundef %97) #18
  br label %98

98:                                               ; preds = %96, %48
  %99 = load i32, ptr @uprobe_buffer_refcnt, align 4
  %100 = add i32 %99, -1
  store i32 %100, ptr @uprobe_buffer_refcnt, align 4
  br label %181

101:                                              ; preds = %59, %51, %44
  %102 = load ptr, ptr %13, align 4
  %103 = getelementptr inbounds %struct.trace_probe_event, ptr %102, i32 0, i32 4
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.trace_probe_event, ptr %102, i32 0, i32 4
  %106 = icmp eq ptr %104, %105
  br i1 %106, label %189, label %107

107:                                              ; preds = %141, %101
  %108 = phi ptr [ %143, %141 ], [ %104, %101 ]
  %109 = getelementptr i8, ptr %108, i32 -44
  %110 = getelementptr i8, ptr %108, i32 -36
  store ptr %2, ptr %110, align 4
  %111 = getelementptr i8, ptr %108, i32 -24
  %112 = load ptr, ptr %111, align 4
  %113 = load i32, ptr %112, align 8
  %114 = and i32 %113, 67108864
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %122, label %116, !prof !11

116:                                              ; preds = %107
  %117 = getelementptr inbounds %struct.dentry, ptr %112, i32 0, i32 8
  %118 = load ptr, ptr %117, align 8
  %119 = getelementptr inbounds %struct.dentry_operations, ptr %118, i32 0, i32 12
  %120 = load ptr, ptr %119, align 16
  %121 = tail call ptr %120(ptr noundef %112, ptr noundef null) #18
  br label %122

122:                                              ; preds = %116, %107
  %123 = phi ptr [ %121, %116 ], [ %112, %107 ]
  %124 = getelementptr inbounds %struct.dentry, ptr %123, i32 0, i32 5
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr i8, ptr %108, i32 -20
  store ptr %125, ptr %126, align 4
  %127 = getelementptr i8, ptr %108, i32 -8
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 0
  %130 = getelementptr i8, ptr %108, i32 -12
  %131 = load i32, ptr %130, align 4
  %132 = zext i32 %131 to i64
  br i1 %129, label %136, label %133

133:                                              ; preds = %122
  %134 = zext i32 %128 to i64
  %135 = tail call i32 @uprobe_register_refctr(ptr noundef %125, i64 noundef %132, i64 noundef %134, ptr noundef %109) #18
  br label %138

136:                                              ; preds = %122
  %137 = tail call i32 @uprobe_register(ptr noundef %125, i64 noundef %132, ptr noundef %109) #18
  br label %138

138:                                              ; preds = %136, %133
  %139 = phi i32 [ %135, %133 ], [ %137, %136 ]
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load ptr, ptr %13, align 4
  %143 = load ptr, ptr %108, align 4
  %144 = getelementptr inbounds %struct.trace_probe_event, ptr %142, i32 0, i32 4
  %145 = icmp eq ptr %143, %144
  br i1 %145, label %189, label %107

146:                                              ; preds = %138
  %147 = getelementptr i8, ptr %108, i32 -20
  store ptr null, ptr %147, align 4
  %148 = load ptr, ptr %13, align 4
  %149 = getelementptr inbounds %struct.trace_probe_event, ptr %148, i32 1, i32 1
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %156, !prof !33

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.trace_probe_event, ptr %148, i32 1, i32 1, i32 1
  %154 = load volatile ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, %153
  br i1 %155, label %158, label %156, !prof !11

156:                                              ; preds = %152, %146
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1077, i32 noundef 9, ptr noundef null) #18
  %157 = load ptr, ptr %13, align 4
  br label %158

158:                                              ; preds = %156, %152
  %159 = phi ptr [ %157, %156 ], [ %148, %152 ]
  %160 = getelementptr inbounds %struct.trace_probe_event, ptr %159, i32 0, i32 4
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, %160
  br i1 %162, label %180, label %163

163:                                              ; preds = %175, %158
  %164 = phi ptr [ %176, %175 ], [ %159, %158 ]
  %165 = phi ptr [ %177, %175 ], [ %161, %158 ]
  %166 = getelementptr i8, ptr %165, i32 -20
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %175, label %169

169:                                              ; preds = %163
  %170 = getelementptr i8, ptr %165, i32 -12
  %171 = load i32, ptr %170, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr i8, ptr %165, i32 -44
  tail call void @uprobe_unregister(ptr noundef nonnull %167, i64 noundef %172, ptr noundef %173) #18
  store ptr null, ptr %166, align 4
  %174 = load ptr, ptr %13, align 4
  br label %175

175:                                              ; preds = %169, %163
  %176 = phi ptr [ %164, %163 ], [ %174, %169 ]
  %177 = load ptr, ptr %165, align 4
  %178 = getelementptr inbounds %struct.trace_probe_event, ptr %176, i32 0, i32 4
  %179 = icmp eq ptr %177, %178
  br i1 %179, label %180, label %163

180:                                              ; preds = %175, %158
  tail call fastcc void @uprobe_buffer_disable()
  br label %181

181:                                              ; preds = %180, %98
  %182 = phi i32 [ -12, %98 ], [ %139, %180 ]
  br i1 %18, label %185, label %183

183:                                              ; preds = %181
  %184 = tail call i32 @trace_probe_remove_file(ptr noundef nonnull %5, ptr noundef nonnull %1) #18
  br label %189

185:                                              ; preds = %181
  %186 = load ptr, ptr %13, align 4
  %187 = load i32, ptr %186, align 4
  %188 = and i32 %187, -3
  store i32 %188, ptr %186, align 4
  br label %189

189:                                              ; preds = %185, %183, %141, %101, %40, %25, %22, %19, %11
  %190 = phi i32 [ -19, %11 ], [ -4, %19 ], [ %23, %22 ], [ -4, %25 ], [ 0, %40 ], [ %182, %185 ], [ %182, %183 ], [ 0, %101 ], [ 0, %141 ]
  ret i32 %190
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @probe_event_disable(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 84
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = load i1, ptr @probe_event_disable.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %2
  store i1 true, ptr @probe_event_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1154, i32 noundef 9, ptr noundef null) #18
  br label %10

10:                                               ; preds = %9, %2
  br i1 %5, label %64, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.trace_probe, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %64, label %17

17:                                               ; preds = %11
  %18 = icmp eq ptr %1, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %17
  %20 = tail call i32 @trace_probe_remove_file(ptr noundef nonnull %4, ptr noundef nonnull %1) #18
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %64, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %12, align 4
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 3
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %64

27:                                               ; preds = %17
  %28 = and i32 %14, -3
  store i32 %28, ptr %13, align 4
  %29 = load ptr, ptr %12, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = phi ptr [ %23, %22 ], [ %29, %27 ]
  %32 = getelementptr inbounds %struct.trace_probe_event, ptr %31, i32 1, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39, !prof !33

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.trace_probe_event, ptr %31, i32 1, i32 1, i32 1
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %41, label %39, !prof !11

39:                                               ; preds = %35, %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1077, i32 noundef 9, ptr noundef null) #18
  %40 = load ptr, ptr %12, align 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi ptr [ %40, %39 ], [ %31, %35 ]
  %43 = getelementptr inbounds %struct.trace_probe_event, ptr %42, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %43
  br i1 %45, label %63, label %46

46:                                               ; preds = %58, %41
  %47 = phi ptr [ %59, %58 ], [ %42, %41 ]
  %48 = phi ptr [ %60, %58 ], [ %44, %41 ]
  %49 = getelementptr i8, ptr %48, i32 -20
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = getelementptr i8, ptr %48, i32 -12
  %54 = load i32, ptr %53, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr i8, ptr %48, i32 -44
  tail call void @uprobe_unregister(ptr noundef nonnull %50, i64 noundef %55, ptr noundef %56) #18
  store ptr null, ptr %49, align 4
  %57 = load ptr, ptr %12, align 4
  br label %58

58:                                               ; preds = %52, %46
  %59 = phi ptr [ %47, %46 ], [ %57, %52 ]
  %60 = load ptr, ptr %48, align 4
  %61 = getelementptr inbounds %struct.trace_probe_event, ptr %59, i32 0, i32 4
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %63, label %46

63:                                               ; preds = %58, %41
  tail call fastcc void @uprobe_buffer_disable()
  br label %64

64:                                               ; preds = %63, %22, %19, %11, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uprobe_perf_close(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 84
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = load i1, ptr @uprobe_perf_close.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %2
  store i1 true, ptr @uprobe_perf_close.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1276, i32 noundef 9, ptr noundef null) #18
  br label %10

10:                                               ; preds = %9, %2
  br i1 %5, label %79, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.trace_probe, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_probe_event, ptr %13, i32 0, i32 5
  tail call void @_raw_write_lock(ptr noundef %14) #18
  %15 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 25, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %49, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 25
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  %24 = getelementptr inbounds %struct.trace_probe_event, ptr %13, i32 1, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %78

27:                                               ; preds = %18
  %28 = load ptr, ptr %15, align 8
  %29 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %77

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 37
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_probe_event, ptr %13, i32 1, i32 1, i32 1
  br label %37

37:                                               ; preds = %41, %33
  %38 = phi ptr [ %36, %33 ], [ %39, %41 ]
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %36
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.hw_perf_event, ptr %39, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 37
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %35
  br i1 %46, label %47, label %37

47:                                               ; preds = %41, %37
  %48 = xor i1 %40, true
  br label %54

49:                                               ; preds = %11
  %50 = getelementptr inbounds %struct.trace_probe_event, ptr %13, i32 1, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, -1
  store i32 %52, ptr %50, align 4
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %49, %47
  %55 = phi i1 [ %53, %49 ], [ %48, %47 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !30
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %14, i32 0) #18, !srcloc !31
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !32
  br i1 %55, label %79, label %56

56:                                               ; preds = %54
  %57 = load ptr, ptr %12, align 4
  %58 = getelementptr inbounds %struct.trace_probe_event, ptr %57, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.trace_probe_event, ptr %57, i32 0, i32 4
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %79, label %62

62:                                               ; preds = %72, %56
  %63 = phi ptr [ %74, %72 ], [ %59, %56 ]
  %64 = getelementptr i8, ptr %63, i32 -20
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr i8, ptr %63, i32 -12
  %67 = load i32, ptr %66, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr i8, ptr %63, i32 -44
  %70 = tail call i32 @uprobe_apply(ptr noundef %65, i64 noundef %68, ptr noundef %69, i1 noundef zeroext false) #18
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %62
  %73 = load ptr, ptr %12, align 4
  %74 = load ptr, ptr %63, align 4
  %75 = getelementptr inbounds %struct.trace_probe_event, ptr %73, i32 0, i32 4
  %76 = icmp eq ptr %74, %75
  br i1 %76, label %79, label %62

77:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !30
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %14, i32 0) #18, !srcloc !31
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !32
  br label %79

78:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !30
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %14, i32 0) #18, !srcloc !31
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !32
  br label %79

79:                                               ; preds = %78, %77, %72, %62, %56, %54, %10
  %80 = phi i32 [ -19, %10 ], [ 0, %54 ], [ 0, %77 ], [ 0, %78 ], [ 0, %56 ], [ 0, %72 ], [ %70, %62 ]
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_add_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @uprobe_buffer_disable() unnamed_addr #0 {
  %1 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @event_mutex) #18
  br i1 %1, label %3, label %2, !prof !11

2:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/trace/trace_uprobe.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 911, 0\0A.popsection", ""() #18, !srcloc !35
  unreachable

3:                                                ; preds = %0
  %4 = load i32, ptr @uprobe_buffer_refcnt, align 4
  %5 = add i32 %4, -1
  store i32 %5, ptr @uprobe_buffer_refcnt, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %11, %7
  %12 = phi i32 [ %22, %11 ], [ %8, %7 ]
  %13 = load ptr, ptr @uprobe_cpu_buffer, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.uprobe_cpu_buffer, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = ptrtoint ptr %20 to i32
  tail call void @free_pages(i32 noundef %21, i32 noundef 0) #18
  %22 = tail call i32 @cpumask_next(i32 noundef %12, ptr noundef nonnull @__cpu_possible_mask) #23
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %11, label %25

25:                                               ; preds = %11, %7
  %26 = load ptr, ptr @uprobe_cpu_buffer, align 4
  tail call void @free_percpu(ptr noundef %26) #18
  store ptr null, ptr @uprobe_cpu_buffer, align 4
  br label %27

27:                                               ; preds = %25, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uprobe_register_refctr(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uprobe_register(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @uprobe_unregister(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uprobe_apply(ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_probe_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dyn_event_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_init_dentry() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @probes_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = tail call i32 @trace_parse_run_command(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull @create_or_delete_trace_uprobe) #18
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @probes_open(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @dyn_events_release_all(ptr noundef nonnull @trace_uprobe_ops) #18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %7, %2
  %16 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @probes_seq_op) #18
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i32 [ %16, %15 ], [ %13, %12 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_parse_run_command(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @create_or_delete_trace_uprobe(ptr noundef %0) #0 {
  %2 = load i8, ptr %0, align 1
  %3 = icmp eq i8 %2, 45
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @dyn_event_release(ptr noundef %0, ptr noundef nonnull @trace_uprobe_ops) #18
  br label %10

6:                                                ; preds = %1
  %7 = tail call i32 @trace_probe_create(ptr noundef %0, ptr noundef nonnull @__trace_uprobe_create) #18
  %8 = icmp eq i32 %7, -125
  %9 = select i1 %8, i32 -22, i32 %7
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi i32 [ %5, %4 ], [ %9, %6 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dyn_event_release(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dyn_events_release_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dyn_event_seq_start(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dyn_event_seq_stop(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dyn_event_seq_next(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @probes_seq_show(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dyn_event, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @trace_uprobe_ops
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @trace_uprobe_show(ptr noundef %0, ptr noundef %1)
  br label %8

8:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @profile_open(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @profile_seq_op) #18
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @probes_profile_seq_show(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dyn_event, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @trace_uprobe_ops
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.trace_uprobe, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.trace_uprobe, ptr %1, i32 0, i32 8, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.trace_probe_event, ptr %10, i32 0, i32 2, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.trace_probe_event, ptr %10, i32 0, i32 2, i32 2
  %16 = load ptr, ptr %15, align 4
  br i1 %14, label %21, label %17

17:                                               ; preds = %6
  %18 = icmp eq ptr %16, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %16, align 4
  br label %21

21:                                               ; preds = %19, %17, %6
  %22 = phi ptr [ %20, %19 ], [ null, %17 ], [ %16, %6 ]
  %23 = getelementptr inbounds %struct.trace_uprobe, ptr %1, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %8, ptr noundef %22, i32 noundef %24) #18
  br label %25

25:                                               ; preds = %21, %2
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind readonly }
attributes #17 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind readnone }
attributes #23 = { nounwind readonly willreturn }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i8 0, i8 2}
!13 = !{i64 2149417779}
!14 = !{i64 2149417996}
!15 = !{i64 2149332409}
!16 = !{i64 939306, i64 2148429277, i64 2148429303, i64 2148429350, i64 2148429372, i64 2148429400, i64 2148429420}
!17 = !{i64 1835833, i64 1835856, i64 1835876, i64 1835900, i64 1835916}
!18 = !{i64 2149320351}
!19 = !{i64 2149320426, i64 2149320453, i64 2149320500, i64 2149320522, i64 2149320550, i64 2149320570}
!20 = !{i64 2149370012}
!21 = !{i64 2152149227, i64 2152149252}
!22 = !{i64 4645339}
!23 = !{i64 4645536}
!24 = !{i64 2152130815}
!25 = !{i64 2154554958}
!26 = !{i64 2154555006}
!27 = !{i64 2154556597}
!28 = !{i64 863684}
!29 = !{i64 2154557817}
!30 = !{i64 2149331604}
!31 = !{i64 1834818}
!32 = !{i64 2149369573}
!33 = !{!"branch_weights", i32 2146410443, i32 1073205}
!34 = !{i64 2154438578, i64 2154439070, i64 2154438615, i64 2154438671, i64 2154438705, i64 2154438729, i64 2154438770, i64 2154438791, i64 2154438819, i64 2154438853}
!35 = !{i64 2154439654, i64 2154440146, i64 2154439691, i64 2154439747, i64 2154439781, i64 2154439805, i64 2154439846, i64 2154439867, i64 2154439895, i64 2154439929}
