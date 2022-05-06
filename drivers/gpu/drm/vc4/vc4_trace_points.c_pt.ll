; ModuleID = '/llk/IR/drivers/gpu/drm/vc4/vc4_trace_points.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_trace_points.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.96 }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.98, %struct.trace_event, ptr, ptr, %union.anon.99, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.98 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.99 = type { ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.73 = type { i32, ptr }
%struct.trace_event_raw_vc4_wait_for_seqno_begin = type { %struct.trace_entry, i32, i64, i64, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_vc4_wait_for_seqno_end = type { %struct.trace_entry, i32, i64, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_vc4_wait_for_seqno_begin = internal constant [25 x i8] c"vc4_wait_for_seqno_begin\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_vc4_wait_for_seqno_begin = dso_local global %struct.static_call_key { ptr @__traceiter_vc4_wait_for_seqno_begin }, align 4
@__tracepoint_vc4_wait_for_seqno_begin = dso_local global %struct.tracepoint { ptr @__tpstrtab_vc4_wait_for_seqno_begin, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_vc4_wait_for_seqno_begin, ptr null, ptr @__traceiter_vc4_wait_for_seqno_begin, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_vc4_wait_for_seqno_begin = internal constant ptr @__tracepoint_vc4_wait_for_seqno_begin, section "__tracepoints_ptrs", align 4
@__tpstrtab_vc4_wait_for_seqno_end = internal constant [23 x i8] c"vc4_wait_for_seqno_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_vc4_wait_for_seqno_end = dso_local global %struct.static_call_key { ptr @__traceiter_vc4_wait_for_seqno_end }, align 4
@__tracepoint_vc4_wait_for_seqno_end = dso_local global %struct.tracepoint { ptr @__tpstrtab_vc4_wait_for_seqno_end, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_vc4_wait_for_seqno_end, ptr null, ptr @__traceiter_vc4_wait_for_seqno_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_vc4_wait_for_seqno_end = internal constant ptr @__tracepoint_vc4_wait_for_seqno_end, section "__tracepoints_ptrs", align 4
@str__vc4__trace_system_name = internal constant [4 x i8] c"vc4\00", align 1
@trace_event_fields_vc4_wait_for_seqno_begin = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.96 { %struct.anon.97 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.96 { %struct.anon.97 { ptr @.str.3, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.96 { %struct.anon.97 { ptr @.str.4, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_vc4_wait_for_seqno_begin = internal global %struct.trace_event_class { ptr @str__vc4__trace_system_name, ptr @trace_event_raw_event_vc4_wait_for_seqno_begin, ptr @perf_trace_vc4_wait_for_seqno_begin, ptr @trace_event_reg, ptr @trace_event_fields_vc4_wait_for_seqno_begin, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_vc4_wait_for_seqno_begin, i64 24), ptr getelementptr (i8, ptr @event_class_vc4_wait_for_seqno_begin, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_vc4_wait_for_seqno_begin = internal global %struct.trace_event_functions { ptr @trace_raw_output_vc4_wait_for_seqno_begin, ptr null, ptr null, ptr null }, align 4
@print_fmt_vc4_wait_for_seqno_begin = internal global [71 x i8] c"\22dev=%u, seqno=%llu, timeout=%llu\22, REC->dev, REC->seqno, REC->timeout\00", align 1
@event_vc4_wait_for_seqno_begin = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_vc4_wait_for_seqno_begin, %union.anon.98 { ptr @__tracepoint_vc4_wait_for_seqno_begin }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_vc4_wait_for_seqno_begin }, ptr @print_fmt_vc4_wait_for_seqno_begin, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_vc4_wait_for_seqno_begin = internal global ptr @event_vc4_wait_for_seqno_begin, section "_ftrace_events", align 4
@trace_event_fields_vc4_wait_for_seqno_end = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.96 { %struct.anon.97 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.96 { %struct.anon.97 { ptr @.str.3, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_vc4_wait_for_seqno_end = internal global %struct.trace_event_class { ptr @str__vc4__trace_system_name, ptr @trace_event_raw_event_vc4_wait_for_seqno_end, ptr @perf_trace_vc4_wait_for_seqno_end, ptr @trace_event_reg, ptr @trace_event_fields_vc4_wait_for_seqno_end, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_vc4_wait_for_seqno_end, i64 24), ptr getelementptr (i8, ptr @event_class_vc4_wait_for_seqno_end, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_vc4_wait_for_seqno_end = internal global %struct.trace_event_functions { ptr @trace_raw_output_vc4_wait_for_seqno_end, ptr null, ptr null, ptr null }, align 4
@print_fmt_vc4_wait_for_seqno_end = internal global [43 x i8] c"\22dev=%u, seqno=%llu\22, REC->dev, REC->seqno\00", align 1
@event_vc4_wait_for_seqno_end = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_vc4_wait_for_seqno_end, %union.anon.98 { ptr @__tracepoint_vc4_wait_for_seqno_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_vc4_wait_for_seqno_end }, ptr @print_fmt_vc4_wait_for_seqno_end, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_vc4_wait_for_seqno_end = internal global ptr @event_vc4_wait_for_seqno_end, section "_ftrace_events", align 4
@.str = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"u64\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"seqno\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"dev=%u, seqno=%llu, timeout=%llu\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"dev=%u, seqno=%llu\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__event_vc4_wait_for_seqno_begin, ptr @__event_vc4_wait_for_seqno_end, ptr @__tracepoint_ptr_vc4_wait_for_seqno_begin, ptr @__tracepoint_ptr_vc4_wait_for_seqno_end, ptr @__tracepoint_vc4_wait_for_seqno_begin, ptr @__tracepoint_vc4_wait_for_seqno_end, ptr @event_class_vc4_wait_for_seqno_begin, ptr @event_class_vc4_wait_for_seqno_end, ptr @event_vc4_wait_for_seqno_begin, ptr @event_vc4_wait_for_seqno_end], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_vc4_wait_for_seqno_begin(ptr nocapture readnone %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_vc4_wait_for_seqno_begin, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i64 noundef %2, i64 noundef %3) #6
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_vc4_wait_for_seqno_end(ptr nocapture readnone %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_vc4_wait_for_seqno_end, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i64 noundef %2) #6
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_vc4_wait_for_seqno_begin(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %14, label %25, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 32) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_vc4_wait_for_seqno_begin, ptr %16, i32 0, i32 1
  store i32 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.trace_event_raw_vc4_wait_for_seqno_begin, ptr %16, i32 0, i32 2
  store i64 %2, ptr %23, align 8
  %24 = getelementptr inbounds %struct.trace_event_raw_vc4_wait_for_seqno_begin, ptr %16, i32 0, i32 3
  store i64 %3, ptr %24, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #6
  br label %25

25:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_vc4_wait_for_seqno_begin(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #4, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %43, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #6
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #6
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_vc4_wait_for_seqno_begin, ptr %22, i32 0, i32 1
  store i32 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.trace_event_raw_vc4_wait_for_seqno_begin, ptr %22, i32 0, i32 2
  store i64 %2, ptr %39, align 8
  %40 = getelementptr inbounds %struct.trace_event_raw_vc4_wait_for_seqno_begin, ptr %22, i32 0, i32 3
  store i64 %3, ptr %40, align 8
  %41 = load i32, ptr %6, align 4
  %42 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 36, i32 noundef %41, ptr noundef %0, i64 noundef 1, ptr noundef %42, ptr noundef %14, ptr noundef null) #6
  br label %43

43:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_vc4_wait_for_seqno_end(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %13, label %23, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 24) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_vc4_wait_for_seqno_end, ptr %15, i32 0, i32 1
  store i32 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.trace_event_raw_vc4_wait_for_seqno_end, ptr %15, i32 0, i32 2
  store i64 %2, ptr %22, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #6
  br label %23

23:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_vc4_wait_for_seqno_end(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #4, !srcloc !12
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
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %41, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #6
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #6
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_vc4_wait_for_seqno_end, ptr %21, i32 0, i32 1
  store i32 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.trace_event_raw_vc4_wait_for_seqno_end, ptr %21, i32 0, i32 2
  store i64 %2, ptr %38, align 8
  %39 = load i32, ptr %5, align 4
  %40 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 28, i32 noundef %39, ptr noundef %0, i64 noundef 1, ptr noundef %40, ptr noundef %13, ptr noundef null) #6
  br label %41

41:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret void
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
define internal i32 @trace_raw_output_vc4_wait_for_seqno_begin(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_vc4_wait_for_seqno_begin, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_vc4_wait_for_seqno_begin, ptr %5, i32 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.trace_event_raw_vc4_wait_for_seqno_begin, ptr %5, i32 0, i32 3
  %15 = load i64, ptr %14, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %11, i64 noundef %13, i64 noundef %15) #6
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #6
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_vc4_wait_for_seqno_end(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_vc4_wait_for_seqno_end, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_vc4_wait_for_seqno_end, ptr %5, i32 0, i32 2
  %13 = load i64, ptr %12, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %11, i64 noundef %13) #6
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #6
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
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }

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
!12 = !{i64 331056}
