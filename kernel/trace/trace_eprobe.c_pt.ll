; ModuleID = '/llk/IR/kernel/trace/trace_eprobe.c_pt.bc'
source_filename = "../kernel/trace/trace_eprobe.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dyn_event_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_fields = type { ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i32 }
%struct.event_trigger_ops = type { ptr, ptr, ptr, ptr }
%struct.event_command = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.trace_probe_event = type { i32, %struct.trace_event_class, %struct.trace_event_call, %struct.list_head, %struct.list_head, [0 x %struct.trace_uprobe_filter] }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.35, %struct.trace_event, ptr, ptr, %union.anon.62, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.35 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%union.anon.62 = type { ptr }
%struct.trace_uprobe_filter = type { %struct.rwlock_t, i32, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.probe_arg = type { ptr, i8, i32, i32, ptr, ptr, ptr, ptr }
%struct.trace_eprobe = type { ptr, ptr, ptr, %struct.dyn_event, %struct.trace_probe }
%struct.dyn_event = type { %struct.list_head, ptr }
%struct.trace_probe = type { %struct.list_head, ptr, i32, i32, [0 x %struct.probe_arg] }
%struct.fetch_insn = type { i32, %union.anon.93 }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { i32, i32 }
%struct.ftrace_event_field = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32 }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.event_trigger_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, %struct.list_head, ptr }
%struct.eprobe_data = type { ptr, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.eprobe_trace_entry_head = type { %struct.trace_entry }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.fetch_type = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.anon.95 = type { i8, i8, i8 }

@__initcall__kmod_trace_eprobe__252_951_trace_events_eprobe_init_early1 = internal global ptr @trace_events_eprobe_init_early, section ".initcall1.init", align 4
@eprobe_dyn_event_ops = internal global %struct.dyn_event_operations { %struct.list_head zeroinitializer, ptr @eprobe_dyn_event_create, ptr @eprobe_dyn_event_show, ptr @eprobe_dyn_event_is_busy, ptr @eprobe_dyn_event_release, ptr @eprobe_dyn_event_match }, align 4
@.str = private unnamed_addr constant [43 x i8] c"\014Could not register eprobe_dyn_event_ops\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"eprobes\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"event_probe\00", align 1
@event_mutex = external dso_local global %struct.mutex, align 4
@__trace_eprobe_create.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"kernel/trace/trace_eprobe.c\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@ftrace_events = external dso_local global %struct.list_head, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@eprobe_funcs = internal global %struct.trace_event_functions { ptr @print_eprobe_event, ptr null, ptr null, ptr null }, align 4
@print_eprobe_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s: (\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" %s=\00", align 1
@eprobe_fields_array = internal global <{ { ptr, { ptr, [16 x i8] } }, %struct.trace_event_fields }> <{ { ptr, { ptr, [16 x i8] } } { ptr inttoptr (i32 -1 to ptr), { ptr, [16 x i8] } { ptr @eprobe_event_define_fields, [16 x i8] undef } }, %struct.trace_event_fields zeroinitializer }>, align 4
@eprobe_event_define_fields.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@enable_trace_eprobe.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@eprobe_trigger_ops = internal global %struct.event_trigger_ops { ptr @eprobe_trigger_func, ptr @eprobe_trigger_init, ptr @eprobe_trigger_free, ptr @eprobe_trigger_print }, align 4
@event_trigger_cmd = internal global %struct.event_command { %struct.list_head zeroinitializer, ptr @.str.9, i32 64, i32 2, ptr @eprobe_trigger_cmd_parse, ptr @eprobe_trigger_reg_func, ptr @eprobe_trigger_unreg_func, ptr null, ptr null, ptr @eprobe_trigger_get_ops }, align 4
@__eprobe_trace_func.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"eprobe\00", align 1
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 4
@disable_trace_eprobe.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dyn_event_list = external dso_local global %struct.list_head, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"e:%s/%s\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c" %s.%s\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c" %s=%s\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_trace_eprobe__252_951_trace_events_eprobe_init_early1], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @trace_events_eprobe_init_early() #0 section ".init.text" {
  %1 = tail call i32 @dyn_event_register(ptr noundef nonnull @eprobe_dyn_event_ops) #14
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dyn_event_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eprobe_dyn_event_create(ptr noundef %0) #4 {
  %2 = tail call i32 @trace_probe_create(ptr noundef %0, ptr noundef nonnull @__trace_eprobe_create) #14
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eprobe_dyn_event_show(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr i8, ptr %1, i32 -12
  %4 = getelementptr i8, ptr %1, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.trace_probe_event, ptr %5, i32 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.trace_probe_event, ptr %5, i32 0, i32 2, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.trace_probe_event, ptr %5, i32 0, i32 2, i32 2
  %14 = load ptr, ptr %13, align 4
  br i1 %12, label %19, label %15

15:                                               ; preds = %2
  %16 = icmp eq ptr %14, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %14, align 4
  br label %19

19:                                               ; preds = %17, %15, %2
  %20 = phi ptr [ %18, %17 ], [ null, %15 ], [ %14, %2 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %8, ptr noundef %20) #14
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr i8, ptr %1, i32 -8
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef %21, ptr noundef %23) #14
  %24 = getelementptr i8, ptr %1, i32 28
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %19
  %28 = getelementptr i8, ptr %1, i32 32
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi i32 [ 0, %27 ], [ %36, %29 ]
  %31 = getelementptr [0 x %struct.probe_arg], ptr %28, i32 0, i32 %30
  %32 = getelementptr inbounds %struct.probe_arg, ptr %31, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.probe_arg, ptr %31, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %33, ptr noundef %35) #14
  %36 = add nuw i32 %30, 1
  %37 = load i32, ptr %24, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %29, label %39

39:                                               ; preds = %29, %19
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #14
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @eprobe_dyn_event_is_busy(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 3
  %6 = icmp ne i32 %5, 0
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eprobe_dyn_event_release(ptr noundef %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -12
  %3 = getelementptr i8, ptr %0, i32 12
  %4 = getelementptr i8, ptr %0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.trace_probe_event, ptr %5, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load volatile ptr, ptr %6, align 4
  %11 = icmp eq ptr %10, %6
  br i1 %11, label %24, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.trace_probe_event, ptr %5, i32 0, i32 4, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %10, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12, %1
  %17 = load i32, ptr %5, align 4
  %18 = and i32 %17, 3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.trace_probe_event, ptr %5, i32 0, i32 2
  %22 = tail call i32 @trace_remove_event_call(ptr noundef %21) #14
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20, %12, %9
  %25 = getelementptr i8, ptr %0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %0, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %25, align 4
  tail call void @trace_probe_unlink(ptr noundef %3) #14
  tail call fastcc void @trace_event_probe_cleanup(ptr noundef %2)
  br label %29

29:                                               ; preds = %24, %20, %16
  %30 = phi i32 [ 0, %24 ], [ -16, %16 ], [ -16, %20 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @eprobe_dyn_event_match(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #4 {
  %6 = getelementptr i8, ptr %4, i32 -12
  %7 = icmp eq ptr %0, null
  %8 = getelementptr i8, ptr %4, i32 20
  %9 = load ptr, ptr %8, align 4
  br i1 %7, label %16, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.trace_probe_event, ptr %9, i32 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull %0)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %61

16:                                               ; preds = %10, %5
  %17 = getelementptr i8, ptr %4, i32 12
  %18 = getelementptr inbounds %struct.trace_probe_event, ptr %9, i32 0, i32 2, i32 8
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.trace_probe_event, ptr %9, i32 0, i32 2, i32 2
  %23 = load ptr, ptr %22, align 4
  br i1 %21, label %28, label %24

24:                                               ; preds = %16
  %25 = icmp eq ptr %23, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %23, align 4
  br label %28

28:                                               ; preds = %26, %24, %16
  %29 = phi ptr [ %27, %26 ], [ null, %24 ], [ %23, %16 ]
  %30 = tail call i32 @strcmp(ptr noundef %29, ptr noundef %1)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %28
  %33 = icmp slt i32 %2, 1
  br i1 %33, label %61, label %34

34:                                               ; preds = %32
  %35 = load ptr, ptr %3, align 4
  %36 = tail call ptr @strchr(ptr noundef %35, i32 noundef 47)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = tail call ptr @strchr(ptr noundef %35, i32 noundef 46)
  %40 = icmp eq ptr %39, null
  br i1 %40, label %61, label %41

41:                                               ; preds = %38, %34
  %42 = phi ptr [ %39, %38 ], [ %36, %34 ]
  %43 = load ptr, ptr %6, align 4
  %44 = ptrtoint ptr %42 to i32
  %45 = ptrtoint ptr %35 to i32
  %46 = sub i32 %44, %45
  %47 = tail call i32 @strncmp(ptr noundef %43, ptr noundef %35, i32 noundef %46)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %41
  %50 = getelementptr i8, ptr %4, i32 -8
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %42, i32 1
  %53 = tail call i32 @strcmp(ptr noundef %51, ptr noundef %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = add nsw i32 %2, -1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = getelementptr ptr, ptr %3, i32 1
  %60 = tail call zeroext i1 @trace_probe_match_command_args(ptr noundef %17, i32 noundef %56, ptr noundef %59) #14
  br label %61

61:                                               ; preds = %58, %55, %49, %41, %38, %32, %28, %10
  %62 = phi i1 [ %60, %58 ], [ false, %10 ], [ false, %28 ], [ true, %32 ], [ false, %38 ], [ false, %41 ], [ false, %49 ], [ true, %55 ]
  ret i1 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__trace_eprobe_create(i32 noundef %0, ptr noundef %1) #4 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca [64 x i8], align 1
  %8 = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store ptr @.str.1, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store ptr null, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store ptr null, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %7, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %8, i8 0, i32 64, i1 false), !annotation !8
  %9 = icmp slt i32 %0, 2
  br i1 %9, label %224, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 101
  br i1 %13, label %14, label %224

14:                                               ; preds = %10
  tail call void @trace_probe_log_init(ptr noundef nonnull @.str.2, i32 noundef %0, ptr noundef %1) #14
  %15 = load ptr, ptr %1, align 4
  %16 = getelementptr i8, ptr %15, i32 1
  %17 = tail call ptr @strchr(ptr noundef %16, i32 noundef 58)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %17, i32 1
  store ptr %20, ptr %3, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = ptrtoint ptr %15 to i32
  %23 = sub i32 %21, %22
  %24 = call i32 @traceprobe_parse_event_name(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %7, i32 noundef %23) #14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %221

26:                                               ; preds = %19
  %27 = load ptr, ptr %3, align 4
  br label %43

28:                                               ; preds = %14
  %29 = getelementptr ptr, ptr %1, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @strscpy(ptr noundef nonnull %7, ptr noundef %30, i32 noundef 64) #14
  %32 = load i8, ptr %7, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %39, %28
  %35 = phi ptr [ %36, %39 ], [ %7, %28 ]
  %36 = getelementptr i8, ptr %35, i32 1
  %37 = load i8, ptr %36, align 1
  switch i8 %37, label %39 [
    i8 58, label %38
    i8 46, label %38
  ]

38:                                               ; preds = %34, %34
  store i8 95, ptr %36, align 1
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i8 [ %37, %34 ], [ 95, %38 ]
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %34

42:                                               ; preds = %39, %28
  store ptr %7, ptr %3, align 4
  br label %43

43:                                               ; preds = %42, %26
  %44 = phi ptr [ %27, %26 ], [ %7, %42 ]
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %46
  %48 = load i8, ptr %47, align 1
  %49 = and i8 %48, 3
  %50 = icmp ne i8 %49, 0
  %51 = icmp eq i8 %45, 95
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %53, label %221

53:                                               ; preds = %43
  %54 = getelementptr i8, ptr %44, i32 1
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %70, %53
  %58 = phi i8 [ %72, %70 ], [ %55, %53 ]
  %59 = phi ptr [ %71, %70 ], [ %54, %53 ]
  %60 = zext i8 %58 to i32
  %61 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %60
  %62 = load i8, ptr %61, align 1
  %63 = and i8 %62, 3
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = add nsw i32 %60, -48
  %67 = icmp ult i32 %66, 10
  %68 = icmp eq i8 %58, 95
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %70, label %221

70:                                               ; preds = %65, %57
  %71 = getelementptr i8, ptr %59, i32 1
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %57

74:                                               ; preds = %70, %53
  %75 = load ptr, ptr %4, align 4
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %77
  %79 = load i8, ptr %78, align 1
  %80 = and i8 %79, 3
  %81 = icmp ne i8 %80, 0
  %82 = icmp eq i8 %76, 95
  %83 = select i1 %81, i1 true, i1 %82
  br i1 %83, label %84, label %221

84:                                               ; preds = %74
  %85 = getelementptr i8, ptr %75, i32 1
  %86 = load i8, ptr %85, align 1
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %105, label %88

88:                                               ; preds = %101, %84
  %89 = phi i8 [ %103, %101 ], [ %86, %84 ]
  %90 = phi ptr [ %102, %101 ], [ %85, %84 ]
  %91 = zext i8 %89 to i32
  %92 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %91
  %93 = load i8, ptr %92, align 1
  %94 = and i8 %93, 3
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %88
  %97 = add nsw i32 %91, -48
  %98 = icmp ult i32 %97, 10
  %99 = icmp eq i8 %89, 95
  %100 = select i1 %98, i1 true, i1 %99
  br i1 %100, label %101, label %221

101:                                              ; preds = %96, %88
  %102 = getelementptr i8, ptr %90, i32 1
  %103 = load i8, ptr %102, align 1
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %88

105:                                              ; preds = %101, %84
  %106 = getelementptr ptr, ptr %1, i32 1
  %107 = load ptr, ptr %106, align 4
  store ptr %107, ptr %5, align 4
  %108 = call i32 @traceprobe_parse_event_name(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8, i32 noundef 0) #14
  %109 = icmp eq i32 %108, 0
  %110 = load ptr, ptr %6, align 4
  %111 = icmp ne ptr %110, null
  %112 = select i1 %109, i1 %111, i1 false
  br i1 %112, label %113, label %221

113:                                              ; preds = %105
  %114 = load ptr, ptr %5, align 4
  %115 = call fastcc zeroext i1 @is_good_name(ptr noundef %114)
  br i1 %115, label %116, label %221

116:                                              ; preds = %113
  %117 = call fastcc zeroext i1 @is_good_name(ptr noundef nonnull %110)
  br i1 %117, label %118, label %221

118:                                              ; preds = %116
  call void @mutex_lock(ptr noundef nonnull @event_mutex) #14
  %119 = load ptr, ptr %6, align 4
  %120 = load ptr, ptr %5, align 4
  %121 = call fastcc ptr @find_and_get_event(ptr noundef %119, ptr noundef %120)
  %122 = load ptr, ptr %4, align 4
  %123 = load ptr, ptr %3, align 4
  %124 = add i32 %0, -2
  %125 = call fastcc ptr @alloc_event_probe(ptr noundef %122, ptr noundef %123, ptr noundef %121, i32 noundef %124)
  call void @mutex_unlock(ptr noundef nonnull @event_mutex) #14
  %126 = icmp ugt ptr %125, inttoptr (i32 -4096 to ptr)
  br i1 %126, label %127, label %133

127:                                              ; preds = %118
  %128 = ptrtoint ptr %125 to i32
  %129 = load i1, ptr @__trace_eprobe_create.__already_done, align 1
  %130 = freeze i1 %129
  br i1 %130, label %221, label %131

131:                                              ; preds = %127
  switch i32 %128, label %132 [
    i32 -12, label %221
    i32 -19, label %221
  ]

132:                                              ; preds = %131
  store i1 true, ptr @__trace_eprobe_create.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 900, i32 noundef 9, ptr noundef null) #14
  br label %221

133:                                              ; preds = %118
  %134 = getelementptr ptr, ptr %1, i32 2
  %135 = icmp sgt i32 %124, 0
  br i1 %135, label %136, label %188

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.trace_eprobe, ptr %125, i32 0, i32 4
  %138 = getelementptr inbounds %struct.trace_eprobe, ptr %125, i32 1
  %139 = getelementptr inbounds %struct.trace_eprobe, ptr %125, i32 0, i32 2
  %140 = add i32 %0, -3
  %141 = call i32 @llvm.umin.i32(i32 %140, i32 127)
  br label %142

142:                                              ; preds = %185, %136
  %143 = phi i32 [ 0, %136 ], [ %186, %185 ]
  %144 = add nuw nsw i32 %143, 2
  call void @trace_probe_log_set_index(i32 noundef %144) #14
  %145 = getelementptr ptr, ptr %134, i32 %143
  %146 = load ptr, ptr %145, align 4
  %147 = call i32 @traceprobe_parse_probe_arg(ptr noundef %137, i32 noundef %143, ptr noundef %146, i32 noundef 10) #14
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %221

149:                                              ; preds = %142
  %150 = getelementptr [0 x %struct.probe_arg], ptr %138, i32 0, i32 %143
  %151 = load ptr, ptr %150, align 4
  %152 = load i32, ptr %151, align 4
  %153 = icmp eq i32 %152, 19
  br i1 %153, label %154, label %185

154:                                              ; preds = %149
  %155 = load ptr, ptr %139, align 4
  %156 = getelementptr inbounds %struct.trace_event_call, ptr %155, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.trace_event_class, ptr %157, i32 0, i32 5
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.trace_event_class, ptr %157, i32 0, i32 6
  br label %166

163:                                              ; preds = %154
  %164 = call ptr %159(ptr noundef %155) #14
  %165 = load ptr, ptr %150, align 4
  br label %166

166:                                              ; preds = %163, %161
  %167 = phi ptr [ %165, %163 ], [ %151, %161 ]
  %168 = phi ptr [ %164, %163 ], [ %162, %161 ]
  %169 = getelementptr inbounds %struct.fetch_insn, ptr %167, i32 0, i32 1
  %170 = load ptr, ptr %169, align 4
  br label %171

171:                                              ; preds = %175, %166
  %172 = phi ptr [ %168, %166 ], [ %173, %175 ]
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, %168
  br i1 %174, label %180, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.ftrace_event_field, ptr %173, i32 0, i32 1
  %177 = load ptr, ptr %176, align 4
  %178 = call i32 @strcmp(ptr noundef %170, ptr noundef %177) #14
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %171

180:                                              ; preds = %175, %171
  %181 = phi ptr [ %173, %175 ], [ null, %171 ]
  %182 = phi i32 [ 0, %175 ], [ -2, %171 ]
  call void @kfree(ptr noundef %170) #14
  %183 = load ptr, ptr %150, align 4
  %184 = getelementptr inbounds %struct.fetch_insn, ptr %183, i32 0, i32 1
  store ptr %181, ptr %184, align 4
  br i1 %174, label %221, label %185

185:                                              ; preds = %180, %149
  %186 = add nuw nsw i32 %143, 1
  %187 = icmp eq i32 %143, %141
  br i1 %187, label %188, label %142

188:                                              ; preds = %185, %133
  %189 = getelementptr inbounds %struct.trace_eprobe, ptr %125, i32 0, i32 4
  %190 = call i32 @traceprobe_set_print_fmt(ptr noundef %189, i32 noundef 2) #14
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %221, label %192

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.trace_eprobe, ptr %125, i32 0, i32 4, i32 1
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr inbounds %struct.trace_probe_event, ptr %194, i32 0, i32 2, i32 8
  store i32 256, ptr %195, align 4
  %196 = getelementptr inbounds %struct.trace_probe_event, ptr %194, i32 0, i32 2, i32 3, i32 3
  store ptr @eprobe_funcs, ptr %196, align 4
  %197 = getelementptr inbounds %struct.trace_probe_event, ptr %194, i32 0, i32 2, i32 1
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.trace_event_class, ptr %198, i32 0, i32 4
  store ptr @eprobe_fields_array, ptr %199, align 4
  %200 = load ptr, ptr %197, align 4
  %201 = getelementptr inbounds %struct.trace_event_class, ptr %200, i32 0, i32 3
  store ptr @eprobe_register, ptr %201, align 4
  call void @mutex_lock(ptr noundef nonnull @event_mutex) #14
  %202 = call i32 @trace_probe_register_event_call(ptr noundef %189) #14
  switch i32 %202, label %204 [
    i32 0, label %205
    i32 -17, label %203
  ]

203:                                              ; preds = %192
  call void @trace_probe_log_set_index(i32 noundef 0) #14
  call void @__trace_probe_log_err(i32 noundef 0, i32 noundef 18) #14
  br label %204

204:                                              ; preds = %203, %192
  call void @mutex_unlock(ptr noundef nonnull @event_mutex) #14
  br label %221

205:                                              ; preds = %192
  %206 = getelementptr inbounds %struct.trace_eprobe, ptr %125, i32 0, i32 3
  %207 = load ptr, ptr %193, align 4
  %208 = icmp eq ptr %206, null
  br i1 %208, label %219, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.trace_eprobe, ptr %125, i32 0, i32 3, i32 1
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %219, label %213

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.trace_probe_event, ptr %207, i32 0, i32 2, i32 8
  %215 = load i32, ptr %214, align 4
  %216 = or i32 %215, 32
  store i32 %216, ptr %214, align 4
  %217 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dyn_event_list, i32 0, i32 1), align 4
  store ptr %206, ptr getelementptr inbounds (%struct.list_head, ptr @dyn_event_list, i32 0, i32 1), align 4
  store ptr @dyn_event_list, ptr %206, align 4
  %218 = getelementptr inbounds %struct.trace_eprobe, ptr %125, i32 0, i32 3, i32 0, i32 1
  store ptr %217, ptr %218, align 4
  store volatile ptr %206, ptr %217, align 4
  br label %219

219:                                              ; preds = %213, %209, %205
  %220 = phi i32 [ 0, %213 ], [ -22, %209 ], [ -22, %205 ]
  call void @mutex_unlock(ptr noundef nonnull @event_mutex) #14
  br label %224

221:                                              ; preds = %204, %188, %180, %142, %132, %131, %131, %127, %116, %113, %105, %96, %74, %65, %43, %19
  %222 = phi ptr [ %125, %188 ], [ %125, %204 ], [ null, %131 ], [ null, %131 ], [ null, %127 ], [ null, %132 ], [ null, %113 ], [ null, %116 ], [ null, %105 ], [ null, %19 ], [ null, %43 ], [ null, %74 ], [ %125, %180 ], [ %125, %142 ], [ null, %96 ], [ null, %65 ]
  %223 = phi i32 [ %190, %188 ], [ %202, %204 ], [ %128, %131 ], [ %128, %131 ], [ %128, %127 ], [ %128, %132 ], [ -22, %113 ], [ -22, %116 ], [ -22, %105 ], [ -22, %19 ], [ -22, %43 ], [ -22, %74 ], [ %147, %142 ], [ %182, %180 ], [ -22, %96 ], [ -22, %65 ]
  call fastcc void @trace_event_probe_cleanup(ptr noundef %222)
  br label %224

224:                                              ; preds = %221, %219, %10, %2
  %225 = phi i32 [ %223, %221 ], [ %220, %219 ], [ -125, %10 ], [ -125, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %225
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_probe_log_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @traceprobe_parse_event_name(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_good_name(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 3
  %7 = icmp ne i8 %6, 0
  %8 = icmp eq i8 %2, 95
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %27, %10
  %15 = phi i8 [ %29, %27 ], [ %12, %10 ]
  %16 = phi ptr [ %28, %27 ], [ %11, %10 ]
  %17 = zext i8 %15 to i32
  %18 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 3
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = add nsw i32 %17, -48
  %24 = icmp ult i32 %23, 10
  %25 = icmp eq i8 %15, 95
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22, %14
  %28 = getelementptr i8, ptr %16, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %14

31:                                               ; preds = %27, %22, %10, %1
  %32 = phi i1 [ false, %1 ], [ true, %10 ], [ true, %27 ], [ false, %22 ]
  ret i1 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @find_and_get_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load ptr, ptr @ftrace_events, align 4
  %4 = icmp eq ptr %3, @ftrace_events
  br i1 %4, label %49, label %5

5:                                                ; preds = %46, %2
  %6 = phi ptr [ %47, %46 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %6, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 456
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %46

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %46, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull %14)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %16
  %20 = and i32 %8, 16
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.trace_event_call, ptr %6, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  br i1 %21, label %28, label %24

24:                                               ; preds = %19
  %25 = icmp eq ptr %23, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %23, align 4
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi ptr [ %27, %26 ], [ %23, %19 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %46, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull %29)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = and i32 %8, 32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = tail call zeroext i1 @trace_event_dyn_try_get_ref(ptr noundef %6) #14
  br label %43

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.trace_event_call, ptr %6, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = tail call zeroext i1 @try_module_get(ptr noundef %41) #14
  br label %43

43:                                               ; preds = %39, %37
  %44 = phi i1 [ %38, %37 ], [ %42, %39 ]
  %45 = select i1 %44, ptr %6, ptr null
  br label %49

46:                                               ; preds = %31, %28, %24, %16, %11, %5
  %47 = load ptr, ptr %6, align 4
  %48 = icmp eq ptr %47, @ftrace_events
  br i1 %48, label %49, label %5

49:                                               ; preds = %46, %43, %2
  %50 = phi ptr [ %45, %43 ], [ null, %2 ], [ null, %46 ]
  ret ptr %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @alloc_event_probe(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #4 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %56, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %2, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %2, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  br i1 %13, label %20, label %16

16:                                               ; preds = %6
  %17 = icmp eq ptr %15, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %15, align 4
  br label %20

20:                                               ; preds = %18, %16, %6
  %21 = phi ptr [ %19, %18 ], [ null, %16 ], [ %15, %6 ]
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 32) #14
  %23 = extractvalue { i32, i1 } %22, 1
  %24 = extractvalue { i32, i1 } %22, 0
  %25 = tail call i32 @llvm.uadd.sat.i32(i32 %24, i32 44) #14
  %26 = select i1 %23, i32 -1, i32 %25
  %27 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %26, i32 noundef 3520) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load i32, ptr %10, align 4
  %31 = and i32 %30, 32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @trace_event_dyn_put_ref(ptr noundef nonnull %2) #14
  br label %53

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.trace_event_call, ptr %2, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  tail call void @module_put(ptr noundef %36) #14
  br label %53

37:                                               ; preds = %20
  %38 = getelementptr inbounds %struct.trace_eprobe, ptr %27, i32 0, i32 2
  store ptr %2, ptr %38, align 8
  %39 = tail call noalias ptr @kstrdup(ptr noundef %21, i32 noundef 3264) #14
  %40 = getelementptr inbounds %struct.trace_eprobe, ptr %27, i32 0, i32 1
  store ptr %39, ptr %40, align 4
  %41 = icmp eq ptr %39, null
  br i1 %41, label %53, label %42

42:                                               ; preds = %37
  %43 = tail call noalias ptr @kstrdup(ptr noundef %9, i32 noundef 3264) #14
  store ptr %43, ptr %27, align 64
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.trace_eprobe, ptr %27, i32 0, i32 4
  %47 = tail call i32 @trace_probe_init(ptr noundef %46, ptr noundef %1, ptr noundef %0, i1 noundef zeroext false) #14
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.trace_eprobe, ptr %27, i32 0, i32 3
  store volatile ptr %50, ptr %50, align 4
  %51 = getelementptr inbounds %struct.trace_eprobe, ptr %27, i32 0, i32 3, i32 0, i32 1
  store ptr %50, ptr %51, align 16
  %52 = getelementptr inbounds %struct.trace_eprobe, ptr %27, i32 0, i32 3, i32 1
  store ptr @eprobe_dyn_event_ops, ptr %52, align 4
  br label %56

53:                                               ; preds = %45, %42, %37, %34, %33
  %54 = phi i32 [ %47, %45 ], [ -12, %42 ], [ -12, %37 ], [ -12, %33 ], [ -12, %34 ]
  tail call fastcc void @trace_event_probe_cleanup(ptr noundef %27)
  %55 = inttoptr i32 %54 to ptr
  br label %56

56:                                               ; preds = %53, %49, %4
  %57 = phi ptr [ %55, %53 ], [ inttoptr (i32 -19 to ptr), %4 ], [ %27, %49 ]
  ret ptr %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_probe_log_set_index(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @traceprobe_set_print_fmt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_register_event_call(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__trace_probe_log_err(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_event_probe_cleanup(ptr noundef %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.trace_eprobe, ptr %0, i32 0, i32 4
  tail call void @trace_probe_cleanup(ptr noundef %4) #14
  %5 = getelementptr inbounds %struct.trace_eprobe, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %6) #14
  %7 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %7) #14
  %8 = getelementptr inbounds %struct.trace_eprobe, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %9, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void @trace_event_dyn_put_ref(ptr noundef nonnull %9) #14
  br label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %9, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  tail call void @module_put(ptr noundef %19) #14
  br label %20

20:                                               ; preds = %17, %16, %3
  tail call void @kfree(ptr noundef nonnull %0) #14
  br label %21

21:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trace_event_dyn_try_get_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_init(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_dyn_put_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @traceprobe_parse_probe_arg(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eprobe_register(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #4 {
  switch i32 %1, label %138 [
    i32 0, label %4
    i32 1, label %84
  ]

4:                                                ; preds = %3
  %5 = getelementptr i8, ptr %0, i32 84
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = load i1, ptr @enable_trace_eprobe.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %4
  store i1 true, ptr @enable_trace_eprobe.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 694, i32 noundef 9, ptr noundef null) #14
  br label %12

12:                                               ; preds = %11, %4
  br i1 %7, label %138, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.trace_probe, ptr %6, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 3
  %18 = icmp ne i32 %17, 0
  %19 = icmp eq ptr %2, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = tail call i32 @trace_probe_add_file(ptr noundef nonnull %6, ptr noundef nonnull %2) #14
  %22 = icmp ne i32 %21, 0
  %23 = select i1 %22, i1 true, i1 %18
  br i1 %23, label %138, label %26

24:                                               ; preds = %13
  %25 = or i32 %16, 2
  store i32 %25, ptr %15, align 4
  br i1 %18, label %138, label %26

26:                                               ; preds = %24, %20
  %27 = load ptr, ptr %14, align 4
  %28 = getelementptr inbounds %struct.trace_probe_event, ptr %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 4
  %30 = load ptr, ptr %28, align 4
  %31 = icmp eq ptr %30, %28
  br i1 %31, label %138, label %32

32:                                               ; preds = %61, %26
  %33 = phi ptr [ %67, %61 ], [ %30, %26 ]
  %34 = phi i1 [ true, %61 ], [ %18, %26 ]
  %35 = getelementptr i8, ptr %33, i32 -24
  %36 = load ptr, ptr %29, align 4
  %37 = load ptr, ptr %35, align 4
  %38 = getelementptr i8, ptr %33, i32 -20
  %39 = load ptr, ptr %38, align 4
  %40 = tail call ptr @find_event_file(ptr noundef %36, ptr noundef %37, ptr noundef %39) #14
  %41 = icmp eq ptr %40, null
  br i1 %41, label %73, label %42

42:                                               ; preds = %32
  %43 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %44 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 8) #17
  %45 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %46 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3520, i32 noundef 60) #17
  %47 = icmp ne ptr %46, null
  %48 = icmp ne ptr %44, null
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  tail call void @kfree(ptr noundef %44) #14
  tail call void @kfree(ptr noundef %46) #14
  br label %70

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.event_trigger_data, ptr %46, i32 0, i32 2
  store i32 1, ptr %52, align 8
  store i32 -1, ptr %46, align 8
  %53 = getelementptr inbounds %struct.event_trigger_data, ptr %46, i32 0, i32 3
  store ptr @eprobe_trigger_ops, ptr %53, align 4
  %54 = getelementptr inbounds %struct.event_trigger_data, ptr %46, i32 0, i32 4
  store ptr @event_trigger_cmd, ptr %54, align 8
  %55 = getelementptr inbounds %struct.event_trigger_data, ptr %46, i32 0, i32 10
  store volatile ptr %55, ptr %55, align 4
  %56 = getelementptr inbounds %struct.event_trigger_data, ptr %46, i32 0, i32 10, i32 1
  store ptr %55, ptr %56, align 8
  %57 = getelementptr inbounds %struct.event_trigger_data, ptr %46, i32 0, i32 5
  store volatile ptr null, ptr %57, align 4
  store ptr %2, ptr %44, align 8
  %58 = getelementptr inbounds %struct.eprobe_data, ptr %44, i32 0, i32 1
  store ptr %35, ptr %58, align 4
  %59 = getelementptr inbounds %struct.event_trigger_data, ptr %46, i32 0, i32 7
  store ptr %44, ptr %59, align 4
  %60 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %70, label %61

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.trace_event_file, ptr %40, i32 0, i32 6
  %63 = getelementptr inbounds %struct.trace_event_file, ptr %40, i32 0, i32 6, i32 1
  %64 = load ptr, ptr %63, align 4
  store ptr %62, ptr %55, align 4
  store ptr %64, ptr %56, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  store volatile ptr %55, ptr %64, align 4
  store ptr %55, ptr %63, align 4
  %65 = tail call i32 @trace_event_trigger_enable_disable(ptr noundef nonnull %40, i32 noundef 1) #14
  tail call void @update_cond_flag(ptr noundef nonnull %40) #14
  %66 = load ptr, ptr %14, align 4
  %67 = load ptr, ptr %33, align 4
  %68 = getelementptr inbounds %struct.trace_probe_event, ptr %66, i32 0, i32 4
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %138, label %32

70:                                               ; preds = %51, %50
  %71 = phi ptr [ inttoptr (i32 -12 to ptr), %50 ], [ %46, %51 ]
  %72 = ptrtoint ptr %71 to i32
  br label %73

73:                                               ; preds = %70, %32
  %74 = phi i32 [ %72, %70 ], [ -2, %32 ]
  br i1 %34, label %75, label %77

75:                                               ; preds = %73
  %76 = load ptr, ptr %29, align 4
  tail call fastcc void @disable_eprobe(ptr noundef %35, ptr noundef %76) #14
  br label %77

77:                                               ; preds = %75, %73
  br i1 %19, label %80, label %78

78:                                               ; preds = %77
  %79 = tail call i32 @trace_probe_remove_file(ptr noundef nonnull %6, ptr noundef nonnull %2) #14
  br label %138

80:                                               ; preds = %77
  %81 = load ptr, ptr %14, align 4
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, -3
  store i32 %83, ptr %81, align 4
  br label %138

84:                                               ; preds = %3
  %85 = getelementptr i8, ptr %0, i32 84
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  %88 = load i1, ptr @disable_trace_eprobe.__already_done, align 1
  %89 = xor i1 %88, true
  %90 = select i1 %87, i1 %89, i1 false
  br i1 %90, label %91, label %92, !prof !9

91:                                               ; preds = %84
  store i1 true, ptr @disable_trace_eprobe.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 737, i32 noundef 9, ptr noundef null) #14
  br label %92

92:                                               ; preds = %91, %84
  br i1 %87, label %138, label %93

93:                                               ; preds = %92
  %94 = icmp eq ptr %2, null
  br i1 %94, label %108, label %95

95:                                               ; preds = %93
  %96 = tail call ptr @trace_probe_get_file_link(ptr noundef nonnull %86, ptr noundef nonnull %2) #14
  %97 = icmp eq ptr %96, null
  br i1 %97, label %138, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.trace_probe, ptr %86, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.trace_probe_event, ptr %100, i32 0, i32 3
  %102 = load volatile ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, %101
  br i1 %103, label %136, label %104

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.trace_probe_event, ptr %100, i32 0, i32 3, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %102, %106
  br i1 %107, label %111, label %136

108:                                              ; preds = %93
  %109 = getelementptr inbounds %struct.trace_probe, ptr %86, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  br label %111

111:                                              ; preds = %108, %104
  %112 = phi ptr [ %110, %108 ], [ %100, %104 ]
  %113 = phi i32 [ -3, %108 ], [ -2, %104 ]
  %114 = load i32, ptr %112, align 4
  %115 = and i32 %114, %113
  store i32 %115, ptr %112, align 4
  %116 = getelementptr inbounds %struct.trace_probe, ptr %86, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, 3
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %111
  %122 = getelementptr inbounds %struct.trace_probe_event, ptr %117, i32 0, i32 4
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, %122
  br i1 %124, label %135, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.trace_event_file, ptr %2, i32 0, i32 4
  br label %127

127:                                              ; preds = %127, %125
  %128 = phi ptr [ %123, %125 ], [ %131, %127 ]
  %129 = getelementptr i8, ptr %128, i32 -24
  %130 = load ptr, ptr %126, align 4
  tail call fastcc void @disable_eprobe(ptr noundef %129, ptr noundef %130) #14
  %131 = load ptr, ptr %128, align 4
  %132 = load ptr, ptr %116, align 4
  %133 = getelementptr inbounds %struct.trace_probe_event, ptr %132, i32 0, i32 4
  %134 = icmp eq ptr %131, %133
  br i1 %134, label %135, label %127

135:                                              ; preds = %127, %121, %111
  br i1 %94, label %138, label %136

136:                                              ; preds = %135, %104, %98
  %137 = tail call i32 @trace_probe_remove_file(ptr noundef nonnull %86, ptr noundef nonnull %2) #14
  br label %138

138:                                              ; preds = %136, %135, %95, %92, %80, %78, %61, %26, %24, %20, %12, %3
  %139 = phi i32 [ 0, %3 ], [ -19, %12 ], [ %21, %20 ], [ 0, %24 ], [ %74, %78 ], [ %74, %80 ], [ -19, %92 ], [ -2, %95 ], [ 0, %136 ], [ 0, %135 ], [ 0, %26 ], [ 0, %61 ]
  ret i32 %139
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @print_eprobe_event(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #4 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %2, i32 68
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = load i1, ptr @print_eprobe_event.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !9

13:                                               ; preds = %3
  store i1 true, ptr @print_eprobe_event.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 277, i32 noundef 9, ptr noundef null) #14
  br label %14

14:                                               ; preds = %13, %3
  br i1 %9, label %109, label %15

15:                                               ; preds = %14
  %16 = getelementptr i8, ptr %8, i32 -16
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %17, i32 0, i32 3, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_probe, ptr %8, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_probe_event, ptr %21, i32 0, i32 2, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 16
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.trace_probe_event, ptr %21, i32 0, i32 2, i32 2
  %27 = load ptr, ptr %26, align 4
  br i1 %25, label %32, label %28

28:                                               ; preds = %15
  %29 = icmp eq ptr %27, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr %27, align 4
  br label %32

32:                                               ; preds = %30, %28, %15
  %33 = phi ptr [ %31, %30 ], [ null, %28 ], [ %27, %15 ]
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef %33) #14
  %34 = tail call ptr @ftrace_find_event(i32 noundef %19) #14
  %35 = icmp eq ptr %34, null
  br i1 %35, label %52, label %36

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %34, i32 -8
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %34, i32 40
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 16
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr i8, ptr %34, i32 -4
  %45 = load ptr, ptr %44, align 4
  br i1 %43, label %50, label %46

46:                                               ; preds = %36
  %47 = icmp eq ptr %45, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %46
  %49 = load ptr, ptr %45, align 4
  br label %50

50:                                               ; preds = %48, %46, %36
  %51 = phi ptr [ %49, %48 ], [ null, %46 ], [ %45, %36 ]
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %4, ptr noundef nonnull @.str.5, ptr noundef %39, ptr noundef %51) #14
  br label %53

52:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %19) #14
  br label %53

53:                                               ; preds = %52, %50
  tail call void @trace_seq_putc(ptr noundef %4, i8 noundef zeroext 41) #14
  %54 = getelementptr inbounds %struct.trace_probe, ptr %8, i32 0, i32 4
  %55 = getelementptr inbounds %struct.trace_probe, ptr %8, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr %struct.eprobe_trace_entry_head, ptr %6, i32 1
  %58 = icmp sgt i32 %56, 0
  br i1 %58, label %59, label %108

59:                                               ; preds = %105, %53
  %60 = phi i32 [ %106, %105 ], [ 0, %53 ]
  %61 = getelementptr %struct.probe_arg, ptr %54, i32 %60, i32 4
  %62 = load ptr, ptr %61, align 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %4, ptr noundef nonnull @.str.7, ptr noundef %62) #14
  %63 = getelementptr %struct.probe_arg, ptr %54, i32 %60, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %76, !prof !11

66:                                               ; preds = %59
  %67 = getelementptr %struct.probe_arg, ptr %54, i32 %60, i32 7
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.fetch_type, ptr %68, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr %struct.probe_arg, ptr %54, i32 %60, i32 2
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr i8, ptr %57, i32 %72
  %74 = tail call i32 %70(ptr noundef %4, ptr noundef %73, ptr noundef %6) #14
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %109, label %105

76:                                               ; preds = %59
  tail call void @trace_seq_putc(ptr noundef %4, i8 noundef zeroext 123) #14
  %77 = load i32, ptr %63, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %105, label %79

79:                                               ; preds = %76
  %80 = getelementptr %struct.probe_arg, ptr %54, i32 %60, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr i8, ptr %57, i32 %81
  %83 = getelementptr %struct.probe_arg, ptr %54, i32 %60, i32 7
  %84 = load ptr, ptr %83, align 4
  br label %85

85:                                               ; preds = %93, %79
  %86 = phi ptr [ %84, %79 ], [ %98, %93 ]
  %87 = phi i32 [ 0, %79 ], [ %102, %93 ]
  %88 = phi ptr [ %82, %79 ], [ %101, %93 ]
  %89 = getelementptr inbounds %struct.fetch_type, ptr %86, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = tail call i32 %90(ptr noundef %4, ptr noundef %88, ptr noundef %6) #14
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %109, label %93

93:                                               ; preds = %85
  %94 = load i32, ptr %63, align 4
  %95 = add i32 %94, -1
  %96 = icmp eq i32 %87, %95
  %97 = select i1 %96, i8 125, i8 44
  tail call void @trace_seq_putc(ptr noundef %4, i8 noundef zeroext %97) #14
  %98 = load ptr, ptr %83, align 4
  %99 = getelementptr inbounds %struct.fetch_type, ptr %98, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr i8, ptr %88, i32 %100
  %102 = add nuw i32 %87, 1
  %103 = load i32, ptr %63, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %85, label %105

105:                                              ; preds = %93, %76, %66
  %106 = add nuw nsw i32 %60, 1
  %107 = icmp eq i32 %106, %56
  br i1 %107, label %108, label %59

108:                                              ; preds = %105, %53
  tail call void @trace_seq_putc(ptr noundef %4, i8 noundef zeroext 10) #14
  br label %109

109:                                              ; preds = %108, %85, %66, %14
  %110 = tail call i32 @trace_handle_return(ptr noundef %4) #14
  ret i32 %110
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ftrace_find_event(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eprobe_event_define_fields(ptr noundef %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 84
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = load i1, ptr @eprobe_event_define_fields.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %1
  store i1 true, ptr @eprobe_event_define_fields.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 249, i32 noundef 9, ptr noundef null) #14
  br label %9

9:                                                ; preds = %8, %1
  br i1 %4, label %12, label %10

10:                                               ; preds = %9
  %11 = tail call i32 @traceprobe_define_arg_fields(ptr noundef %0, i32 noundef 8, ptr noundef nonnull %3) #14
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi i32 [ %11, %10 ], [ -2, %9 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @traceprobe_define_arg_fields(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_add_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @disable_eprobe(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #4 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.trace_eprobe, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @find_event_file(ptr noundef %1, ptr noundef %3, ptr noundef %5) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.trace_event_file, ptr %6, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %34, label %12

12:                                               ; preds = %24, %8
  %13 = phi ptr [ %25, %24 ], [ %10, %8 ]
  %14 = getelementptr i8, ptr %13, i32 -28
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = getelementptr i8, ptr %13, i32 -8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.eprobe_data, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18, %12
  %25 = load ptr, ptr %13, align 4
  %26 = icmp eq ptr %25, %9
  br i1 %26, label %34, label %12

27:                                               ; preds = %18
  %28 = getelementptr i8, ptr %13, i32 -36
  %29 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %13, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store volatile ptr %31, ptr %30, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %29, align 4
  %33 = tail call i32 @trace_event_trigger_enable_disable(ptr noundef nonnull %6, i32 noundef 0) #14
  tail call void @update_cond_flag(ptr noundef nonnull %6) #14
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #14
  tail call void @synchronize_rcu() #14
  tail call void @kfree(ptr noundef %20) #14
  tail call void @kfree(ptr noundef %28) #14
  br label %34

34:                                               ; preds = %27, %24, %8, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_probe_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_event_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_trigger_enable_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_cond_flag(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @eprobe_trigger_func(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readnone %3) #4 {
  %5 = alloca %struct.trace_event_buffer, align 4
  %6 = getelementptr inbounds %struct.event_trigger_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.eprobe_data, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.trace_eprobe, ptr %9, i32 0, i32 4, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_probe_event, ptr %11, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false) #14, !annotation !8
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds %struct.trace_event_file, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ne ptr %12, %15
  %17 = load i1, ptr @__eprobe_trace_func.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %4
  store i1 true, ptr @__eprobe_trace_func.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 488, i32 noundef 9, ptr noundef null) #14
  br label %21

21:                                               ; preds = %20, %4
  br i1 %16, label %177, label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr inbounds %struct.trace_event_file, ptr %23, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 704
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28, !prof !11

28:                                               ; preds = %22
  %29 = and i32 %25, 256
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33, !prof !9

31:                                               ; preds = %28
  %32 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %23) #14
  br i1 %32, label %177, label %33

33:                                               ; preds = %31, %28, %22
  %34 = load ptr, ptr %8, align 4
  %35 = getelementptr inbounds %struct.trace_eprobe, ptr %34, i32 0, i32 4, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %87, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.trace_eprobe, ptr %34, i32 1
  br label %40

40:                                               ; preds = %80, %38
  %41 = phi i32 [ %36, %38 ], [ %81, %80 ]
  %42 = phi i32 [ 0, %38 ], [ %82, %80 ]
  %43 = phi i32 [ 0, %38 ], [ %83, %80 ]
  %44 = getelementptr %struct.probe_arg, ptr %39, i32 %43, i32 1
  %45 = load i8, ptr %44, align 4, !range !12
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %80, label %47, !prof !11

47:                                               ; preds = %40
  %48 = getelementptr %struct.probe_arg, ptr %39, i32 %43
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.fetch_insn, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ftrace_event_field, ptr %51, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr i8, ptr %2, i32 %53
  %55 = getelementptr inbounds %struct.ftrace_event_field, ptr %51, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  switch i32 %56, label %71 [
    i32 1, label %57
    i32 2, label %60
    i32 4, label %69
  ]

57:                                               ; preds = %47
  %58 = load i8, ptr %54, align 1
  %59 = zext i8 %58 to i32
  br label %73

60:                                               ; preds = %47
  %61 = getelementptr inbounds %struct.ftrace_event_field, ptr %51, i32 0, i32 6
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  %64 = load i16, ptr %54, align 2
  br i1 %63, label %67, label %65

65:                                               ; preds = %60
  %66 = sext i16 %64 to i32
  br label %73

67:                                               ; preds = %60
  %68 = zext i16 %64 to i32
  br label %73

69:                                               ; preds = %47
  %70 = load i32, ptr %54, align 4
  br label %73

71:                                               ; preds = %47
  %72 = load i32, ptr %54, align 4
  br label %73

73:                                               ; preds = %71, %69, %67, %65, %57
  %74 = phi i32 [ %66, %65 ], [ %68, %67 ], [ %59, %57 ], [ %70, %69 ], [ %72, %71 ]
  %75 = getelementptr %struct.fetch_insn, ptr %49, i32 1
  %76 = tail call fastcc i32 @process_fetch_insn_bottom(ptr noundef %75, i32 noundef %74, ptr noundef null, ptr noundef null) #14
  %77 = tail call i32 @llvm.smax.i32(i32 %76, i32 0) #14
  %78 = add i32 %77, %42
  %79 = load i32, ptr %35, align 4
  br label %80

80:                                               ; preds = %73, %40
  %81 = phi i32 [ %79, %73 ], [ %41, %40 ]
  %82 = phi i32 [ %78, %73 ], [ %42, %40 ]
  %83 = add nuw i32 %43, 1
  %84 = icmp ult i32 %83, %81
  br i1 %84, label %40, label %85

85:                                               ; preds = %80
  %86 = load ptr, ptr %8, align 4
  br label %87

87:                                               ; preds = %85, %33
  %88 = phi ptr [ %34, %33 ], [ %86, %85 ]
  %89 = phi i32 [ 0, %33 ], [ %82, %85 ]
  %90 = load ptr, ptr %7, align 4
  %91 = getelementptr inbounds %struct.trace_eprobe, ptr %88, i32 0, i32 4, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %89, 8
  %94 = add i32 %93, %92
  %95 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %90, i32 noundef %94) #14
  %96 = icmp eq ptr %95, null
  br i1 %96, label %177, label %97

97:                                               ; preds = %87
  %98 = getelementptr inbounds %struct.trace_event_buffer, ptr %5, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = call ptr @ring_buffer_event_data(ptr noundef %99) #14
  %101 = getelementptr inbounds %struct.trace_event_buffer, ptr %5, i32 0, i32 3
  store ptr %100, ptr %101, align 4
  %102 = getelementptr %struct.eprobe_trace_entry_head, ptr %100, i32 1
  %103 = load ptr, ptr %8, align 4
  %104 = getelementptr inbounds %struct.trace_eprobe, ptr %103, i32 0, i32 4, i32 3
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %176, label %107

107:                                              ; preds = %97
  %108 = getelementptr inbounds %struct.trace_eprobe, ptr %103, i32 0, i32 4, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr i8, ptr %102, i32 %109
  %111 = getelementptr inbounds %struct.trace_eprobe, ptr %103, i32 1
  %112 = ptrtoint ptr %100 to i32
  br label %113

113:                                              ; preds = %170, %107
  %114 = phi i32 [ 0, %107 ], [ %173, %170 ]
  %115 = phi ptr [ %110, %107 ], [ %172, %170 ]
  %116 = phi i32 [ %89, %107 ], [ %171, %170 ]
  %117 = getelementptr %struct.probe_arg, ptr %111, i32 %114
  %118 = getelementptr %struct.probe_arg, ptr %111, i32 %114, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr i8, ptr %102, i32 %119
  %121 = getelementptr %struct.probe_arg, ptr %111, i32 %114, i32 1
  %122 = load i8, ptr %121, align 4, !range !12
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %130, label %124, !prof !11

124:                                              ; preds = %113
  %125 = shl i32 %116, 16
  %126 = ptrtoint ptr %115 to i32
  %127 = sub i32 %126, %112
  %128 = and i32 %127, 65535
  %129 = or i32 %128, %125
  store i32 %129, ptr %120, align 4
  br label %130

130:                                              ; preds = %124, %113
  %131 = load ptr, ptr %117, align 4
  %132 = getelementptr inbounds %struct.fetch_insn, ptr %131, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.ftrace_event_field, ptr %133, i32 0, i32 4
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr i8, ptr %2, i32 %135
  %137 = getelementptr inbounds %struct.ftrace_event_field, ptr %133, i32 0, i32 5
  %138 = load i32, ptr %137, align 4
  switch i32 %138, label %153 [
    i32 1, label %139
    i32 2, label %142
    i32 4, label %151
  ]

139:                                              ; preds = %130
  %140 = load i8, ptr %136, align 1
  %141 = zext i8 %140 to i32
  br label %155

142:                                              ; preds = %130
  %143 = getelementptr inbounds %struct.ftrace_event_field, ptr %133, i32 0, i32 6
  %144 = load i32, ptr %143, align 4
  %145 = icmp eq i32 %144, 0
  %146 = load i16, ptr %136, align 2
  br i1 %145, label %149, label %147

147:                                              ; preds = %142
  %148 = sext i16 %146 to i32
  br label %155

149:                                              ; preds = %142
  %150 = zext i16 %146 to i32
  br label %155

151:                                              ; preds = %130
  %152 = load i32, ptr %136, align 4
  br label %155

153:                                              ; preds = %130
  %154 = load i32, ptr %136, align 4
  br label %155

155:                                              ; preds = %153, %151, %149, %147, %139
  %156 = phi i32 [ %148, %147 ], [ %150, %149 ], [ %141, %139 ], [ %152, %151 ], [ %154, %153 ]
  %157 = getelementptr %struct.fetch_insn, ptr %131, i32 1
  %158 = call fastcc i32 @process_fetch_insn_bottom(ptr noundef %157, i32 noundef %156, ptr noundef %120, ptr noundef %100) #14
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load i8, ptr %121, align 4, !range !12
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %167, label %163, !prof !11

163:                                              ; preds = %160
  %164 = ptrtoint ptr %115 to i32
  %165 = sub i32 %164, %112
  %166 = and i32 %165, 65535
  store i32 %166, ptr %120, align 4
  br label %170

167:                                              ; preds = %160, %155
  %168 = getelementptr i8, ptr %115, i32 %158
  %169 = sub i32 %116, %158
  br label %170

170:                                              ; preds = %167, %163
  %171 = phi i32 [ %116, %163 ], [ %169, %167 ]
  %172 = phi ptr [ %115, %163 ], [ %168, %167 ]
  %173 = add nuw i32 %114, 1
  %174 = load i32, ptr %104, align 4
  %175 = icmp ult i32 %173, %174
  br i1 %175, label %113, label %176

176:                                              ; preds = %170, %97
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #14
  br label %177

177:                                              ; preds = %176, %87, %31, %21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @eprobe_trigger_init(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #12 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @eprobe_trigger_free(ptr nocapture noundef %0, ptr nocapture noundef %1) #12 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @eprobe_trigger_print(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #12 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ring_buffer_event_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @process_fetch_insn_bottom(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #13 {
  %5 = alloca i32, align 4
  store i32 %1, ptr %5, align 4
  br label %6

6:                                                ; preds = %229, %4
  %7 = phi ptr [ %0, %4 ], [ %219, %229 ]
  %8 = phi ptr [ %2, %4 ], [ %230, %229 ]
  %9 = phi i32 [ 0, %4 ], [ %204, %229 ]
  %10 = phi i32 [ 0, %4 ], [ %200, %229 ]
  %11 = phi i32 [ 0, %4 ], [ %205, %229 ]
  %12 = phi i32 [ 0, %4 ], [ %201, %229 ]
  %13 = phi i32 [ %1, %4 ], [ %17, %229 ]
  br label %14

14:                                               ; preds = %49, %6
  %15 = phi ptr [ %7, %6 ], [ %50, %49 ]
  %16 = phi i32 [ %10, %6 ], [ 0, %49 ]
  %17 = phi i32 [ %13, %6 ], [ %47, %49 ]
  %18 = load i32, ptr %15, align 4
  switch i32 %18, label %19 [
    i32 10, label %27
    i32 11, label %38
  ]

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.fetch_insn, ptr %15, i32 0, i32 1, i32 0, i32 1
  %21 = getelementptr inbounds %struct.fetch_insn, ptr %15, i32 0, i32 1
  %22 = getelementptr %struct.fetch_insn, ptr %15, i32 1
  %23 = getelementptr %struct.fetch_insn, ptr %15, i32 1, i32 1
  %24 = getelementptr inbounds %struct.anon.95, ptr %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.anon.95, ptr %23, i32 0, i32 2
  %26 = getelementptr %struct.fetch_insn, ptr %15, i32 2
  br label %51

27:                                               ; preds = %14
  %28 = load i32, ptr %5, align 4
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.fetch_insn, ptr %15, i32 0, i32 1, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %29, i32 %31
  %33 = icmp ult ptr %32, inttoptr (i32 -1090519040 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 @copy_from_user_nofault(ptr noundef nonnull %5, ptr noundef %32, i32 noundef 4) #14
  br label %45

36:                                               ; preds = %27
  %37 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %5, ptr noundef %32, i32 noundef 4) #14
  br label %45

38:                                               ; preds = %14
  %39 = load i32, ptr %5, align 4
  %40 = inttoptr i32 %39 to ptr
  %41 = getelementptr inbounds %struct.fetch_insn, ptr %15, i32 0, i32 1, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr i8, ptr %40, i32 %42
  %44 = call i32 @copy_from_user_nofault(ptr noundef nonnull %5, ptr noundef %43, i32 noundef 4) #14
  br label %45

45:                                               ; preds = %38, %36, %34
  %46 = phi i32 [ %44, %38 ], [ %35, %34 ], [ %37, %36 ]
  %47 = phi i32 [ %39, %38 ], [ %28, %34 ], [ %28, %36 ]
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %49, label %239

49:                                               ; preds = %45
  %50 = getelementptr %struct.fetch_insn, ptr %15, i32 1
  br label %14

51:                                               ; preds = %213, %19
  %52 = phi ptr [ %215, %213 ], [ %8, %19 ]
  %53 = phi i32 [ %204, %213 ], [ %9, %19 ]
  %54 = phi i32 [ %200, %213 ], [ %16, %19 ]
  %55 = phi i32 [ %205, %213 ], [ %11, %19 ]
  %56 = phi i32 [ %201, %213 ], [ %12, %19 ]
  %57 = icmp eq ptr %52, null
  %58 = load i32, ptr %15, align 4
  br i1 %57, label %59, label %72, !prof !9

59:                                               ; preds = %51
  switch i32 %58, label %239 [
    i32 15, label %60
    i32 16, label %65
  ]

60:                                               ; preds = %59
  %61 = load i32, ptr %5, align 4
  %62 = load i32, ptr %20, align 4
  %63 = add i32 %62, %61
  %64 = call fastcc i32 @fetch_store_strlen(i32 noundef %63)
  br label %192

65:                                               ; preds = %59
  %66 = load i32, ptr %5, align 4
  %67 = load i32, ptr %20, align 4
  %68 = add i32 %67, %66
  %69 = inttoptr i32 %68 to ptr
  %70 = call i32 @strnlen_user_nofault(ptr noundef %69, i32 noundef 4096) #14
  %71 = add i32 %70, %54
  br label %192

72:                                               ; preds = %51
  switch i32 %58, label %239 [
    i32 12, label %73
    i32 13, label %84
    i32 14, label %95
    i32 15, label %102
    i32 16, label %129
  ]

73:                                               ; preds = %72
  %74 = load i32, ptr %5, align 4
  %75 = load i32, ptr %21, align 4
  switch i32 %75, label %83 [
    i32 1, label %76
    i32 2, label %78
    i32 4, label %80
    i32 8, label %81
  ]

76:                                               ; preds = %73
  %77 = trunc i32 %74 to i8
  store i8 %77, ptr %52, align 1
  br label %145

78:                                               ; preds = %73
  %79 = trunc i32 %74 to i16
  store i16 %79, ptr %52, align 2
  br label %145

80:                                               ; preds = %73
  store i32 %74, ptr %52, align 4
  br label %145

81:                                               ; preds = %73
  %82 = zext i32 %74 to i64
  store i64 %82, ptr %52, align 8
  br label %145

83:                                               ; preds = %73
  store i32 %74, ptr %52, align 4
  br label %145

84:                                               ; preds = %72
  %85 = load i32, ptr %5, align 4
  %86 = inttoptr i32 %85 to ptr
  %87 = load i32, ptr %20, align 4
  %88 = getelementptr i8, ptr %86, i32 %87
  %89 = load i32, ptr %21, align 4
  %90 = icmp ult ptr %88, inttoptr (i32 -1090519040 to ptr)
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = call i32 @copy_from_user_nofault(ptr noundef nonnull %52, ptr noundef %88, i32 noundef %89) #14
  br label %145

93:                                               ; preds = %84
  %94 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %52, ptr noundef %88, i32 noundef %89) #14
  br label %145

95:                                               ; preds = %72
  %96 = load i32, ptr %5, align 4
  %97 = inttoptr i32 %96 to ptr
  %98 = load i32, ptr %20, align 4
  %99 = getelementptr i8, ptr %97, i32 %98
  %100 = load i32, ptr %21, align 4
  %101 = call i32 @copy_from_user_nofault(ptr noundef nonnull %52, ptr noundef %99, i32 noundef %100) #14
  br label %145

102:                                              ; preds = %72
  %103 = load i32, ptr %52, align 4
  %104 = load i32, ptr %5, align 4
  %105 = load i32, ptr %20, align 4
  %106 = add i32 %105, %104
  %107 = lshr i32 %103, 16
  %108 = icmp ult i32 %106, -1090519040
  %109 = icmp ult i32 %103, 65536
  br i1 %108, label %110, label %117

110:                                              ; preds = %102
  br i1 %109, label %145, label %111, !prof !9

111:                                              ; preds = %110
  %112 = inttoptr i32 %106 to ptr
  %113 = and i32 %103, 65535
  %114 = getelementptr i8, ptr %3, i32 %113
  %115 = call i32 @strncpy_from_user_nofault(ptr noundef %114, ptr noundef %112, i32 noundef %107) #14
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %124, label %145

117:                                              ; preds = %102
  br i1 %109, label %145, label %118, !prof !9

118:                                              ; preds = %117
  %119 = and i32 %103, 65535
  %120 = getelementptr i8, ptr %3, i32 %119
  %121 = inttoptr i32 %106 to ptr
  %122 = call i32 @strncpy_from_kernel_nofault(ptr noundef %120, ptr noundef nonnull %121, i32 noundef %107) #14
  %123 = icmp sgt i32 %122, -1
  br i1 %123, label %124, label %145

124:                                              ; preds = %118, %111
  %125 = phi i32 [ %115, %111 ], [ %122, %118 ]
  %126 = phi i32 [ %113, %111 ], [ %119, %118 ]
  %127 = shl i32 %125, 16
  %128 = or i32 %127, %126
  store i32 %128, ptr %52, align 4
  br label %145

129:                                              ; preds = %72
  %130 = load i32, ptr %52, align 4
  %131 = icmp ult i32 %130, 65536
  br i1 %131, label %145, label %132, !prof !9

132:                                              ; preds = %129
  %133 = load i32, ptr %5, align 4
  %134 = load i32, ptr %20, align 4
  %135 = add i32 %134, %133
  %136 = lshr i32 %130, 16
  %137 = inttoptr i32 %135 to ptr
  %138 = and i32 %130, 65535
  %139 = getelementptr i8, ptr %3, i32 %138
  %140 = call i32 @strncpy_from_user_nofault(ptr noundef %139, ptr noundef %137, i32 noundef %136) #14
  %141 = icmp sgt i32 %140, -1
  br i1 %141, label %142, label %145

142:                                              ; preds = %132
  %143 = shl i32 %140, 16
  %144 = or i32 %143, %138
  store i32 %144, ptr %52, align 4
  br label %145

145:                                              ; preds = %142, %132, %129, %124, %118, %117, %111, %110, %95, %93, %91, %83, %81, %80, %78, %76
  %146 = phi i32 [ %54, %95 ], [ %54, %76 ], [ %54, %78 ], [ %54, %80 ], [ %54, %81 ], [ %54, %83 ], [ %54, %91 ], [ %54, %93 ], [ -12, %117 ], [ %122, %118 ], [ -12, %110 ], [ %115, %111 ], [ %125, %124 ], [ -12, %129 ], [ %140, %142 ], [ %140, %132 ]
  %147 = phi i32 [ %56, %95 ], [ %56, %76 ], [ %56, %78 ], [ %56, %80 ], [ %56, %81 ], [ %56, %83 ], [ %56, %91 ], [ %56, %93 ], [ %103, %117 ], [ %103, %118 ], [ %103, %110 ], [ %103, %111 ], [ %103, %124 ], [ %130, %129 ], [ %130, %142 ], [ %130, %132 ]
  %148 = load i32, ptr %22, align 4
  %149 = icmp eq i32 %148, 17
  br i1 %149, label %150, label %197

150:                                              ; preds = %145
  %151 = load i8, ptr %23, align 4
  switch i8 %151, label %192 [
    i8 1, label %152
    i8 2, label %164
    i8 4, label %176
    i8 8, label %184
  ]

152:                                              ; preds = %150
  %153 = load i8, ptr %24, align 1
  %154 = zext i8 %153 to i32
  %155 = load i8, ptr %52, align 1
  %156 = zext i8 %155 to i32
  %157 = shl i32 %156, %154
  %158 = trunc i32 %157 to i8
  store i8 %158, ptr %52, align 1
  %159 = load i8, ptr %25, align 2
  %160 = zext i8 %159 to i32
  %161 = and i32 %157, 255
  %162 = lshr i32 %161, %160
  %163 = trunc i32 %162 to i8
  store i8 %163, ptr %52, align 1
  br label %192

164:                                              ; preds = %150
  %165 = load i8, ptr %24, align 1
  %166 = zext i8 %165 to i32
  %167 = load i16, ptr %52, align 2
  %168 = zext i16 %167 to i32
  %169 = shl i32 %168, %166
  %170 = trunc i32 %169 to i16
  store i16 %170, ptr %52, align 2
  %171 = load i8, ptr %25, align 2
  %172 = zext i8 %171 to i32
  %173 = and i32 %169, 65535
  %174 = lshr i32 %173, %172
  %175 = trunc i32 %174 to i16
  store i16 %175, ptr %52, align 2
  br label %192

176:                                              ; preds = %150
  %177 = load i8, ptr %24, align 1
  %178 = zext i8 %177 to i32
  %179 = load i32, ptr %52, align 4
  %180 = shl i32 %179, %178
  store i32 %180, ptr %52, align 4
  %181 = load i8, ptr %25, align 2
  %182 = zext i8 %181 to i32
  %183 = lshr i32 %180, %182
  store i32 %183, ptr %52, align 4
  br label %192

184:                                              ; preds = %150
  %185 = load i8, ptr %24, align 1
  %186 = load i64, ptr %52, align 8
  %187 = zext i8 %185 to i64
  %188 = shl i64 %186, %187
  store i64 %188, ptr %52, align 8
  %189 = load i8, ptr %25, align 2
  %190 = zext i8 %189 to i64
  %191 = lshr i64 %188, %190
  store i64 %191, ptr %52, align 8
  br label %192

192:                                              ; preds = %184, %176, %164, %152, %150, %65, %60
  %193 = phi ptr [ %22, %65 ], [ %22, %60 ], [ %26, %150 ], [ %26, %152 ], [ %26, %164 ], [ %26, %176 ], [ %26, %184 ]
  %194 = phi i32 [ %71, %65 ], [ %64, %60 ], [ %146, %150 ], [ %146, %152 ], [ %146, %164 ], [ %146, %176 ], [ %146, %184 ]
  %195 = phi i32 [ %56, %65 ], [ %56, %60 ], [ %147, %150 ], [ %147, %152 ], [ %147, %164 ], [ %147, %176 ], [ %147, %184 ]
  %196 = load i32, ptr %193, align 4
  br label %197

197:                                              ; preds = %192, %145
  %198 = phi i32 [ %196, %192 ], [ %148, %145 ]
  %199 = phi ptr [ %193, %192 ], [ %22, %145 ]
  %200 = phi i32 [ %194, %192 ], [ %146, %145 ]
  %201 = phi i32 [ %195, %192 ], [ %147, %145 ]
  %202 = icmp eq i32 %198, 18
  br i1 %202, label %203, label %234

203:                                              ; preds = %197
  %204 = add i32 %200, %53
  %205 = add i32 %55, 1
  %206 = getelementptr inbounds %struct.fetch_insn, ptr %199, i32 0, i32 1
  %207 = load i32, ptr %206, align 4
  %208 = icmp ult i32 %205, %207
  br i1 %208, label %209, label %231

209:                                              ; preds = %203
  %210 = load i32, ptr %15, align 4
  %211 = add i32 %210, -15
  %212 = icmp ult i32 %211, 2
  br i1 %212, label %218, label %213

213:                                              ; preds = %209
  %214 = load i32, ptr %21, align 4
  %215 = getelementptr i8, ptr %52, i32 %214
  %216 = load i32, ptr %5, align 4
  %217 = add i32 %216, %214
  store i32 %217, ptr %5, align 4
  br label %51

218:                                              ; preds = %209
  %219 = getelementptr %struct.fetch_insn, ptr %15, i32 -1
  %220 = add i32 %17, 4
  store i32 %220, ptr %5, align 4
  br i1 %57, label %229, label %221

221:                                              ; preds = %218
  %222 = getelementptr i8, ptr %52, i32 4
  %223 = mul i32 %200, -65536
  %224 = add i32 %223, %201
  %225 = and i32 %224, -65536
  %226 = add i32 %201, %200
  %227 = and i32 %226, 65535
  %228 = or i32 %225, %227
  store i32 %228, ptr %222, align 4
  br label %229

229:                                              ; preds = %221, %218
  %230 = phi ptr [ %222, %221 ], [ null, %218 ]
  br label %6

231:                                              ; preds = %203
  %232 = getelementptr %struct.fetch_insn, ptr %199, i32 1
  %233 = load i32, ptr %232, align 4
  br label %234

234:                                              ; preds = %231, %197
  %235 = phi i32 [ %233, %231 ], [ %198, %197 ]
  %236 = phi i32 [ %204, %231 ], [ %200, %197 ]
  %237 = icmp eq i32 %235, 20
  %238 = select i1 %237, i32 %236, i32 -84
  br label %239

239:                                              ; preds = %234, %72, %59, %45
  %240 = phi i32 [ %238, %234 ], [ -84, %59 ], [ -84, %72 ], [ %46, %45 ]
  ret i32 %240
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fetch_store_strlen(i32 noundef %0) unnamed_addr #13 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #14
  store i8 0, ptr %2, align 1, !annotation !8
  %3 = icmp ult i32 %0, -1090519040
  %4 = inttoptr i32 %0 to ptr
  br i1 %3, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 @strnlen_user_nofault(ptr noundef %4, i32 noundef 4096) #14
  br label %21

7:                                                ; preds = %7, %1
  %8 = phi i32 [ %11, %7 ], [ 0, %1 ]
  %9 = getelementptr i8, ptr %4, i32 %8
  %10 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %2, ptr noundef %9, i32 noundef 1) #14
  %11 = add nuw nsw i32 %8, 1
  %12 = load i8, ptr %2, align 1
  %13 = icmp ne i8 %12, 0
  %14 = icmp eq i32 %10, 0
  %15 = select i1 %13, i1 %14, i1 false
  %16 = icmp ult i32 %8, 4095
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %7, label %18

18:                                               ; preds = %7
  %19 = icmp slt i32 %10, 0
  %20 = select i1 %19, i32 %10, i32 %11
  br label %21

21:                                               ; preds = %18, %5
  %22 = phi i32 [ %6, %5 ], [ %20, %18 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #14
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_user_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strnlen_user_nofault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @eprobe_trigger_cmd_parse(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readnone %4) #12 {
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @eprobe_trigger_reg_func(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #12 {
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @eprobe_trigger_unreg_func(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #12 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @eprobe_trigger_get_ops(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #12 {
  ret ptr @eprobe_trigger_ops
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_probe_get_file_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_probe_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_probe_unlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_remove_event_call(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trace_probe_match_command_args(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2150569375}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i8 0, i8 2}
