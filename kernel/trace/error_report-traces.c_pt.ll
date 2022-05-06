; ModuleID = '/llk/IR/kernel/trace/error_report-traces.c_pt.bc'
source_filename = "../kernel/trace/error_report-traces.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_error_report_end:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_error_report_end\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_error_report_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_error_report_end:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_error_report_end\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_error_report_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_error_report_end:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_error_report_end\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_error_report_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_eval_map = type { ptr, ptr, i32 }
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
%struct.trace_print_flags = type { i32, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_error_report_template = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_error_report_end = internal constant [17 x i8] c"error_report_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_error_report_end = dso_local global %struct.static_call_key { ptr @__traceiter_error_report_end }, align 4
@__tracepoint_error_report_end = dso_local global %struct.tracepoint { ptr @__tpstrtab_error_report_end, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_error_report_end, ptr null, ptr @__traceiter_error_report_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_error_report_end = internal constant ptr @__tracepoint_error_report_end, section "__tracepoints_ptrs", align 4
@str__error_report__trace_system_name = internal constant [13 x i8] c"error_report\00", align 1
@.str = private unnamed_addr constant [22 x i8] c"ERROR_DETECTOR_KFENCE\00", align 1
@__TRACE_SYSTEM_ERROR_DETECTOR_KFENCE = internal global %struct.trace_eval_map { ptr @str__error_report__trace_system_name, ptr @.str, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_ERROR_DETECTOR_KFENCE = internal global ptr @__TRACE_SYSTEM_ERROR_DETECTOR_KFENCE, section "_ftrace_eval_map", align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"ERROR_DETECTOR_KASAN\00", align 1
@__TRACE_SYSTEM_ERROR_DETECTOR_KASAN = internal global %struct.trace_eval_map { ptr @str__error_report__trace_system_name, ptr @.str.1, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_ERROR_DETECTOR_KASAN = internal global ptr @__TRACE_SYSTEM_ERROR_DETECTOR_KASAN, section "_ftrace_eval_map", align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"ERROR_DETECTOR_WARN\00", align 1
@__TRACE_SYSTEM_ERROR_DETECTOR_WARN = internal global %struct.trace_eval_map { ptr @str__error_report__trace_system_name, ptr @.str.2, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_ERROR_DETECTOR_WARN = internal global ptr @__TRACE_SYSTEM_ERROR_DETECTOR_WARN, section "_ftrace_eval_map", align 4
@trace_event_fields_error_report_template = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_error_report_template = internal global %struct.trace_event_class { ptr @str__error_report__trace_system_name, ptr @trace_event_raw_event_error_report_template, ptr @perf_trace_error_report_template, ptr @trace_event_reg, ptr @trace_event_fields_error_report_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_error_report_template, i64 24), ptr getelementptr (i8, ptr @event_class_error_report_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_error_report_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_error_report_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_error_report_template = internal global [167 x i8] c"\22[%s] %lx\22, __print_symbolic(REC->error_detector, { ERROR_DETECTOR_KFENCE, \22kfence\22 }, { ERROR_DETECTOR_KASAN, \22kasan\22 }, { ERROR_DETECTOR_WARN, \22warning\22 }), REC->id\00", align 1
@event_error_report_end = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_error_report_template, %union.anon.0 { ptr @__tracepoint_error_report_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_error_report_template }, ptr @print_fmt_error_report_template, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_error_report_end = internal global ptr @event_error_report_end, section "_ftrace_events", align 4
@__kstrtab___tracepoint_error_report_end = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_error_report_end = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_error_report_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_error_report_end to i32), ptr @__kstrtab___tracepoint_error_report_end, ptr @__kstrtabns___tracepoint_error_report_end }, section "___ksymtab_gpl+__tracepoint_error_report_end", align 4
@__kstrtab___traceiter_error_report_end = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_error_report_end = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_error_report_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_error_report_end to i32), ptr @__kstrtab___traceiter_error_report_end, ptr @__kstrtabns___traceiter_error_report_end }, section "___ksymtab_gpl+__traceiter_error_report_end", align 4
@__kstrtab___SCK__tp_func_error_report_end = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_error_report_end = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_error_report_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_error_report_end to i32), ptr @__kstrtab___SCK__tp_func_error_report_end, ptr @__kstrtabns___SCK__tp_func_error_report_end }, section "___ksymtab_gpl+__SCK__tp_func_error_report_end", align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"enum error_detector\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"error_detector\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"[%s] %lx\0A\00", align 1
@trace_raw_output_error_report_template.symbols = internal constant [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.8 }, %struct.trace_print_flags { i32 1, ptr @.str.9 }, %struct.trace_print_flags { i32 2, ptr @.str.10 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"kfence\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"kasan\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @TRACE_SYSTEM_ERROR_DETECTOR_KASAN, ptr @TRACE_SYSTEM_ERROR_DETECTOR_KFENCE, ptr @TRACE_SYSTEM_ERROR_DETECTOR_WARN, ptr @__TRACE_SYSTEM_ERROR_DETECTOR_KASAN, ptr @__TRACE_SYSTEM_ERROR_DETECTOR_KFENCE, ptr @__TRACE_SYSTEM_ERROR_DETECTOR_WARN, ptr @__event_error_report_end, ptr @__ksymtab___SCK__tp_func_error_report_end, ptr @__ksymtab___traceiter_error_report_end, ptr @__ksymtab___tracepoint_error_report_end, ptr @__tracepoint_error_report_end, ptr @__tracepoint_ptr_error_report_end, ptr @event_class_error_report_template, ptr @event_error_report_end], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_error_report_end(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_error_report_end, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #6
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
define internal void @trace_event_raw_event_error_report_template(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_error_report_template, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_error_report_template, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #6
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_error_report_template(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

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
  %34 = getelementptr inbounds %struct.trace_event_raw_error_report_template, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_error_report_template, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #6
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_error_report_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_error_report_template, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %12, ptr noundef nonnull @trace_raw_output_error_report_template.symbols) #6
  %14 = getelementptr inbounds %struct.trace_event_raw_error_report_template, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %13, i32 noundef %15) #6
  %16 = tail call i32 @trace_handle_return(ptr noundef %10) #6
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
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

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
!12 = !{i64 487070}
