; ModuleID = '/llk/IR/drivers/gpu/drm/msm/msm_atomic_tracepoints.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_atomic_tracepoints.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_msm_atomic_commit_tail_start = type { %struct.trace_entry, i8, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_msm_atomic_commit_tail_finish = type { %struct.trace_entry, i8, i32, [0 x i8] }
%struct.trace_event_raw_msm_atomic_async_commit_start = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_msm_atomic_async_commit_finish = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_msm_atomic_wait_flush_start = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_msm_atomic_wait_flush_finish = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_msm_atomic_flush_commit = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_msm_atomic_commit_tail_start = internal constant [29 x i8] c"msm_atomic_commit_tail_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_atomic_commit_tail_start = dso_local global %struct.static_call_key { ptr @__traceiter_msm_atomic_commit_tail_start }, align 4
@__tracepoint_msm_atomic_commit_tail_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_msm_atomic_commit_tail_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_msm_atomic_commit_tail_start, ptr null, ptr @__traceiter_msm_atomic_commit_tail_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_atomic_commit_tail_start = internal constant ptr @__tracepoint_msm_atomic_commit_tail_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_atomic_commit_tail_finish = internal constant [30 x i8] c"msm_atomic_commit_tail_finish\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_atomic_commit_tail_finish = dso_local global %struct.static_call_key { ptr @__traceiter_msm_atomic_commit_tail_finish }, align 4
@__tracepoint_msm_atomic_commit_tail_finish = dso_local global %struct.tracepoint { ptr @__tpstrtab_msm_atomic_commit_tail_finish, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_msm_atomic_commit_tail_finish, ptr null, ptr @__traceiter_msm_atomic_commit_tail_finish, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_atomic_commit_tail_finish = internal constant ptr @__tracepoint_msm_atomic_commit_tail_finish, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_atomic_async_commit_start = internal constant [30 x i8] c"msm_atomic_async_commit_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_atomic_async_commit_start = dso_local global %struct.static_call_key { ptr @__traceiter_msm_atomic_async_commit_start }, align 4
@__tracepoint_msm_atomic_async_commit_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_msm_atomic_async_commit_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_msm_atomic_async_commit_start, ptr null, ptr @__traceiter_msm_atomic_async_commit_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_atomic_async_commit_start = internal constant ptr @__tracepoint_msm_atomic_async_commit_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_atomic_async_commit_finish = internal constant [31 x i8] c"msm_atomic_async_commit_finish\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_atomic_async_commit_finish = dso_local global %struct.static_call_key { ptr @__traceiter_msm_atomic_async_commit_finish }, align 4
@__tracepoint_msm_atomic_async_commit_finish = dso_local global %struct.tracepoint { ptr @__tpstrtab_msm_atomic_async_commit_finish, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_msm_atomic_async_commit_finish, ptr null, ptr @__traceiter_msm_atomic_async_commit_finish, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_atomic_async_commit_finish = internal constant ptr @__tracepoint_msm_atomic_async_commit_finish, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_atomic_wait_flush_start = internal constant [28 x i8] c"msm_atomic_wait_flush_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_atomic_wait_flush_start = dso_local global %struct.static_call_key { ptr @__traceiter_msm_atomic_wait_flush_start }, align 4
@__tracepoint_msm_atomic_wait_flush_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_msm_atomic_wait_flush_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_msm_atomic_wait_flush_start, ptr null, ptr @__traceiter_msm_atomic_wait_flush_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_atomic_wait_flush_start = internal constant ptr @__tracepoint_msm_atomic_wait_flush_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_atomic_wait_flush_finish = internal constant [29 x i8] c"msm_atomic_wait_flush_finish\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_atomic_wait_flush_finish = dso_local global %struct.static_call_key { ptr @__traceiter_msm_atomic_wait_flush_finish }, align 4
@__tracepoint_msm_atomic_wait_flush_finish = dso_local global %struct.tracepoint { ptr @__tpstrtab_msm_atomic_wait_flush_finish, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_msm_atomic_wait_flush_finish, ptr null, ptr @__traceiter_msm_atomic_wait_flush_finish, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_atomic_wait_flush_finish = internal constant ptr @__tracepoint_msm_atomic_wait_flush_finish, section "__tracepoints_ptrs", align 4
@__tpstrtab_msm_atomic_flush_commit = internal constant [24 x i8] c"msm_atomic_flush_commit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_msm_atomic_flush_commit = dso_local global %struct.static_call_key { ptr @__traceiter_msm_atomic_flush_commit }, align 4
@__tracepoint_msm_atomic_flush_commit = dso_local global %struct.tracepoint { ptr @__tpstrtab_msm_atomic_flush_commit, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_msm_atomic_flush_commit, ptr null, ptr @__traceiter_msm_atomic_flush_commit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_msm_atomic_flush_commit = internal constant ptr @__tracepoint_msm_atomic_flush_commit, section "__tracepoints_ptrs", align 4
@str__drm_msm_atomic__trace_system_name = internal constant [15 x i8] c"drm_msm_atomic\00", align 1
@trace_event_fields_msm_atomic_commit_tail_start = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.1, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_msm_atomic_commit_tail_start = internal global %struct.trace_event_class { ptr @str__drm_msm_atomic__trace_system_name, ptr @trace_event_raw_event_msm_atomic_commit_tail_start, ptr @perf_trace_msm_atomic_commit_tail_start, ptr @trace_event_reg, ptr @trace_event_fields_msm_atomic_commit_tail_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_atomic_commit_tail_start, i64 24), ptr getelementptr (i8, ptr @event_class_msm_atomic_commit_tail_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_atomic_commit_tail_start = internal global %struct.trace_event_functions { ptr @trace_raw_output_msm_atomic_commit_tail_start, ptr null, ptr null, ptr null }, align 4
@print_fmt_msm_atomic_commit_tail_start = internal global [52 x i8] c"\22async=%d crtc_mask=%x\22, REC->async, REC->crtc_mask\00", align 1
@event_msm_atomic_commit_tail_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_atomic_commit_tail_start, %union.anon.0 { ptr @__tracepoint_msm_atomic_commit_tail_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_atomic_commit_tail_start }, ptr @print_fmt_msm_atomic_commit_tail_start, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_msm_atomic_commit_tail_start = internal global ptr @event_msm_atomic_commit_tail_start, section "_ftrace_events", align 4
@trace_event_fields_msm_atomic_commit_tail_finish = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.1, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_msm_atomic_commit_tail_finish = internal global %struct.trace_event_class { ptr @str__drm_msm_atomic__trace_system_name, ptr @trace_event_raw_event_msm_atomic_commit_tail_finish, ptr @perf_trace_msm_atomic_commit_tail_finish, ptr @trace_event_reg, ptr @trace_event_fields_msm_atomic_commit_tail_finish, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_atomic_commit_tail_finish, i64 24), ptr getelementptr (i8, ptr @event_class_msm_atomic_commit_tail_finish, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_atomic_commit_tail_finish = internal global %struct.trace_event_functions { ptr @trace_raw_output_msm_atomic_commit_tail_finish, ptr null, ptr null, ptr null }, align 4
@print_fmt_msm_atomic_commit_tail_finish = internal global [52 x i8] c"\22async=%d crtc_mask=%x\22, REC->async, REC->crtc_mask\00", align 1
@event_msm_atomic_commit_tail_finish = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_atomic_commit_tail_finish, %union.anon.0 { ptr @__tracepoint_msm_atomic_commit_tail_finish }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_atomic_commit_tail_finish }, ptr @print_fmt_msm_atomic_commit_tail_finish, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_msm_atomic_commit_tail_finish = internal global ptr @event_msm_atomic_commit_tail_finish, section "_ftrace_events", align 4
@trace_event_fields_msm_atomic_async_commit_start = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_msm_atomic_async_commit_start = internal global %struct.trace_event_class { ptr @str__drm_msm_atomic__trace_system_name, ptr @trace_event_raw_event_msm_atomic_async_commit_start, ptr @perf_trace_msm_atomic_async_commit_start, ptr @trace_event_reg, ptr @trace_event_fields_msm_atomic_async_commit_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_atomic_async_commit_start, i64 24), ptr getelementptr (i8, ptr @event_class_msm_atomic_async_commit_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_atomic_async_commit_start = internal global %struct.trace_event_functions { ptr @trace_raw_output_msm_atomic_async_commit_start, ptr null, ptr null, ptr null }, align 4
@print_fmt_msm_atomic_async_commit_start = internal global [31 x i8] c"\22crtc_mask=%x\22, REC->crtc_mask\00", align 1
@event_msm_atomic_async_commit_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_atomic_async_commit_start, %union.anon.0 { ptr @__tracepoint_msm_atomic_async_commit_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_atomic_async_commit_start }, ptr @print_fmt_msm_atomic_async_commit_start, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_msm_atomic_async_commit_start = internal global ptr @event_msm_atomic_async_commit_start, section "_ftrace_events", align 4
@trace_event_fields_msm_atomic_async_commit_finish = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_msm_atomic_async_commit_finish = internal global %struct.trace_event_class { ptr @str__drm_msm_atomic__trace_system_name, ptr @trace_event_raw_event_msm_atomic_async_commit_finish, ptr @perf_trace_msm_atomic_async_commit_finish, ptr @trace_event_reg, ptr @trace_event_fields_msm_atomic_async_commit_finish, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_atomic_async_commit_finish, i64 24), ptr getelementptr (i8, ptr @event_class_msm_atomic_async_commit_finish, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_atomic_async_commit_finish = internal global %struct.trace_event_functions { ptr @trace_raw_output_msm_atomic_async_commit_finish, ptr null, ptr null, ptr null }, align 4
@print_fmt_msm_atomic_async_commit_finish = internal global [31 x i8] c"\22crtc_mask=%x\22, REC->crtc_mask\00", align 1
@event_msm_atomic_async_commit_finish = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_atomic_async_commit_finish, %union.anon.0 { ptr @__tracepoint_msm_atomic_async_commit_finish }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_atomic_async_commit_finish }, ptr @print_fmt_msm_atomic_async_commit_finish, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_msm_atomic_async_commit_finish = internal global ptr @event_msm_atomic_async_commit_finish, section "_ftrace_events", align 4
@trace_event_fields_msm_atomic_wait_flush_start = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_msm_atomic_wait_flush_start = internal global %struct.trace_event_class { ptr @str__drm_msm_atomic__trace_system_name, ptr @trace_event_raw_event_msm_atomic_wait_flush_start, ptr @perf_trace_msm_atomic_wait_flush_start, ptr @trace_event_reg, ptr @trace_event_fields_msm_atomic_wait_flush_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_atomic_wait_flush_start, i64 24), ptr getelementptr (i8, ptr @event_class_msm_atomic_wait_flush_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_atomic_wait_flush_start = internal global %struct.trace_event_functions { ptr @trace_raw_output_msm_atomic_wait_flush_start, ptr null, ptr null, ptr null }, align 4
@print_fmt_msm_atomic_wait_flush_start = internal global [31 x i8] c"\22crtc_mask=%x\22, REC->crtc_mask\00", align 1
@event_msm_atomic_wait_flush_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_atomic_wait_flush_start, %union.anon.0 { ptr @__tracepoint_msm_atomic_wait_flush_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_atomic_wait_flush_start }, ptr @print_fmt_msm_atomic_wait_flush_start, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_msm_atomic_wait_flush_start = internal global ptr @event_msm_atomic_wait_flush_start, section "_ftrace_events", align 4
@trace_event_fields_msm_atomic_wait_flush_finish = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_msm_atomic_wait_flush_finish = internal global %struct.trace_event_class { ptr @str__drm_msm_atomic__trace_system_name, ptr @trace_event_raw_event_msm_atomic_wait_flush_finish, ptr @perf_trace_msm_atomic_wait_flush_finish, ptr @trace_event_reg, ptr @trace_event_fields_msm_atomic_wait_flush_finish, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_atomic_wait_flush_finish, i64 24), ptr getelementptr (i8, ptr @event_class_msm_atomic_wait_flush_finish, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_atomic_wait_flush_finish = internal global %struct.trace_event_functions { ptr @trace_raw_output_msm_atomic_wait_flush_finish, ptr null, ptr null, ptr null }, align 4
@print_fmt_msm_atomic_wait_flush_finish = internal global [31 x i8] c"\22crtc_mask=%x\22, REC->crtc_mask\00", align 1
@event_msm_atomic_wait_flush_finish = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_atomic_wait_flush_finish, %union.anon.0 { ptr @__tracepoint_msm_atomic_wait_flush_finish }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_atomic_wait_flush_finish }, ptr @print_fmt_msm_atomic_wait_flush_finish, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_msm_atomic_wait_flush_finish = internal global ptr @event_msm_atomic_wait_flush_finish, section "_ftrace_events", align 4
@trace_event_fields_msm_atomic_flush_commit = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_msm_atomic_flush_commit = internal global %struct.trace_event_class { ptr @str__drm_msm_atomic__trace_system_name, ptr @trace_event_raw_event_msm_atomic_flush_commit, ptr @perf_trace_msm_atomic_flush_commit, ptr @trace_event_reg, ptr @trace_event_fields_msm_atomic_flush_commit, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_msm_atomic_flush_commit, i64 24), ptr getelementptr (i8, ptr @event_class_msm_atomic_flush_commit, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_msm_atomic_flush_commit = internal global %struct.trace_event_functions { ptr @trace_raw_output_msm_atomic_flush_commit, ptr null, ptr null, ptr null }, align 4
@print_fmt_msm_atomic_flush_commit = internal global [31 x i8] c"\22crtc_mask=%x\22, REC->crtc_mask\00", align 1
@event_msm_atomic_flush_commit = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_msm_atomic_flush_commit, %union.anon.0 { ptr @__tracepoint_msm_atomic_flush_commit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_msm_atomic_flush_commit }, ptr @print_fmt_msm_atomic_flush_commit, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_msm_atomic_flush_commit = internal global ptr @event_msm_atomic_flush_commit, section "_ftrace_events", align 4
@.str = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"crtc_mask\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"async=%d crtc_mask=%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"crtc_mask=%x\0A\00", align 1
@llvm.compiler.used = appending global [35 x ptr] [ptr @__event_msm_atomic_async_commit_finish, ptr @__event_msm_atomic_async_commit_start, ptr @__event_msm_atomic_commit_tail_finish, ptr @__event_msm_atomic_commit_tail_start, ptr @__event_msm_atomic_flush_commit, ptr @__event_msm_atomic_wait_flush_finish, ptr @__event_msm_atomic_wait_flush_start, ptr @__tracepoint_msm_atomic_async_commit_finish, ptr @__tracepoint_msm_atomic_async_commit_start, ptr @__tracepoint_msm_atomic_commit_tail_finish, ptr @__tracepoint_msm_atomic_commit_tail_start, ptr @__tracepoint_msm_atomic_flush_commit, ptr @__tracepoint_msm_atomic_wait_flush_finish, ptr @__tracepoint_msm_atomic_wait_flush_start, ptr @__tracepoint_ptr_msm_atomic_async_commit_finish, ptr @__tracepoint_ptr_msm_atomic_async_commit_start, ptr @__tracepoint_ptr_msm_atomic_commit_tail_finish, ptr @__tracepoint_ptr_msm_atomic_commit_tail_start, ptr @__tracepoint_ptr_msm_atomic_flush_commit, ptr @__tracepoint_ptr_msm_atomic_wait_flush_finish, ptr @__tracepoint_ptr_msm_atomic_wait_flush_start, ptr @event_class_msm_atomic_async_commit_finish, ptr @event_class_msm_atomic_async_commit_start, ptr @event_class_msm_atomic_commit_tail_finish, ptr @event_class_msm_atomic_commit_tail_start, ptr @event_class_msm_atomic_flush_commit, ptr @event_class_msm_atomic_wait_flush_finish, ptr @event_class_msm_atomic_wait_flush_start, ptr @event_msm_atomic_async_commit_finish, ptr @event_msm_atomic_async_commit_start, ptr @event_msm_atomic_commit_tail_finish, ptr @event_msm_atomic_commit_tail_start, ptr @event_msm_atomic_flush_commit, ptr @event_msm_atomic_wait_flush_finish, ptr @event_msm_atomic_wait_flush_start], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_atomic_commit_tail_start(ptr nocapture readnone %0, i1 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_commit_tail_start, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i1 noundef zeroext %1, i32 noundef %2) #6
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
define dso_local i32 @__traceiter_msm_atomic_commit_tail_finish(ptr nocapture readnone %0, i1 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_commit_tail_finish, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i1 noundef zeroext %1, i32 noundef %2) #6
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_atomic_async_commit_start(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_async_commit_start, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #6
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_atomic_async_commit_finish(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_async_commit_finish, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #6
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_atomic_wait_flush_start(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_wait_flush_start, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #6
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_atomic_wait_flush_finish(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_wait_flush_finish, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #6
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_msm_atomic_flush_commit(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_atomic_flush_commit, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #6
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_atomic_commit_tail_start(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  %5 = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %3
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %14, label %21, label %15

15:                                               ; preds = %13, %10, %3
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_commit_tail_start, ptr %16, i32 0, i32 1
  store i8 %5, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_commit_tail_start, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #6
  br label %21

21:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_msm_atomic_commit_tail_start(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !9
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

18:                                               ; preds = %3
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %39, label %21

21:                                               ; preds = %18, %3
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %4, align 4
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
  %35 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_commit_tail_start, ptr %22, i32 0, i32 1
  store i8 %6, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_commit_tail_start, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = load i32, ptr %5, align 4
  %38 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %37, ptr noundef %0, i64 noundef 1, ptr noundef %38, ptr noundef %14, ptr noundef null) #6
  br label %39

39:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_atomic_commit_tail_finish(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  %5 = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %3
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %14, label %21, label %15

15:                                               ; preds = %13, %10, %3
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_commit_tail_finish, ptr %16, i32 0, i32 1
  store i8 %5, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_commit_tail_finish, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #6
  br label %21

21:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_msm_atomic_commit_tail_finish(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !9
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

18:                                               ; preds = %3
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %39, label %21

21:                                               ; preds = %18, %3
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %4, align 4
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
  %35 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_commit_tail_finish, ptr %22, i32 0, i32 1
  store i8 %6, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_commit_tail_finish, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = load i32, ptr %5, align 4
  %38 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %37, ptr noundef %0, i64 noundef 1, ptr noundef %38, ptr noundef %14, ptr noundef null) #6
  br label %39

39:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_atomic_async_commit_start(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_async_commit_start, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #6
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_msm_atomic_async_commit_start(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #6
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
  br i1 %18, label %36, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #6
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #6
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_async_commit_start, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #6
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_atomic_async_commit_finish(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_async_commit_finish, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #6
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_msm_atomic_async_commit_finish(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #6
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
  br i1 %18, label %36, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #6
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #6
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_async_commit_finish, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #6
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_atomic_wait_flush_start(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_wait_flush_start, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #6
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_msm_atomic_wait_flush_start(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #6
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
  br i1 %18, label %36, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #6
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #6
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_wait_flush_start, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #6
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_atomic_wait_flush_finish(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_wait_flush_finish, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #6
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_msm_atomic_wait_flush_finish(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #6
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
  br i1 %18, label %36, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #6
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #6
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_wait_flush_finish, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #6
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_msm_atomic_flush_commit(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #6
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_flush_commit, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #6
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_msm_atomic_flush_commit(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #6
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
  br i1 %18, label %36, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #6
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #6
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #6
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_flush_commit, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #6
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
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
define internal i32 @trace_raw_output_msm_atomic_commit_tail_start(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_commit_tail_start, ptr %5, i32 0, i32 1
  %11 = load i8, ptr %10, align 4, !range !13
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_commit_tail_start, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %12, i32 noundef %14) #6
  %15 = tail call i32 @trace_handle_return(ptr noundef %9) #6
  br label %16

16:                                               ; preds = %8, %3
  %17 = phi i32 [ %15, %8 ], [ %6, %3 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_atomic_commit_tail_finish(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_commit_tail_finish, ptr %5, i32 0, i32 1
  %11 = load i8, ptr %10, align 4, !range !13
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_commit_tail_finish, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %12, i32 noundef %14) #6
  %15 = tail call i32 @trace_handle_return(ptr noundef %9) #6
  br label %16

16:                                               ; preds = %8, %3
  %17 = phi i32 [ %15, %8 ], [ %6, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_atomic_async_commit_start(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_async_commit_start, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %11) #6
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #6
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_atomic_async_commit_finish(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_async_commit_finish, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %11) #6
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #6
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_atomic_wait_flush_start(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_wait_flush_start, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %11) #6
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #6
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_atomic_wait_flush_finish(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_wait_flush_finish, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %11) #6
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #6
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_msm_atomic_flush_commit(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_msm_atomic_flush_commit, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %11) #6
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #6
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
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
!12 = !{i64 487385}
!13 = !{i8 0, i8 2}
