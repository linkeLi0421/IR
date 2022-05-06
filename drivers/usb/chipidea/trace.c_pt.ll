; ModuleID = '/llk/IR/drivers/usb/chipidea/trace.c_pt.bc'
source_filename = "../drivers/usb/chipidea/trace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.92 }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.94, %struct.trace_event, ptr, ptr, %union.anon.95, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.94 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.95 = type { ptr }
%struct.cpumask = type { [1 x i32] }
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
%struct.trace_event_raw_ci_log = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.va_format = type { ptr, ptr }
%struct.ci_hw_ep = type { %struct.usb_ep, i8, i8, i8, [16 x i8], %struct.anon.65, i32, ptr, ptr, ptr, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.anon.65 = type { %struct.list_head, ptr, i32 }
%struct.trace_event_raw_ci_log_trb = type { %struct.trace_entry, i32, ptr, ptr, i32, i32, i32, i32, i32, [0 x i8] }
%struct.td_node = type { %struct.list_head, i32, ptr, i32 }
%struct.ci_hw_td = type { i32, i32, [5 x i32] }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.__va_list = type { ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_ci_log = internal constant [7 x i8] c"ci_log\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ci_log = dso_local global %struct.static_call_key { ptr @__traceiter_ci_log }, align 4
@__tracepoint_ci_log = dso_local global %struct.tracepoint { ptr @__tpstrtab_ci_log, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ci_log, ptr null, ptr @__traceiter_ci_log, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ci_log = internal constant ptr @__tracepoint_ci_log, section "__tracepoints_ptrs", align 4
@__tpstrtab_ci_prepare_td = internal constant [14 x i8] c"ci_prepare_td\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ci_prepare_td = dso_local global %struct.static_call_key { ptr @__traceiter_ci_prepare_td }, align 4
@__tracepoint_ci_prepare_td = dso_local global %struct.tracepoint { ptr @__tpstrtab_ci_prepare_td, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ci_prepare_td, ptr null, ptr @__traceiter_ci_prepare_td, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ci_prepare_td = internal constant ptr @__tracepoint_ci_prepare_td, section "__tracepoints_ptrs", align 4
@__tpstrtab_ci_complete_td = internal constant [15 x i8] c"ci_complete_td\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ci_complete_td = dso_local global %struct.static_call_key { ptr @__traceiter_ci_complete_td }, align 4
@__tracepoint_ci_complete_td = dso_local global %struct.tracepoint { ptr @__tpstrtab_ci_complete_td, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ci_complete_td, ptr null, ptr @__traceiter_ci_complete_td, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ci_complete_td = internal constant ptr @__tracepoint_ci_complete_td, section "__tracepoints_ptrs", align 4
@str__chipidea__trace_system_name = internal constant [9 x i8] c"chipidea\00", align 1
@trace_event_fields_ci_log = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.92 { %struct.anon.93 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.92 { %struct.anon.93 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_ci_log = internal global %struct.trace_event_class { ptr @str__chipidea__trace_system_name, ptr @trace_event_raw_event_ci_log, ptr @perf_trace_ci_log, ptr @trace_event_reg, ptr @trace_event_fields_ci_log, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ci_log, i64 24), ptr getelementptr (i8, ptr @event_class_ci_log, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ci_log = internal global %struct.trace_event_functions { ptr @trace_raw_output_ci_log, ptr null, ptr null, ptr null }, align 4
@print_fmt_ci_log = internal global [42 x i8] c"\22%s: %s\22, __get_str(name), __get_str(msg)\00", align 1
@event_ci_log = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ci_log, %union.anon.94 { ptr @__tracepoint_ci_log }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ci_log }, ptr @print_fmt_ci_log, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ci_log = internal global ptr @event_ci_log, section "_ftrace_events", align 4
@trace_event_fields_ci_log_trb = internal global [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.92 { %struct.anon.93 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.92 { %struct.anon.93 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.92 { %struct.anon.93 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.92 { %struct.anon.93 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.92 { %struct.anon.93 { ptr @.str.12, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.92 { %struct.anon.93 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.92 { %struct.anon.93 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.92 { %struct.anon.93 { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_ci_log_trb = internal global %struct.trace_event_class { ptr @str__chipidea__trace_system_name, ptr @trace_event_raw_event_ci_log_trb, ptr @perf_trace_ci_log_trb, ptr @trace_event_reg, ptr @trace_event_fields_ci_log_trb, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ci_log_trb, i64 24), ptr getelementptr (i8, ptr @event_class_ci_log_trb, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ci_log_trb = internal global %struct.trace_event_functions { ptr @trace_raw_output_ci_log_trb, ptr null, ptr null, ptr null }, align 4
@print_fmt_ci_log_trb = internal global [283 x i8] c"\22%s: req: %p, td: %p, td_dma_address: %pad, remaining_size: %d, next: %x, total bytes: %d, status: %lx\22, __get_str(name), REC->req, REC->td, &REC->dma, REC->td_remaining_size, REC->next, (int)((REC->token & (0x7FFFUL << 16)) >> __ffs((0x7FFFUL << 16))), REC->token & (0x00FFUL << 0)\00", align 1
@event_ci_prepare_td = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ci_log_trb, %union.anon.94 { ptr @__tracepoint_ci_prepare_td }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ci_log_trb }, ptr @print_fmt_ci_log_trb, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ci_prepare_td = internal global ptr @event_ci_prepare_td, section "_ftrace_events", align 4
@event_ci_complete_td = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ci_log_trb, %union.anon.94 { ptr @__tracepoint_ci_complete_td }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ci_log_trb }, ptr @print_fmt_ci_log_trb, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ci_complete_td = internal global ptr @event_ci_complete_td, section "_ftrace_events", align 4
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"struct td_node *\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"td\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"struct usb_request *\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"dma_addr_t\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"s32\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"td_remaining_size\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.17 = private unnamed_addr constant [103 x i8] c"%s: req: %p, td: %p, td_dma_address: %pad, remaining_size: %d, next: %x, total bytes: %d, status: %lx\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@llvm.compiler.used = appending global [14 x ptr] [ptr @__event_ci_complete_td, ptr @__event_ci_log, ptr @__event_ci_prepare_td, ptr @__tracepoint_ci_complete_td, ptr @__tracepoint_ci_log, ptr @__tracepoint_ci_prepare_td, ptr @__tracepoint_ptr_ci_complete_td, ptr @__tracepoint_ptr_ci_log, ptr @__tracepoint_ptr_ci_prepare_td, ptr @event_ci_complete_td, ptr @event_ci_log, ptr @event_ci_prepare_td, ptr @event_class_ci_log, ptr @event_class_ci_log_trb], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ci_log(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ci_log, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #10
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
define dso_local i32 @__traceiter_ci_prepare_td(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ci_prepare_td, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, ptr noundef %3) #10
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ci_complete_td(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ci_complete_td, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, ptr noundef %3) #10
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ci_log(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %13, label %56, label %14

14:                                               ; preds = %12, %9, %3
  %15 = load ptr, ptr %1, align 8
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr @.str, ptr %20
  br label %23

23:                                               ; preds = %19, %14
  %24 = phi ptr [ %17, %14 ], [ %22, %19 ]
  %25 = tail call i32 @strlen(ptr noundef nonnull %24) #10
  %26 = add i32 %25, 517
  %27 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %26) #10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %56, label %29

29:                                               ; preds = %23
  %30 = add i32 %25, 17
  %31 = or i32 %30, 32768000
  %32 = shl i32 %25, 16
  %33 = add i32 %32, 65552
  %34 = getelementptr inbounds %struct.trace_event_raw_ci_log, ptr %27, i32 0, i32 1
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_ci_log, ptr %27, i32 0, i32 2
  store i32 %31, ptr %35, align 4
  %36 = getelementptr i8, ptr %27, i32 16
  %37 = load ptr, ptr %1, align 8
  %38 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load ptr, ptr %37, align 4
  %43 = icmp eq ptr %42, null
  %44 = select i1 %43, ptr @.str, ptr %42
  br label %45

45:                                               ; preds = %41, %29
  %46 = phi ptr [ %39, %29 ], [ %44, %41 ]
  %47 = call ptr @strcpy(ptr noundef %36, ptr noundef nonnull %46)
  %48 = and i32 %30, 65535
  %49 = getelementptr i8, ptr %27, i32 %48
  %50 = load ptr, ptr %2, align 4
  %51 = getelementptr inbounds %struct.va_format, ptr %2, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = load i32, ptr %52, align 4
  %54 = insertvalue [1 x i32] undef, i32 %53, 0
  %55 = call i32 @vsnprintf(ptr noundef %49, i32 noundef 500, ptr noundef %50, [1 x i32] %54)
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #10
  br label %56

56:                                               ; preds = %45, %23, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_ci_log(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = load ptr, ptr %1, align 8
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load ptr, ptr %6, align 4
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, ptr @.str, ptr %11
  br label %14

14:                                               ; preds = %10, %3
  %15 = phi ptr [ %8, %3 ], [ %13, %10 ]
  %16 = tail call i32 @strlen(ptr noundef nonnull %15) #10
  %17 = shl i32 %16, 16
  %18 = add i32 %17, 65552
  %19 = add i32 %16, 17
  %20 = or i32 %19, 32768000
  %21 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %22 = load ptr, ptr %21, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #8, !srcloc !12
  %27 = add i32 %26, %23
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %14
  %33 = load volatile ptr, ptr %28, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %76, label %35

35:                                               ; preds = %32, %14
  %36 = add i32 %16, 528
  %37 = and i32 %36, -8
  %38 = add i32 %37, -4
  %39 = call ptr @perf_trace_buf_alloc(i32 noundef %38, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %40 = icmp eq ptr %39, null
  br i1 %40, label %76, label %41

41:                                               ; preds = %35
  %42 = load ptr, ptr %4, align 4
  %43 = call ptr @llvm.returnaddress(i32 0) #10
  %44 = ptrtoint ptr %43 to i32
  %45 = getelementptr [18 x i32], ptr %42, i32 0, i32 15
  store i32 %44, ptr %45, align 4
  %46 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %47 = ptrtoint ptr %46 to i32
  %48 = getelementptr [18 x i32], ptr %42, i32 0, i32 11
  store i32 %47, ptr %48, align 4
  %49 = call i32 @llvm.read_register.i32(metadata !0) #10
  %50 = getelementptr [18 x i32], ptr %42, i32 0, i32 13
  store i32 %49, ptr %50, align 4
  %51 = getelementptr [18 x i32], ptr %42, i32 0, i32 16
  store i32 19, ptr %51, align 4
  %52 = getelementptr inbounds %struct.trace_event_raw_ci_log, ptr %39, i32 0, i32 1
  store i32 %18, ptr %52, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_ci_log, ptr %39, i32 0, i32 2
  store i32 %20, ptr %53, align 4
  %54 = getelementptr i8, ptr %39, i32 16
  %55 = load ptr, ptr %1, align 8
  %56 = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %41
  %60 = load ptr, ptr %55, align 4
  %61 = icmp eq ptr %60, null
  %62 = select i1 %61, ptr @.str, ptr %60
  br label %63

63:                                               ; preds = %59, %41
  %64 = phi ptr [ %57, %41 ], [ %62, %59 ]
  %65 = call ptr @strcpy(ptr noundef %54, ptr noundef nonnull %64)
  %66 = and i32 %19, 65535
  %67 = getelementptr i8, ptr %39, i32 %66
  %68 = load ptr, ptr %2, align 4
  %69 = getelementptr inbounds %struct.va_format, ptr %2, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = load i32, ptr %70, align 4
  %72 = insertvalue [1 x i32] undef, i32 %71, 0
  %73 = call i32 @vsnprintf(ptr noundef %67, i32 noundef 500, ptr noundef %68, [1 x i32] %72)
  %74 = load i32, ptr %5, align 4
  %75 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %39, i32 noundef %38, i32 noundef %74, ptr noundef %0, i64 noundef 1, ptr noundef %75, ptr noundef %28, ptr noundef null) #10
  br label %76

76:                                               ; preds = %63, %35, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ci_log_trb(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %14, label %52, label %15

15:                                               ; preds = %13, %10, %4
  %16 = getelementptr inbounds %struct.ci_hw_ep, ptr %1, i32 0, i32 4
  %17 = tail call i32 @strlen(ptr noundef %16) #10
  %18 = add i32 %17, 41
  %19 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %18) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %52, label %21

21:                                               ; preds = %15
  %22 = shl i32 %17, 16
  %23 = add i32 %22, 65576
  %24 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %19, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = getelementptr i8, ptr %19, i32 40
  %26 = icmp eq ptr %16, null
  %27 = select i1 %26, ptr @.str, ptr %16
  %28 = call ptr @strcpy(ptr noundef %25, ptr noundef %27)
  %29 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %19, i32 0, i32 3
  store ptr %2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %19, i32 0, i32 2
  store ptr %3, ptr %30, align 4
  %31 = getelementptr inbounds %struct.td_node, ptr %3, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %19, i32 0, i32 4
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.td_node, ptr %3, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %19, i32 0, i32 5
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.td_node, ptr %3, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %19, i32 0, i32 6
  store i32 %39, ptr %40, align 4
  %41 = load ptr, ptr %37, align 4
  %42 = getelementptr inbounds %struct.ci_hw_td, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %19, i32 0, i32 7
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 9
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %46, i32 0, i32 3
  %48 = load i8, ptr %47, align 1
  %49 = and i8 %48, 3
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %19, i32 0, i32 8
  store i32 %50, ptr %51, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #10
  br label %52

52:                                               ; preds = %21, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_ci_log_trb(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.ci_hw_ep, ptr %1, i32 0, i32 4
  %8 = tail call i32 @strlen(ptr noundef %7) #10
  %9 = shl i32 %8, 16
  %10 = add i32 %9, 65576
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #8, !srcloc !12
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load volatile ptr, ptr %18, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %72, label %25

25:                                               ; preds = %22, %4
  %26 = add i32 %8, 52
  %27 = and i32 %26, -8
  %28 = add i32 %27, -4
  %29 = call ptr @perf_trace_buf_alloc(i32 noundef %28, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %72, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %5, align 4
  %33 = call ptr @llvm.returnaddress(i32 0) #10
  %34 = ptrtoint ptr %33 to i32
  %35 = getelementptr [18 x i32], ptr %32, i32 0, i32 15
  store i32 %34, ptr %35, align 4
  %36 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %37 = ptrtoint ptr %36 to i32
  %38 = getelementptr [18 x i32], ptr %32, i32 0, i32 11
  store i32 %37, ptr %38, align 4
  %39 = call i32 @llvm.read_register.i32(metadata !0) #10
  %40 = getelementptr [18 x i32], ptr %32, i32 0, i32 13
  store i32 %39, ptr %40, align 4
  %41 = getelementptr [18 x i32], ptr %32, i32 0, i32 16
  store i32 19, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %29, i32 0, i32 1
  store i32 %10, ptr %42, align 4
  %43 = getelementptr i8, ptr %29, i32 40
  %44 = icmp eq ptr %7, null
  %45 = select i1 %44, ptr @.str, ptr %7
  %46 = call ptr @strcpy(ptr noundef %43, ptr noundef %45)
  %47 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %29, i32 0, i32 3
  store ptr %2, ptr %47, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %29, i32 0, i32 2
  store ptr %3, ptr %48, align 4
  %49 = getelementptr inbounds %struct.td_node, ptr %3, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %29, i32 0, i32 4
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.td_node, ptr %3, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %29, i32 0, i32 5
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.td_node, ptr %3, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %29, i32 0, i32 6
  store i32 %57, ptr %58, align 4
  %59 = load ptr, ptr %55, align 4
  %60 = getelementptr inbounds %struct.ci_hw_td, ptr %59, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %29, i32 0, i32 7
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 9
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %64, i32 0, i32 3
  %66 = load i8, ptr %65, align 1
  %67 = and i8 %66, 3
  %68 = zext i8 %67 to i32
  %69 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %29, i32 0, i32 8
  store i32 %68, ptr %69, align 4
  %70 = load i32, ptr %6, align 4
  %71 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %29, i32 noundef %28, i32 noundef %70, ptr noundef %0, i64 noundef 1, ptr noundef %71, ptr noundef %18, ptr noundef null) #10
  br label %72

72:                                               ; preds = %31, %25, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ci_log(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
  %3 = alloca %struct.va_format, align 8
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %4)
  store ptr %1, ptr %3, align 8
  %5 = getelementptr inbounds %struct.va_format, ptr %3, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ci_log, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #10
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %20 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ci_log, i32 0, i32 7), align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %22, %19
  %23 = phi ptr [ %27, %22 ], [ %20, %19 ]
  %24 = load volatile ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.tracepoint_func, ptr %23, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  call void %24(ptr noundef %26, ptr noundef %0, ptr noundef nonnull %3) #10
  %27 = getelementptr %struct.tracepoint_func, ptr %23, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %22

30:                                               ; preds = %22, %19
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  br label %31

31:                                               ; preds = %30, %8, %2
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ci_log(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_ci_log, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_ci_log, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 65535
  %17 = getelementptr i8, ptr %5, i32 %16
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %13, ptr noundef %17) #10
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ci_log_trb(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %29

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %5, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %5, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %5, i32 0, i32 4
  %19 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %5, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %5, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_ci_log_trb, ptr %5, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 32767
  %27 = and i32 %24, 255
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef %13, ptr noundef %15, ptr noundef %17, ptr noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %26, i32 noundef %27) #10
  %28 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %29

29:                                               ; preds = %8, %3
  %30 = phi i32 [ %28, %8 ], [ %6, %3 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }

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
!12 = !{i64 487579}
!13 = !{i64 2153868114}
!14 = !{i64 2153868252}
