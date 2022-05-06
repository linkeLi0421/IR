; ModuleID = '/llk/IR/kernel/rseq.c_pt.bc'
source_filename = "../kernel/rseq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.15 }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.17, %struct.trace_event, ptr, ptr, %union.anon.18, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.17 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.18 = type { ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_rseq_update = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_rseq_ip_fixup = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.rseq_cs = type { i32, i32, i64, i64, i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.85, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.66 }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.85 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rseq = type { i32, i32, %union.anon.83, i32, [12 x i8] }
%union.anon.83 = type { i64 }
%struct.ksignal = type { %struct.k_sigaction, %struct.kernel_siginfo, i32 }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i32, ptr, %struct.sigset_t }
%struct.kernel_siginfo = type { %struct.anon.71 }
%struct.anon.71 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.75 }
%struct.anon.75 = type { i32, i32, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_rseq_update = internal constant [12 x i8] c"rseq_update\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rseq_update = dso_local global %struct.static_call_key { ptr @__traceiter_rseq_update }, align 4
@__tracepoint_rseq_update = dso_local global %struct.tracepoint { ptr @__tpstrtab_rseq_update, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rseq_update, ptr null, ptr @__traceiter_rseq_update, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rseq_update = internal constant ptr @__tracepoint_rseq_update, section "__tracepoints_ptrs", align 4
@__tpstrtab_rseq_ip_fixup = internal constant [14 x i8] c"rseq_ip_fixup\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rseq_ip_fixup = dso_local global %struct.static_call_key { ptr @__traceiter_rseq_ip_fixup }, align 4
@__tracepoint_rseq_ip_fixup = dso_local global %struct.tracepoint { ptr @__tpstrtab_rseq_ip_fixup, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rseq_ip_fixup, ptr null, ptr @__traceiter_rseq_ip_fixup, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rseq_ip_fixup = internal constant ptr @__tracepoint_rseq_ip_fixup, section "__tracepoints_ptrs", align 4
@str__rseq__trace_system_name = internal constant [5 x i8] c"rseq\00", align 1
@trace_event_fields_rseq_update = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.15 { %struct.anon.16 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rseq_update = internal global %struct.trace_event_class { ptr @str__rseq__trace_system_name, ptr @trace_event_raw_event_rseq_update, ptr @perf_trace_rseq_update, ptr @trace_event_reg, ptr @trace_event_fields_rseq_update, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rseq_update, i64 24), ptr getelementptr (i8, ptr @event_class_rseq_update, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rseq_update = internal global %struct.trace_event_functions { ptr @trace_raw_output_rseq_update, ptr null, ptr null, ptr null }, align 4
@print_fmt_rseq_update = internal global [25 x i8] c"\22cpu_id=%d\22, REC->cpu_id\00", align 1
@event_rseq_update = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rseq_update, %union.anon.17 { ptr @__tracepoint_rseq_update }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rseq_update }, ptr @print_fmt_rseq_update, ptr null, %union.anon.18 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rseq_update = internal global ptr @event_rseq_update, section "_ftrace_events", align 4
@trace_event_fields_rseq_ip_fixup = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.15 { %struct.anon.16 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.15 { %struct.anon.16 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.15 { %struct.anon.16 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.15 { %struct.anon.16 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rseq_ip_fixup = internal global %struct.trace_event_class { ptr @str__rseq__trace_system_name, ptr @trace_event_raw_event_rseq_ip_fixup, ptr @perf_trace_rseq_ip_fixup, ptr @trace_event_reg, ptr @trace_event_fields_rseq_ip_fixup, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rseq_ip_fixup, i64 24), ptr getelementptr (i8, ptr @event_class_rseq_ip_fixup, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rseq_ip_fixup = internal global %struct.trace_event_functions { ptr @trace_raw_output_rseq_ip_fixup, ptr null, ptr null, ptr null }, align 4
@print_fmt_rseq_ip_fixup = internal global [138 x i8] c"\22regs_ip=0x%lx start_ip=0x%lx post_commit_offset=%lu abort_ip=0x%lx\22, REC->regs_ip, REC->start_ip, REC->post_commit_offset, REC->abort_ip\00", align 1
@event_rseq_ip_fixup = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rseq_ip_fixup, %union.anon.17 { ptr @__tracepoint_rseq_ip_fixup }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rseq_ip_fixup }, ptr @print_fmt_rseq_ip_fixup, ptr null, %union.anon.18 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rseq_ip_fixup = internal global ptr @event_rseq_ip_fixup, section "_ftrace_events", align 4
@.str = private unnamed_addr constant [4 x i8] c"s32\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"cpu_id\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"cpu_id=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"regs_ip\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"start_ip\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"post_commit_offset\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"abort_ip\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"regs_ip=0x%lx start_ip=0x%lx post_commit_offset=%lu abort_ip=0x%lx\0A\00", align 1
@rseq_get_rseq_cs._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.rseq_get_rseq_cs = private unnamed_addr constant [17 x i8] c"rseq_get_rseq_cs\00", align 1
@.str.9 = private unnamed_addr constant [94 x i8] c"\014Possible attack attempt. Unexpected rseq signature 0x%x, expecting 0x%x (pid=%d, addr=%p).\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@llvm.compiler.used = appending global [10 x ptr] [ptr @__event_rseq_ip_fixup, ptr @__event_rseq_update, ptr @__tracepoint_ptr_rseq_ip_fixup, ptr @__tracepoint_ptr_rseq_update, ptr @__tracepoint_rseq_ip_fixup, ptr @__tracepoint_rseq_update, ptr @event_class_rseq_ip_fixup, ptr @event_class_rseq_update, ptr @event_rseq_ip_fixup, ptr @event_rseq_update], section "llvm.metadata"

@sys_rseq = dso_local alias i32 (ptr, i32, i32, i32), ptr @__se_sys_rseq

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rseq_update(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rseq_update, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #7
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
define dso_local i32 @__traceiter_rseq_ip_fixup(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rseq_ip_fixup, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #7
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rseq_update(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #7
  br i1 %12, label %21, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @llvm.thread.pointer() #7
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_rseq_update, ptr %14, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #7
  br label %21

21:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rseq_update(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #7
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
  br i1 %18, label %39, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %39, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #7
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #7
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = tail call ptr @llvm.thread.pointer() #7
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.trace_event_raw_rseq_update, ptr %20, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = load i32, ptr %4, align 4
  %38 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %37, ptr noundef %0, i64 noundef 1, ptr noundef %38, ptr noundef %12, ptr noundef null) #7
  br label %39

39:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rseq_ip_fixup(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
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
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #7
  br i1 %15, label %24, label %16

16:                                               ; preds = %14, %11, %5
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 24) #7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %17, i32 0, i32 1
  store i32 %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %17, i32 0, i32 2
  store i32 %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %17, i32 0, i32 3
  store i32 %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %17, i32 0, i32 4
  store i32 %4, ptr %23, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #7
  br label %24

24:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rseq_ip_fixup(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #4, !srcloc !12
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
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #7
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #7
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %23, i32 0, i32 1
  store i32 %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %23, i32 0, i32 2
  store i32 %2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %23, i32 0, i32 3
  store i32 %3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %23, i32 0, i32 4
  store i32 %4, ptr %39, align 4
  %40 = load i32, ptr %7, align 4
  %41 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 28, i32 noundef %40, ptr noundef %0, i64 noundef 1, ptr noundef %41, ptr noundef %15, ptr noundef null) #7
  br label %42

42:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__rseq_handle_notify_resume(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.rseq_cs, align 32
  %5 = tail call ptr @llvm.thread.pointer() #7
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %252, !prof !10

10:                                               ; preds = %2
  %11 = icmp eq ptr %1, null
  br i1 %11, label %199, label %12

12:                                               ; preds = %10
  %13 = getelementptr [18 x i32], ptr %1, i32 0, i32 15
  %14 = load i32, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(32) %4, i8 0, i32 32, i1 false) #7, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 0, ptr %3, align 8, !annotation !9
  %15 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 133
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.rseq, ptr %16, i32 0, i32 2
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 8, i32 -1090519040) #8, !srcloc !13
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28, !prof !10

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #4, !srcloc !14
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #7, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !16
  %26 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %17, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #7, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28, !prof !10

28:                                               ; preds = %21, %12
  %29 = phi i32 [ %26, %21 ], [ 8, %12 ]
  %30 = sub i32 8, %29
  %31 = getelementptr i8, ptr %3, i32 %30
  call void @llvm.memset.p0.i32(ptr align 1 %31, i8 0, i32 %29, i1 false) #7
  br label %98

32:                                               ; preds = %21
  %33 = load i64, ptr %3, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(32) %4, i8 0, i32 32, i1 false) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  br label %106

36:                                               ; preds = %32
  %37 = icmp ugt i64 %33, 3204448255
  br i1 %37, label %98, label %38

38:                                               ; preds = %36
  %39 = trunc i64 %33 to i32
  %40 = inttoptr i32 %39 to ptr
  %41 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %40, i32 32, i32 -1090519040) #8, !srcloc !13
  %42 = extractvalue { i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50, !prof !10

44:                                               ; preds = %38
  %45 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #4, !srcloc !14
  %46 = and i32 %45, -13
  %47 = or i32 %46, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #7, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !16
  %48 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %40, i32 noundef 32) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #7, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50, !prof !10

50:                                               ; preds = %44, %38
  %51 = phi i32 [ %48, %44 ], [ 32, %38 ]
  %52 = sub i32 32, %51
  %53 = getelementptr i8, ptr %4, i32 %52
  call void @llvm.memset.p0.i32(ptr align 1 %53, i8 0, i32 %51, i1 false) #7
  br label %98

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.rseq_cs, ptr %4, i32 0, i32 2
  %56 = load i64, ptr %55, align 8
  %57 = icmp ugt i64 %56, 3204448255
  br i1 %57, label %98, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.rseq_cs, ptr %4, i32 0, i32 3
  %60 = load i64, ptr %59, align 16
  %61 = add i64 %60, %56
  %62 = icmp ugt i64 %61, 3204448255
  br i1 %62, label %98, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.rseq_cs, ptr %4, i32 0, i32 4
  %65 = load i64, ptr %64, align 8
  %66 = icmp ugt i64 %65, 3204448255
  br i1 %66, label %98, label %67

67:                                               ; preds = %63
  %68 = load i32, ptr %4, align 32
  %69 = icmp ne i32 %68, 0
  %70 = icmp ult i64 %61, %56
  %71 = select i1 %69, i1 true, i1 %70
  %72 = sub nsw i64 %65, %56
  %73 = icmp ult i64 %72, %60
  %74 = select i1 %71, i1 true, i1 %73
  br i1 %74, label %98, label %75

75:                                               ; preds = %67
  %76 = trunc i64 %65 to i32
  %77 = add i32 %76, -4
  %78 = inttoptr i32 %77 to ptr
  %79 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #4, !srcloc !14
  %80 = and i32 %79, -13
  %81 = or i32 %80, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #7, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !16
  %82 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %78, i32 -1090519041) #7, !srcloc !17
  %83 = extractvalue { i32, i32 } %82, 0
  %84 = extractvalue { i32, i32 } %82, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #7, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !16
  %85 = icmp eq i32 %83, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %75
  %87 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 134
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, %84
  br i1 %89, label %100, label %90

90:                                               ; preds = %86
  %91 = call i32 @___ratelimit(ptr noundef nonnull @rseq_get_rseq_cs._rs, ptr noundef nonnull @__func__.rseq_get_rseq_cs) #7
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = load i32, ptr %87, align 4
  %95 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 52
  %96 = load i32, ptr %95, align 8
  %97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %84, i32 noundef %94, i32 noundef %96, ptr noundef %78) #9
  br label %98

98:                                               ; preds = %93, %90, %75, %67, %63, %58, %54, %50, %36, %28
  %99 = phi i32 [ -14, %50 ], [ -14, %28 ], [ -22, %90 ], [ -22, %93 ], [ %83, %75 ], [ -22, %54 ], [ -22, %58 ], [ -22, %63 ], [ -22, %67 ], [ -22, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  br label %196

100:                                              ; preds = %86
  %101 = load i64, ptr %55, align 8
  %102 = load i64, ptr %59, align 16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  %103 = zext i32 %14 to i64
  %104 = sub i64 %103, %101
  %105 = icmp ult i64 %104, %102
  br i1 %105, label %118, label %106

106:                                              ; preds = %100, %35
  %107 = load ptr, ptr %15, align 8
  %108 = getelementptr inbounds %struct.rseq, ptr %107, i32 0, i32 2
  %109 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %108, i32 8, i32 -1090519040) #8, !srcloc !18
  %110 = extractvalue { i32, i32 } %109, 0
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %194

112:                                              ; preds = %106
  %113 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #4, !srcloc !14
  %114 = and i32 %113, -13
  %115 = or i32 %114, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %115) #7, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !16
  %116 = call i32 @arm_clear_user(ptr noundef %108, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %113) #7, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !16
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %195, label %194

118:                                              ; preds = %100
  %119 = getelementptr inbounds %struct.rseq_cs, ptr %4, i32 0, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = load ptr, ptr %15, align 8
  %122 = getelementptr inbounds %struct.rseq, ptr %121, i32 0, i32 3
  %123 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #4, !srcloc !14
  %124 = and i32 %123, -13
  %125 = or i32 %124, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %125) #7, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !16
  %126 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %122, i32 -1090519041) #7, !srcloc !19
  %127 = extractvalue { i32, i32 } %126, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %123) #7, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !16
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %118
  %130 = extractvalue { i32, i32 } %126, 1
  %131 = or i32 %130, %120
  %132 = and i32 %131, 2
  %133 = icmp ne i32 %132, 0
  %134 = and i32 %131, 5
  %135 = icmp ne i32 %134, 5
  %136 = and i1 %133, %135
  br i1 %136, label %194, label %137, !prof !11

137:                                              ; preds = %129
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !20
  %138 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 135
  %139 = load i32, ptr %138, align 16
  store i32 0, ptr %138, align 16
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !21
  %140 = xor i32 %131, -1
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i32
  br label %144

144:                                              ; preds = %137, %118
  %145 = phi i32 [ %143, %137 ], [ %127, %118 ]
  %146 = icmp slt i32 %145, 1
  br i1 %146, label %196, label %147

147:                                              ; preds = %144
  %148 = load ptr, ptr %15, align 8
  %149 = getelementptr inbounds %struct.rseq, ptr %148, i32 0, i32 2
  %150 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %149, i32 8, i32 -1090519040) #8, !srcloc !18
  %151 = extractvalue { i32, i32 } %150, 0
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %194

153:                                              ; preds = %147
  %154 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #4, !srcloc !14
  %155 = and i32 %154, -13
  %156 = or i32 %155, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %156) #7, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !16
  %157 = call i32 @arm_clear_user(ptr noundef %149, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %154) #7, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !16
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %194

159:                                              ; preds = %153
  %160 = load i64, ptr %55, align 8
  %161 = trunc i64 %160 to i32
  %162 = load i64, ptr %59, align 16
  %163 = trunc i64 %162 to i32
  %164 = load i64, ptr %64, align 8
  %165 = trunc i64 %164 to i32
  %166 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rseq_ip_fixup, i32 0, i32 1), align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %192

168:                                              ; preds = %159
  %169 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %170 = load i32, ptr %169, align 8
  %171 = lshr i32 %170, 5
  %172 = getelementptr i32, ptr @__cpu_online_mask, i32 %171
  %173 = load volatile i32, ptr %172, align 4
  %174 = and i32 %170, 31
  %175 = shl nuw i32 1, %174
  %176 = and i32 %175, %173
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %192, label %178

178:                                              ; preds = %168
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  %179 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rseq_ip_fixup, i32 0, i32 7), align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %189, label %181

181:                                              ; preds = %181, %178
  %182 = phi ptr [ %186, %181 ], [ %179, %178 ]
  %183 = load volatile ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.tracepoint_func, ptr %182, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  call void %183(ptr noundef %185, i32 noundef %14, i32 noundef %161, i32 noundef %163, i32 noundef %165) #7
  %186 = getelementptr %struct.tracepoint_func, ptr %182, i32 1
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %181

189:                                              ; preds = %181, %178
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  %190 = load i64, ptr %64, align 8
  %191 = trunc i64 %190 to i32
  br label %192

192:                                              ; preds = %189, %168, %159
  %193 = phi i32 [ %165, %159 ], [ %165, %168 ], [ %191, %189 ]
  store i32 %193, ptr %13, align 4
  br label %195

194:                                              ; preds = %153, %147, %129, %112, %106
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  br label %245

195:                                              ; preds = %192, %112
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  br label %199

196:                                              ; preds = %144, %98
  %197 = phi i32 [ %145, %144 ], [ %99, %98 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %245, label %199, !prof !11

199:                                              ; preds = %196, %195, %10
  %200 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %201 = load i32, ptr %200, align 8
  %202 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 133
  %203 = load ptr, ptr %202, align 8
  %204 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %203, i32 32, i32 -1090519040) #8, !srcloc !24
  %205 = extractvalue { i32, i32 } %204, 0
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %245

207:                                              ; preds = %199
  %208 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %209 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %208) #4, !srcloc !14
  %210 = and i32 %209, -13
  %211 = or i32 %210, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %211) #7, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !16
  %212 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %203, i32 %201, i32 -1090519041) #7, !srcloc !25
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %209) #7, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !16
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %245, !prof !10

214:                                              ; preds = %207
  %215 = getelementptr inbounds %struct.rseq, ptr %203, i32 0, i32 1
  %216 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %208) #4, !srcloc !14
  %217 = and i32 %216, -13
  %218 = or i32 %217, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %218) #7, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !16
  %219 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %215, i32 %201, i32 -1090519041) #7, !srcloc !26
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %216) #7, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !16
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %245, !prof !10

221:                                              ; preds = %214
  %222 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rseq_update, i32 0, i32 1), align 4
  %223 = icmp sgt i32 %222, 0
  br i1 %223, label %224, label %252

224:                                              ; preds = %221
  %225 = load i32, ptr %200, align 8
  %226 = lshr i32 %225, 5
  %227 = getelementptr i32, ptr @__cpu_online_mask, i32 %226
  %228 = load volatile i32, ptr %227, align 4
  %229 = and i32 %225, 31
  %230 = shl nuw i32 1, %229
  %231 = and i32 %230, %228
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %252, label %233

233:                                              ; preds = %224
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !27
  %234 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rseq_update, i32 0, i32 7), align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %244, label %236

236:                                              ; preds = %236, %233
  %237 = phi ptr [ %241, %236 ], [ %234, %233 ]
  %238 = load volatile ptr, ptr %237, align 4
  %239 = getelementptr inbounds %struct.tracepoint_func, ptr %237, i32 0, i32 1
  %240 = load ptr, ptr %239, align 4
  call void %238(ptr noundef %240, ptr noundef %5) #7
  %241 = getelementptr %struct.tracepoint_func, ptr %237, i32 1
  %242 = load ptr, ptr %241, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %236

244:                                              ; preds = %236, %233
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !28
  br label %252

245:                                              ; preds = %214, %207, %199, %196, %194
  %246 = icmp eq ptr %0, null
  br i1 %246, label %250, label %247

247:                                              ; preds = %245
  %248 = getelementptr inbounds %struct.ksignal, ptr %0, i32 0, i32 2
  %249 = load i32, ptr %248, align 4
  br label %250

250:                                              ; preds = %247, %245
  %251 = phi i32 [ %249, %247 ], [ 0, %245 ]
  call void @force_sigsegv(i32 noundef %251) #7
  br label %252

252:                                              ; preds = %250, %244, %224, %221, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @force_sigsegv(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_rseq(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = inttoptr i32 %0 to ptr
  %6 = and i32 %2, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %39, label %8

8:                                                ; preds = %4
  %9 = icmp ult i32 %2, 2
  br i1 %9, label %10, label %68

10:                                               ; preds = %8
  %11 = tail call ptr @llvm.thread.pointer() #7
  %12 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 133
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, %5
  br i1 %14, label %15, label %68

15:                                               ; preds = %10
  %16 = icmp ne i32 %0, 0
  %17 = icmp eq i32 %1, 32
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %68

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 134
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %3
  br i1 %22, label %23, label %68

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #4, !srcloc !14
  %26 = and i32 %25, -13
  %27 = or i32 %26, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #7, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !16
  %28 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %5, i32 0, i32 -1090519041) #7, !srcloc !29
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #7, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %68

30:                                               ; preds = %23
  %31 = load ptr, ptr %12, align 8
  %32 = getelementptr inbounds %struct.rseq, ptr %31, i32 0, i32 1
  %33 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #4, !srcloc !14
  %34 = and i32 %33, -13
  %35 = or i32 %34, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #7, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !16
  %36 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %32, i32 -1, i32 -1090519041) #7, !srcloc !30
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #7, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %30
  store ptr null, ptr %12, align 8
  store i32 0, ptr %20, align 4
  br label %68

39:                                               ; preds = %4
  %40 = icmp eq i32 %2, 0
  br i1 %40, label %41, label %68, !prof !10

41:                                               ; preds = %39
  %42 = tail call ptr @llvm.thread.pointer() #7
  %43 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 133
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  %47 = icmp ne ptr %44, %5
  %48 = icmp ne i32 %1, 32
  %49 = or i1 %48, %47
  br i1 %49, label %68, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 134
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, %3
  %54 = select i1 %53, i32 -16, i32 -1
  br label %68

55:                                               ; preds = %41
  %56 = and i32 %0, 31
  %57 = icmp ne i32 %56, 0
  %58 = icmp ne i32 %1, 32
  %59 = or i1 %58, %57
  br i1 %59, label %68, label %60

60:                                               ; preds = %55
  %61 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 32, i32 -1090519040) #8, !srcloc !31
  %62 = extractvalue { i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  store ptr %5, ptr %43, align 8
  %65 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 134
  store i32 %3, ptr %65, align 4
  %66 = icmp eq i32 %0, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  tail call void @_set_bit(i32 noundef 2, ptr noundef %42) #7
  br label %68

68:                                               ; preds = %67, %64, %60, %55, %50, %46, %39, %38, %30, %23, %19, %15, %10, %8
  %69 = phi i32 [ 0, %38 ], [ -22, %8 ], [ -22, %15 ], [ -22, %10 ], [ -1, %19 ], [ -22, %39 ], [ -22, %46 ], [ %54, %50 ], [ -22, %55 ], [ -14, %60 ], [ 0, %64 ], [ 0, %67 ], [ -14, %23 ], [ -14, %30 ]
  ret i32 %69
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
define internal i32 @trace_raw_output_rseq_update(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #7
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rseq_update, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %11) #7
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #7
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rseq_ip_fixup(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #7
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_rseq_ip_fixup, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #7
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #7
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
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
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
!12 = !{i64 561175}
!13 = !{i64 2149913598, i64 2149913623}
!14 = !{i64 2409710}
!15 = !{i64 2409907}
!16 = !{i64 2149895186}
!17 = !{i64 2154027195, i64 2154027475, i64 2154027809, i64 2154028143}
!18 = !{i64 2149910888, i64 2149910913}
!19 = !{i64 2154040699, i64 2154040979, i64 2154041313, i64 2154041647}
!20 = !{i64 2154044766}
!21 = !{i64 2154044814}
!22 = !{i64 2153617645}
!23 = !{i64 2153617877}
!24 = !{i64 2153959194, i64 2153959219}
!25 = !{i64 2153977882, i64 2153978192, i64 2153978506, i64 2153978820}
!26 = !{i64 2153998654, i64 2153998964, i64 2153999278, i64 2153999592}
!27 = !{i64 2153600579}
!28 = !{i64 2153600715}
!29 = !{i64 2154006787, i64 2154007067, i64 2154007401, i64 2154007735}
!30 = !{i64 2154014976, i64 2154015256, i64 2154015590, i64 2154015924}
!31 = !{i64 2154056666, i64 2154056691}
