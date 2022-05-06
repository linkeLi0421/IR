; ModuleID = '/llk/IR/kernel/trace/trace_events_trigger.c_pt.bc'
source_filename = "../kernel/trace/trace_events_trigger.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_event_triggers_call:\09\09\09\09\09"
module asm "\09.asciz \09\22event_triggers_call\22\09\09\09\09\09"
module asm "__kstrtabns_event_triggers_call:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___trace_trigger_soft_disabled:\09\09\09\09\09"
module asm "\09.asciz \09\22__trace_trigger_soft_disabled\22\09\09\09\09\09"
module asm "__kstrtabns___trace_trigger_soft_disabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_event_triggers_post_call:\09\09\09\09\09"
module asm "\09.asciz \09\22event_triggers_post_call\22\09\09\09\09\09"
module asm "__kstrtabns_event_triggers_post_call:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type {}
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.event_command = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.event_trigger_ops = type { ptr, ptr, ptr, ptr }
%struct.event_trigger_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, %struct.list_head, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.83, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.84, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.85, ptr, %struct.address_space, %struct.list_head, %union.anon.88, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.83 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.84 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.85 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.88 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.trace_array = type { %struct.list_head, ptr, %struct.array_buffer, ptr, ptr, %struct.arch_spinlock_t, i32, i32, i32, i32, i8, i32, i32, ptr, i32, [32 x i8], i32, %struct.raw_spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr, [1 x %struct.cpumask], i32, i32, i32, %struct.list_head, ptr }
%struct.array_buffer = type { ptr, ptr, ptr, i64, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.enable_trigger_data = type { ptr, i8, i8 }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.35, %struct.trace_event, ptr, ptr, %union.anon.62, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.35 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%union.anon.62 = type { ptr }

@__kstrtab_event_triggers_call = external dso_local constant [0 x i8], align 1
@__kstrtabns_event_triggers_call = external dso_local constant [0 x i8], align 1
@__ksymtab_event_triggers_call = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @event_triggers_call to i32), ptr @__kstrtab_event_triggers_call, ptr @__kstrtabns_event_triggers_call }, section "___ksymtab_gpl+event_triggers_call", align 4
@__kstrtab___trace_trigger_soft_disabled = external dso_local constant [0 x i8], align 1
@__kstrtabns___trace_trigger_soft_disabled = external dso_local constant [0 x i8], align 1
@__ksymtab___trace_trigger_soft_disabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__trace_trigger_soft_disabled to i32), ptr @__kstrtab___trace_trigger_soft_disabled, ptr @__kstrtabns___trace_trigger_soft_disabled }, section "___ksymtab_gpl+__trace_trigger_soft_disabled", align 4
@__kstrtab_event_triggers_post_call = external dso_local constant [0 x i8], align 1
@__kstrtabns_event_triggers_post_call = external dso_local constant [0 x i8], align 1
@__ksymtab_event_triggers_post_call = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @event_triggers_post_call to i32), ptr @__kstrtab_event_triggers_post_call, ptr @__kstrtabns_event_triggers_post_call }, section "___ksymtab_gpl+event_triggers_post_call", align 4
@.str = private unnamed_addr constant [4 x i8] c": \09\00", align 1
@trigger_cmd_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @trigger_cmd_mutex, i64 12), ptr getelementptr (i8, ptr @trigger_cmd_mutex, i64 12) } }, align 4
@trigger_commands = internal global %struct.list_head { ptr @trigger_commands, ptr @trigger_commands }, align 4
@event_trigger_fops = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @tracing_lseek, ptr @seq_read, ptr @event_trigger_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @event_trigger_open, ptr null, ptr @event_trigger_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@event_mutex = external dso_local global %struct.mutex, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@named_triggers = internal global %struct.list_head { ptr @named_triggers, ptr @named_triggers }, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"%s:%s:%s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"enable_hist\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"disable_hist\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"enable_event\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"disable_event\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c":unlimited\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c":count=%ld\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c" if %s\0A\00", align 1
@event_enable_trigger_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"kernel/trace/trace_events_trigger.c\00", align 1
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 4
@event_triggers_seq_ops = internal constant %struct.seq_operations { ptr @trigger_start, ptr @trigger_stop, ptr @trigger_next, ptr @trigger_show }, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"# Available triggers:\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@event_trigger_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@trigger_traceon_cmd = internal global %struct.event_command { %struct.list_head zeroinitializer, ptr @.str.15, i32 1, i32 0, ptr @event_trigger_parse, ptr @register_trigger, ptr @unregister_trigger, ptr null, ptr @set_trigger_filter, ptr @onoff_get_trigger_ops }, align 4
@trigger_traceoff_cmd = internal global %struct.event_command { %struct.list_head zeroinitializer, ptr @.str.16, i32 1, i32 1, ptr @event_trigger_parse, ptr @register_trigger, ptr @unregister_trigger, ptr null, ptr @set_trigger_filter, ptr @onoff_get_trigger_ops }, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"traceon\00", align 1
@traceon_count_trigger_ops = internal global %struct.event_trigger_ops { ptr @traceon_count_trigger, ptr @event_trigger_init, ptr @event_trigger_free, ptr @traceon_trigger_print }, align 4
@traceon_trigger_ops = internal global %struct.event_trigger_ops { ptr @traceon_trigger, ptr @event_trigger_init, ptr @event_trigger_free, ptr @traceon_trigger_print }, align 4
@traceoff_count_trigger_ops = internal global %struct.event_trigger_ops { ptr @traceoff_count_trigger, ptr @event_trigger_init, ptr @event_trigger_free, ptr @traceoff_trigger_print }, align 4
@traceoff_trigger_ops = internal global %struct.event_trigger_ops { ptr @traceoff_trigger, ptr @event_trigger_init, ptr @event_trigger_free, ptr @traceoff_trigger_print }, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"traceoff\00", align 1
@trigger_stacktrace_cmd = internal global %struct.event_command { %struct.list_head zeroinitializer, ptr @.str.17, i32 4, i32 1, ptr @event_trigger_parse, ptr @register_trigger, ptr @unregister_trigger, ptr null, ptr @set_trigger_filter, ptr @stacktrace_get_trigger_ops }, align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"stacktrace\00", align 1
@stacktrace_count_trigger_ops = internal global %struct.event_trigger_ops { ptr @stacktrace_count_trigger, ptr @event_trigger_init, ptr @event_trigger_free, ptr @stacktrace_trigger_print }, align 4
@stacktrace_trigger_ops = internal global %struct.event_trigger_ops { ptr @stacktrace_trigger, ptr @event_trigger_init, ptr @event_trigger_free, ptr @stacktrace_trigger_print }, align 4
@trigger_enable_cmd = internal global %struct.event_command { %struct.list_head zeroinitializer, ptr @.str.7, i32 8, i32 0, ptr @event_enable_trigger_parse, ptr @event_enable_register_trigger, ptr @event_enable_unregister_trigger, ptr null, ptr @set_trigger_filter, ptr @event_enable_get_trigger_ops }, align 4
@trigger_disable_cmd = internal global %struct.event_command { %struct.list_head zeroinitializer, ptr @.str.8, i32 8, i32 0, ptr @event_enable_trigger_parse, ptr @event_enable_register_trigger, ptr @event_enable_unregister_trigger, ptr null, ptr @set_trigger_filter, ptr @event_enable_get_trigger_ops }, align 4
@event_enable_count_trigger_ops = internal global %struct.event_trigger_ops { ptr @event_enable_count_trigger, ptr @event_trigger_init, ptr @event_enable_trigger_free, ptr @event_enable_trigger_print }, align 4
@event_enable_trigger_ops = internal global %struct.event_trigger_ops { ptr @event_enable_trigger, ptr @event_trigger_init, ptr @event_enable_trigger_free, ptr @event_enable_trigger_print }, align 4
@event_disable_count_trigger_ops = internal global %struct.event_trigger_ops { ptr @event_enable_count_trigger, ptr @event_trigger_init, ptr @event_enable_trigger_free, ptr @event_enable_trigger_print }, align 4
@event_disable_trigger_ops = internal global %struct.event_trigger_ops { ptr @event_enable_trigger, ptr @event_trigger_init, ptr @event_enable_trigger_free, ptr @event_enable_trigger_print }, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab___trace_trigger_soft_disabled, ptr @__ksymtab_event_triggers_call, ptr @__ksymtab_event_triggers_post_call], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trigger_data_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.event_trigger_data, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.event_command, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef null, ptr noundef %0, ptr noundef null) #16
  br label %9

9:                                                ; preds = %7, %1
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #16
  tail call void @synchronize_rcu() #16
  tail call void @kfree(ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @event_triggers_call(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 6
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %51, label %8

8:                                                ; preds = %4
  %9 = load volatile ptr, ptr %5, align 4
  %10 = icmp eq ptr %9, %5
  br i1 %10, label %51, label %11

11:                                               ; preds = %8
  %12 = icmp eq ptr %2, null
  br label %13

13:                                               ; preds = %47, %11
  %14 = phi ptr [ %9, %11 ], [ %49, %47 ]
  %15 = phi i32 [ 0, %11 ], [ %48, %47 ]
  %16 = getelementptr i8, ptr %14, i32 -36
  %17 = getelementptr i8, ptr %14, i32 -4
  %18 = load i8, ptr %17, align 4, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %13
  br i1 %12, label %21, label %25

21:                                               ; preds = %20
  %22 = getelementptr i8, ptr %14, i32 -24
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 4
  tail call void %24(ptr noundef %16, ptr noundef %1, ptr noundef null, ptr noundef %3) #16
  br label %47

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %14, i32 -16
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = tail call i32 @filter_match_preds(ptr noundef nonnull %27, ptr noundef nonnull %2) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %29, %25
  %33 = getelementptr i8, ptr %14, i32 -20
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.event_command, ptr %34, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.event_command, ptr %34, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = or i32 %41, %15
  br label %47

43:                                               ; preds = %32
  %44 = getelementptr i8, ptr %14, i32 -24
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %45, align 4
  tail call void %46(ptr noundef %16, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) #16
  br label %47

47:                                               ; preds = %43, %39, %29, %21, %13
  %48 = phi i32 [ %15, %13 ], [ %42, %39 ], [ %15, %43 ], [ %15, %29 ], [ %15, %21 ]
  %49 = load volatile ptr, ptr %14, align 4
  %50 = icmp eq ptr %49, %5
  br i1 %50, label %51, label %13

51:                                               ; preds = %47, %8, %4
  %52 = phi i32 [ 0, %4 ], [ 0, %8 ], [ %48, %47 ]
  ret i32 %52
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filter_match_preds(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 128
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 6
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = load volatile ptr, ptr %7, align 4
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %26, label %13

13:                                               ; preds = %23, %10
  %14 = phi ptr [ %24, %23 ], [ %11, %10 ]
  %15 = getelementptr i8, ptr %14, i32 -4
  %16 = load i8, ptr %15, align 4, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %14, i32 -36
  %20 = getelementptr i8, ptr %14, i32 -24
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %19, ptr noundef null, ptr noundef null, ptr noundef null) #16
  br label %23

23:                                               ; preds = %18, %13
  %24 = load volatile ptr, ptr %14, align 4
  %25 = icmp eq ptr %24, %7
  br i1 %25, label %26, label %13

26:                                               ; preds = %23, %10, %6, %1
  %27 = and i32 %3, 64
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = and i32 %3, 512
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call zeroext i1 @trace_event_ignore_this_pid(ptr noundef %0) #16
  br label %34

34:                                               ; preds = %32, %29, %26
  %35 = phi i1 [ %33, %32 ], [ true, %26 ], [ false, %29 ]
  ret i1 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trace_event_ignore_this_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @event_triggers_post_call(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 6
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %26, label %6

6:                                                ; preds = %23, %2
  %7 = phi ptr [ %24, %23 ], [ %4, %2 ]
  %8 = getelementptr i8, ptr %7, i32 -36
  %9 = getelementptr i8, ptr %7, i32 -4
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %7, i32 -20
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.event_command, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, %1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %7, i32 -24
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %8, ptr noundef null, ptr noundef null, ptr noundef null) #16
  br label %23

23:                                               ; preds = %19, %12, %6
  %24 = load volatile ptr, ptr %7, align 4
  %25 = icmp eq ptr %24, %3
  br i1 %25, label %26, label %6

26:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trigger_process_regex(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %4 = tail call ptr @skip_spaces(ptr noundef %1) #16
  store ptr %4, ptr %3, align 4
  %5 = call ptr @strsep(ptr noundef nonnull %3, ptr noundef nonnull @.str) #16
  %6 = load ptr, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = call ptr @skip_spaces(ptr noundef nonnull %6) #16
  store ptr %9, ptr %3, align 4
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, ptr null, ptr %9
  store ptr %12, ptr %3, align 4
  br label %13

13:                                               ; preds = %8, %2
  %14 = load i8, ptr %5, align 1
  %15 = icmp eq i8 %14, 33
  %16 = zext i1 %15 to i32
  %17 = getelementptr i8, ptr %5, i32 %16
  call void @mutex_lock(ptr noundef nonnull @trigger_cmd_mutex) #16
  br label %18

18:                                               ; preds = %22, %13
  %19 = phi ptr [ @trigger_commands, %13 ], [ %20, %22 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, @trigger_commands
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.event_command, ptr %20, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @strcmp(ptr noundef %24, ptr noundef %17)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %18

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.event_command, ptr %20, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %3, align 4
  %31 = call i32 %29(ptr noundef %20, ptr noundef %0, ptr noundef %4, ptr noundef %17, ptr noundef %30) #16
  br label %32

32:                                               ; preds = %27, %18
  %33 = phi i32 [ %31, %27 ], [ -22, %18 ]
  call void @mutex_unlock(ptr noundef nonnull @trigger_cmd_mutex) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @tracing_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @event_trigger_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %4
  %7 = icmp ugt i32 %2, 4095
  br i1 %7, label %28, label %8

8:                                                ; preds = %6
  %9 = tail call ptr @memdup_user_nul(ptr noundef %1, i32 noundef %2) #16
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = ptrtoint ptr %9 to i32
  br label %28

13:                                               ; preds = %8
  %14 = tail call ptr @strim(ptr noundef %9) #16
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #16
  %15 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 47
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %13
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #16
  tail call void @kfree(ptr noundef %9) #16
  br label %28

21:                                               ; preds = %13
  %22 = tail call i32 @trigger_process_regex(ptr noundef nonnull %18, ptr noundef %9) #16
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #16
  tail call void @kfree(ptr noundef %9) #16
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = zext i32 %2 to i64
  %26 = load i64, ptr %3, align 8
  %27 = add i64 %26, %25
  store i64 %27, ptr %3, align 8
  br label %28

28:                                               ; preds = %24, %21, %20, %11, %6, %4
  %29 = phi i32 [ %12, %11 ], [ -19, %20 ], [ 0, %4 ], [ -22, %6 ], [ %22, %21 ], [ %2, %24 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @event_trigger_open(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #16
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 47
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8, !prof !9

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 512
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %13
  %19 = load volatile ptr, ptr %5, align 4
  %20 = load ptr, ptr @trigger_commands, align 4
  %21 = icmp eq ptr %20, @trigger_commands
  br i1 %21, label %33, label %22

22:                                               ; preds = %28, %18
  %23 = phi ptr [ %29, %28 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.event_command, ptr %23, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call void %25(ptr noundef %19) #16
  br label %28

28:                                               ; preds = %27, %22
  %29 = load ptr, ptr %23, align 4
  %30 = icmp eq ptr %29, @trigger_commands
  br i1 %30, label %31, label %22

31:                                               ; preds = %28
  %32 = load i32, ptr %9, align 8
  br label %33

33:                                               ; preds = %31, %18, %13, %8
  %34 = phi i32 [ %32, %31 ], [ %10, %18 ], [ %10, %13 ], [ %10, %8 ]
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @event_triggers_seq_ops) #16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.seq_file, ptr %42, i32 0, i32 11
  store ptr %1, ptr %43, align 8
  br label %44

44:                                               ; preds = %40, %37, %33, %2
  %45 = phi i32 [ -19, %2 ], [ %38, %37 ], [ 0, %40 ], [ 0, %33 ]
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #16
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @event_trigger_release(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #16
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @seq_release(ptr noundef %0, ptr noundef %1) #16
  br label %9

9:                                                ; preds = %7, %2
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #16
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @register_event_command(ptr noundef %0) local_unnamed_addr #4 section ".init.text" {
  tail call void @mutex_lock(ptr noundef nonnull @trigger_cmd_mutex) #16
  %2 = getelementptr inbounds %struct.event_command, ptr %0, i32 0, i32 1
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ @trigger_commands, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @trigger_commands
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.event_command, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @strcmp(ptr noundef %8, ptr noundef %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %3

13:                                               ; preds = %3
  %14 = load ptr, ptr @trigger_commands, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %0, ptr %15, align 4
  store ptr %14, ptr %0, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr @trigger_commands, ptr %16, align 4
  store volatile ptr %0, ptr @trigger_commands, align 4
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ 0, %13 ], [ -16, %7 ]
  tail call void @mutex_unlock(ptr noundef nonnull @trigger_cmd_mutex) #16
  ret i32 %18
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @unregister_event_command(ptr nocapture noundef readonly %0) local_unnamed_addr #4 section ".init.text" {
  tail call void @mutex_lock(ptr noundef nonnull @trigger_cmd_mutex) #16
  %2 = load ptr, ptr @trigger_commands, align 4
  %3 = getelementptr inbounds %struct.event_command, ptr %0, i32 0, i32 1
  br label %4

4:                                                ; preds = %7, %1
  %5 = phi ptr [ %2, %1 ], [ %8, %7 ]
  %6 = icmp eq ptr %5, @trigger_commands
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %5, align 4
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.event_command, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @strcmp(ptr noundef %9, ptr noundef %11)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %4

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %8, ptr %16, align 4
  store volatile ptr %5, ptr %5, align 4
  store ptr %5, ptr %15, align 4
  br label %18

18:                                               ; preds = %14, %4
  %19 = phi i32 [ 0, %14 ], [ -19, %4 ]
  tail call void @mutex_unlock(ptr noundef nonnull @trigger_cmd_mutex) #16
  ret i32 %19
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @event_trigger_init(ptr nocapture readnone %0, ptr nocapture noundef %1) #5 {
  %3 = getelementptr inbounds %struct.event_trigger_data, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_event_trigger_enable_disable(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #16
  br i1 %3, label %11, label %5

5:                                                ; preds = %2
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #16, !srcloc !10
  %7 = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !11
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %20, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 7, ptr noundef %10) #16
  br label %17

11:                                               ; preds = %2
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #16, !srcloc !12
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %16) #16
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi i32 [ 1, %9 ], [ 0, %15 ]
  %19 = tail call i32 @trace_event_enable_disable(ptr noundef %0, i32 noundef %18, i32 noundef 1) #16
  br label %20

20:                                               ; preds = %17, %11, %5
  %21 = phi i32 [ 0, %5 ], [ 0, %11 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_enable_disable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clear_event_triggers(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %38, label %8

5:                                                ; preds = %36, %8
  %6 = load ptr, ptr %9, align 4
  %7 = icmp eq ptr %6, %2
  br i1 %7, label %38, label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.trace_event_file, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %5, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.trace_event_file, ptr %9, i32 0, i32 9
  %15 = getelementptr inbounds %struct.trace_event_file, ptr %9, i32 0, i32 7
  br label %16

16:                                               ; preds = %36, %13
  %17 = phi ptr [ %11, %13 ], [ %19, %36 ]
  %18 = getelementptr i8, ptr %17, i32 -36
  %19 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #16
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #16, !srcloc !12
  %21 = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %15) #16
  %24 = tail call i32 @trace_event_enable_disable(ptr noundef %9, i32 noundef 0, i32 noundef 1) #16
  br label %25

25:                                               ; preds = %23, %16
  %26 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %17, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  %30 = getelementptr i8, ptr %17, i32 -24
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.event_trigger_ops, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  tail call void %33(ptr noundef %31, ptr noundef %18) #16
  br label %36

36:                                               ; preds = %35, %25
  %37 = icmp eq ptr %19, %10
  br i1 %37, label %5, label %16

38:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @update_cond_flag(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 6
  br label %3

3:                                                ; preds = %11, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %11 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %2
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -16
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %5, i32 -20
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.event_command, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %3, label %18

18:                                               ; preds = %11, %7
  %19 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 8, ptr noundef %19) #16
  br label %22

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %21) #16
  br label %22

22:                                               ; preds = %20, %18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @event_trigger_check_remove(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 33
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i1 [ false, %1 ], [ %5, %3 ]
  ret i1 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @event_trigger_empty_param(ptr noundef readnone %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @event_trigger_separate_filter(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  store ptr null, ptr %2, align 4
  store ptr null, ptr %1, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = select i1 %3, i32 -22, i32 0
  br label %25

9:                                                ; preds = %4
  br i1 %3, label %16, label %10

10:                                               ; preds = %9
  %11 = load i8, ptr %0, align 1
  %12 = zext i8 %11 to i32
  %13 = add nsw i32 %12, -58
  %14 = icmp ult i32 %13, -10
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store ptr %0, ptr %2, align 4
  br label %25

16:                                               ; preds = %10, %9
  %17 = call ptr @strsep(ptr noundef nonnull %5, ptr noundef nonnull @.str.1) #16
  store ptr %17, ptr %1, align 4
  %18 = load ptr, ptr %5, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = call ptr @skip_spaces(ptr noundef nonnull %18) #16
  store ptr %21, ptr %2, align 4
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, ptr null, ptr %21
  store ptr %24, ptr %2, align 4
  br label %25

25:                                               ; preds = %20, %16, %15, %7
  %26 = phi i32 [ 0, %16 ], [ 0, %15 ], [ %8, %7 ], [ 0, %20 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @event_trigger_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.event_command, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr %6(ptr noundef %1, ptr noundef %2) #16
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 60) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %4
  store i32 -1, ptr %9, align 8
  %12 = getelementptr inbounds %struct.event_trigger_data, ptr %9, i32 0, i32 3
  store ptr %7, ptr %12, align 4
  %13 = getelementptr inbounds %struct.event_trigger_data, ptr %9, i32 0, i32 4
  store ptr %0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.event_trigger_data, ptr %9, i32 0, i32 7
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.event_trigger_data, ptr %9, i32 0, i32 10
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.event_trigger_data, ptr %9, i32 0, i32 10, i32 1
  store ptr %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.event_trigger_data, ptr %9, i32 0, i32 12
  store volatile ptr %17, ptr %17, align 8
  %18 = getelementptr inbounds %struct.event_trigger_data, ptr %9, i32 0, i32 12, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.event_trigger_data, ptr %9, i32 0, i32 5
  store volatile ptr null, ptr %19, align 4
  br label %20

20:                                               ; preds = %11, %4
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @event_trigger_parse_num(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = call ptr @strsep(ptr noundef nonnull %3, ptr noundef nonnull @.str.2) #16
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = call i32 @_kstrtoul(ptr noundef %6, i32 noundef 0, ptr noundef %1) #16
  br label %11

11:                                               ; preds = %9, %5, %2
  %12 = phi i32 [ -22, %5 ], [ %10, %9 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @event_trigger_set_filter(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.event_command, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 %8(ptr noundef nonnull %2, ptr noundef %3, ptr noundef %1) #16
  br label %12

12:                                               ; preds = %10, %6, %4
  %13 = phi i32 [ %11, %10 ], [ 0, %6 ], [ 0, %4 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @event_trigger_reset_filter(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.event_command, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 %4(ptr noundef null, ptr noundef %1, ptr noundef null) #16
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @event_trigger_register(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readnone %4, ptr noundef %5, ptr noundef writeonly %6) local_unnamed_addr #0 {
  %8 = icmp eq ptr %6, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %9, %7
  %11 = getelementptr inbounds %struct.event_command, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %2, ptr noundef %5, ptr noundef %1) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.event_command, ptr %0, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  tail call void %17(ptr noundef %2, ptr noundef %5, ptr noundef %1) #16
  br label %23

18:                                               ; preds = %10
  %19 = icmp slt i32 %13, 1
  %20 = or i1 %8, %19
  %21 = select i1 %19, i32 %13, i32 0
  br i1 %20, label %23, label %22

22:                                               ; preds = %18
  store i32 %13, ptr %6, align 4
  br label %23

23:                                               ; preds = %22, %18, %15
  %24 = phi i32 [ %21, %18 ], [ -2, %15 ], [ 0, %22 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_trigger_filter(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = call ptr @strsep(ptr noundef nonnull %4, ptr noundef nonnull @.str.1) #16
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %7
  %12 = call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(3) @.str.3)
  %13 = icmp eq i32 %12, 0
  %14 = load ptr, ptr %4, align 4
  %15 = icmp ne ptr %14, null
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @create_event_filter(ptr noundef %19, ptr noundef %21, ptr noundef nonnull %14, i1 noundef zeroext false, ptr noundef nonnull %5) #16
  %23 = load ptr, ptr %5, align 4
  br label %24

24:                                               ; preds = %17, %3
  %25 = phi ptr [ %23, %17 ], [ null, %3 ]
  %26 = phi i32 [ %22, %17 ], [ -22, %3 ]
  %27 = getelementptr inbounds %struct.event_trigger_data, ptr %1, i32 0, i32 5
  %28 = load volatile ptr, ptr %27, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  store volatile ptr %25, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #16
  call void @synchronize_rcu() #16
  call void @free_event_filter(ptr noundef nonnull %28) #16
  br label %31

31:                                               ; preds = %30, %24
  %32 = getelementptr inbounds %struct.event_trigger_data, ptr %1, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  call void @kfree(ptr noundef %33) #16
  store ptr null, ptr %32, align 4
  %34 = load ptr, ptr %4, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = call noalias ptr @kstrdup(ptr noundef nonnull %34, i32 noundef 3264) #16
  store ptr %37, ptr %32, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load volatile ptr, ptr %27, align 4
  call void @free_event_filter(ptr noundef %40) #16
  store ptr null, ptr %27, align 4
  br label %41

41:                                               ; preds = %39, %36, %31, %11, %7
  %42 = phi i32 [ %26, %36 ], [ -12, %39 ], [ %26, %31 ], [ -22, %11 ], [ -22, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @create_event_filter(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_event_filter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @find_named_trigger(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  %3 = load ptr, ptr @named_triggers, align 4
  %4 = icmp eq ptr %3, @named_triggers
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %21, label %6

6:                                                ; preds = %16, %1
  %7 = phi ptr [ %17, %16 ], [ %3, %1 ]
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %7, i32 -4
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull %0)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11, %6
  %17 = load ptr, ptr %7, align 4
  %18 = icmp eq ptr %17, @named_triggers
  br i1 %18, label %21, label %6

19:                                               ; preds = %11
  %20 = getelementptr i8, ptr %7, i32 -48
  br label %21

21:                                               ; preds = %19, %16, %1
  %22 = phi ptr [ null, %1 ], [ %20, %19 ], [ null, %16 ]
  ret ptr %22
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @is_named_trigger(ptr noundef readnone %0) local_unnamed_addr #9 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ @named_triggers, %1 ], [ %4, %2 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @named_triggers
  %6 = getelementptr i8, ptr %4, i32 -48
  %7 = icmp eq ptr %6, %0
  %8 = or i1 %5, %7
  br i1 %8, label %9, label %2

9:                                                ; preds = %2
  %10 = xor i1 %5, true
  ret i1 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @save_named_trigger(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call noalias ptr @kstrdup(ptr noundef %0, i32 noundef 3264) #16
  %4 = getelementptr inbounds %struct.event_trigger_data, ptr %1, i32 0, i32 11
  store ptr %3, ptr %4, align 4
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.event_trigger_data, ptr %1, i32 0, i32 12
  %8 = load ptr, ptr @named_triggers, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store ptr %8, ptr %7, align 4
  %10 = getelementptr inbounds %struct.event_trigger_data, ptr %1, i32 0, i32 12, i32 1
  store ptr @named_triggers, ptr %10, align 4
  store volatile ptr %7, ptr @named_triggers, align 4
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %6 ], [ -12, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @del_named_trigger(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.event_trigger_data, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #16
  store ptr null, ptr %2, align 4
  %4 = getelementptr inbounds %struct.event_trigger_data, ptr %0, i32 0, i32 12
  %5 = getelementptr inbounds %struct.event_trigger_data, ptr %0, i32 0, i32 12, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pause_named_trigger(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = load ptr, ptr @named_triggers, align 4
  %3 = icmp eq ptr %2, @named_triggers
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.event_trigger_data, ptr %0, i32 0, i32 11
  br label %6

6:                                                ; preds = %17, %4
  %7 = phi ptr [ %2, %4 ], [ %18, %17 ]
  %8 = getelementptr i8, ptr %7, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %5, align 4
  %11 = tail call i32 @strcmp(ptr noundef %9, ptr noundef %10) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = getelementptr i8, ptr %7, i32 -16
  %15 = load i8, ptr %14, align 4, !range !8
  %16 = getelementptr i8, ptr %7, i32 -15
  store i8 %15, ptr %16, align 1
  store i8 1, ptr %14, align 4
  br label %17

17:                                               ; preds = %13, %6
  %18 = load ptr, ptr %7, align 4
  %19 = icmp eq ptr %18, @named_triggers
  br i1 %19, label %20, label %6

20:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unpause_named_trigger(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = load ptr, ptr @named_triggers, align 4
  %3 = icmp eq ptr %2, @named_triggers
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.event_trigger_data, ptr %0, i32 0, i32 11
  br label %6

6:                                                ; preds = %17, %4
  %7 = phi ptr [ %2, %4 ], [ %18, %17 ]
  %8 = getelementptr i8, ptr %7, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %5, align 4
  %11 = tail call i32 @strcmp(ptr noundef %9, ptr noundef %10) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = getelementptr i8, ptr %7, i32 -15
  %15 = load i8, ptr %14, align 1, !range !8
  %16 = getelementptr i8, ptr %7, i32 -16
  store i8 %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %6
  %18 = load ptr, ptr %7, align 4
  %19 = icmp eq ptr %18, @named_triggers
  br i1 %19, label %20, label %6

20:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @set_named_trigger_data(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.event_trigger_data, ptr %0, i32 0, i32 13
  store ptr %1, ptr %3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @get_named_trigger_data(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.event_trigger_data, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @event_enable_trigger_print(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.event_trigger_data, ptr %2, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.enable_trigger_data, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 1, !range !8
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.enable_trigger_data, ptr %5, i32 0, i32 1
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, ptr @.str.6, ptr @.str.5
  %13 = select i1 %11, ptr @.str.8, ptr @.str.7
  %14 = select i1 %8, ptr %13, ptr %12
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.trace_event_file, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_call, ptr %17, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 16
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.trace_event_call, ptr %17, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  br i1 %24, label %31, label %27

27:                                               ; preds = %3
  %28 = icmp eq ptr %26, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr %26, align 4
  br label %31

31:                                               ; preds = %29, %27, %3
  %32 = phi ptr [ %30, %29 ], [ null, %27 ], [ %26, %3 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %14, ptr noundef %20, ptr noundef %32) #16
  %33 = load i32, ptr %2, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.9) #16
  br label %37

36:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %33) #16
  br label %37

37:                                               ; preds = %36, %35
  %38 = getelementptr inbounds %struct.event_trigger_data, ptr %2, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %39) #16
  br label %43

42:                                               ; preds = %37
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #16
  br label %43

43:                                               ; preds = %42, %41
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @event_enable_trigger_free(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.event_trigger_data, ptr %1, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.event_trigger_data, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 1
  %8 = load i1, ptr @event_enable_trigger_free.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %2
  store i1 true, ptr @event_enable_trigger_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1741, i32 noundef 9, ptr noundef null) #16
  br label %12

12:                                               ; preds = %11, %2
  br i1 %7, label %40, label %13

13:                                               ; preds = %12
  %14 = load i32, ptr %5, align 4
  %15 = add i32 %14, -1
  store i32 %15, ptr %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = load ptr, ptr %4, align 4
  %19 = tail call i32 @trace_event_enable_disable(ptr noundef %18, i32 noundef 0, i32 noundef 1) #16
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr inbounds %struct.trace_event_file, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_call, ptr %22, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  tail call void @trace_event_dyn_put_ref(ptr noundef %22) #16
  br label %31

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.trace_event_call, ptr %22, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  tail call void @module_put(ptr noundef %30) #16
  br label %31

31:                                               ; preds = %28, %27
  %32 = getelementptr inbounds %struct.event_trigger_data, ptr %1, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.event_command, ptr %33, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = tail call i32 %35(ptr noundef null, ptr noundef %1, ptr noundef null) #16
  br label %39

39:                                               ; preds = %37, %31
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #16
  tail call void @synchronize_rcu() #16
  tail call void @kfree(ptr noundef %1) #16
  tail call void @kfree(ptr noundef %4) #16
  br label %40

40:                                               ; preds = %39, %13, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_event_put_ref(ptr noundef %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @trace_event_dyn_put_ref(ptr noundef %0) #16
  br label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  tail call void @module_put(ptr noundef %9) #16
  br label %10

10:                                               ; preds = %7, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @event_enable_trigger_parse(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  store ptr %4, ptr %6, align 4
  %8 = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  %10 = icmp eq ptr %4, null
  br i1 %10, label %133, label %11

11:                                               ; preds = %5
  %12 = call ptr @strsep(ptr noundef nonnull %6, ptr noundef nonnull @.str.1) #16
  store ptr %12, ptr %7, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %133, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %6, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = call ptr @skip_spaces(ptr noundef nonnull %15) #16
  store ptr %18, ptr %6, align 4
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, ptr null, ptr %18
  store ptr %21, ptr %6, align 4
  br label %22

22:                                               ; preds = %17, %14
  %23 = call ptr @strsep(ptr noundef nonnull %7, ptr noundef nonnull @.str.2) #16
  %24 = load ptr, ptr %7, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %133, label %26

26:                                               ; preds = %22
  %27 = call ptr @strsep(ptr noundef nonnull %7, ptr noundef nonnull @.str.2) #16
  %28 = call ptr @find_event_file(ptr noundef %9, ptr noundef %23, ptr noundef %27) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %133, label %30

30:                                               ; preds = %26
  %31 = call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(13) @.str.7)
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.event_command, ptr %0, i32 0, i32 9
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %7, align 4
  %37 = call ptr %35(ptr noundef %3, ptr noundef %36) #16
  %38 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %39 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 60) #17
  %40 = icmp eq ptr %39, null
  br i1 %40, label %133, label %41

41:                                               ; preds = %30
  %42 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %43 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 8) #17
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  call void @kfree(ptr noundef nonnull %39) #16
  br label %133

46:                                               ; preds = %41
  store i32 -1, ptr %39, align 8
  %47 = getelementptr inbounds %struct.event_trigger_data, ptr %39, i32 0, i32 3
  store ptr %37, ptr %47, align 4
  %48 = getelementptr inbounds %struct.event_trigger_data, ptr %39, i32 0, i32 4
  store ptr %0, ptr %48, align 8
  %49 = getelementptr inbounds %struct.event_trigger_data, ptr %39, i32 0, i32 10
  store volatile ptr %49, ptr %49, align 4
  %50 = getelementptr inbounds %struct.event_trigger_data, ptr %39, i32 0, i32 10, i32 1
  store ptr %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.event_trigger_data, ptr %39, i32 0, i32 5
  store volatile ptr null, ptr %51, align 4
  %52 = getelementptr inbounds %struct.enable_trigger_data, ptr %43, i32 0, i32 2
  store i8 0, ptr %52, align 1
  %53 = getelementptr inbounds %struct.enable_trigger_data, ptr %43, i32 0, i32 1
  store i8 %33, ptr %53, align 4
  store ptr %28, ptr %43, align 8
  %54 = getelementptr inbounds %struct.event_trigger_data, ptr %39, i32 0, i32 7
  store ptr %43, ptr %54, align 4
  %55 = load i8, ptr %2, align 1
  %56 = icmp eq i8 %55, 33
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.event_command, ptr %0, i32 0, i32 6
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %2, i32 1
  call void %59(ptr noundef %60, ptr noundef nonnull %39, ptr noundef %1) #16
  call void @kfree(ptr noundef nonnull %39) #16
  call void @kfree(ptr noundef nonnull %43) #16
  br label %133

61:                                               ; preds = %46
  %62 = getelementptr inbounds %struct.event_trigger_data, ptr %39, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 4
  %65 = load ptr, ptr %7, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %61
  %68 = call ptr @strsep(ptr noundef nonnull %7, ptr noundef nonnull @.str.2) #16
  %69 = load i8, ptr %68, align 1
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %105, label %71

71:                                               ; preds = %67
  %72 = call i32 @_kstrtoul(ptr noundef %68, i32 noundef 0, ptr noundef nonnull %39) #16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %105

74:                                               ; preds = %71, %61
  %75 = load ptr, ptr %6, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.event_command, ptr %0, i32 0, i32 8
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = call i32 %79(ptr noundef nonnull %75, ptr noundef nonnull %39, ptr noundef %1) #16
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %105, label %84

84:                                               ; preds = %81, %77, %74
  %85 = getelementptr inbounds %struct.trace_event_file, ptr %28, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = call fastcc zeroext i1 @trace_event_try_get_ref(ptr noundef %86)
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = call i32 @trace_event_enable_disable(ptr noundef nonnull %28, i32 noundef 1, i32 noundef 1) #16
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.event_command, ptr %0, i32 0, i32 5
  %93 = load ptr, ptr %92, align 4
  %94 = call i32 %93(ptr noundef %2, ptr noundef nonnull %39, ptr noundef %1) #16
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = icmp slt i32 %94, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %96
  call void @event_trigger_free(ptr noundef %37, ptr noundef nonnull %39)
  br label %133

99:                                               ; preds = %96, %91
  %100 = phi i32 [ %94, %96 ], [ -2, %91 ]
  %101 = call i32 @trace_event_enable_disable(ptr noundef nonnull %28, i32 noundef 0, i32 noundef 1) #16
  br label %102

102:                                              ; preds = %99, %88
  %103 = phi i32 [ %89, %88 ], [ %100, %99 ]
  %104 = load ptr, ptr %85, align 4
  call fastcc void @trace_event_put_ref(ptr noundef %104)
  br label %105

105:                                              ; preds = %102, %84, %81, %71, %67
  %106 = phi i32 [ %72, %71 ], [ %82, %81 ], [ %103, %102 ], [ -22, %67 ], [ -16, %84 ]
  %107 = getelementptr inbounds %struct.event_command, ptr %0, i32 0, i32 8
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %105
  %111 = call i32 %108(ptr noundef null, ptr noundef nonnull %39, ptr noundef null) #16
  br label %112

112:                                              ; preds = %110, %105
  %113 = load i32, ptr %62, align 4
  %114 = icmp slt i32 %113, 1
  %115 = load i1, ptr @event_trigger_free.__already_done, align 1
  %116 = xor i1 %115, true
  %117 = select i1 %114, i1 %116, i1 false
  br i1 %117, label %118, label %119, !prof !9

118:                                              ; preds = %112
  store i1 true, ptr @event_trigger_free.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 466, i32 noundef 9, ptr noundef null) #16
  br label %119

119:                                              ; preds = %118, %112
  br i1 %114, label %132, label %120

120:                                              ; preds = %119
  %121 = load i32, ptr %62, align 4
  %122 = add i32 %121, -1
  store i32 %122, ptr %62, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load ptr, ptr %48, align 8
  %126 = getelementptr inbounds %struct.event_command, ptr %125, i32 0, i32 8
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %124
  %130 = call i32 %127(ptr noundef null, ptr noundef nonnull %39, ptr noundef null) #16
  br label %131

131:                                              ; preds = %129, %124
  call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #16
  call void @synchronize_rcu() #16
  call void @kfree(ptr noundef nonnull %39) #16
  br label %132

132:                                              ; preds = %131, %120, %119
  call void @kfree(ptr noundef nonnull %43) #16
  br label %133

133:                                              ; preds = %132, %98, %57, %45, %30, %26, %22, %11, %5
  %134 = phi i32 [ -22, %5 ], [ -22, %11 ], [ -22, %22 ], [ 0, %57 ], [ %106, %132 ], [ 0, %98 ], [ -12, %45 ], [ -12, %30 ], [ -22, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret i32 %134
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_event_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @trace_event_try_get_ref(ptr noundef %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call zeroext i1 @trace_event_dyn_try_get_ref(ptr noundef %0) #16
  br label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = tail call zeroext i1 @try_module_get(ptr noundef %10) #16
  br label %12

12:                                               ; preds = %8, %6
  %13 = phi i1 [ %7, %6 ], [ %11, %8 ]
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @event_trigger_free(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.event_trigger_data, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 1
  %6 = load i1, ptr @event_trigger_free.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %2
  store i1 true, ptr @event_trigger_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 466, i32 noundef 9, ptr noundef null) #16
  br label %10

10:                                               ; preds = %9, %2
  br i1 %5, label %24, label %11

11:                                               ; preds = %10
  %12 = load i32, ptr %3, align 4
  %13 = add i32 %12, -1
  store i32 %13, ptr %3, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.event_trigger_data, ptr %1, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.event_command, ptr %17, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = tail call i32 %19(ptr noundef null, ptr noundef %1, ptr noundef null) #16
  br label %23

23:                                               ; preds = %21, %15
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #16
  tail call void @synchronize_rcu() #16
  tail call void @kfree(ptr noundef %1) #16
  br label %24

24:                                               ; preds = %23, %11, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @event_enable_register_trigger(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.event_trigger_data, ptr %1, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %32, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.event_trigger_data, ptr %1, i32 0, i32 4
  br label %11

11:                                               ; preds = %29, %9
  %12 = phi ptr [ %7, %9 ], [ %30, %29 ]
  %13 = getelementptr i8, ptr %12, i32 -8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %12, i32 -20
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.event_command, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr inbounds %struct.event_command, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load ptr, ptr %14, align 4
  %27 = load ptr, ptr %5, align 4
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %99, label %29

29:                                               ; preds = %25, %16, %11
  %30 = load ptr, ptr %12, align 4
  %31 = icmp eq ptr %30, %6
  br i1 %31, label %32, label %11

32:                                               ; preds = %29, %3
  %33 = getelementptr inbounds %struct.event_trigger_data, ptr %1, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.event_trigger_ops, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = tail call i32 %36(ptr noundef %34, ptr noundef %1) #16
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %99, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %6, align 4
  br label %43

43:                                               ; preds = %41, %32
  %44 = phi ptr [ %42, %41 ], [ %7, %32 ]
  %45 = phi i32 [ %39, %41 ], [ 0, %32 ]
  %46 = getelementptr inbounds %struct.event_trigger_data, ptr %1, i32 0, i32 10
  store ptr %44, ptr %46, align 4
  %47 = getelementptr inbounds %struct.event_trigger_data, ptr %1, i32 0, i32 10, i32 1
  store ptr %6, ptr %47, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  store volatile ptr %46, ptr %6, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  %49 = add nuw i32 %45, 1
  br label %50

50:                                               ; preds = %58, %43
  %51 = phi ptr [ %6, %43 ], [ %52, %58 ]
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %6
  br i1 %53, label %67, label %54

54:                                               ; preds = %50
  %55 = getelementptr i8, ptr %52, i32 -16
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = getelementptr i8, ptr %52, i32 -20
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.event_command, ptr %60, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 3
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %50, label %65

65:                                               ; preds = %58, %54
  %66 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 8, ptr noundef %66) #16
  br label %69

67:                                               ; preds = %50
  %68 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %68) #16
  br label %69

69:                                               ; preds = %67, %65
  %70 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %70) #16
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %70, ptr %70, i32 1, ptr elementtype(i32) %70) #16, !srcloc !10
  %72 = extractvalue { i32, i32 } %71, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !11
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %99, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 7, ptr noundef %75) #16
  %76 = tail call i32 @trace_event_enable_disable(ptr noundef %2, i32 noundef 1, i32 noundef 1) #16
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %74
  %79 = load ptr, ptr %47, align 4
  %80 = load ptr, ptr %46, align 4
  %81 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  store ptr %79, ptr %81, align 4
  store volatile ptr %80, ptr %79, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %47, align 4
  br label %82

82:                                               ; preds = %90, %78
  %83 = phi ptr [ %6, %78 ], [ %84, %90 ]
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, %6
  br i1 %85, label %98, label %86

86:                                               ; preds = %82
  %87 = getelementptr i8, ptr %84, i32 -16
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = getelementptr i8, ptr %84, i32 -20
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.event_command, ptr %92, i32 0, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, 3
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %82, label %97

97:                                               ; preds = %90, %86
  tail call void @_set_bit(i32 noundef 8, ptr noundef %75) #16
  br label %99

98:                                               ; preds = %82
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %75) #16
  br label %99

99:                                               ; preds = %98, %97, %74, %69, %38, %25
  %100 = phi i32 [ %39, %38 ], [ %49, %74 ], [ %45, %97 ], [ %45, %98 ], [ %49, %69 ], [ -17, %25 ]
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @event_enable_unregister_trigger(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.event_trigger_data, ptr %1, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %72, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.event_trigger_data, ptr %1, i32 0, i32 4
  br label %11

11:                                               ; preds = %68, %9
  %12 = phi ptr [ %7, %9 ], [ %69, %68 ]
  %13 = getelementptr i8, ptr %12, i32 -8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %68, label %16

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %12, i32 -20
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.event_command, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr inbounds %struct.event_command, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %16
  %26 = load ptr, ptr %14, align 4
  %27 = load ptr, ptr %5, align 4
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %68

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %12, i32 -36
  %31 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %12, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %32, ptr %34, align 4
  store volatile ptr %33, ptr %32, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %31, align 4
  %35 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #16
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #16, !srcloc !12
  %37 = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %40) #16
  %41 = tail call i32 @trace_event_enable_disable(ptr noundef %2, i32 noundef 0, i32 noundef 1) #16
  br label %42

42:                                               ; preds = %39, %29
  br label %43

43:                                               ; preds = %51, %42
  %44 = phi ptr [ %45, %51 ], [ %6, %42 ]
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %6
  br i1 %46, label %60, label %47

47:                                               ; preds = %43
  %48 = getelementptr i8, ptr %45, i32 -16
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = getelementptr i8, ptr %45, i32 -20
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.event_command, ptr %53, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 3
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %43, label %58

58:                                               ; preds = %51, %47
  %59 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 8, ptr noundef %59) #16
  br label %62

60:                                               ; preds = %43
  %61 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %61) #16
  br label %62

62:                                               ; preds = %60, %58
  %63 = getelementptr i8, ptr %12, i32 -24
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.event_trigger_ops, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %71

68:                                               ; preds = %25, %16, %11
  %69 = load ptr, ptr %12, align 4
  %70 = icmp eq ptr %69, %6
  br i1 %70, label %72, label %11

71:                                               ; preds = %62
  tail call void %66(ptr noundef %64, ptr noundef %30) #16
  br label %72

72:                                               ; preds = %71, %68, %62, %3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @register_trigger_cmds() local_unnamed_addr #4 section ".init.text" {
  tail call fastcc void @register_trigger_traceon_traceoff_cmds() #18
  tail call fastcc void @register_trigger_stacktrace_cmd() #18
  tail call fastcc void @register_trigger_enable_disable_cmds() #18
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @register_trigger_traceon_traceoff_cmds() unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @register_event_command(ptr noundef nonnull @trigger_traceon_cmd) #18
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %4, !prof !9

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2070, i32 noundef 9, ptr noundef null) #16
  br label %10

4:                                                ; preds = %0
  %5 = tail call i32 @register_event_command(ptr noundef nonnull @trigger_traceoff_cmd) #18
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10, !prof !9

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2073, i32 noundef 9, ptr noundef null) #16
  %8 = tail call i32 @unregister_event_command(ptr noundef nonnull @trigger_traceon_cmd) #19
  %9 = tail call i32 @unregister_event_command(ptr noundef nonnull @trigger_traceoff_cmd) #19
  br label %10

10:                                               ; preds = %7, %4, %3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @register_trigger_stacktrace_cmd() unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @register_event_command(ptr noundef nonnull @trigger_stacktrace_cmd) #18
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %4, !prof !9

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1663, i32 noundef 9, ptr noundef null) #16
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @register_trigger_enable_disable_cmds() unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @register_event_command(ptr noundef nonnull @trigger_enable_cmd) #18
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %4, !prof !9

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2056, i32 noundef 9, ptr noundef null) #16
  br label %10

4:                                                ; preds = %0
  %5 = tail call i32 @register_event_command(ptr noundef nonnull @trigger_disable_cmd) #18
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10, !prof !9

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2059, i32 noundef 9, ptr noundef null) #16
  %8 = tail call i32 @unregister_event_command(ptr noundef nonnull @trigger_enable_cmd) #19
  %9 = tail call i32 @unregister_event_command(ptr noundef nonnull @trigger_disable_cmd) #19
  br label %10

10:                                               ; preds = %7, %4, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @trigger_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #16
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10, !prof !9

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.trace_event_file, ptr %8, i32 0, i32 6
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %23, label %14

14:                                               ; preds = %18, %10
  %15 = phi ptr [ %16, %18 ], [ %11, %10 ]
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %11
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %16, i32 -28
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %14

23:                                               ; preds = %14, %10
  %24 = load i64, ptr %1, align 8
  %25 = icmp eq i64 %24, 0
  %26 = select i1 %25, ptr inttoptr (i32 1 to ptr), ptr null
  br label %30

27:                                               ; preds = %18
  %28 = load i64, ptr %1, align 8
  %29 = tail call ptr @seq_list_start(ptr noundef %11, i64 noundef %28) #16
  br label %30

30:                                               ; preds = %27, %23, %2
  %31 = phi ptr [ %26, %23 ], [ %29, %27 ], [ inttoptr (i32 -19 to ptr), %2 ]
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trigger_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @trigger_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 47
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i64, ptr %2, align 8
  %13 = add i64 %12, 1
  store i64 %13, ptr %2, align 8
  br label %17

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.trace_event_file, ptr %9, i32 0, i32 6
  %16 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef %15, ptr noundef %2) #16
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi ptr [ null, %11 ], [ %16, %14 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trigger_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.13) #16
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 35) #16
  tail call void @mutex_lock(ptr noundef nonnull @trigger_cmd_mutex) #16
  %5 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @trigger_commands, i32 0, i32 1), align 4
  %6 = icmp eq ptr %5, @trigger_commands
  br i1 %6, label %14, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.event_command, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %10) #16
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @trigger_commands
  br i1 %13, label %14, label %7

14:                                               ; preds = %7, %4
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #16
  tail call void @mutex_unlock(ptr noundef nonnull @trigger_cmd_mutex) #16
  br label %22

15:                                               ; preds = %2
  %16 = getelementptr i8, ptr %1, i32 -36
  %17 = getelementptr i8, ptr %1, i32 -24
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.event_trigger_ops, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %0, ptr noundef %18, ptr noundef %16) #16
  br label %22

22:                                               ; preds = %15, %14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_dyn_put_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trace_event_dyn_try_get_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @event_trigger_parse(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  store ptr %4, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store ptr null, ptr %7, align 4
  %8 = icmp eq ptr %4, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = load i8, ptr %4, align 1
  %11 = zext i8 %10 to i32
  %12 = add nsw i32 %11, -58
  %13 = icmp ult i32 %12, -10
  br i1 %13, label %23, label %14

14:                                               ; preds = %9
  %15 = call ptr @strsep(ptr noundef nonnull %6, ptr noundef nonnull @.str.1) #16
  store ptr %15, ptr %7, align 4
  %16 = load ptr, ptr %6, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = call ptr @skip_spaces(ptr noundef nonnull %16) #16
  store ptr %19, ptr %6, align 4
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, ptr null, ptr %19
  store ptr %22, ptr %6, align 4
  br label %23

23:                                               ; preds = %18, %14, %9, %5
  %24 = phi ptr [ %15, %14 ], [ %15, %18 ], [ null, %9 ], [ null, %5 ]
  %25 = getelementptr inbounds %struct.event_command, ptr %0, i32 0, i32 9
  %26 = load ptr, ptr %25, align 4
  %27 = call ptr %26(ptr noundef %3, ptr noundef %24) #16
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %29 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 60) #17
  %30 = icmp eq ptr %29, null
  br i1 %30, label %100, label %31

31:                                               ; preds = %23
  store i32 -1, ptr %29, align 8
  %32 = getelementptr inbounds %struct.event_trigger_data, ptr %29, i32 0, i32 3
  store ptr %27, ptr %32, align 4
  %33 = getelementptr inbounds %struct.event_trigger_data, ptr %29, i32 0, i32 4
  store ptr %0, ptr %33, align 8
  %34 = getelementptr inbounds %struct.event_trigger_data, ptr %29, i32 0, i32 7
  store ptr %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.event_trigger_data, ptr %29, i32 0, i32 10
  store volatile ptr %35, ptr %35, align 4
  %36 = getelementptr inbounds %struct.event_trigger_data, ptr %29, i32 0, i32 10, i32 1
  store ptr %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.event_trigger_data, ptr %29, i32 0, i32 12
  store volatile ptr %37, ptr %37, align 8
  %38 = getelementptr inbounds %struct.event_trigger_data, ptr %29, i32 0, i32 12, i32 1
  store ptr %37, ptr %38, align 4
  %39 = load i8, ptr %2, align 1
  %40 = icmp eq i8 %39, 33
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.event_command, ptr %0, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %2, i32 1
  call void %43(ptr noundef %44, ptr noundef nonnull %29, ptr noundef %1) #16
  br label %98

45:                                               ; preds = %31
  %46 = icmp eq ptr %24, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %45
  %48 = call ptr @strsep(ptr noundef nonnull %7, ptr noundef nonnull @.str.2) #16
  %49 = load i8, ptr %48, align 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %102, label %51

51:                                               ; preds = %47
  %52 = call i32 @_kstrtoul(ptr noundef %48, i32 noundef 0, ptr noundef nonnull %29) #16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %102

54:                                               ; preds = %51, %45
  %55 = load ptr, ptr %6, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.event_command, ptr %0, i32 0, i32 8
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = call i32 %59(ptr noundef nonnull %55, ptr noundef nonnull %29, ptr noundef %1) #16
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %102, label %64

64:                                               ; preds = %61, %57, %54
  %65 = getelementptr inbounds %struct.event_trigger_data, ptr %29, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 4
  %68 = getelementptr inbounds %struct.event_command, ptr %0, i32 0, i32 5
  %69 = load ptr, ptr %68, align 4
  %70 = call i32 %69(ptr noundef %2, ptr noundef nonnull %29, ptr noundef %1) #16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.event_command, ptr %0, i32 0, i32 6
  %74 = load ptr, ptr %73, align 4
  call void %74(ptr noundef %2, ptr noundef nonnull %29, ptr noundef %1) #16
  br label %77

75:                                               ; preds = %64
  %76 = call i32 @llvm.smin.i32(i32 %70, i32 0)
  br label %77

77:                                               ; preds = %75, %72
  %78 = phi i32 [ %76, %75 ], [ -2, %72 ]
  %79 = load i32, ptr %65, align 4
  %80 = icmp slt i32 %79, 1
  %81 = load i1, ptr @event_trigger_free.__already_done, align 1
  %82 = xor i1 %81, true
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %85, !prof !9

84:                                               ; preds = %77
  store i1 true, ptr @event_trigger_free.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 466, i32 noundef 9, ptr noundef null) #16
  br label %85

85:                                               ; preds = %84, %77
  br i1 %80, label %100, label %86

86:                                               ; preds = %85
  %87 = load i32, ptr %65, align 4
  %88 = add i32 %87, -1
  store i32 %88, ptr %65, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load ptr, ptr %33, align 8
  %92 = getelementptr inbounds %struct.event_command, ptr %91, i32 0, i32 8
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %90
  %96 = call i32 %93(ptr noundef null, ptr noundef nonnull %29, ptr noundef null) #16
  br label %97

97:                                               ; preds = %95, %90
  call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #16
  call void @synchronize_rcu() #16
  br label %98

98:                                               ; preds = %107, %102, %97, %41
  %99 = phi i32 [ %78, %97 ], [ 0, %41 ], [ %103, %107 ], [ %103, %102 ]
  call void @kfree(ptr noundef nonnull %29) #16
  br label %100

100:                                              ; preds = %98, %86, %85, %23
  %101 = phi i32 [ -12, %23 ], [ %78, %85 ], [ %78, %86 ], [ %99, %98 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret i32 %101

102:                                              ; preds = %61, %51, %47
  %103 = phi i32 [ %52, %51 ], [ %62, %61 ], [ -22, %47 ]
  %104 = getelementptr inbounds %struct.event_command, ptr %0, i32 0, i32 8
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %98, label %107

107:                                              ; preds = %102
  %108 = call i32 %105(ptr noundef null, ptr noundef nonnull %29, ptr noundef null) #16
  br label %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @register_trigger(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 6
  %5 = getelementptr inbounds %struct.event_trigger_data, ptr %1, i32 0, i32 4
  br label %6

6:                                                ; preds = %10, %3
  %7 = phi ptr [ %4, %3 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %4
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %8, i32 -20
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.event_command, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.event_command, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %84, label %6

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.event_trigger_data, ptr %1, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.event_trigger_ops, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = tail call i32 %23(ptr noundef %21, ptr noundef %1) #16
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %84, label %28

28:                                               ; preds = %25, %19
  %29 = phi i32 [ %26, %25 ], [ 0, %19 ]
  %30 = getelementptr inbounds %struct.event_trigger_data, ptr %1, i32 0, i32 10
  %31 = load ptr, ptr %4, align 4
  store ptr %31, ptr %30, align 4
  %32 = getelementptr inbounds %struct.event_trigger_data, ptr %1, i32 0, i32 10, i32 1
  store ptr %4, ptr %32, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  store volatile ptr %30, ptr %4, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %33, align 4
  %34 = add nuw i32 %29, 1
  br label %35

35:                                               ; preds = %43, %28
  %36 = phi ptr [ %4, %28 ], [ %37, %43 ]
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %4
  br i1 %38, label %52, label %39

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %37, i32 -16
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %37, i32 -20
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.event_command, ptr %45, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 3
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %35, label %50

50:                                               ; preds = %43, %39
  %51 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 8, ptr noundef %51) #16
  br label %54

52:                                               ; preds = %35
  %53 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %53) #16
  br label %54

54:                                               ; preds = %52, %50
  %55 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %55) #16
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %55, ptr %55, i32 1, ptr elementtype(i32) %55) #16, !srcloc !10
  %57 = extractvalue { i32, i32 } %56, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !11
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %84, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 7, ptr noundef %60) #16
  %61 = tail call i32 @trace_event_enable_disable(ptr noundef %2, i32 noundef 1, i32 noundef 1) #16
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %59
  %64 = load ptr, ptr %32, align 4
  %65 = load ptr, ptr %30, align 4
  %66 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  store ptr %64, ptr %66, align 4
  store volatile ptr %65, ptr %64, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %32, align 4
  br label %67

67:                                               ; preds = %75, %63
  %68 = phi ptr [ %4, %63 ], [ %69, %75 ]
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %4
  br i1 %70, label %83, label %71

71:                                               ; preds = %67
  %72 = getelementptr i8, ptr %69, i32 -16
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = getelementptr i8, ptr %69, i32 -20
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.event_command, ptr %77, i32 0, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, 3
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %67, label %82

82:                                               ; preds = %75, %71
  tail call void @_set_bit(i32 noundef 8, ptr noundef %60) #16
  br label %84

83:                                               ; preds = %67
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %60) #16
  br label %84

84:                                               ; preds = %83, %82, %59, %54, %25, %10
  %85 = phi i32 [ %26, %25 ], [ %34, %59 ], [ %29, %82 ], [ %29, %83 ], [ %34, %54 ], [ -17, %10 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @unregister_trigger(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 6
  %5 = getelementptr inbounds %struct.event_trigger_data, ptr %1, i32 0, i32 4
  br label %6

6:                                                ; preds = %10, %3
  %7 = phi ptr [ %4, %3 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %4
  br i1 %9, label %59, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %8, i32 -20
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.event_command, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.event_command, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %6

19:                                               ; preds = %10
  %20 = getelementptr i8, ptr %8, i32 -36
  %21 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %8, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %23, ptr %22, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %21, align 4
  %25 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #16
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #16, !srcloc !12
  %27 = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %30) #16
  %31 = tail call i32 @trace_event_enable_disable(ptr noundef %2, i32 noundef 0, i32 noundef 1) #16
  br label %32

32:                                               ; preds = %29, %19
  br label %33

33:                                               ; preds = %41, %32
  %34 = phi ptr [ %35, %41 ], [ %4, %32 ]
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %4
  br i1 %36, label %50, label %37

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %35, i32 -16
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = getelementptr i8, ptr %35, i32 -20
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.event_command, ptr %43, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 3
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %33, label %48

48:                                               ; preds = %41, %37
  %49 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 8, ptr noundef %49) #16
  br label %52

50:                                               ; preds = %33
  %51 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %51) #16
  br label %52

52:                                               ; preds = %50, %48
  %53 = getelementptr i8, ptr %8, i32 -24
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.event_trigger_ops, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  tail call void %56(ptr noundef %54, ptr noundef %20) #16
  br label %59

59:                                               ; preds = %58, %52, %6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal nonnull ptr @onoff_get_trigger_ops(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #14 {
  %3 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(8) @.str.15)
  %4 = icmp eq i32 %3, 0
  %5 = icmp eq ptr %1, null
  %6 = select i1 %5, ptr @traceon_trigger_ops, ptr @traceon_count_trigger_ops
  %7 = select i1 %5, ptr @traceoff_trigger_ops, ptr @traceoff_count_trigger_ops
  %8 = select i1 %4, ptr %6, ptr %7
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @traceon_count_trigger(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.event_trigger_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.trace_event_file, ptr %6, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call zeroext i1 @tracer_tracing_is_on(ptr noundef %10) #16
  br i1 %11, label %24, label %15

12:                                               ; preds = %4
  %13 = tail call i32 @tracing_is_on() #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12, %8
  %16 = load i32, ptr %0, align 4
  switch i32 %16, label %17 [
    i32 0, label %24
    i32 -1, label %19
  ]

17:                                               ; preds = %15
  %18 = add i32 %16, -1
  store i32 %18, ptr %0, align 4
  br label %19

19:                                               ; preds = %17, %15
  br i1 %7, label %23, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.trace_event_file, ptr %6, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  tail call void @tracer_tracing_on(ptr noundef %22) #16
  br label %24

23:                                               ; preds = %19
  tail call void @tracing_on() #16
  br label %24

24:                                               ; preds = %23, %20, %15, %12, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @traceon_trigger_print(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load i32, ptr %2, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.event_trigger_data, ptr %2, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.15) #16
  %8 = icmp eq ptr %5, inttoptr (i32 -1 to ptr)
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.9) #16
  br label %11

10:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %4) #16
  br label %11

11:                                               ; preds = %10, %9
  %12 = icmp eq ptr %7, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %7) #16
  br label %15

14:                                               ; preds = %11
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #16
  br label %15

15:                                               ; preds = %14, %13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tracer_tracing_is_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_is_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracer_tracing_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_on() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @traceon_trigger(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.event_trigger_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.trace_event_file, ptr %6, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call zeroext i1 @tracer_tracing_is_on(ptr noundef %10) #16
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %9, align 4
  tail call void @tracer_tracing_on(ptr noundef %13) #16
  br label %18

14:                                               ; preds = %4
  %15 = tail call i32 @tracing_is_on() #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @tracing_on() #16
  br label %18

18:                                               ; preds = %17, %14, %12, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @traceoff_count_trigger(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.event_trigger_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.trace_event_file, ptr %6, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call zeroext i1 @tracer_tracing_is_on(ptr noundef %10) #16
  br i1 %11, label %15, label %24

12:                                               ; preds = %4
  %13 = tail call i32 @tracing_is_on() #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %12, %8
  %16 = load i32, ptr %0, align 4
  switch i32 %16, label %17 [
    i32 0, label %24
    i32 -1, label %19
  ]

17:                                               ; preds = %15
  %18 = add i32 %16, -1
  store i32 %18, ptr %0, align 4
  br label %19

19:                                               ; preds = %17, %15
  br i1 %7, label %23, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.trace_event_file, ptr %6, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  tail call void @tracer_tracing_off(ptr noundef %22) #16
  br label %24

23:                                               ; preds = %19
  tail call void @tracing_off() #16
  br label %24

24:                                               ; preds = %23, %20, %15, %12, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @traceoff_trigger_print(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load i32, ptr %2, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.event_trigger_data, ptr %2, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.16) #16
  %8 = icmp eq ptr %5, inttoptr (i32 -1 to ptr)
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.9) #16
  br label %11

10:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %4) #16
  br label %11

11:                                               ; preds = %10, %9
  %12 = icmp eq ptr %7, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %7) #16
  br label %15

14:                                               ; preds = %11
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #16
  br label %15

15:                                               ; preds = %14, %13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracer_tracing_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_off() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @traceoff_trigger(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.event_trigger_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.trace_event_file, ptr %6, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call zeroext i1 @tracer_tracing_is_on(ptr noundef %10) #16
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load ptr, ptr %9, align 4
  tail call void @tracer_tracing_off(ptr noundef %13) #16
  br label %18

14:                                               ; preds = %4
  %15 = tail call i32 @tracing_is_on() #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @tracing_off() #16
  br label %18

18:                                               ; preds = %17, %14, %12, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @stacktrace_get_trigger_ops(ptr nocapture noundef readnone %0, ptr noundef readnone %1) #7 {
  %3 = icmp eq ptr %1, null
  %4 = select i1 %3, ptr @stacktrace_trigger_ops, ptr @stacktrace_count_trigger_ops
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stacktrace_count_trigger(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 {
  %5 = load i32, ptr %0, align 4
  switch i32 %5, label %6 [
    i32 0, label %20
    i32 -1, label %8
  ]

6:                                                ; preds = %4
  %7 = add i32 %5, -1
  store i32 %7, ptr %0, align 4
  br label %8

8:                                                ; preds = %6, %4
  %9 = getelementptr inbounds %struct.event_trigger_data, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.trace_event_file, ptr %10, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !16
  %16 = lshr i32 %15, 7
  %17 = and i32 %16, 1
  %18 = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %17) #16
  tail call void @__trace_stack(ptr noundef %14, i32 noundef %18, i32 noundef 4) #16
  br label %20

19:                                               ; preds = %8
  tail call void @trace_dump_stack(i32 noundef 4) #16
  br label %20

20:                                               ; preds = %19, %12, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stacktrace_trigger_print(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load i32, ptr %2, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.event_trigger_data, ptr %2, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.17) #16
  %8 = icmp eq ptr %5, inttoptr (i32 -1 to ptr)
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.9) #16
  br label %11

10:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %4) #16
  br label %11

11:                                               ; preds = %10, %9
  %12 = icmp eq ptr %7, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %7) #16
  br label %15

14:                                               ; preds = %11
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #16
  br label %15

15:                                               ; preds = %14, %13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stacktrace_trigger(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.event_trigger_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.trace_event_file, ptr %6, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !16
  %12 = lshr i32 %11, 7
  %13 = and i32 %12, 1
  %14 = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %13) #16
  tail call void @__trace_stack(ptr noundef %10, i32 noundef %14, i32 noundef 4) #16
  br label %16

15:                                               ; preds = %4
  tail call void @trace_dump_stack(i32 noundef 4) #16
  br label %16

16:                                               ; preds = %15, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__trace_stack(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_dump_stack(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_gen_ctx_irq_test(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal nonnull ptr @event_enable_get_trigger_ops(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #14 {
  %3 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(13) @.str.7)
  %4 = icmp eq i32 %3, 0
  %5 = icmp eq ptr %1, null
  %6 = select i1 %5, ptr @event_enable_trigger_ops, ptr @event_enable_count_trigger_ops
  %7 = select i1 %5, ptr @event_disable_trigger_ops, ptr @event_disable_count_trigger_ops
  %8 = select i1 %4, ptr %6, ptr %7
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @event_enable_count_trigger(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 {
  %5 = load i32, ptr %0, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.event_trigger_data, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.enable_trigger_data, ptr %9, i32 0, i32 1
  %11 = load i8, ptr %10, align 4, !range !8
  %12 = zext i8 %11 to i32
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr inbounds %struct.trace_event_file, ptr %13, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 6
  %17 = and i32 %16, 1
  %18 = xor i32 %17, 1
  %19 = icmp eq i32 %18, %12
  br i1 %19, label %33, label %20

20:                                               ; preds = %7
  %21 = icmp eq i32 %5, -1
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = add i32 %5, -1
  store i32 %23, ptr %0, align 4
  %24 = load i8, ptr %10, align 4, !range !8
  %25 = load ptr, ptr %9, align 4
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi ptr [ %25, %22 ], [ %13, %20 ]
  %28 = phi i8 [ %24, %22 ], [ %11, %20 ]
  %29 = icmp eq i8 %28, 0
  %30 = getelementptr inbounds %struct.trace_event_file, ptr %27, i32 0, i32 7
  br i1 %29, label %32, label %31

31:                                               ; preds = %26
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %30) #16
  br label %33

32:                                               ; preds = %26
  tail call void @_set_bit(i32 noundef 6, ptr noundef %30) #16
  br label %33

33:                                               ; preds = %32, %31, %7, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @event_enable_trigger(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.event_trigger_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.enable_trigger_data, ptr %6, i32 0, i32 1
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr inbounds %struct.trace_event_file, ptr %10, i32 0, i32 7
  br i1 %9, label %13, label %12

12:                                               ; preds = %4
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %11) #16
  br label %14

13:                                               ; preds = %4
  tail call void @_set_bit(i32 noundef 6, ptr noundef %11) #16
  br label %14

14:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold }
attributes #19 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2148151912, i64 2148151944, i64 2148151973, i64 2148152007, i64 2148152038, i64 2148152061}
!11 = !{i64 2148249277}
!12 = !{i64 2148154269, i64 2148154301, i64 2148154330, i64 2148154364, i64 2148154395, i64 2148154418}
!13 = !{i64 2148252110}
!14 = !{i64 2154056931}
!15 = !{i64 2149437808}
!16 = !{i64 557455}
