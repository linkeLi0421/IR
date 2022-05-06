; ModuleID = '/llk/IR/drivers/base/trace.c_pt.bc'
source_filename = "../drivers/base/trace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.89 }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.91, %struct.trace_event, ptr, ptr, %union.anon.92, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.91 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.92 = type { ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.trace_event_raw_devres = type { %struct.trace_entry, i32, ptr, ptr, ptr, ptr, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_devres_log = internal constant [11 x i8] c"devres_log\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_devres_log = dso_local global %struct.static_call_key { ptr @__traceiter_devres_log }, align 4
@__tracepoint_devres_log = dso_local global %struct.tracepoint { ptr @__tpstrtab_devres_log, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_devres_log, ptr null, ptr @__traceiter_devres_log, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_devres_log = internal constant ptr @__tracepoint_devres_log, section "__tracepoints_ptrs", align 4
@trace_event_fields_devres = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.89 { %struct.anon.90 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.89 { %struct.anon.90 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.89 { %struct.anon.90 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.89 { %struct.anon.90 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_devres = internal global %struct.trace_event_class { ptr @.str.4, ptr @trace_event_raw_event_devres, ptr @perf_trace_devres, ptr @trace_event_reg, ptr @trace_event_fields_devres, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_devres, i64 24), ptr getelementptr (i8, ptr @event_class_devres, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_devres = internal global %struct.trace_event_functions { ptr @trace_raw_output_devres, ptr null, ptr null, ptr null }, align 4
@print_fmt_devres = internal global [89 x i8] c"\22%s %3s %p %s (%zu bytes)\22, __get_str(devname), REC->op, REC->node, REC->name, REC->size\00", align 1
@event_devres_log = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_devres, %union.anon.91 { ptr @__tracepoint_devres_log }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_devres }, ptr @print_fmt_devres, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_devres_log = internal global ptr @event_devres_log, section "_ftrace_events", align 4
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"devname\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"struct device *\00", align 1
@.str.4 = private constant [4 x i8] c"dev\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"const char *\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"op\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"void *\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"size_t\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"%s %3s %p %s (%zu bytes)\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__event_devres_log, ptr @__tracepoint_devres_log, ptr @__tracepoint_ptr_devres_log, ptr @event_class_devres, ptr @event_devres_log], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_devres_log(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devres_log, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
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
define internal void @trace_event_raw_event_devres(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #8
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
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #8
  br i1 %16, label %49, label %17

17:                                               ; preds = %15, %12, %6
  %18 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load ptr, ptr %1, align 4
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr @.str, ptr %22
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi ptr [ %19, %17 ], [ %24, %21 ]
  %27 = tail call i32 @strlen(ptr noundef nonnull %26) #8
  %28 = add i32 %27, 33
  %29 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef %28) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %25
  %32 = shl i32 %27, 16
  %33 = add i32 %32, 65568
  %34 = getelementptr inbounds %struct.trace_event_raw_devres, ptr %29, i32 0, i32 1
  store i32 %33, ptr %34, align 4
  %35 = getelementptr i8, ptr %29, i32 32
  %36 = load ptr, ptr %18, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load ptr, ptr %1, align 4
  %40 = icmp eq ptr %39, null
  %41 = select i1 %40, ptr @.str, ptr %39
  br label %42

42:                                               ; preds = %38, %31
  %43 = phi ptr [ %36, %31 ], [ %41, %38 ]
  %44 = call ptr @strcpy(ptr noundef %35, ptr noundef nonnull %43)
  %45 = getelementptr inbounds %struct.trace_event_raw_devres, ptr %29, i32 0, i32 3
  store ptr %2, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_devres, ptr %29, i32 0, i32 4
  store ptr %3, ptr %46, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_devres, ptr %29, i32 0, i32 5
  store ptr %4, ptr %47, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_devres, ptr %29, i32 0, i32 6
  store i32 %5, ptr %48, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #8
  br label %49

49:                                               ; preds = %42, %25, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_devres(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = load ptr, ptr %1, align 4
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr @.str, ptr %13
  br label %16

16:                                               ; preds = %12, %6
  %17 = phi ptr [ %10, %6 ], [ %15, %12 ]
  %18 = tail call i32 @strlen(ptr noundef nonnull %17) #8
  %19 = shl i32 %18, 16
  %20 = add i32 %19, 65568
  %21 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %22 = load ptr, ptr %21, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #6, !srcloc !12
  %27 = add i32 %26, %23
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %16
  %33 = load volatile ptr, ptr %28, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %69, label %35

35:                                               ; preds = %32, %16
  %36 = add i32 %18, 44
  %37 = and i32 %36, -8
  %38 = add i32 %37, -4
  %39 = call ptr @perf_trace_buf_alloc(i32 noundef %38, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %69, label %41

41:                                               ; preds = %35
  %42 = load ptr, ptr %7, align 4
  %43 = call ptr @llvm.returnaddress(i32 0) #8
  %44 = ptrtoint ptr %43 to i32
  %45 = getelementptr [18 x i32], ptr %42, i32 0, i32 15
  store i32 %44, ptr %45, align 4
  %46 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %47 = ptrtoint ptr %46 to i32
  %48 = getelementptr [18 x i32], ptr %42, i32 0, i32 11
  store i32 %47, ptr %48, align 4
  %49 = call i32 @llvm.read_register.i32(metadata !0) #8
  %50 = getelementptr [18 x i32], ptr %42, i32 0, i32 13
  store i32 %49, ptr %50, align 4
  %51 = getelementptr [18 x i32], ptr %42, i32 0, i32 16
  store i32 19, ptr %51, align 4
  %52 = getelementptr inbounds %struct.trace_event_raw_devres, ptr %39, i32 0, i32 1
  store i32 %20, ptr %52, align 4
  %53 = getelementptr i8, ptr %39, i32 32
  %54 = load ptr, ptr %9, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %41
  %57 = load ptr, ptr %1, align 4
  %58 = icmp eq ptr %57, null
  %59 = select i1 %58, ptr @.str, ptr %57
  br label %60

60:                                               ; preds = %56, %41
  %61 = phi ptr [ %54, %41 ], [ %59, %56 ]
  %62 = call ptr @strcpy(ptr noundef %53, ptr noundef nonnull %61)
  %63 = getelementptr inbounds %struct.trace_event_raw_devres, ptr %39, i32 0, i32 3
  store ptr %2, ptr %63, align 4
  %64 = getelementptr inbounds %struct.trace_event_raw_devres, ptr %39, i32 0, i32 4
  store ptr %3, ptr %64, align 4
  %65 = getelementptr inbounds %struct.trace_event_raw_devres, ptr %39, i32 0, i32 5
  store ptr %4, ptr %65, align 4
  %66 = getelementptr inbounds %struct.trace_event_raw_devres, ptr %39, i32 0, i32 6
  store i32 %5, ptr %66, align 4
  %67 = load i32, ptr %8, align 4
  %68 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %39, i32 noundef %38, i32 noundef %67, ptr noundef %0, i64 noundef 1, ptr noundef %68, ptr noundef %28, ptr noundef null) #8
  br label %69

69:                                               ; preds = %60, %35, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_devres(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_devres, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_devres, ptr %5, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_devres, ptr %5, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_devres, ptr %5, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_devres, ptr %5, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %13, ptr noundef %15, ptr noundef %17, ptr noundef %19, i32 noundef %21) #8
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }

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
!12 = !{i64 608323}
