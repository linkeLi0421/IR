; ModuleID = '/llk/IR/drivers/gpu/drm/lima/lima_trace.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_trace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.47, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.47 = type { %struct.irq_work }
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
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.trace_event_raw_lima_task = type { %struct.trace_entry, i64, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.drm_sched_fence = type { %struct.dma_fence, %struct.dma_fence, ptr, ptr, %struct.spinlock, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.1, i64, i64, i32, %struct.kref, i32 }
%union.anon.1 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_lima_task_submit = internal constant [17 x i8] c"lima_task_submit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_lima_task_submit = dso_local global %struct.static_call_key { ptr @__traceiter_lima_task_submit }, align 4
@__tracepoint_lima_task_submit = dso_local global %struct.tracepoint { ptr @__tpstrtab_lima_task_submit, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_lima_task_submit, ptr null, ptr @__traceiter_lima_task_submit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_lima_task_submit = internal constant ptr @__tracepoint_lima_task_submit, section "__tracepoints_ptrs", align 4
@__tpstrtab_lima_task_run = internal constant [14 x i8] c"lima_task_run\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_lima_task_run = dso_local global %struct.static_call_key { ptr @__traceiter_lima_task_run }, align 4
@__tracepoint_lima_task_run = dso_local global %struct.tracepoint { ptr @__tpstrtab_lima_task_run, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_lima_task_run, ptr null, ptr @__traceiter_lima_task_run, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_lima_task_run = internal constant ptr @__tracepoint_lima_task_run, section "__tracepoints_ptrs", align 4
@str__lima__trace_system_name = internal constant [5 x i8] c"lima\00", align 1
@trace_event_fields_lima_task = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.91 { %struct.anon.92 { ptr @.str.2, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.91 { %struct.anon.92 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.91 { %struct.anon.92 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.91 { %struct.anon.92 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_lima_task = internal global %struct.trace_event_class { ptr @str__lima__trace_system_name, ptr @trace_event_raw_event_lima_task, ptr @perf_trace_lima_task, ptr @trace_event_reg, ptr @trace_event_fields_lima_task, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_lima_task, i64 24), ptr getelementptr (i8, ptr @event_class_lima_task, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_lima_task = internal global %struct.trace_event_functions { ptr @trace_raw_output_lima_task, ptr null, ptr null, ptr null }, align 4
@print_fmt_lima_task = internal global [98 x i8] c"\22task=%llu, context=%u seqno=%u pipe=%s\22, REC->task_id, REC->context, REC->seqno, __get_str(pipe)\00", align 1
@event_lima_task_submit = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_lima_task, %union.anon.93 { ptr @__tracepoint_lima_task_submit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_lima_task }, ptr @print_fmt_lima_task, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_lima_task_submit = internal global ptr @event_lima_task_submit, section "_ftrace_events", align 4
@event_lima_task_run = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_lima_task, %union.anon.93 { ptr @__tracepoint_lima_task_run }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_lima_task }, ptr @print_fmt_lima_task, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_lima_task_run = internal global ptr @event_lima_task_run, section "_ftrace_events", align 4
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"uint64_t\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"task_id\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"seqno\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"task=%llu, context=%u seqno=%u pipe=%s\0A\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__event_lima_task_run, ptr @__event_lima_task_submit, ptr @__tracepoint_lima_task_run, ptr @__tracepoint_lima_task_submit, ptr @__tracepoint_ptr_lima_task_run, ptr @__tracepoint_ptr_lima_task_submit, ptr @event_class_lima_task, ptr @event_lima_task_run, ptr @event_lima_task_submit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_lima_task_submit(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_lima_task_submit, i32 0, i32 7), align 4
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_lima_task_run(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_lima_task_run, i32 0, i32 7), align 4
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
define internal void @trace_event_raw_event_lima_task(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
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
  br i1 %12, label %49, label %13

13:                                               ; preds = %11, %8, %2
  %14 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr @.str, ptr %17
  %20 = tail call i32 @strlen(ptr noundef nonnull %19) #8
  %21 = add i32 %20, 33
  %22 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %21) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %13
  %25 = shl i32 %20, 16
  %26 = add i32 %25, 65564
  %27 = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %22, i32 0, i32 4
  store i32 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 5
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %22, i32 0, i32 1
  store i64 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.drm_sched_fence, ptr %32, i32 0, i32 1, i32 3
  %34 = load i64, ptr %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %22, i32 0, i32 2
  store i32 %35, ptr %36, align 8
  %37 = load ptr, ptr %31, align 8
  %38 = getelementptr inbounds %struct.drm_sched_fence, ptr %37, i32 0, i32 1, i32 4
  %39 = load i64, ptr %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %22, i32 0, i32 3
  store i32 %40, ptr %41, align 4
  %42 = getelementptr i8, ptr %22, i32 28
  %43 = load ptr, ptr %14, align 4
  %44 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  %47 = select i1 %46, ptr @.str, ptr %45
  %48 = call ptr @strcpy(ptr noundef %42, ptr noundef nonnull %47)
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #8
  br label %49

49:                                               ; preds = %24, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_lima_task(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr @.str, ptr %8
  %11 = tail call i32 @strlen(ptr noundef nonnull %10) #8
  %12 = shl i32 %11, 16
  %13 = add i32 %12, 65564
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %18) #6, !srcloc !12
  %20 = add i32 %19, %16
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load volatile ptr, ptr %21, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %69, label %28

28:                                               ; preds = %25, %2
  %29 = add i32 %11, 44
  %30 = and i32 %29, -8
  %31 = add i32 %30, -4
  %32 = call ptr @perf_trace_buf_alloc(i32 noundef %31, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %69, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %3, align 4
  %36 = call ptr @llvm.returnaddress(i32 0) #8
  %37 = ptrtoint ptr %36 to i32
  %38 = getelementptr [18 x i32], ptr %35, i32 0, i32 15
  store i32 %37, ptr %38, align 4
  %39 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %40 = ptrtoint ptr %39 to i32
  %41 = getelementptr [18 x i32], ptr %35, i32 0, i32 11
  store i32 %40, ptr %41, align 4
  %42 = call i32 @llvm.read_register.i32(metadata !0) #8
  %43 = getelementptr [18 x i32], ptr %35, i32 0, i32 13
  store i32 %42, ptr %43, align 4
  %44 = getelementptr [18 x i32], ptr %35, i32 0, i32 16
  store i32 19, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %32, i32 0, i32 4
  store i32 %13, ptr %45, align 8
  %46 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 5
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %32, i32 0, i32 1
  store i64 %47, ptr %48, align 8
  %49 = getelementptr inbounds %struct.drm_sched_job, ptr %1, i32 0, i32 3
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.drm_sched_fence, ptr %50, i32 0, i32 1, i32 3
  %52 = load i64, ptr %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %32, i32 0, i32 2
  store i32 %53, ptr %54, align 8
  %55 = load ptr, ptr %49, align 8
  %56 = getelementptr inbounds %struct.drm_sched_fence, ptr %55, i32 0, i32 1, i32 4
  %57 = load i64, ptr %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %32, i32 0, i32 3
  store i32 %58, ptr %59, align 4
  %60 = getelementptr i8, ptr %32, i32 28
  %61 = load ptr, ptr %5, align 4
  %62 = getelementptr inbounds %struct.drm_gpu_scheduler, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  %65 = select i1 %64, ptr @.str, ptr %63
  %66 = call ptr @strcpy(ptr noundef %60, ptr noundef nonnull %65)
  %67 = load i32, ptr %4, align 4
  %68 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %32, i32 noundef %31, i32 noundef %67, ptr noundef %0, i64 noundef 1, ptr noundef %68, ptr noundef %21, ptr noundef null) #8
  br label %69

69:                                               ; preds = %34, %28, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
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
define internal i32 @trace_raw_output_lima_task(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %5, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_lima_task, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = getelementptr i8, ptr %5, i32 %18
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i64 noundef %11, i32 noundef %13, i32 noundef %15, ptr noundef %19) #8
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #8
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
!12 = !{i64 304674}
