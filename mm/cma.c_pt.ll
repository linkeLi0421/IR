; ModuleID = '/llk/IR/mm/cma.c_pt.bc'
source_filename = "../mm/cma.c"
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
%struct.cma = type { i32, i32, ptr, i32, %struct.spinlock, [64 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, %struct.zone_padding, %struct.lruvec, i32, [56 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [28 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.cpumask = type { [1 x i32] }
%struct.vm_event_state = type { [71 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_cma_alloc_class = type { %struct.trace_entry, i32, i32, ptr, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_cma_release = type { %struct.trace_entry, i32, i32, ptr, i32, [0 x i8] }
%struct.trace_event_raw_cma_alloc_start = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon, %union.anon.60, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.60 = type { %struct.atomic_t }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_cma_release = internal constant [12 x i8] c"cma_release\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cma_release = dso_local global %struct.static_call_key { ptr @__traceiter_cma_release }, align 4
@__tracepoint_cma_release = dso_local global %struct.tracepoint { ptr @__tpstrtab_cma_release, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cma_release, ptr null, ptr @__traceiter_cma_release, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cma_release = internal constant ptr @__tracepoint_cma_release, section "__tracepoints_ptrs", align 4
@__tpstrtab_cma_alloc_start = internal constant [16 x i8] c"cma_alloc_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cma_alloc_start = dso_local global %struct.static_call_key { ptr @__traceiter_cma_alloc_start }, align 4
@__tracepoint_cma_alloc_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_cma_alloc_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cma_alloc_start, ptr null, ptr @__traceiter_cma_alloc_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cma_alloc_start = internal constant ptr @__tracepoint_cma_alloc_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_cma_alloc_finish = internal constant [17 x i8] c"cma_alloc_finish\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cma_alloc_finish = dso_local global %struct.static_call_key { ptr @__traceiter_cma_alloc_finish }, align 4
@__tracepoint_cma_alloc_finish = dso_local global %struct.tracepoint { ptr @__tpstrtab_cma_alloc_finish, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cma_alloc_finish, ptr null, ptr @__traceiter_cma_alloc_finish, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cma_alloc_finish = internal constant ptr @__tracepoint_cma_alloc_finish, section "__tracepoints_ptrs", align 4
@__tpstrtab_cma_alloc_busy_retry = internal constant [21 x i8] c"cma_alloc_busy_retry\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cma_alloc_busy_retry = dso_local global %struct.static_call_key { ptr @__traceiter_cma_alloc_busy_retry }, align 4
@__tracepoint_cma_alloc_busy_retry = dso_local global %struct.tracepoint { ptr @__tpstrtab_cma_alloc_busy_retry, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cma_alloc_busy_retry, ptr null, ptr @__traceiter_cma_alloc_busy_retry, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cma_alloc_busy_retry = internal constant ptr @__tracepoint_cma_alloc_busy_retry, section "__tracepoints_ptrs", align 4
@str__cma__trace_system_name = internal constant [4 x i8] c"cma\00", align 1
@trace_event_fields_cma_alloc_class = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.89 { %struct.anon.90 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.89 { %struct.anon.90 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.89 { %struct.anon.90 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.89 { %struct.anon.90 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.89 { %struct.anon.90 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_cma_alloc_class = internal global %struct.trace_event_class { ptr @str__cma__trace_system_name, ptr @trace_event_raw_event_cma_alloc_class, ptr @perf_trace_cma_alloc_class, ptr @trace_event_reg, ptr @trace_event_fields_cma_alloc_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cma_alloc_class, i64 24), ptr getelementptr (i8, ptr @event_class_cma_alloc_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_fields_cma_release = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.89 { %struct.anon.90 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.89 { %struct.anon.90 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.89 { %struct.anon.90 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.89 { %struct.anon.90 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_cma_release = internal global %struct.trace_event_class { ptr @str__cma__trace_system_name, ptr @trace_event_raw_event_cma_release, ptr @perf_trace_cma_release, ptr @trace_event_reg, ptr @trace_event_fields_cma_release, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cma_release, i64 24), ptr getelementptr (i8, ptr @event_class_cma_release, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cma_release = internal global %struct.trace_event_functions { ptr @trace_raw_output_cma_release, ptr null, ptr null, ptr null }, align 4
@print_fmt_cma_release = internal global [88 x i8] c"\22name=%s pfn=0x%lx page=%p count=%lu\22, __get_str(name), REC->pfn, REC->page, REC->count\00", align 1
@event_cma_release = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cma_release, %union.anon.91 { ptr @__tracepoint_cma_release }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cma_release }, ptr @print_fmt_cma_release, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cma_release = internal global ptr @event_cma_release, section "_ftrace_events", align 4
@trace_event_fields_cma_alloc_start = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.89 { %struct.anon.90 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.89 { %struct.anon.90 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.89 { %struct.anon.90 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_cma_alloc_start = internal global %struct.trace_event_class { ptr @str__cma__trace_system_name, ptr @trace_event_raw_event_cma_alloc_start, ptr @perf_trace_cma_alloc_start, ptr @trace_event_reg, ptr @trace_event_fields_cma_alloc_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cma_alloc_start, i64 24), ptr getelementptr (i8, ptr @event_class_cma_alloc_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cma_alloc_start = internal global %struct.trace_event_functions { ptr @trace_raw_output_cma_alloc_start, ptr null, ptr null, ptr null }, align 4
@print_fmt_cma_alloc_start = internal global [70 x i8] c"\22name=%s count=%lu align=%u\22, __get_str(name), REC->count, REC->align\00", align 1
@event_cma_alloc_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cma_alloc_start, %union.anon.91 { ptr @__tracepoint_cma_alloc_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cma_alloc_start }, ptr @print_fmt_cma_alloc_start, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cma_alloc_start = internal global ptr @event_cma_alloc_start, section "_ftrace_events", align 4
@trace_event_type_funcs_cma_alloc_class = internal global %struct.trace_event_functions { ptr @trace_raw_output_cma_alloc_class, ptr null, ptr null, ptr null }, align 4
@print_fmt_cma_alloc_class = internal global [109 x i8] c"\22name=%s pfn=0x%lx page=%p count=%lu align=%u\22, __get_str(name), REC->pfn, REC->page, REC->count, REC->align\00", align 1
@event_cma_alloc_finish = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cma_alloc_class, %union.anon.91 { ptr @__tracepoint_cma_alloc_finish }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cma_alloc_class }, ptr @print_fmt_cma_alloc_class, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cma_alloc_finish = internal global ptr @event_cma_alloc_finish, section "_ftrace_events", align 4
@event_cma_alloc_busy_retry = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cma_alloc_class, %union.anon.91 { ptr @__tracepoint_cma_alloc_busy_retry }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cma_alloc_class }, ptr @print_fmt_cma_alloc_class, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cma_alloc_busy_retry = internal global ptr @event_cma_alloc_busy_retry, section "_ftrace_events", align 4
@__initcall__kmod_cma__271_151_cma_init_reserved_areas1 = internal global ptr @cma_init_reserved_areas, section ".initcall1.init", align 4
@cma_area_count = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"\013cma: Not enough slots for CMA reserved regions!\0A\00", align 1
@cma_areas = dso_local global [8 x %struct.cma] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"cma%d\0A\00", align 1
@totalcma_pages = external dso_local local_unnamed_addr global i32, align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"\013cma: Region at %pa must be aligned to %pa bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"\013cma: Region at %pa defined on low/high memory boundary (%pa)\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"\013cma: Size (%pa) of region at %pa exceeds limit (%pa)\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"\016cma: Reserved %ld MiB at %pa\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"\013cma: Failed to reserve %ld MiB\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@cma_alloc._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.cma_alloc = private unnamed_addr constant [10 x i8] c"cma_alloc\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"\013cma: %s: %s: alloc failed, req-size: %lu pages, ret: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"pfn\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"const struct page *\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"page\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"name=%s pfn=0x%lx page=%p count=%lu\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"name=%s count=%lu align=%u\0A\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"name=%s pfn=0x%lx page=%p count=%lu align=%u\0A\00", align 1
@cma_activate_area.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"mm/cma.c\00", align 1
@cma_activate_area.__already_done.22 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"\013cma: CMA area %s could not be activated\0A\00", align 1
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@llvm.compiler.used = appending global [20 x ptr] [ptr @__event_cma_alloc_busy_retry, ptr @__event_cma_alloc_finish, ptr @__event_cma_alloc_start, ptr @__event_cma_release, ptr @__initcall__kmod_cma__271_151_cma_init_reserved_areas1, ptr @__tracepoint_cma_alloc_busy_retry, ptr @__tracepoint_cma_alloc_finish, ptr @__tracepoint_cma_alloc_start, ptr @__tracepoint_cma_release, ptr @__tracepoint_ptr_cma_alloc_busy_retry, ptr @__tracepoint_ptr_cma_alloc_finish, ptr @__tracepoint_ptr_cma_alloc_start, ptr @__tracepoint_ptr_cma_release, ptr @event_class_cma_alloc_class, ptr @event_class_cma_alloc_start, ptr @event_class_cma_release, ptr @event_cma_alloc_busy_retry, ptr @event_cma_alloc_finish, ptr @event_cma_alloc_start, ptr @event_cma_release], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cma_release(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cma_release, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #15
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cma_alloc_start(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cma_alloc_start, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #15
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cma_alloc_finish(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cma_alloc_finish, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #15
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cma_alloc_busy_retry(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cma_alloc_busy_retry, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #15
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cma_alloc_class(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
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
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #15
  br i1 %16, label %34, label %17

17:                                               ; preds = %15, %12, %6
  %18 = icmp eq ptr %1, null
  %19 = select i1 %18, ptr @.str.8, ptr %1
  %20 = tail call i32 @strlen(ptr noundef %19) #15
  %21 = add i32 %20, 29
  %22 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef %21) #15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %17
  %25 = shl i32 %20, 16
  %26 = add i32 %25, 65564
  %27 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %22, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  %28 = getelementptr i8, ptr %22, i32 28
  %29 = call ptr @strcpy(ptr noundef %28, ptr noundef %19)
  %30 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %22, i32 0, i32 2
  store i32 %2, ptr %30, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %22, i32 0, i32 3
  store ptr %3, ptr %31, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %22, i32 0, i32 4
  store i32 %4, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %22, i32 0, i32 5
  store i32 %5, ptr %33, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #15
  br label %34

34:                                               ; preds = %24, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_cma_alloc_class(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = icmp eq ptr %1, null
  %10 = select i1 %9, ptr @.str.8, ptr %1
  %11 = tail call i32 @strlen(ptr noundef %10) #15
  %12 = shl i32 %11, 16
  %13 = add i32 %12, 65564
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %18) #12, !srcloc !12
  %20 = add i32 %19, %16
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load volatile ptr, ptr %21, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %54, label %28

28:                                               ; preds = %25, %6
  %29 = add i32 %11, 40
  %30 = and i32 %29, -8
  %31 = add i32 %30, -4
  %32 = call ptr @perf_trace_buf_alloc(i32 noundef %31, ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %7, align 4
  %36 = call ptr @llvm.returnaddress(i32 0) #15
  %37 = ptrtoint ptr %36 to i32
  %38 = getelementptr [18 x i32], ptr %35, i32 0, i32 15
  store i32 %37, ptr %38, align 4
  %39 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %40 = ptrtoint ptr %39 to i32
  %41 = getelementptr [18 x i32], ptr %35, i32 0, i32 11
  store i32 %40, ptr %41, align 4
  %42 = call i32 @llvm.read_register.i32(metadata !0) #15
  %43 = getelementptr [18 x i32], ptr %35, i32 0, i32 13
  store i32 %42, ptr %43, align 4
  %44 = getelementptr [18 x i32], ptr %35, i32 0, i32 16
  store i32 19, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %32, i32 0, i32 1
  store i32 %13, ptr %45, align 4
  %46 = getelementptr i8, ptr %32, i32 28
  %47 = call ptr @strcpy(ptr noundef %46, ptr noundef %10)
  %48 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %32, i32 0, i32 2
  store i32 %2, ptr %48, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %32, i32 0, i32 3
  store ptr %3, ptr %49, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %32, i32 0, i32 4
  store i32 %4, ptr %50, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %32, i32 0, i32 5
  store i32 %5, ptr %51, align 4
  %52 = load i32, ptr %8, align 4
  %53 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %32, i32 noundef %31, i32 noundef %52, ptr noundef %0, i64 noundef 1, ptr noundef %53, ptr noundef %21, ptr noundef null) #15
  br label %54

54:                                               ; preds = %34, %28, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cma_release(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
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
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #15
  br i1 %15, label %32, label %16

16:                                               ; preds = %14, %11, %5
  %17 = icmp eq ptr %1, null
  %18 = select i1 %17, ptr @.str.8, ptr %1
  %19 = tail call i32 @strlen(ptr noundef %18) #15
  %20 = add i32 %19, 25
  %21 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %20) #15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %16
  %24 = shl i32 %19, 16
  %25 = add i32 %24, 65560
  %26 = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %21, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = getelementptr i8, ptr %21, i32 24
  %28 = call ptr @strcpy(ptr noundef %27, ptr noundef %18)
  %29 = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %21, i32 0, i32 2
  store i32 %2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %21, i32 0, i32 3
  store ptr %3, ptr %30, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %21, i32 0, i32 4
  store i32 %4, ptr %31, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #15
  br label %32

32:                                               ; preds = %23, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_cma_release(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = icmp eq ptr %1, null
  %9 = select i1 %8, ptr @.str.8, ptr %1
  %10 = tail call i32 @strlen(ptr noundef %9) #15
  %11 = shl i32 %10, 16
  %12 = add i32 %11, 65560
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #12, !srcloc !12
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load volatile ptr, ptr %20, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %52, label %27

27:                                               ; preds = %24, %5
  %28 = add i32 %10, 36
  %29 = and i32 %28, -8
  %30 = add i32 %29, -4
  %31 = call ptr @perf_trace_buf_alloc(i32 noundef %30, ptr noundef nonnull %6, ptr noundef nonnull %7) #15
  %32 = icmp eq ptr %31, null
  br i1 %32, label %52, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %6, align 4
  %35 = call ptr @llvm.returnaddress(i32 0) #15
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %34, i32 0, i32 15
  store i32 %36, ptr %37, align 4
  %38 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %39 = ptrtoint ptr %38 to i32
  %40 = getelementptr [18 x i32], ptr %34, i32 0, i32 11
  store i32 %39, ptr %40, align 4
  %41 = call i32 @llvm.read_register.i32(metadata !0) #15
  %42 = getelementptr [18 x i32], ptr %34, i32 0, i32 13
  store i32 %41, ptr %42, align 4
  %43 = getelementptr [18 x i32], ptr %34, i32 0, i32 16
  store i32 19, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %31, i32 0, i32 1
  store i32 %12, ptr %44, align 4
  %45 = getelementptr i8, ptr %31, i32 24
  %46 = call ptr @strcpy(ptr noundef %45, ptr noundef %9)
  %47 = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %31, i32 0, i32 2
  store i32 %2, ptr %47, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %31, i32 0, i32 3
  store ptr %3, ptr %48, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %31, i32 0, i32 4
  store i32 %4, ptr %49, align 4
  %50 = load i32, ptr %7, align 4
  %51 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %31, i32 noundef %30, i32 noundef %50, ptr noundef %0, i64 noundef 1, ptr noundef %51, ptr noundef %20, ptr noundef null) #15
  br label %52

52:                                               ; preds = %33, %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cma_alloc_start(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #15
  br i1 %14, label %30, label %15

15:                                               ; preds = %13, %10, %4
  %16 = icmp eq ptr %1, null
  %17 = select i1 %16, ptr @.str.8, ptr %1
  %18 = tail call i32 @strlen(ptr noundef %17) #15
  %19 = add i32 %18, 21
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %19) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %15
  %23 = shl i32 %18, 16
  %24 = add i32 %23, 65556
  %25 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_start, ptr %20, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr i8, ptr %20, i32 20
  %27 = call ptr @strcpy(ptr noundef %26, ptr noundef %17)
  %28 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_start, ptr %20, i32 0, i32 2
  store i32 %2, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_start, ptr %20, i32 0, i32 3
  store i32 %3, ptr %29, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #15
  br label %30

30:                                               ; preds = %22, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_cma_alloc_start(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = icmp eq ptr %1, null
  %8 = select i1 %7, ptr @.str.8, ptr %1
  %9 = tail call i32 @strlen(ptr noundef %8) #15
  %10 = shl i32 %9, 16
  %11 = add i32 %10, 65556
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #12, !srcloc !12
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load volatile ptr, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %50, label %26

26:                                               ; preds = %23, %4
  %27 = add i32 %9, 32
  %28 = and i32 %27, -8
  %29 = add i32 %28, -4
  %30 = call ptr @perf_trace_buf_alloc(i32 noundef %29, ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %5, align 4
  %34 = call ptr @llvm.returnaddress(i32 0) #15
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %33, i32 0, i32 15
  store i32 %35, ptr %36, align 4
  %37 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %33, i32 0, i32 11
  store i32 %38, ptr %39, align 4
  %40 = call i32 @llvm.read_register.i32(metadata !0) #15
  %41 = getelementptr [18 x i32], ptr %33, i32 0, i32 13
  store i32 %40, ptr %41, align 4
  %42 = getelementptr [18 x i32], ptr %33, i32 0, i32 16
  store i32 19, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_start, ptr %30, i32 0, i32 1
  store i32 %11, ptr %43, align 4
  %44 = getelementptr i8, ptr %30, i32 20
  %45 = call ptr @strcpy(ptr noundef %44, ptr noundef %8)
  %46 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_start, ptr %30, i32 0, i32 2
  store i32 %2, ptr %46, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_start, ptr %30, i32 0, i32 3
  store i32 %3, ptr %47, align 4
  %48 = load i32, ptr %6, align 4
  %49 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %30, i32 noundef %29, i32 noundef %48, ptr noundef %0, i64 noundef 1, ptr noundef %49, ptr noundef %19, ptr noundef null) #15
  br label %50

50:                                               ; preds = %32, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @cma_get_base(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i32, ptr %0, align 4
  %3 = shl i32 %2, 12
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @cma_get_size(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.cma, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = shl i32 %3, 12
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @cma_get_name(ptr noundef readnone %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.cma, ptr %0, i32 0, i32 5
  ret ptr %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cma_init_reserved_areas() #5 section ".init.text" {
  %1 = load i32, ptr @cma_area_count, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %3, %0
  %4 = phi i32 [ %6, %3 ], [ 0, %0 ]
  %5 = getelementptr [8 x %struct.cma], ptr @cma_areas, i32 0, i32 %4
  tail call fastcc void @cma_activate_area(ptr noundef %5) #16
  %6 = add nuw i32 %4, 1
  %7 = load i32, ptr @cma_area_count, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %3, label %9

9:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @cma_init_reserved_mem(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #5 section ".init.text" {
  %6 = load i32, ptr @cma_area_count, align 4
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #17
  br label %44

10:                                               ; preds = %5
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %10
  %13 = tail call zeroext i1 @memblock_is_region_reserved(i32 noundef %0, i32 noundef %1) #15
  br i1 %13, label %14, label %44

14:                                               ; preds = %12
  %15 = shl nsw i32 -1, %2
  %16 = and i32 %15, 2048
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %44, label %18

18:                                               ; preds = %14
  %19 = add i32 %0, 8388607
  %20 = and i32 %19, -8388608
  %21 = icmp eq i32 %20, %0
  br i1 %21, label %22, label %44

22:                                               ; preds = %18
  %23 = add i32 %1, 8388607
  %24 = and i32 %23, -8388608
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = load i32, ptr @cma_area_count, align 4
  %28 = getelementptr [8 x %struct.cma], ptr @cma_areas, i32 0, i32 %27
  %29 = icmp eq ptr %3, null
  %30 = getelementptr [8 x %struct.cma], ptr @cma_areas, i32 0, i32 %27, i32 5
  br i1 %29, label %33, label %31

31:                                               ; preds = %26
  %32 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %30, i32 noundef 64, ptr noundef nonnull %3)
  br label %35

33:                                               ; preds = %26
  %34 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %30, i32 noundef 64, ptr noundef nonnull @.str.1, i32 noundef %27)
  br label %35

35:                                               ; preds = %33, %31
  %36 = lshr i32 %0, 12
  store i32 %36, ptr %28, align 4
  %37 = lshr i32 %1, 12
  %38 = getelementptr [8 x %struct.cma], ptr @cma_areas, i32 0, i32 %27, i32 1
  store i32 %37, ptr %38, align 4
  %39 = getelementptr [8 x %struct.cma], ptr @cma_areas, i32 0, i32 %27, i32 3
  store i32 %2, ptr %39, align 4
  store ptr %28, ptr %4, align 4
  %40 = load i32, ptr @cma_area_count, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr @cma_area_count, align 4
  %42 = load i32, ptr @totalcma_pages, align 4
  %43 = add i32 %42, %37
  store i32 %43, ptr @totalcma_pages, align 4
  br label %44

44:                                               ; preds = %35, %22, %18, %14, %12, %10, %8
  %45 = phi i32 [ -28, %8 ], [ 0, %35 ], [ -22, %12 ], [ -22, %10 ], [ -22, %14 ], [ -22, %22 ], [ -22, %18 ]
  ret i32 %45
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @memblock_is_region_reserved(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @cma_declare_contiguous_nid(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, ptr noundef %6, ptr nocapture noundef writeonly %7, i32 noundef %8) local_unnamed_addr #5 section ".init.text" {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, ptr %10, align 4
  store i32 %1, ptr %11, align 4
  store i32 %2, ptr %12, align 4
  %15 = tail call i32 @memblock_end_of_DRAM() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #15
  %16 = load ptr, ptr @high_memory, align 4
  %17 = getelementptr i8, ptr %16, i32 -1
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %18, i32 -2130706432, i32 8454144) #18, !srcloc !13
  %20 = add i32 %19, 1
  store i32 %20, ptr %14, align 4
  %21 = load i32, ptr @cma_area_count, align 4
  %22 = icmp eq i32 %21, 8
  br i1 %22, label %23, label %25

23:                                               ; preds = %9
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #17
  br label %108

25:                                               ; preds = %9
  %26 = icmp eq i32 %1, 0
  br i1 %26, label %108, label %27

27:                                               ; preds = %25
  %28 = icmp eq i32 %3, 0
  %29 = tail call i32 @llvm.ctpop.i32(i32 %3) #15, !range !14
  %30 = icmp ult i32 %29, 2
  %31 = or i1 %28, %30
  br i1 %31, label %32, label %108

32:                                               ; preds = %27
  %33 = tail call i32 @llvm.umax.i32(i32 %3, i32 8388608)
  store i32 %33, ptr %13, align 4
  %34 = add i32 %33, -1
  %35 = xor i1 %5, true
  %36 = and i32 %34, %0
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %35, i1 true, i1 %37
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %10, ptr noundef nonnull %13) #17
  br label %103

41:                                               ; preds = %32
  %42 = add i32 %34, %0
  %43 = sub i32 0, %33
  %44 = and i32 %42, %43
  store i32 %44, ptr %10, align 4
  %45 = add i32 %34, %1
  %46 = and i32 %45, %43
  store i32 %46, ptr %11, align 4
  %47 = and i32 %43, %2
  store i32 %47, ptr %12, align 4
  %48 = icmp ne i32 %44, 0
  %49 = and i1 %48, %5
  %50 = lshr i32 %46, 12
  %51 = shl nsw i32 -1, %4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %108

55:                                               ; preds = %41
  br i1 %49, label %56, label %63

56:                                               ; preds = %55
  %57 = icmp ult i32 %44, %20
  %58 = add i32 %44, %46
  %59 = icmp ugt i32 %58, %20
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %10, ptr noundef nonnull %14) #17
  br label %103

63:                                               ; preds = %56, %55
  %64 = icmp eq i32 %47, 0
  %65 = icmp ugt i32 %47, %15
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 %15, ptr %12, align 4
  br label %68

68:                                               ; preds = %67, %63
  %69 = phi i32 [ %47, %63 ], [ %15, %67 ]
  %70 = add i32 %44, %46
  %71 = icmp ugt i32 %70, %69
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %12) #17
  %74 = load i32, ptr %11, align 4
  br label %103

75:                                               ; preds = %68
  br i1 %49, label %76, label %81

76:                                               ; preds = %75
  %77 = tail call zeroext i1 @memblock_is_region_reserved(i32 noundef %44, i32 noundef %46) #15
  br i1 %77, label %103, label %78

78:                                               ; preds = %76
  %79 = tail call i32 @memblock_reserve(i32 noundef %44, i32 noundef %46) #15
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %103, label %94

81:                                               ; preds = %75
  %82 = icmp ult i32 %44, %20
  %83 = icmp ugt i32 %69, %20
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = tail call i32 @memblock_alloc_range_nid(i32 noundef %46, i32 noundef %33, i32 noundef %20, i32 noundef %69, i32 noundef %8, i1 noundef zeroext true) #15
  store i32 %20, ptr %12, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85, %81
  %89 = phi i32 [ %69, %81 ], [ %20, %85 ]
  %90 = tail call i32 @memblock_alloc_range_nid(i32 noundef %46, i32 noundef %33, i32 noundef %44, i32 noundef %89, i32 noundef %8, i1 noundef zeroext true) #15
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %88, %85
  %93 = phi i32 [ %86, %85 ], [ %90, %88 ]
  store i32 %93, ptr %10, align 4
  br label %94

94:                                               ; preds = %92, %78
  %95 = phi i32 [ %93, %92 ], [ %44, %78 ]
  %96 = tail call i32 @cma_init_reserved_mem(i32 noundef %95, i32 noundef %46, i32 noundef %4, ptr noundef %6, ptr noundef %7) #16
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = lshr i32 %46, 20
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %99, ptr noundef nonnull %10) #17
  br label %108

101:                                              ; preds = %94
  %102 = tail call i32 @memblock_phys_free(i32 noundef %95, i32 noundef %46) #15
  br label %103

103:                                              ; preds = %101, %88, %78, %76, %72, %61, %39
  %104 = phi i32 [ %1, %39 ], [ %46, %61 ], [ %74, %72 ], [ %46, %101 ], [ %46, %78 ], [ %46, %76 ], [ %46, %88 ]
  %105 = phi i32 [ -22, %39 ], [ -22, %61 ], [ -22, %72 ], [ %96, %101 ], [ -16, %78 ], [ -16, %76 ], [ -12, %88 ]
  %106 = lshr i32 %104, 20
  %107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %106) #17
  br label %108

108:                                              ; preds = %103, %98, %41, %27, %25, %23
  %109 = phi i32 [ -28, %23 ], [ %105, %103 ], [ 0, %98 ], [ -22, %25 ], [ -22, %41 ], [ -22, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #15
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_end_of_DRAM() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_reserve(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_alloc_range_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_phys_free(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cma_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %191, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.cma, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %191, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cma, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = icmp eq i32 %1, 0
  %15 = or i1 %14, %13
  br i1 %15, label %191, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.cma, ptr %0, i32 0, i32 5
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cma_alloc_start, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = tail call ptr @llvm.thread.pointer() #15
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 5
  %25 = getelementptr i32, ptr @__cpu_online_mask, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %23, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %32 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cma_alloc_start, i32 0, i32 7), align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %34, %31
  %35 = phi ptr [ %39, %34 ], [ %32, %31 ]
  %36 = load volatile ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.tracepoint_func, ptr %35, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  tail call void %36(ptr noundef %38, ptr noundef %17, i32 noundef %1, i32 noundef %2) #15
  %39 = getelementptr %struct.tracepoint_func, ptr %35, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %34

42:                                               ; preds = %34, %31
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %43 = load i32, ptr %7, align 4
  br label %44

44:                                               ; preds = %42, %20, %16
  %45 = phi i32 [ %8, %16 ], [ %8, %20 ], [ %43, %42 ]
  %46 = getelementptr inbounds %struct.cma, ptr %0, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = icmp ult i32 %47, %2
  %49 = sub i32 %2, %47
  %50 = shl nsw i32 -1, %49
  %51 = xor i32 %50, -1
  %52 = select i1 %48, i32 %51, i32 0
  %53 = load i32, ptr %0, align 4
  %54 = shl nsw i32 -1, %2
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = lshr i32 %56, %47
  %58 = lshr i32 %45, %47
  %59 = shl nsw i32 -1, %47
  %60 = xor i32 %59, -1
  %61 = add i32 %60, %1
  %62 = and i32 %61, %59
  %63 = lshr i32 %62, %47
  %64 = icmp ugt i32 %63, %58
  br i1 %64, label %191, label %65

65:                                               ; preds = %44
  %66 = getelementptr inbounds %struct.cma, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %66) #15
  %67 = load ptr, ptr %11, align 4
  %68 = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %67, i32 noundef %58, i32 noundef 0, i32 noundef %63, i32 noundef %52, i32 noundef %57) #15
  %69 = icmp ult i32 %68, %58
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = select i1 %3, i32 11456, i32 3264
  %72 = add i32 %52, 1
  br label %78

73:                                               ; preds = %138, %65
  %74 = phi i32 [ -12, %65 ], [ -16, %138 ]
  %75 = phi i32 [ -1, %65 ], [ %86, %138 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %76 = load i16, ptr %66, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %66, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !21
  br label %143

78:                                               ; preds = %138, %70
  %79 = phi i32 [ %68, %70 ], [ %141, %138 ]
  %80 = load ptr, ptr %11, align 4
  tail call void @__bitmap_set(ptr noundef %80, i32 noundef %79, i32 noundef %63) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %81 = load i16, ptr %66, align 4
  %82 = add i16 %81, 1
  store i16 %82, ptr %66, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !21
  %83 = load i32, ptr %0, align 4
  %84 = load i32, ptr %46, align 4
  %85 = shl i32 %79, %84
  %86 = add i32 %85, %83
  %87 = add i32 %86, %1
  %88 = tail call i32 @alloc_contig_range(i32 noundef %86, i32 noundef %87, i32 noundef 4, i32 noundef %71) #15
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %78
  %91 = load ptr, ptr @mem_map, align 4
  %92 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %93 = sub i32 %86, %92
  %94 = getelementptr %struct.page, ptr %91, i32 %93
  br label %143

95:                                               ; preds = %78
  %96 = load i32, ptr %0, align 4
  %97 = sub i32 %86, %96
  %98 = load i32, ptr %46, align 4
  %99 = lshr i32 %97, %98
  %100 = shl nsw i32 -1, %98
  %101 = xor i32 %100, -1
  %102 = add i32 %101, %1
  %103 = and i32 %102, %100
  %104 = lshr i32 %103, %98
  %105 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %66) #15
  %106 = load ptr, ptr %11, align 4
  tail call void @__bitmap_clear(ptr noundef %106, i32 noundef %99, i32 noundef %104) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %66, i32 noundef %105) #15
  %107 = icmp eq i32 %88, -16
  br i1 %107, label %108, label %143

108:                                              ; preds = %95
  %109 = load ptr, ptr @mem_map, align 4
  %110 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %111 = sub i32 %86, %110
  %112 = getelementptr %struct.page, ptr %109, i32 %111
  %113 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cma_alloc_busy_retry, i32 0, i32 1), align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %108
  %116 = tail call ptr @llvm.thread.pointer() #15
  %117 = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 2
  %118 = load i32, ptr %117, align 8
  %119 = lshr i32 %118, 5
  %120 = getelementptr i32, ptr @__cpu_online_mask, i32 %119
  %121 = load volatile i32, ptr %120, align 4
  %122 = and i32 %118, 31
  %123 = shl nuw i32 1, %122
  %124 = and i32 %123, %121
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %115
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !22
  %127 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cma_alloc_busy_retry, i32 0, i32 7), align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %137, label %129

129:                                              ; preds = %129, %126
  %130 = phi ptr [ %134, %129 ], [ %127, %126 ]
  %131 = load volatile ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.tracepoint_func, ptr %130, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  tail call void %131(ptr noundef %133, ptr noundef %17, i32 noundef %86, ptr noundef %112, i32 noundef %1, i32 noundef %2) #15
  %134 = getelementptr %struct.tracepoint_func, ptr %130, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %129

137:                                              ; preds = %129, %126
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  br label %138

138:                                              ; preds = %137, %115, %108
  %139 = add i32 %72, %79
  tail call void @_raw_spin_lock_irq(ptr noundef %66) #15
  %140 = load ptr, ptr %11, align 4
  %141 = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %140, i32 noundef %58, i32 noundef %139, i32 noundef %63, i32 noundef %52, i32 noundef %57) #15
  %142 = icmp ult i32 %141, %58
  br i1 %142, label %78, label %73

143:                                              ; preds = %95, %90, %73
  %144 = phi ptr [ null, %73 ], [ %94, %90 ], [ null, %95 ]
  %145 = phi i32 [ %74, %73 ], [ 0, %90 ], [ %88, %95 ]
  %146 = phi i32 [ %75, %73 ], [ %86, %90 ], [ %86, %95 ]
  %147 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cma_alloc_finish, i32 0, i32 1), align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %172

149:                                              ; preds = %143
  %150 = tail call ptr @llvm.thread.pointer() #15
  %151 = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 2
  %152 = load i32, ptr %151, align 8
  %153 = lshr i32 %152, 5
  %154 = getelementptr i32, ptr @__cpu_online_mask, i32 %153
  %155 = load volatile i32, ptr %154, align 4
  %156 = and i32 %152, 31
  %157 = shl nuw i32 1, %156
  %158 = and i32 %157, %155
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %172, label %160

160:                                              ; preds = %149
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !24
  %161 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cma_alloc_finish, i32 0, i32 7), align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %171, label %163

163:                                              ; preds = %163, %160
  %164 = phi ptr [ %168, %163 ], [ %161, %160 ]
  %165 = load volatile ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.tracepoint_func, ptr %164, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  tail call void %165(ptr noundef %167, ptr noundef %17, i32 noundef %146, ptr noundef %144, i32 noundef %1, i32 noundef %2) #15
  %168 = getelementptr %struct.tracepoint_func, ptr %164, i32 1
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %163

171:                                              ; preds = %163, %160
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !25
  br label %172

172:                                              ; preds = %171, %149, %143
  %173 = icmp eq ptr %144, null
  %174 = icmp eq i32 %145, 0
  %175 = or i1 %174, %3
  br i1 %175, label %181, label %176

176:                                              ; preds = %172
  %177 = tail call i32 @___ratelimit(ptr noundef nonnull @cma_alloc._rs, ptr noundef nonnull @__func__.cma_alloc) #15
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %176
  %180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.cma_alloc, ptr noundef %17, i32 noundef %1, i32 noundef %145) #17
  br label %181

181:                                              ; preds = %179, %176, %172
  br i1 %173, label %191, label %182

182:                                              ; preds = %181
  %183 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !26
  %184 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %185 = inttoptr i32 %184 to ptr
  %186 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %185) #12, !srcloc !12
  %187 = add i32 %186, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 60) to i32)
  %188 = inttoptr i32 %187 to ptr
  %189 = load i32, ptr %188, align 4
  %190 = add i32 %189, 1
  store i32 %190, ptr %188, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %183) #15, !srcloc !27
  br label %200

191:                                              ; preds = %181, %44, %10, %6, %4
  %192 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !26
  %193 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %194 = inttoptr i32 %193 to ptr
  %195 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %194) #12, !srcloc !12
  %196 = add i32 %195, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 61) to i32)
  %197 = inttoptr i32 %196 to ptr
  %198 = load i32, ptr %197, align 4
  %199 = add i32 %198, 1
  store i32 %199, ptr %197, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %192) #15, !srcloc !27
  br label %200

200:                                              ; preds = %191, %182
  %201 = phi ptr [ %144, %182 ], [ null, %191 ]
  ret ptr %201
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_contig_range(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cma_pages_valid(ptr noundef readonly %0, ptr noundef %1, i32 %2) local_unnamed_addr #8 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = load ptr, ptr @mem_map, align 4
  %9 = ptrtoint ptr %1 to i32
  %10 = ptrtoint ptr %8 to i32
  %11 = sub i32 %9, %10
  %12 = ashr exact i32 %11, 5
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %14 = add i32 %12, %13
  %15 = load i32, ptr %0, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.cma, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %15
  %21 = icmp ult i32 %14, %20
  br label %22

22:                                               ; preds = %17, %7, %3
  %23 = phi i1 [ false, %3 ], [ false, %7 ], [ %21, %17 ]
  ret i1 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @cma_release(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %63

7:                                                ; preds = %3
  %8 = load ptr, ptr @mem_map, align 4
  %9 = ptrtoint ptr %1 to i32
  %10 = ptrtoint ptr %8 to i32
  %11 = sub i32 %9, %10
  %12 = ashr exact i32 %11, 5
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %14 = add i32 %12, %13
  %15 = load i32, ptr %0, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %63, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.cma, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %15
  %21 = icmp ult i32 %14, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %17
  tail call void @free_contig_range(i32 noundef %14, i32 noundef %2) #15
  %23 = load i32, ptr %0, align 4
  %24 = sub i32 %14, %23
  %25 = getelementptr inbounds %struct.cma, ptr %0, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %24, %26
  %28 = shl nsw i32 -1, %26
  %29 = xor i32 %28, -1
  %30 = add i32 %29, %2
  %31 = and i32 %30, %28
  %32 = lshr i32 %31, %26
  %33 = getelementptr inbounds %struct.cma, ptr %0, i32 0, i32 4
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #15
  %35 = getelementptr inbounds %struct.cma, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  tail call void @__bitmap_clear(ptr noundef %36, i32 noundef %27, i32 noundef %32) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %34) #15
  %37 = getelementptr inbounds %struct.cma, ptr %0, i32 0, i32 5
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cma_release, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %22
  %41 = tail call ptr @llvm.thread.pointer() #15
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  %52 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cma_release, i32 0, i32 7), align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %54, %51
  %55 = phi ptr [ %59, %54 ], [ %52, %51 ]
  %56 = load volatile ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.tracepoint_func, ptr %55, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  tail call void %56(ptr noundef %58, ptr noundef %37, i32 noundef %14, ptr noundef nonnull %1, i32 noundef %2) #15
  %59 = getelementptr %struct.tracepoint_func, ptr %55, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %54

62:                                               ; preds = %54, %51
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !29
  br label %63

63:                                               ; preds = %62, %40, %22, %17, %7, %3
  %64 = phi i1 [ false, %17 ], [ true, %22 ], [ true, %40 ], [ true, %62 ], [ false, %3 ], [ false, %7 ]
  ret i1 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_contig_range(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cma_for_each_area(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @cma_area_count, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %9

5:                                                ; preds = %9
  %6 = add nuw i32 %10, 1
  %7 = load i32, ptr @cma_area_count, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %5, %2
  %10 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %11 = getelementptr [8 x %struct.cma], ptr @cma_areas, i32 0, i32 %10
  %12 = tail call i32 %0(ptr noundef %11, ptr noundef %1) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %5, label %14

14:                                               ; preds = %9, %5, %2
  %15 = phi i32 [ 0, %2 ], [ 0, %5 ], [ %12, %9 ]
  ret i32 %15
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cma_release(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #15
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %5, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_cma_release, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef %13, i32 noundef %15, ptr noundef %17, i32 noundef %19) #15
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #15
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cma_alloc_start(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #15
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_start, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_start, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_start, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %13, i32 noundef %15, i32 noundef %17) #15
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #15
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cma_alloc_class(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #15
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %5, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_cma_alloc_class, ptr %5, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %13, i32 noundef %15, ptr noundef %17, i32 noundef %19, i32 noundef %21) #15
  %22 = tail call i32 @trace_handle_return(ptr noundef %9) #15
  br label %23

23:                                               ; preds = %8, %3
  %24 = phi i32 [ %22, %8 ], [ %6, %3 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #13

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @cma_activate_area(ptr noundef %0) unnamed_addr #5 section ".init.text" {
  %2 = load i32, ptr %0, align 4
  %3 = getelementptr inbounds %struct.cma, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cma, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %4, %6
  %8 = tail call ptr @bitmap_zalloc(i32 noundef %7, i32 noundef 3264) #15
  %9 = getelementptr inbounds %struct.cma, ptr %0, i32 0, i32 2
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %78, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @pfn_valid(i32 noundef %2) #15
  %13 = icmp eq i32 %12, 0
  %14 = load i1, ptr @cma_activate_area.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !11

17:                                               ; preds = %11
  store i1 true, ptr @cma_activate_area.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 109, i32 noundef 9, ptr noundef null) #15
  br label %18

18:                                               ; preds = %17, %11
  %19 = load ptr, ptr @mem_map, align 4
  %20 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %21 = sub i32 %2, %20
  %22 = getelementptr %struct.page, ptr %19, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %23, 30
  %25 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %24
  %26 = add i32 %2, 1
  %27 = load i32, ptr %3, align 4
  %28 = add i32 %27, %2
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %47, label %35

30:                                               ; preds = %55
  %31 = add i32 %48, 1
  %32 = load i32, ptr %3, align 4
  %33 = add i32 %32, %2
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %47, label %35

35:                                               ; preds = %30, %18
  %36 = phi i32 [ %20, %18 ], [ %57, %30 ]
  %37 = phi ptr [ %19, %18 ], [ %56, %30 ]
  %38 = phi i32 [ %28, %18 ], [ %33, %30 ]
  %39 = icmp ult i32 %2, %38
  br i1 %39, label %40, label %74

40:                                               ; preds = %35
  %41 = sub i32 %2, %36
  %42 = getelementptr %struct.page, ptr %37, i32 %41
  tail call void @init_cma_reserved_pageblock(ptr noundef %42) #15
  %43 = add i32 %2, 2048
  %44 = load i32, ptr %3, align 4
  %45 = add i32 %44, %2
  %46 = icmp ult i32 %43, %45
  br i1 %46, label %64, label %74

47:                                               ; preds = %30, %18
  %48 = phi i32 [ %31, %30 ], [ %26, %18 ]
  %49 = tail call i32 @pfn_valid(i32 noundef %48) #15
  %50 = icmp eq i32 %49, 0
  %51 = load i1, ptr @cma_activate_area.__already_done.22, align 1
  %52 = xor i1 %51, true
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %55, !prof !11

54:                                               ; preds = %47
  store i1 true, ptr @cma_activate_area.__already_done.22, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 112, i32 noundef 9, ptr noundef null) #15
  br label %55

55:                                               ; preds = %54, %47
  %56 = load ptr, ptr @mem_map, align 4
  %57 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %58 = sub i32 %48, %57
  %59 = getelementptr %struct.page, ptr %56, i32 %58
  %60 = load i32, ptr %59, align 4
  %61 = lshr i32 %60, 30
  %62 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %61
  %63 = icmp eq ptr %62, %25
  br i1 %63, label %30, label %76

64:                                               ; preds = %64, %40
  %65 = phi i32 [ %70, %64 ], [ %43, %40 ]
  %66 = load ptr, ptr @mem_map, align 4
  %67 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %68 = sub i32 %65, %67
  %69 = getelementptr %struct.page, ptr %66, i32 %68
  tail call void @init_cma_reserved_pageblock(ptr noundef %69) #15
  %70 = add i32 %65, 2048
  %71 = load i32, ptr %3, align 4
  %72 = add i32 %71, %2
  %73 = icmp ult i32 %70, %72
  br i1 %73, label %64, label %74

74:                                               ; preds = %64, %40, %35
  %75 = getelementptr inbounds %struct.cma, ptr %0, i32 0, i32 4
  store i32 0, ptr %75, align 4
  br label %99

76:                                               ; preds = %55
  %77 = load ptr, ptr %9, align 4
  tail call void @bitmap_free(ptr noundef %77) #15
  br label %78

78:                                               ; preds = %76, %1
  %79 = load i32, ptr %3, align 4
  %80 = add i32 %79, %2
  %81 = icmp ult i32 %2, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %82, %78
  %83 = phi i32 [ %89, %82 ], [ %2, %78 ]
  %84 = load ptr, ptr @mem_map, align 4
  %85 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %86 = sub i32 %83, %85
  %87 = getelementptr %struct.page, ptr %84, i32 %86
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %87) #15
  %88 = getelementptr %struct.page, ptr %84, i32 %86, i32 3
  store volatile i32 1, ptr %88, align 4
  tail call void @__free_pages(ptr noundef %87, i32 noundef 0) #15
  tail call void @adjust_managed_page_count(ptr noundef %87, i32 noundef 1) #15
  %89 = add nuw i32 %83, 1
  %90 = load i32, ptr %3, align 4
  %91 = add i32 %90, %2
  %92 = icmp ult i32 %89, %91
  br i1 %92, label %82, label %93

93:                                               ; preds = %82, %78
  %94 = phi i32 [ %79, %78 ], [ %90, %82 ]
  %95 = load i32, ptr @totalcma_pages, align 4
  %96 = sub i32 %95, %94
  store i32 %96, ptr @totalcma_pages, align 4
  store i32 0, ptr %3, align 4
  %97 = getelementptr inbounds %struct.cma, ptr %0, i32 0, i32 5
  %98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %97) #17
  br label %99

99:                                               ; preds = %93, %74
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_cma_reserved_pageblock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adjust_managed_page_count(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #14

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { cold }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }

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
!12 = !{i64 799880}
!13 = !{i64 2148812064, i64 2148812087, i64 2148812119, i64 2148812151, i64 2148812189, i64 2148812219}
!14 = !{i32 0, i32 33}
!15 = !{i64 2152876615}
!16 = !{i64 2152876793}
!17 = !{i64 2149042568}
!18 = !{i64 2149038392}
!19 = !{i64 2149038467, i64 2149038494, i64 2149038541, i64 2149038563, i64 2149038591, i64 2149038611}
!20 = !{i64 781425}
!21 = !{i64 2149066712}
!22 = !{i64 2152911858}
!23 = !{i64 2152912068}
!24 = !{i64 2152894042}
!25 = !{i64 2152894244}
!26 = !{i64 781180, i64 781241}
!27 = !{i64 784197}
!28 = !{i64 2152856053}
!29 = !{i64 2152856231}
