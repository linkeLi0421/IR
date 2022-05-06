; ModuleID = '/llk/IR/sound/hda/trace.c_pt.bc'
source_filename = "../sound/hda/trace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.90 }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.92, %struct.trace_event, ptr, ptr, %union.anon.93, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.92 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.93 = type { ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_hda_send_cmd = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
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
%struct.trace_event_raw_hda_get_response = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_hda_unsol_event = type { %struct.trace_entry, i32, [0 x i8] }
%struct.hdac_stream = type { ptr, %struct.snd_dma_buffer, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i8, i64, i32, i32, %struct.timecounter, %struct.cyclecounter, i32, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.trace_event_raw_hdac_stream = type { %struct.trace_entry, i8, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_hda_send_cmd = internal constant [13 x i8] c"hda_send_cmd\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hda_send_cmd = dso_local global %struct.static_call_key { ptr @__traceiter_hda_send_cmd }, align 4
@__tracepoint_hda_send_cmd = dso_local global %struct.tracepoint { ptr @__tpstrtab_hda_send_cmd, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_hda_send_cmd, ptr null, ptr @__traceiter_hda_send_cmd, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hda_send_cmd = internal constant ptr @__tracepoint_hda_send_cmd, section "__tracepoints_ptrs", align 4
@__tpstrtab_hda_get_response = internal constant [17 x i8] c"hda_get_response\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hda_get_response = dso_local global %struct.static_call_key { ptr @__traceiter_hda_get_response }, align 4
@__tracepoint_hda_get_response = dso_local global %struct.tracepoint { ptr @__tpstrtab_hda_get_response, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_hda_get_response, ptr null, ptr @__traceiter_hda_get_response, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hda_get_response = internal constant ptr @__tracepoint_hda_get_response, section "__tracepoints_ptrs", align 4
@__tpstrtab_hda_unsol_event = internal constant [16 x i8] c"hda_unsol_event\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hda_unsol_event = dso_local global %struct.static_call_key { ptr @__traceiter_hda_unsol_event }, align 4
@__tracepoint_hda_unsol_event = dso_local global %struct.tracepoint { ptr @__tpstrtab_hda_unsol_event, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_hda_unsol_event, ptr null, ptr @__traceiter_hda_unsol_event, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hda_unsol_event = internal constant ptr @__tracepoint_hda_unsol_event, section "__tracepoints_ptrs", align 4
@__tpstrtab_snd_hdac_stream_start = internal constant [22 x i8] c"snd_hdac_stream_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_snd_hdac_stream_start = dso_local global %struct.static_call_key { ptr @__traceiter_snd_hdac_stream_start }, align 4
@__tracepoint_snd_hdac_stream_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_snd_hdac_stream_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_snd_hdac_stream_start, ptr null, ptr @__traceiter_snd_hdac_stream_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_snd_hdac_stream_start = internal constant ptr @__tracepoint_snd_hdac_stream_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_snd_hdac_stream_stop = internal constant [21 x i8] c"snd_hdac_stream_stop\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_snd_hdac_stream_stop = dso_local global %struct.static_call_key { ptr @__traceiter_snd_hdac_stream_stop }, align 4
@__tracepoint_snd_hdac_stream_stop = dso_local global %struct.tracepoint { ptr @__tpstrtab_snd_hdac_stream_stop, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_snd_hdac_stream_stop, ptr null, ptr @__traceiter_snd_hdac_stream_stop, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_snd_hdac_stream_stop = internal constant ptr @__tracepoint_snd_hdac_stream_stop, section "__tracepoints_ptrs", align 4
@str__hda__trace_system_name = internal constant [4 x i8] c"hda\00", align 1
@trace_event_fields_hda_send_cmd = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.90 { %struct.anon.91 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_hda_send_cmd = internal global %struct.trace_event_class { ptr @str__hda__trace_system_name, ptr @trace_event_raw_event_hda_send_cmd, ptr @perf_trace_hda_send_cmd, ptr @trace_event_reg, ptr @trace_event_fields_hda_send_cmd, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_hda_send_cmd, i64 24), ptr getelementptr (i8, ptr @event_class_hda_send_cmd, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_hda_send_cmd = internal global %struct.trace_event_functions { ptr @trace_raw_output_hda_send_cmd, ptr null, ptr null, ptr null }, align 4
@print_fmt_hda_send_cmd = internal global [21 x i8] c"\22%s\22, __get_str(msg)\00", align 1
@event_hda_send_cmd = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hda_send_cmd, %union.anon.92 { ptr @__tracepoint_hda_send_cmd }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hda_send_cmd }, ptr @print_fmt_hda_send_cmd, ptr null, %union.anon.93 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_hda_send_cmd = internal global ptr @event_hda_send_cmd, section "_ftrace_events", align 4
@trace_event_fields_hda_get_response = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.90 { %struct.anon.91 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_hda_get_response = internal global %struct.trace_event_class { ptr @str__hda__trace_system_name, ptr @trace_event_raw_event_hda_get_response, ptr @perf_trace_hda_get_response, ptr @trace_event_reg, ptr @trace_event_fields_hda_get_response, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_hda_get_response, i64 24), ptr getelementptr (i8, ptr @event_class_hda_get_response, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_hda_get_response = internal global %struct.trace_event_functions { ptr @trace_raw_output_hda_get_response, ptr null, ptr null, ptr null }, align 4
@print_fmt_hda_get_response = internal global [21 x i8] c"\22%s\22, __get_str(msg)\00", align 1
@event_hda_get_response = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hda_get_response, %union.anon.92 { ptr @__tracepoint_hda_get_response }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hda_get_response }, ptr @print_fmt_hda_get_response, ptr null, %union.anon.93 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_hda_get_response = internal global ptr @event_hda_get_response, section "_ftrace_events", align 4
@trace_event_fields_hda_unsol_event = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.90 { %struct.anon.91 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_hda_unsol_event = internal global %struct.trace_event_class { ptr @str__hda__trace_system_name, ptr @trace_event_raw_event_hda_unsol_event, ptr @perf_trace_hda_unsol_event, ptr @trace_event_reg, ptr @trace_event_fields_hda_unsol_event, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_hda_unsol_event, i64 24), ptr getelementptr (i8, ptr @event_class_hda_unsol_event, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_hda_unsol_event = internal global %struct.trace_event_functions { ptr @trace_raw_output_hda_unsol_event, ptr null, ptr null, ptr null }, align 4
@print_fmt_hda_unsol_event = internal global [21 x i8] c"\22%s\22, __get_str(msg)\00", align 1
@event_hda_unsol_event = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hda_unsol_event, %union.anon.92 { ptr @__tracepoint_hda_unsol_event }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hda_unsol_event }, ptr @print_fmt_hda_unsol_event, ptr null, %union.anon.93 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_hda_unsol_event = internal global ptr @event_hda_unsol_event, section "_ftrace_events", align 4
@trace_event_fields_hdac_stream = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.90 { %struct.anon.91 { ptr @.str.6, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_hdac_stream = internal global %struct.trace_event_class { ptr @str__hda__trace_system_name, ptr @trace_event_raw_event_hdac_stream, ptr @perf_trace_hdac_stream, ptr @trace_event_reg, ptr @trace_event_fields_hdac_stream, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_hdac_stream, i64 24), ptr getelementptr (i8, ptr @event_class_hdac_stream, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_hdac_stream = internal global %struct.trace_event_functions { ptr @trace_raw_output_hdac_stream, ptr null, ptr null, ptr null }, align 4
@print_fmt_hdac_stream = internal global [34 x i8] c"\22stream_tag: %d\22, REC->stream_tag\00", align 1
@event_snd_hdac_stream_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hdac_stream, %union.anon.92 { ptr @__tracepoint_snd_hdac_stream_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hdac_stream }, ptr @print_fmt_hdac_stream, ptr null, %union.anon.93 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_snd_hdac_stream_start = internal global ptr @event_snd_hdac_stream_start, section "_ftrace_events", align 4
@event_snd_hdac_stream_stop = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hdac_stream, %union.anon.92 { ptr @__tracepoint_snd_hdac_stream_stop }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hdac_stream }, ptr @print_fmt_hdac_stream, ptr null, %union.anon.93 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_snd_hdac_stream_stop = internal global ptr @event_snd_hdac_stream_stop, section "_ftrace_events", align 4
@.str = private unnamed_addr constant [19 x i8] c"[%s:%d] val=0x%08x\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"[%s:%d] res=0x%08x, res_ex=0x%08x\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"stream_tag\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"stream_tag: %d\0A\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @__event_hda_get_response, ptr @__event_hda_send_cmd, ptr @__event_hda_unsol_event, ptr @__event_snd_hdac_stream_start, ptr @__event_snd_hdac_stream_stop, ptr @__tracepoint_hda_get_response, ptr @__tracepoint_hda_send_cmd, ptr @__tracepoint_hda_unsol_event, ptr @__tracepoint_ptr_hda_get_response, ptr @__tracepoint_ptr_hda_send_cmd, ptr @__tracepoint_ptr_hda_unsol_event, ptr @__tracepoint_ptr_snd_hdac_stream_start, ptr @__tracepoint_ptr_snd_hdac_stream_stop, ptr @__tracepoint_snd_hdac_stream_start, ptr @__tracepoint_snd_hdac_stream_stop, ptr @event_class_hda_get_response, ptr @event_class_hda_send_cmd, ptr @event_class_hda_unsol_event, ptr @event_class_hdac_stream, ptr @event_hda_get_response, ptr @event_hda_send_cmd, ptr @event_hda_unsol_event, ptr @event_snd_hdac_stream_start, ptr @event_snd_hdac_stream_stop], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_hda_send_cmd(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hda_send_cmd, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #7
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
define dso_local i32 @__traceiter_hda_get_response(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hda_get_response, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #7
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_hda_unsol_event(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hda_unsol_event, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #7
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_snd_hdac_stream_start(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_hdac_stream_start, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #7
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_snd_hdac_stream_stop(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_hdac_stream_stop, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #7
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_hda_send_cmd(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #7
  br i1 %13, label %30, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 512) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_hda_send_cmd, ptr %15, i32 0, i32 1
  store i32 32768012, ptr %18, align 4
  %19 = getelementptr i8, ptr %15, i32 12
  %20 = load ptr, ptr %1, align 4
  %21 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load ptr, ptr %20, align 4
  br label %26

26:                                               ; preds = %24, %17
  %27 = phi ptr [ %25, %24 ], [ %22, %17 ]
  %28 = lshr i32 %2, 28
  %29 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %19, i32 noundef 500, ptr noundef nonnull @.str, ptr noundef %27, i32 noundef %28, i32 noundef %2)
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #7
  br label %30

30:                                               ; preds = %26, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_hda_send_cmd(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #5, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %48, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 516, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %48, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #7
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #7
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_hda_send_cmd, ptr %21, i32 0, i32 1
  store i32 32768012, ptr %34, align 4
  %35 = getelementptr i8, ptr %21, i32 12
  %36 = load ptr, ptr %1, align 4
  %37 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %23
  %41 = load ptr, ptr %36, align 4
  br label %42

42:                                               ; preds = %40, %23
  %43 = phi ptr [ %41, %40 ], [ %38, %23 ]
  %44 = lshr i32 %2, 28
  %45 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %35, i32 noundef 500, ptr noundef nonnull @.str, ptr noundef %43, i32 noundef %44, i32 noundef %2)
  %46 = load i32, ptr %5, align 4
  %47 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 516, i32 noundef %46, ptr noundef %0, i64 noundef 1, ptr noundef %47, ptr noundef %13, ptr noundef null) #7
  br label %48

48:                                               ; preds = %42, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_hda_get_response(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #7
  br i1 %14, label %30, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 512) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_hda_get_response, ptr %16, i32 0, i32 1
  store i32 32768012, ptr %19, align 4
  %20 = getelementptr i8, ptr %16, i32 12
  %21 = load ptr, ptr %1, align 4
  %22 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load ptr, ptr %21, align 4
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi ptr [ %26, %25 ], [ %23, %18 ]
  %29 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %20, i32 noundef 500, ptr noundef nonnull @.str, ptr noundef %28, i32 noundef %2, i32 noundef %3)
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #7
  br label %30

30:                                               ; preds = %27, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_hda_get_response(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #5, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %48, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 516, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %48, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #7
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #7
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_hda_get_response, ptr %22, i32 0, i32 1
  store i32 32768012, ptr %35, align 4
  %36 = getelementptr i8, ptr %22, i32 12
  %37 = load ptr, ptr %1, align 4
  %38 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %24
  %42 = load ptr, ptr %37, align 4
  br label %43

43:                                               ; preds = %41, %24
  %44 = phi ptr [ %42, %41 ], [ %39, %24 ]
  %45 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %36, i32 noundef 500, ptr noundef nonnull @.str, ptr noundef %44, i32 noundef %2, i32 noundef %3)
  %46 = load i32, ptr %6, align 4
  %47 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 516, i32 noundef %46, ptr noundef %0, i64 noundef 1, ptr noundef %47, ptr noundef %14, ptr noundef null) #7
  br label %48

48:                                               ; preds = %43, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_hda_unsol_event(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #7
  br i1 %14, label %31, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 512) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_hda_unsol_event, ptr %16, i32 0, i32 1
  store i32 32768012, ptr %19, align 4
  %20 = getelementptr i8, ptr %16, i32 12
  %21 = load ptr, ptr %1, align 4
  %22 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load ptr, ptr %21, align 4
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi ptr [ %26, %25 ], [ %23, %18 ]
  %29 = and i32 %3, 15
  %30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %20, i32 noundef 500, ptr noundef nonnull @.str.4, ptr noundef %28, i32 noundef %29, i32 noundef %2, i32 noundef %3)
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #7
  br label %31

31:                                               ; preds = %27, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_hda_unsol_event(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #5, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %49, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 516, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #7
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #7
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_hda_unsol_event, ptr %22, i32 0, i32 1
  store i32 32768012, ptr %35, align 4
  %36 = getelementptr i8, ptr %22, i32 12
  %37 = load ptr, ptr %1, align 4
  %38 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %24
  %42 = load ptr, ptr %37, align 4
  br label %43

43:                                               ; preds = %41, %24
  %44 = phi ptr [ %42, %41 ], [ %39, %24 ]
  %45 = and i32 %3, 15
  %46 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %36, i32 noundef 500, ptr noundef nonnull @.str.4, ptr noundef %44, i32 noundef %45, i32 noundef %2, i32 noundef %3)
  %47 = load i32, ptr %6, align 4
  %48 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 516, i32 noundef %47, ptr noundef %0, i64 noundef 1, ptr noundef %48, ptr noundef %14, ptr noundef null) #7
  br label %49

49:                                               ; preds = %43, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_hdac_stream(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #7
  br i1 %13, label %21, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 12) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.hdac_stream, ptr %2, i32 0, i32 13
  %19 = load i8, ptr %18, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_hdac_stream, ptr %15, i32 0, i32 1
  store i8 %19, ptr %20, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #7
  br label %21

21:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_hdac_stream(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #5, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #7
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #7
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.hdac_stream, ptr %2, i32 0, i32 13
  %35 = load i8, ptr %34, align 8
  %36 = getelementptr inbounds %struct.trace_event_raw_hdac_stream, ptr %21, i32 0, i32 1
  store i8 %35, ptr %36, align 4
  %37 = load i32, ptr %5, align 4
  %38 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 12, i32 noundef %37, ptr noundef %0, i64 noundef 1, ptr noundef %38, ptr noundef %13, ptr noundef null) #7
  br label %39

39:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_hda_send_cmd(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #7
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_hda_send_cmd, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %13) #7
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #7
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_hda_get_response(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #7
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_hda_get_response, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %13) #7
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #7
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_hda_unsol_event(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #7
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_hda_unsol_event, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %13) #7
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #7
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_hdac_stream(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #7
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_hdac_stream, ptr %5, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %12) #7
  %13 = tail call i32 @trace_handle_return(ptr noundef %9) #7
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ %6, %3 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }

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
!12 = !{i64 486957}
