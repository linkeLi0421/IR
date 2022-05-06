; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/trace.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/trace.c"
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
%struct.trace_event_raw_register_access = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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

@__tpstrtab_dc_writel = internal constant [10 x i8] c"dc_writel\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dc_writel = dso_local global %struct.static_call_key { ptr @__traceiter_dc_writel }, align 4
@__tracepoint_dc_writel = dso_local global %struct.tracepoint { ptr @__tpstrtab_dc_writel, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dc_writel, ptr null, ptr @__traceiter_dc_writel, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dc_writel = internal constant ptr @__tracepoint_dc_writel, section "__tracepoints_ptrs", align 4
@__tpstrtab_dc_readl = internal constant [9 x i8] c"dc_readl\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dc_readl = dso_local global %struct.static_call_key { ptr @__traceiter_dc_readl }, align 4
@__tracepoint_dc_readl = dso_local global %struct.tracepoint { ptr @__tpstrtab_dc_readl, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dc_readl, ptr null, ptr @__traceiter_dc_readl, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dc_readl = internal constant ptr @__tracepoint_dc_readl, section "__tracepoints_ptrs", align 4
@__tpstrtab_hdmi_writel = internal constant [12 x i8] c"hdmi_writel\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hdmi_writel = dso_local global %struct.static_call_key { ptr @__traceiter_hdmi_writel }, align 4
@__tracepoint_hdmi_writel = dso_local global %struct.tracepoint { ptr @__tpstrtab_hdmi_writel, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_hdmi_writel, ptr null, ptr @__traceiter_hdmi_writel, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hdmi_writel = internal constant ptr @__tracepoint_hdmi_writel, section "__tracepoints_ptrs", align 4
@__tpstrtab_hdmi_readl = internal constant [11 x i8] c"hdmi_readl\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hdmi_readl = dso_local global %struct.static_call_key { ptr @__traceiter_hdmi_readl }, align 4
@__tracepoint_hdmi_readl = dso_local global %struct.tracepoint { ptr @__tpstrtab_hdmi_readl, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_hdmi_readl, ptr null, ptr @__traceiter_hdmi_readl, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hdmi_readl = internal constant ptr @__tracepoint_hdmi_readl, section "__tracepoints_ptrs", align 4
@__tpstrtab_dsi_writel = internal constant [11 x i8] c"dsi_writel\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dsi_writel = dso_local global %struct.static_call_key { ptr @__traceiter_dsi_writel }, align 4
@__tracepoint_dsi_writel = dso_local global %struct.tracepoint { ptr @__tpstrtab_dsi_writel, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dsi_writel, ptr null, ptr @__traceiter_dsi_writel, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dsi_writel = internal constant ptr @__tracepoint_dsi_writel, section "__tracepoints_ptrs", align 4
@__tpstrtab_dsi_readl = internal constant [10 x i8] c"dsi_readl\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dsi_readl = dso_local global %struct.static_call_key { ptr @__traceiter_dsi_readl }, align 4
@__tracepoint_dsi_readl = dso_local global %struct.tracepoint { ptr @__tpstrtab_dsi_readl, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dsi_readl, ptr null, ptr @__traceiter_dsi_readl, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dsi_readl = internal constant ptr @__tracepoint_dsi_readl, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpaux_writel = internal constant [13 x i8] c"dpaux_writel\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpaux_writel = dso_local global %struct.static_call_key { ptr @__traceiter_dpaux_writel }, align 4
@__tracepoint_dpaux_writel = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpaux_writel, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpaux_writel, ptr null, ptr @__traceiter_dpaux_writel, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpaux_writel = internal constant ptr @__tracepoint_dpaux_writel, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpaux_readl = internal constant [12 x i8] c"dpaux_readl\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpaux_readl = dso_local global %struct.static_call_key { ptr @__traceiter_dpaux_readl }, align 4
@__tracepoint_dpaux_readl = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpaux_readl, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpaux_readl, ptr null, ptr @__traceiter_dpaux_readl, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpaux_readl = internal constant ptr @__tracepoint_dpaux_readl, section "__tracepoints_ptrs", align 4
@__tpstrtab_sor_writel = internal constant [11 x i8] c"sor_writel\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sor_writel = dso_local global %struct.static_call_key { ptr @__traceiter_sor_writel }, align 4
@__tracepoint_sor_writel = dso_local global %struct.tracepoint { ptr @__tpstrtab_sor_writel, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sor_writel, ptr null, ptr @__traceiter_sor_writel, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sor_writel = internal constant ptr @__tracepoint_sor_writel, section "__tracepoints_ptrs", align 4
@__tpstrtab_sor_readl = internal constant [10 x i8] c"sor_readl\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sor_readl = dso_local global %struct.static_call_key { ptr @__traceiter_sor_readl }, align 4
@__tracepoint_sor_readl = dso_local global %struct.tracepoint { ptr @__tpstrtab_sor_readl, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sor_readl, ptr null, ptr @__traceiter_sor_readl, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sor_readl = internal constant ptr @__tracepoint_sor_readl, section "__tracepoints_ptrs", align 4
@str__tegra__trace_system_name = internal constant [6 x i8] c"tegra\00", align 1
@trace_event_fields_register_access = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.89 { %struct.anon.90 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.89 { %struct.anon.90 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.89 { %struct.anon.90 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_register_access = internal global %struct.trace_event_class { ptr @str__tegra__trace_system_name, ptr @trace_event_raw_event_register_access, ptr @perf_trace_register_access, ptr @trace_event_reg, ptr @trace_event_fields_register_access, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_register_access, i64 24), ptr getelementptr (i8, ptr @event_class_register_access, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_register_access = internal global %struct.trace_event_functions { ptr @trace_raw_output_register_access, ptr null, ptr null, ptr null }, align 4
@print_fmt_register_access = internal global [60 x i8] c"\22%s %04x %08x\22, dev_name(REC->dev), REC->offset, REC->value\00", align 1
@event_dc_writel = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_register_access, %union.anon.91 { ptr @__tracepoint_dc_writel }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_register_access }, ptr @print_fmt_register_access, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dc_writel = internal global ptr @event_dc_writel, section "_ftrace_events", align 4
@event_dc_readl = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_register_access, %union.anon.91 { ptr @__tracepoint_dc_readl }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_register_access }, ptr @print_fmt_register_access, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dc_readl = internal global ptr @event_dc_readl, section "_ftrace_events", align 4
@event_hdmi_writel = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_register_access, %union.anon.91 { ptr @__tracepoint_hdmi_writel }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_register_access }, ptr @print_fmt_register_access, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_hdmi_writel = internal global ptr @event_hdmi_writel, section "_ftrace_events", align 4
@event_hdmi_readl = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_register_access, %union.anon.91 { ptr @__tracepoint_hdmi_readl }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_register_access }, ptr @print_fmt_register_access, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_hdmi_readl = internal global ptr @event_hdmi_readl, section "_ftrace_events", align 4
@event_dsi_writel = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_register_access, %union.anon.91 { ptr @__tracepoint_dsi_writel }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_register_access }, ptr @print_fmt_register_access, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dsi_writel = internal global ptr @event_dsi_writel, section "_ftrace_events", align 4
@event_dsi_readl = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_register_access, %union.anon.91 { ptr @__tracepoint_dsi_readl }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_register_access }, ptr @print_fmt_register_access, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dsi_readl = internal global ptr @event_dsi_readl, section "_ftrace_events", align 4
@event_dpaux_writel = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_register_access, %union.anon.91 { ptr @__tracepoint_dpaux_writel }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_register_access }, ptr @print_fmt_register_access, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpaux_writel = internal global ptr @event_dpaux_writel, section "_ftrace_events", align 4
@event_dpaux_readl = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_register_access, %union.anon.91 { ptr @__tracepoint_dpaux_readl }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_register_access }, ptr @print_fmt_register_access, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpaux_readl = internal global ptr @event_dpaux_readl, section "_ftrace_events", align 4
@event_sor_writel = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_register_access, %union.anon.91 { ptr @__tracepoint_sor_writel }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_register_access }, ptr @print_fmt_register_access, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sor_writel = internal global ptr @event_sor_writel, section "_ftrace_events", align 4
@event_sor_readl = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_register_access, %union.anon.91 { ptr @__tracepoint_sor_readl }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_register_access }, ptr @print_fmt_register_access, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sor_readl = internal global ptr @event_sor_readl, section "_ftrace_events", align 4
@.str = private unnamed_addr constant [16 x i8] c"struct device *\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"%s %04x %08x\0A\00", align 1
@llvm.compiler.used = appending global [41 x ptr] [ptr @__event_dc_readl, ptr @__event_dc_writel, ptr @__event_dpaux_readl, ptr @__event_dpaux_writel, ptr @__event_dsi_readl, ptr @__event_dsi_writel, ptr @__event_hdmi_readl, ptr @__event_hdmi_writel, ptr @__event_sor_readl, ptr @__event_sor_writel, ptr @__tracepoint_dc_readl, ptr @__tracepoint_dc_writel, ptr @__tracepoint_dpaux_readl, ptr @__tracepoint_dpaux_writel, ptr @__tracepoint_dsi_readl, ptr @__tracepoint_dsi_writel, ptr @__tracepoint_hdmi_readl, ptr @__tracepoint_hdmi_writel, ptr @__tracepoint_ptr_dc_readl, ptr @__tracepoint_ptr_dc_writel, ptr @__tracepoint_ptr_dpaux_readl, ptr @__tracepoint_ptr_dpaux_writel, ptr @__tracepoint_ptr_dsi_readl, ptr @__tracepoint_ptr_dsi_writel, ptr @__tracepoint_ptr_hdmi_readl, ptr @__tracepoint_ptr_hdmi_writel, ptr @__tracepoint_ptr_sor_readl, ptr @__tracepoint_ptr_sor_writel, ptr @__tracepoint_sor_readl, ptr @__tracepoint_sor_writel, ptr @event_class_register_access, ptr @event_dc_readl, ptr @event_dc_writel, ptr @event_dpaux_readl, ptr @event_dpaux_writel, ptr @event_dsi_readl, ptr @event_dsi_writel, ptr @event_hdmi_readl, ptr @event_hdmi_writel, ptr @event_sor_readl, ptr @event_sor_writel], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dc_writel(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #6
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
define dso_local i32 @__traceiter_dc_readl(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #6
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_hdmi_writel(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #6
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_hdmi_readl(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_readl, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #6
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dsi_writel(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #6
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dsi_readl(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_readl, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #6
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpaux_writel(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_writel, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #6
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpaux_readl(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_readl, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #6
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sor_writel(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #6
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sor_readl(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #6
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_register_access(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
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
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %16, i32 0, i32 1
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #6
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_register_access(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
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
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

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
  %35 = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %22, i32 0, i32 1
  store ptr %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #6
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
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
define internal i32 @trace_raw_output_register_access(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #6
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = load ptr, ptr %11, align 4
  br label %17

17:                                               ; preds = %15, %8
  %18 = phi ptr [ %16, %15 ], [ %13, %8 ]
  %19 = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %5, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %5, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %18, i32 noundef %20, i32 noundef %22) #6
  %23 = tail call i32 @trace_handle_return(ptr noundef %9) #6
  br label %24

24:                                               ; preds = %17, %3
  %25 = phi i32 [ %23, %17 ], [ %6, %3 ]
  ret i32 %25
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
!12 = !{i64 608978}
