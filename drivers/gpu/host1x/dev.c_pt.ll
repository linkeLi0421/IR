; ModuleID = '/llk/IR/drivers/gpu/host1x/dev.c_pt.bc'
source_filename = "../drivers/gpu/host1x/dev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_get_dma_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_get_dma_mask\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_get_dma_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.host1x_info = type { i32, i32, i32, i32, ptr, i32, i64, i8, i8, i32, ptr, i8 }
%struct.host1x_sid_entry = type { i32, i32, i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_host1x = type { %struct.trace_entry, ptr, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_host1x_cdma_push = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_event_raw_host1x_cdma_push_wide = type { %struct.trace_entry, ptr, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_host1x_cdma_push_gather = type { %struct.trace_entry, ptr, ptr, i32, i32, i8, i32, [0 x i8] }
%struct.trace_event_raw_host1x_channel_submit = type { %struct.trace_entry, ptr, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_host1x_channel_submitted = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_event_raw_host1x_channel_submit_complete = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_event_raw_host1x_wait_cdma = type { %struct.trace_entry, ptr, i32, [0 x i8] }
%struct.trace_event_raw_host1x_syncpt_load_min = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_host1x_syncpt_wait_check = type { %struct.trace_entry, ptr, i32, i32, i32, i32, [0 x i8] }
%struct.host1x = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x %struct.reset_control_bulk_data], i32, ptr, ptr, %struct.iova_domain, i32, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.host1x_channel_list, ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.device_dma_parameters, %struct.host1x_bo_cache }
%struct.reset_control_bulk_data = type { ptr, ptr }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root = type { ptr }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.host1x_channel_list = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.host1x_channel = type { %struct.kref, i32, %struct.mutex, ptr, ptr, ptr, %struct.host1x_cdma }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.host1x_cdma = type { %struct.mutex, %struct.completion, i32, i32, i32, i32, i32, %struct.push_buffer, %struct.list_head, %struct.buffer_timeout, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.push_buffer = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.buffer_timeout = type { %struct.delayed_work, i8, ptr, i32, i64, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.tegra_core_opp_params = type { i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.pdev_archdata = type { ptr }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }

@__tpstrtab_host1x_channel_open = internal constant [20 x i8] c"host1x_channel_open\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_channel_open = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_channel_open }, align 4
@__tracepoint_host1x_channel_open = dso_local global %struct.tracepoint { ptr @__tpstrtab_host1x_channel_open, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_host1x_channel_open, ptr null, ptr @__traceiter_host1x_channel_open, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_channel_open = internal constant ptr @__tracepoint_host1x_channel_open, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_channel_release = internal constant [23 x i8] c"host1x_channel_release\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_channel_release = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_channel_release }, align 4
@__tracepoint_host1x_channel_release = dso_local global %struct.tracepoint { ptr @__tpstrtab_host1x_channel_release, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_host1x_channel_release, ptr null, ptr @__traceiter_host1x_channel_release, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_channel_release = internal constant ptr @__tracepoint_host1x_channel_release, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_cdma_begin = internal constant [18 x i8] c"host1x_cdma_begin\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_cdma_begin = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_cdma_begin }, align 4
@__tracepoint_host1x_cdma_begin = dso_local global %struct.tracepoint { ptr @__tpstrtab_host1x_cdma_begin, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_host1x_cdma_begin, ptr null, ptr @__traceiter_host1x_cdma_begin, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_cdma_begin = internal constant ptr @__tracepoint_host1x_cdma_begin, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_cdma_end = internal constant [16 x i8] c"host1x_cdma_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_cdma_end = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_cdma_end }, align 4
@__tracepoint_host1x_cdma_end = dso_local global %struct.tracepoint { ptr @__tpstrtab_host1x_cdma_end, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_host1x_cdma_end, ptr null, ptr @__traceiter_host1x_cdma_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_cdma_end = internal constant ptr @__tracepoint_host1x_cdma_end, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_cdma_push = internal constant [17 x i8] c"host1x_cdma_push\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_cdma_push = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_cdma_push }, align 4
@__tracepoint_host1x_cdma_push = dso_local global %struct.tracepoint { ptr @__tpstrtab_host1x_cdma_push, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_host1x_cdma_push, ptr null, ptr @__traceiter_host1x_cdma_push, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_cdma_push = internal constant ptr @__tracepoint_host1x_cdma_push, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_cdma_push_wide = internal constant [22 x i8] c"host1x_cdma_push_wide\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_cdma_push_wide = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_cdma_push_wide }, align 4
@__tracepoint_host1x_cdma_push_wide = dso_local global %struct.tracepoint { ptr @__tpstrtab_host1x_cdma_push_wide, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_host1x_cdma_push_wide, ptr null, ptr @__traceiter_host1x_cdma_push_wide, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_cdma_push_wide = internal constant ptr @__tracepoint_host1x_cdma_push_wide, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_cdma_push_gather = internal constant [24 x i8] c"host1x_cdma_push_gather\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_cdma_push_gather = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_cdma_push_gather }, align 4
@__tracepoint_host1x_cdma_push_gather = dso_local global %struct.tracepoint { ptr @__tpstrtab_host1x_cdma_push_gather, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_host1x_cdma_push_gather, ptr null, ptr @__traceiter_host1x_cdma_push_gather, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_cdma_push_gather = internal constant ptr @__tracepoint_host1x_cdma_push_gather, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_channel_submit = internal constant [22 x i8] c"host1x_channel_submit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_channel_submit = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_channel_submit }, align 4
@__tracepoint_host1x_channel_submit = dso_local global %struct.tracepoint { ptr @__tpstrtab_host1x_channel_submit, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_host1x_channel_submit, ptr null, ptr @__traceiter_host1x_channel_submit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_channel_submit = internal constant ptr @__tracepoint_host1x_channel_submit, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_channel_submitted = internal constant [25 x i8] c"host1x_channel_submitted\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_channel_submitted = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_channel_submitted }, align 4
@__tracepoint_host1x_channel_submitted = dso_local global %struct.tracepoint { ptr @__tpstrtab_host1x_channel_submitted, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_host1x_channel_submitted, ptr null, ptr @__traceiter_host1x_channel_submitted, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_channel_submitted = internal constant ptr @__tracepoint_host1x_channel_submitted, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_channel_submit_complete = internal constant [31 x i8] c"host1x_channel_submit_complete\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_channel_submit_complete = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_channel_submit_complete }, align 4
@__tracepoint_host1x_channel_submit_complete = dso_local global %struct.tracepoint { ptr @__tpstrtab_host1x_channel_submit_complete, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_host1x_channel_submit_complete, ptr null, ptr @__traceiter_host1x_channel_submit_complete, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_channel_submit_complete = internal constant ptr @__tracepoint_host1x_channel_submit_complete, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_wait_cdma = internal constant [17 x i8] c"host1x_wait_cdma\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_wait_cdma = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_wait_cdma }, align 4
@__tracepoint_host1x_wait_cdma = dso_local global %struct.tracepoint { ptr @__tpstrtab_host1x_wait_cdma, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_host1x_wait_cdma, ptr null, ptr @__traceiter_host1x_wait_cdma, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_wait_cdma = internal constant ptr @__tracepoint_host1x_wait_cdma, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_syncpt_load_min = internal constant [23 x i8] c"host1x_syncpt_load_min\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_syncpt_load_min = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_syncpt_load_min }, align 4
@__tracepoint_host1x_syncpt_load_min = dso_local global %struct.tracepoint { ptr @__tpstrtab_host1x_syncpt_load_min, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_host1x_syncpt_load_min, ptr null, ptr @__traceiter_host1x_syncpt_load_min, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_syncpt_load_min = internal constant ptr @__tracepoint_host1x_syncpt_load_min, section "__tracepoints_ptrs", align 4
@__tpstrtab_host1x_syncpt_wait_check = internal constant [25 x i8] c"host1x_syncpt_wait_check\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_host1x_syncpt_wait_check = dso_local global %struct.static_call_key { ptr @__traceiter_host1x_syncpt_wait_check }, align 4
@__tracepoint_host1x_syncpt_wait_check = dso_local global %struct.tracepoint { ptr @__tpstrtab_host1x_syncpt_wait_check, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_host1x_syncpt_wait_check, ptr null, ptr @__traceiter_host1x_syncpt_wait_check, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_host1x_syncpt_wait_check = internal constant ptr @__tracepoint_host1x_syncpt_wait_check, section "__tracepoints_ptrs", align 4
@trace_event_fields_host1x = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_host1x = internal global %struct.trace_event_class { ptr @.str.51, ptr @trace_event_raw_event_host1x, ptr @perf_trace_host1x, ptr @trace_event_reg, ptr @trace_event_fields_host1x, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_host1x, i64 24), ptr getelementptr (i8, ptr @event_class_host1x, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_host1x = internal global %struct.trace_event_functions { ptr @trace_raw_output_host1x, ptr null, ptr null, ptr null }, align 4
@print_fmt_host1x = internal global [21 x i8] c"\22name=%s\22, REC->name\00", align 1
@event_host1x_channel_open = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x, %union.anon.0 { ptr @__tracepoint_host1x_channel_open }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x }, ptr @print_fmt_host1x, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_host1x_channel_open = internal global ptr @event_host1x_channel_open, section "_ftrace_events", align 4
@event_host1x_channel_release = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x, %union.anon.0 { ptr @__tracepoint_host1x_channel_release }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x }, ptr @print_fmt_host1x, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_host1x_channel_release = internal global ptr @event_host1x_channel_release, section "_ftrace_events", align 4
@event_host1x_cdma_begin = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x, %union.anon.0 { ptr @__tracepoint_host1x_cdma_begin }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x }, ptr @print_fmt_host1x, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_host1x_cdma_begin = internal global ptr @event_host1x_cdma_begin, section "_ftrace_events", align 4
@event_host1x_cdma_end = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x, %union.anon.0 { ptr @__tracepoint_host1x_cdma_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x }, ptr @print_fmt_host1x, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_host1x_cdma_end = internal global ptr @event_host1x_cdma_end, section "_ftrace_events", align 4
@trace_event_fields_host1x_cdma_push = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_host1x_cdma_push = internal global %struct.trace_event_class { ptr @.str.51, ptr @trace_event_raw_event_host1x_cdma_push, ptr @perf_trace_host1x_cdma_push, ptr @trace_event_reg, ptr @trace_event_fields_host1x_cdma_push, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_host1x_cdma_push, i64 24), ptr getelementptr (i8, ptr @event_class_host1x_cdma_push, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_host1x_cdma_push = internal global %struct.trace_event_functions { ptr @trace_raw_output_host1x_cdma_push, ptr null, ptr null, ptr null }, align 4
@print_fmt_host1x_cdma_push = internal global [61 x i8] c"\22name=%s, op1=%08x, op2=%08x\22, REC->name, REC->op1, REC->op2\00", align 1
@event_host1x_cdma_push = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x_cdma_push, %union.anon.0 { ptr @__tracepoint_host1x_cdma_push }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x_cdma_push }, ptr @print_fmt_host1x_cdma_push, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_host1x_cdma_push = internal global ptr @event_host1x_cdma_push, section "_ftrace_events", align 4
@trace_event_fields_host1x_cdma_push_wide = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_host1x_cdma_push_wide = internal global %struct.trace_event_class { ptr @.str.51, ptr @trace_event_raw_event_host1x_cdma_push_wide, ptr @perf_trace_host1x_cdma_push_wide, ptr @trace_event_reg, ptr @trace_event_fields_host1x_cdma_push_wide, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_host1x_cdma_push_wide, i64 24), ptr getelementptr (i8, ptr @event_class_host1x_cdma_push_wide, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_host1x_cdma_push_wide = internal global %struct.trace_event_functions { ptr @trace_raw_output_host1x_cdma_push_wide, ptr null, ptr null, ptr null }, align 4
@print_fmt_host1x_cdma_push_wide = internal global [100 x i8] c"\22name=%s, op1=%08x, op2=%08x, op3=%08x op4=%08x\22, REC->name, REC->op1, REC->op2, REC->op3, REC->op4\00", align 1
@event_host1x_cdma_push_wide = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x_cdma_push_wide, %union.anon.0 { ptr @__tracepoint_host1x_cdma_push_wide }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x_cdma_push_wide }, ptr @print_fmt_host1x_cdma_push_wide, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_host1x_cdma_push_wide = internal global ptr @event_host1x_cdma_push_wide, section "_ftrace_events", align 4
@trace_event_fields_host1x_cdma_push_gather = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon { %struct.anon { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon { %struct.anon { ptr @.str.15, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon { %struct.anon { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_host1x_cdma_push_gather = internal global %struct.trace_event_class { ptr @.str.51, ptr @trace_event_raw_event_host1x_cdma_push_gather, ptr @perf_trace_host1x_cdma_push_gather, ptr @trace_event_reg, ptr @trace_event_fields_host1x_cdma_push_gather, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_host1x_cdma_push_gather, i64 24), ptr getelementptr (i8, ptr @event_class_host1x_cdma_push_gather, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_host1x_cdma_push_gather = internal global %struct.trace_event_functions { ptr @trace_raw_output_host1x_cdma_push_gather, ptr null, ptr null, ptr null }, align 4
@print_fmt_host1x_cdma_push_gather = internal global [174 x i8] c"\22name=%s, bo=%p, words=%u, offset=%d, contents=[%s]\22, REC->name, REC->bo, REC->words, REC->offset, __print_hex(__get_dynamic_array(cmdbuf), REC->cmdbuf ? REC->words * 4 : 0)\00", align 1
@event_host1x_cdma_push_gather = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x_cdma_push_gather, %union.anon.0 { ptr @__tracepoint_host1x_cdma_push_gather }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x_cdma_push_gather }, ptr @print_fmt_host1x_cdma_push_gather, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_host1x_cdma_push_gather = internal global ptr @event_host1x_cdma_push_gather, section "_ftrace_events", align 4
@trace_event_fields_host1x_channel_submit = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_host1x_channel_submit = internal global %struct.trace_event_class { ptr @.str.51, ptr @trace_event_raw_event_host1x_channel_submit, ptr @perf_trace_host1x_channel_submit, ptr @trace_event_reg, ptr @trace_event_fields_host1x_channel_submit, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_host1x_channel_submit, i64 24), ptr getelementptr (i8, ptr @event_class_host1x_channel_submit, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_host1x_channel_submit = internal global %struct.trace_event_functions { ptr @trace_raw_output_host1x_channel_submit, ptr null, ptr null, ptr null }, align 4
@print_fmt_host1x_channel_submit = internal global [137 x i8] c"\22name=%s, cmdbufs=%u, relocs=%u, syncpt_id=%u, syncpt_incrs=%u\22, REC->name, REC->cmdbufs, REC->relocs, REC->syncpt_id, REC->syncpt_incrs\00", align 1
@event_host1x_channel_submit = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x_channel_submit, %union.anon.0 { ptr @__tracepoint_host1x_channel_submit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x_channel_submit }, ptr @print_fmt_host1x_channel_submit, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_host1x_channel_submit = internal global ptr @event_host1x_channel_submit, section "_ftrace_events", align 4
@trace_event_fields_host1x_channel_submitted = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_host1x_channel_submitted = internal global %struct.trace_event_class { ptr @.str.51, ptr @trace_event_raw_event_host1x_channel_submitted, ptr @perf_trace_host1x_channel_submitted, ptr @trace_event_reg, ptr @trace_event_fields_host1x_channel_submitted, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_host1x_channel_submitted, i64 24), ptr getelementptr (i8, ptr @event_class_host1x_channel_submitted, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_host1x_channel_submitted = internal global %struct.trace_event_functions { ptr @trace_raw_output_host1x_channel_submitted, ptr null, ptr null, ptr null }, align 4
@print_fmt_host1x_channel_submitted = internal global [87 x i8] c"\22name=%s, syncpt_base=%d, syncpt_max=%d\22, REC->name, REC->syncpt_base, REC->syncpt_max\00", align 1
@event_host1x_channel_submitted = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x_channel_submitted, %union.anon.0 { ptr @__tracepoint_host1x_channel_submitted }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x_channel_submitted }, ptr @print_fmt_host1x_channel_submitted, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_host1x_channel_submitted = internal global ptr @event_host1x_channel_submitted, section "_ftrace_events", align 4
@trace_event_fields_host1x_channel_submit_complete = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon { %struct.anon { ptr @.str.27, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.28, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_host1x_channel_submit_complete = internal global %struct.trace_event_class { ptr @.str.51, ptr @trace_event_raw_event_host1x_channel_submit_complete, ptr @perf_trace_host1x_channel_submit_complete, ptr @trace_event_reg, ptr @trace_event_fields_host1x_channel_submit_complete, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_host1x_channel_submit_complete, i64 24), ptr getelementptr (i8, ptr @event_class_host1x_channel_submit_complete, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_host1x_channel_submit_complete = internal global %struct.trace_event_functions { ptr @trace_raw_output_host1x_channel_submit_complete, ptr null, ptr null, ptr null }, align 4
@print_fmt_host1x_channel_submit_complete = internal global [67 x i8] c"\22name=%s, count=%d, thresh=%d\22, REC->name, REC->count, REC->thresh\00", align 1
@event_host1x_channel_submit_complete = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x_channel_submit_complete, %union.anon.0 { ptr @__tracepoint_host1x_channel_submit_complete }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x_channel_submit_complete }, ptr @print_fmt_host1x_channel_submit_complete, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_host1x_channel_submit_complete = internal global ptr @event_host1x_channel_submit_complete, section "_ftrace_events", align 4
@trace_event_fields_host1x_wait_cdma = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_host1x_wait_cdma = internal global %struct.trace_event_class { ptr @.str.51, ptr @trace_event_raw_event_host1x_wait_cdma, ptr @perf_trace_host1x_wait_cdma, ptr @trace_event_reg, ptr @trace_event_fields_host1x_wait_cdma, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_host1x_wait_cdma, i64 24), ptr getelementptr (i8, ptr @event_class_host1x_wait_cdma, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_host1x_wait_cdma = internal global %struct.trace_event_functions { ptr @trace_raw_output_host1x_wait_cdma, ptr null, ptr null, ptr null }, align 4
@print_fmt_host1x_wait_cdma = internal global [45 x i8] c"\22name=%s, event=%d\22, REC->name, REC->eventid\00", align 1
@event_host1x_wait_cdma = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x_wait_cdma, %union.anon.0 { ptr @__tracepoint_host1x_wait_cdma }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x_wait_cdma }, ptr @print_fmt_host1x_wait_cdma, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_host1x_wait_cdma = internal global ptr @event_host1x_wait_cdma, section "_ftrace_events", align 4
@trace_event_fields_host1x_syncpt_load_min = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_host1x_syncpt_load_min = internal global %struct.trace_event_class { ptr @.str.51, ptr @trace_event_raw_event_host1x_syncpt_load_min, ptr @perf_trace_host1x_syncpt_load_min, ptr @trace_event_reg, ptr @trace_event_fields_host1x_syncpt_load_min, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_host1x_syncpt_load_min, i64 24), ptr getelementptr (i8, ptr @event_class_host1x_syncpt_load_min, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_host1x_syncpt_load_min = internal global %struct.trace_event_functions { ptr @trace_raw_output_host1x_syncpt_load_min, ptr null, ptr null, ptr null }, align 4
@print_fmt_host1x_syncpt_load_min = internal global [35 x i8] c"\22id=%d, val=%d\22, REC->id, REC->val\00", align 1
@event_host1x_syncpt_load_min = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x_syncpt_load_min, %union.anon.0 { ptr @__tracepoint_host1x_syncpt_load_min }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x_syncpt_load_min }, ptr @print_fmt_host1x_syncpt_load_min, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_host1x_syncpt_load_min = internal global ptr @event_host1x_syncpt_load_min, section "_ftrace_events", align 4
@trace_event_fields_host1x_syncpt_wait_check = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.10, %union.anon { %struct.anon { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.28, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_host1x_syncpt_wait_check = internal global %struct.trace_event_class { ptr @.str.51, ptr @trace_event_raw_event_host1x_syncpt_wait_check, ptr @perf_trace_host1x_syncpt_wait_check, ptr @trace_event_reg, ptr @trace_event_fields_host1x_syncpt_wait_check, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_host1x_syncpt_wait_check, i64 24), ptr getelementptr (i8, ptr @event_class_host1x_syncpt_wait_check, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_host1x_syncpt_wait_check = internal global %struct.trace_event_functions { ptr @trace_raw_output_host1x_syncpt_wait_check, ptr null, ptr null, ptr null }, align 4
@print_fmt_host1x_syncpt_wait_check = internal global [112 x i8] c"\22bo=%p, offset=%05x, id=%d, thresh=%d, current=%d\22, REC->bo, REC->offset, REC->syncpt_id, REC->thresh, REC->min\00", align 1
@event_host1x_syncpt_wait_check = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_host1x_syncpt_wait_check, %union.anon.0 { ptr @__tracepoint_host1x_syncpt_wait_check }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_host1x_syncpt_wait_check }, ptr @print_fmt_host1x_syncpt_wait_check, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_host1x_syncpt_wait_check = internal global ptr @event_host1x_syncpt_wait_check, section "_ftrace_events", align 4
@__initcall__kmod_host1x__307_678_tegra_host1x_init6 = internal global ptr @tegra_host1x_init, section ".initcall6.init", align 4
@drivers = internal constant [2 x ptr] [ptr @tegra_host1x_driver, ptr @tegra_mipi_driver], align 4
@host1x_bus_type = external dso_local global %struct.bus_type, align 4
@__exitcall_tegra_host1x_exit = internal global ptr @tegra_host1x_exit, section ".exitcall.exit", align 4
@__kstrtab_host1x_get_dma_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_get_dma_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_get_dma_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_get_dma_mask to i32), ptr @__kstrtab_host1x_get_dma_mask, ptr @__kstrtabns_host1x_get_dma_mask }, section "___ksymtab+host1x_get_dma_mask", align 4
@__UNIQUE_ID_author308 = internal constant [64 x i8] c"host1x.author=Thierry Reding <thierry.reding@avionic-design.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [54 x i8] c"host1x.author=Terje Bergstrom <tbergstrom@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description310 = internal constant [52 x i8] c"host1x.description=Host1x driver for Tegra products\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [38 x i8] c"host1x.file=drivers/gpu/host1x/host1x\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [19 x i8] c"host1x.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"const char *\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"name=%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"op1\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"op2\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"name=%s, op1=%08x, op2=%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"op3\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"op4\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"name=%s, op1=%08x, op2=%08x, op3=%08x op4=%08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"struct host1x_bo *\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"bo\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"words\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"cmdbuf\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"__data_loc u32[]\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"name=%s, bo=%p, words=%u, offset=%d, contents=[%s]\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"cmdbufs\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"relocs\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"syncpt_id\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"syncpt_incrs\00", align 1
@.str.22 = private unnamed_addr constant [63 x i8] c"name=%s, cmdbufs=%u, relocs=%u, syncpt_id=%u, syncpt_incrs=%u\0A\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"syncpt_base\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"syncpt_max\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"name=%s, syncpt_base=%d, syncpt_max=%d\0A\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"thresh\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"name=%s, count=%d, thresh=%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"eventid\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"name=%s, event=%d\0A\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"id=%d, val=%d\0A\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.36 = private unnamed_addr constant [50 x i8] c"bo=%p, offset=%05x, id=%d, thresh=%d, current=%d\0A\00", align 1
@tegra_host1x_driver = internal global %struct.platform_driver { ptr @host1x_probe, ptr @host1x_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.37, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @host1x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @host1x_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@tegra_mipi_driver = external dso_local global %struct.platform_driver, align 4
@.str.37 = private unnamed_addr constant [13 x i8] c"tegra-host1x\00", align 1
@host1x_of_match = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-host1x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @host1x07_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-host1x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @host1x06_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-host1x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @host1x05_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-host1x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @host1x04_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-host1x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @host1x02_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-host1x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @host1x01_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-host1x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @host1x01_info }, %struct.of_device_id zeroinitializer], align 4
@host1x_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @host1x_runtime_suspend, ptr @host1x_runtime_resume, ptr null }, align 4
@.str.38 = private unnamed_addr constant [3 x i8] c"vm\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"failed to get vm registers\0A\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"hypervisor\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"failed to get hypervisor registers\0A\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"failed to get registers\0A\00", align 1
@host1x_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"&host->devices_lock\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"failed to get clock: %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"failed to setup IOMMU: %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [35 x i8] c"failed to initialize channel list\0A\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"failed to initialize syncpts\0A\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"failed to initialize interrupts\0A\00", align 1
@host1x_bo_cache_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"&cache->lock\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"mc\00", align 1
@.str.51 = private constant [7 x i8] c"host1x\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"failed to get reset: %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"drivers/gpu/host1x/dev.c\00", align 1
@.str.54 = private unnamed_addr constant [31 x i8] c"failed to attach to IOMMU: %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"failed to set DMA mask: %d\0A\00", align 1
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@host1x07_info = internal constant %struct.host1x_info { i32 63, i32 704, i32 0, i32 32, ptr @host1x07_init, i32 0, i64 1099511627775, i8 1, i8 1, i32 3, ptr @tegra194_sid_table, i8 0 }, align 8
@host1x06_info = internal constant %struct.host1x_info { i32 63, i32 576, i32 16, i32 24, ptr @host1x06_init, i32 0, i64 1099511627775, i8 1, i8 1, i32 2, ptr @tegra186_sid_table, i8 0 }, align 8
@host1x05_info = internal constant %struct.host1x_info { i32 14, i32 192, i32 64, i32 16, ptr @host1x05_init, i32 8448, i64 17179869183, i8 0, i8 0, i32 0, ptr null, i8 0 }, align 8
@host1x04_info = internal constant %struct.host1x_info { i32 12, i32 192, i32 64, i32 16, ptr @host1x04_init, i32 8448, i64 17179869183, i8 0, i8 0, i32 0, ptr null, i8 0 }, align 8
@host1x02_info = internal constant %struct.host1x_info { i32 9, i32 32, i32 12, i32 16, ptr @host1x02_init, i32 12288, i64 4294967295, i8 0, i8 0, i32 0, ptr null, i8 1 }, align 8
@host1x01_info = internal constant %struct.host1x_info { i32 8, i32 32, i32 8, i32 16, ptr @host1x01_init, i32 12288, i64 4294967295, i8 0, i8 0, i32 0, ptr null, i8 1 }, align 8
@tegra194_sid_table = internal constant [3 x %struct.host1x_sid_entry] [%struct.host1x_sid_entry { i32 6896, i32 48, i32 52 }, %struct.host1x_sid_entry { i32 6912, i32 48, i32 52 }, %struct.host1x_sid_entry { i32 7104, i32 48, i32 52 }], align 4
@tegra186_sid_table = internal constant [2 x %struct.host1x_sid_entry] [%struct.host1x_sid_entry { i32 6896, i32 48, i32 52 }, %struct.host1x_sid_entry { i32 6912, i32 48, i32 52 }], align 4
@.str.56 = private unnamed_addr constant [28 x i8] c"failed to assert reset: %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [29 x i8] c"failed to acquire reset: %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [28 x i8] c"failed to enable clock: %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [30 x i8] c"failed to deassert reset: %d\0A\00", align 1
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__event_host1x_cdma_begin, ptr @__event_host1x_cdma_end, ptr @__event_host1x_cdma_push, ptr @__event_host1x_cdma_push_gather, ptr @__event_host1x_cdma_push_wide, ptr @__event_host1x_channel_open, ptr @__event_host1x_channel_release, ptr @__event_host1x_channel_submit, ptr @__event_host1x_channel_submit_complete, ptr @__event_host1x_channel_submitted, ptr @__event_host1x_syncpt_load_min, ptr @__event_host1x_syncpt_wait_check, ptr @__event_host1x_wait_cdma, ptr @__exitcall_tegra_host1x_exit, ptr @__initcall__kmod_host1x__307_678_tegra_host1x_init6, ptr @__ksymtab_host1x_get_dma_mask, ptr @__tracepoint_host1x_cdma_begin, ptr @__tracepoint_host1x_cdma_end, ptr @__tracepoint_host1x_cdma_push, ptr @__tracepoint_host1x_cdma_push_gather, ptr @__tracepoint_host1x_cdma_push_wide, ptr @__tracepoint_host1x_channel_open, ptr @__tracepoint_host1x_channel_release, ptr @__tracepoint_host1x_channel_submit, ptr @__tracepoint_host1x_channel_submit_complete, ptr @__tracepoint_host1x_channel_submitted, ptr @__tracepoint_host1x_syncpt_load_min, ptr @__tracepoint_host1x_syncpt_wait_check, ptr @__tracepoint_host1x_wait_cdma, ptr @__tracepoint_ptr_host1x_cdma_begin, ptr @__tracepoint_ptr_host1x_cdma_end, ptr @__tracepoint_ptr_host1x_cdma_push, ptr @__tracepoint_ptr_host1x_cdma_push_gather, ptr @__tracepoint_ptr_host1x_cdma_push_wide, ptr @__tracepoint_ptr_host1x_channel_open, ptr @__tracepoint_ptr_host1x_channel_release, ptr @__tracepoint_ptr_host1x_channel_submit, ptr @__tracepoint_ptr_host1x_channel_submit_complete, ptr @__tracepoint_ptr_host1x_channel_submitted, ptr @__tracepoint_ptr_host1x_syncpt_load_min, ptr @__tracepoint_ptr_host1x_syncpt_wait_check, ptr @__tracepoint_ptr_host1x_wait_cdma, ptr @event_class_host1x, ptr @event_class_host1x_cdma_push, ptr @event_class_host1x_cdma_push_gather, ptr @event_class_host1x_cdma_push_wide, ptr @event_class_host1x_channel_submit, ptr @event_class_host1x_channel_submit_complete, ptr @event_class_host1x_channel_submitted, ptr @event_class_host1x_syncpt_load_min, ptr @event_class_host1x_syncpt_wait_check, ptr @event_class_host1x_wait_cdma, ptr @event_host1x_cdma_begin, ptr @event_host1x_cdma_end, ptr @event_host1x_cdma_push, ptr @event_host1x_cdma_push_gather, ptr @event_host1x_cdma_push_wide, ptr @event_host1x_channel_open, ptr @event_host1x_channel_release, ptr @event_host1x_channel_submit, ptr @event_host1x_channel_submit_complete, ptr @event_host1x_channel_submitted, ptr @event_host1x_syncpt_load_min, ptr @event_host1x_syncpt_wait_check, ptr @event_host1x_wait_cdma, ptr @tegra_host1x_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_channel_open(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_channel_open, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #12
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
define dso_local i32 @__traceiter_host1x_channel_release(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_channel_release, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #12
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_cdma_begin(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_begin, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #12
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_cdma_end(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_end, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #12
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_cdma_push(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_push, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #12
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_cdma_push_wide(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_push_wide, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #12
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_cdma_push_gather(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_cdma_push_gather, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #12
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_channel_submit(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_channel_submit, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #12
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_channel_submitted(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_channel_submitted, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #12
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_channel_submit_complete(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_channel_submit_complete, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #12
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_wait_cdma(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_wait_cdma, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #12
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_syncpt_load_min(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_syncpt_load_min, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #12
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_host1x_syncpt_wait_check(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_syncpt_wait_check, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #12
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_host1x(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #12
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_host1x, ptr %14, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #12
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_host1x(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #7, !srcloc !12
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
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #12
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #12
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_host1x, ptr %20, i32 0, i32 1
  store ptr %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #12
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_host1x_cdma_push(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #12
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push, ptr %16, i32 0, i32 1
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #12
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_host1x_cdma_push(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #7, !srcloc !12
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
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #12
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #12
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push, ptr %22, i32 0, i32 1
  store ptr %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #12
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_host1x_cdma_push_wide(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
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
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #12
  br i1 %16, label %26, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 28) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %18, i32 0, i32 1
  store ptr %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %18, i32 0, i32 2
  store i32 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %18, i32 0, i32 3
  store i32 %3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %18, i32 0, i32 4
  store i32 %4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %18, i32 0, i32 5
  store i32 %5, ptr %25, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #12
  br label %26

26:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_host1x_cdma_push_wide(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #7, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %20, %6
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #12
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #12
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %24, i32 0, i32 1
  store ptr %1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %24, i32 0, i32 2
  store i32 %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %24, i32 0, i32 3
  store i32 %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %24, i32 0, i32 4
  store i32 %4, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %24, i32 0, i32 5
  store i32 %5, ptr %41, align 4
  %42 = load i32, ptr %8, align 4
  %43 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 28, i32 noundef %42, ptr noundef %0, i64 noundef 1, ptr noundef %43, ptr noundef %16, ptr noundef null) #12
  br label %44

44:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_host1x_cdma_push_gather(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef readonly %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
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
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #12
  br i1 %16, label %37, label %17

17:                                               ; preds = %15, %12, %6
  %18 = shl i32 %3, 2
  %19 = add i32 %18, 32
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef %19) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %17
  %23 = shl i32 %3, 18
  %24 = or i32 %23, 32
  %25 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %20, i32 0, i32 6
  store i32 %24, ptr %25, align 4
  %26 = icmp ne ptr %5, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %20, i32 32
  %29 = getelementptr i8, ptr %5, i32 %4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %28, ptr align 1 %29, i32 %18, i1 false)
  br label %30

30:                                               ; preds = %27, %22
  %31 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %20, i32 0, i32 5
  %32 = zext i1 %26 to i8
  store i8 %32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %20, i32 0, i32 1
  store ptr %1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %20, i32 0, i32 2
  store ptr %2, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %20, i32 0, i32 3
  store i32 %3, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %20, i32 0, i32 4
  store i32 %4, ptr %36, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #12
  br label %37

37:                                               ; preds = %30, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_host1x_cdma_push_gather(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef readonly %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = shl i32 %3, 2
  %10 = shl i32 %3, 18
  %11 = or i32 %10, 32
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #7, !srcloc !12
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load volatile ptr, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %57, label %26

26:                                               ; preds = %23, %6
  %27 = add i32 %9, 43
  %28 = and i32 %27, -8
  %29 = add i32 %28, -4
  %30 = call ptr @perf_trace_buf_alloc(i32 noundef %29, ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %57, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %7, align 4
  %34 = call ptr @llvm.returnaddress(i32 0) #12
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %33, i32 0, i32 15
  store i32 %35, ptr %36, align 4
  %37 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %33, i32 0, i32 11
  store i32 %38, ptr %39, align 4
  %40 = call i32 @llvm.read_register.i32(metadata !0) #12
  %41 = getelementptr [18 x i32], ptr %33, i32 0, i32 13
  store i32 %40, ptr %41, align 4
  %42 = getelementptr [18 x i32], ptr %33, i32 0, i32 16
  store i32 19, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %30, i32 0, i32 6
  store i32 %11, ptr %43, align 4
  %44 = icmp ne ptr %5, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = getelementptr i8, ptr %30, i32 32
  %47 = getelementptr i8, ptr %5, i32 %4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %46, ptr align 1 %47, i32 %9, i1 false)
  br label %48

48:                                               ; preds = %45, %32
  %49 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %30, i32 0, i32 5
  %50 = zext i1 %44 to i8
  store i8 %50, ptr %49, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %30, i32 0, i32 1
  store ptr %1, ptr %51, align 4
  %52 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %30, i32 0, i32 2
  store ptr %2, ptr %52, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %30, i32 0, i32 3
  store i32 %3, ptr %53, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %30, i32 0, i32 4
  store i32 %4, ptr %54, align 4
  %55 = load i32, ptr %8, align 4
  %56 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %30, i32 noundef %29, i32 noundef %55, ptr noundef %0, i64 noundef 1, ptr noundef %56, ptr noundef %19, ptr noundef null) #12
  br label %57

57:                                               ; preds = %48, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_host1x_channel_submit(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
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
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #12
  br i1 %16, label %26, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 28) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %18, i32 0, i32 1
  store ptr %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %18, i32 0, i32 2
  store i32 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %18, i32 0, i32 3
  store i32 %3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %18, i32 0, i32 4
  store i32 %4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %18, i32 0, i32 5
  store i32 %5, ptr %25, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #12
  br label %26

26:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_host1x_channel_submit(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #7, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %20, %6
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #12
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #12
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %24, i32 0, i32 1
  store ptr %1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %24, i32 0, i32 2
  store i32 %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %24, i32 0, i32 3
  store i32 %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %24, i32 0, i32 4
  store i32 %4, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %24, i32 0, i32 5
  store i32 %5, ptr %41, align 4
  %42 = load i32, ptr %8, align 4
  %43 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 28, i32 noundef %42, ptr noundef %0, i64 noundef 1, ptr noundef %43, ptr noundef %16, ptr noundef null) #12
  br label %44

44:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_host1x_channel_submitted(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #12
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submitted, ptr %16, i32 0, i32 1
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submitted, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submitted, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #12
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_host1x_channel_submitted(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #7, !srcloc !12
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
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #12
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #12
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submitted, ptr %22, i32 0, i32 1
  store ptr %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submitted, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submitted, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #12
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_host1x_channel_submit_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #12
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit_complete, ptr %16, i32 0, i32 1
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit_complete, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit_complete, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #12
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_host1x_channel_submit_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #7, !srcloc !12
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
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #12
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #12
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit_complete, ptr %22, i32 0, i32 1
  store ptr %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit_complete, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit_complete, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #12
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_host1x_wait_cdma(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #12
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_host1x_wait_cdma, ptr %15, i32 0, i32 1
  store ptr %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_host1x_wait_cdma, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #12
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_host1x_wait_cdma(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #7, !srcloc !12
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
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #12
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #12
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_host1x_wait_cdma, ptr %21, i32 0, i32 1
  store ptr %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_host1x_wait_cdma, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #12
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_host1x_syncpt_load_min(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #12
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_load_min, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_load_min, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #12
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_host1x_syncpt_load_min(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #7, !srcloc !12
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
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #12
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #12
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_load_min, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_load_min, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #12
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_host1x_syncpt_wait_check(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
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
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #12
  br i1 %16, label %26, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 28) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %18, i32 0, i32 1
  store ptr %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %18, i32 0, i32 2
  store i32 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %18, i32 0, i32 3
  store i32 %3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %18, i32 0, i32 4
  store i32 %4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %18, i32 0, i32 5
  store i32 %5, ptr %25, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #12
  br label %26

26:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_host1x_syncpt_wait_check(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #7, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %20, %6
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #12
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #12
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %24, i32 0, i32 1
  store ptr %1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %24, i32 0, i32 2
  store i32 %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %24, i32 0, i32 3
  store i32 %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %24, i32 0, i32 4
  store i32 %4, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %24, i32 0, i32 5
  store i32 %5, ptr %41, align 4
  %42 = load i32, ptr %8, align 4
  %43 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 28, i32 noundef %42, ptr noundef %0, i64 noundef 1, ptr noundef %43, ptr noundef %16, ptr noundef null) #12
  br label %44

44:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_hypervisor_writel(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %4 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %1) #12, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @host1x_hypervisor_readl(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !16
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_sync_writel(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.host1x_info, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %5, i32 %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !17
  tail call void @arm_heavy_mb() #12
  %10 = getelementptr i8, ptr %9, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %1) #12, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @host1x_sync_readl(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.host1x_info, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr i8, ptr %8, i32 %1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #12, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !18
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_ch_writel(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !19
  tail call void @arm_heavy_mb() #12
  %4 = getelementptr inbounds %struct.host1x_channel, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %1) #12, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @host1x_ch_readl(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.host1x_channel, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !20
  ret i32 %6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_host1x_init() #3 section ".init.text" {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @host1x_bus_type) #12
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @__platform_register_drivers(ptr noundef nonnull @drivers, i32 noundef 2, ptr noundef null) #12
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @bus_unregister(ptr noundef nonnull @host1x_bus_type) #12
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %1, %0 ], [ %4, %6 ], [ %4, %3 ]
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_host1x_exit() #3 section ".exit.text" {
  tail call void @platform_unregister_drivers(ptr noundef nonnull @drivers, i32 noundef 2) #12
  tail call void @bus_unregister(ptr noundef nonnull @host1x_bus_type) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @host1x_get_dma_mask(ptr nocapture noundef readonly %0) #4 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.host1x_info, ptr %2, i32 0, i32 6
  %4 = load i64, ptr %3, align 8
  ret i64 %4
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_host1x(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #12
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_host1x, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %11) #12
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #12
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_host1x_cdma_push(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #12
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %11, i32 noundef %13, i32 noundef %15) #12
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #12
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_host1x_cdma_push_wide(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #12
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_wide, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #12
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #12
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_host1x_cdma_push_gather(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #12
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %30

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %5, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %5, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %5, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 65535
  %22 = getelementptr i8, ptr %5, i32 %21
  %23 = getelementptr inbounds %struct.trace_event_raw_host1x_cdma_push_gather, ptr %5, i32 0, i32 5
  %24 = load i8, ptr %23, align 4, !range !21
  %25 = icmp eq i8 %24, 0
  %26 = shl i32 %16, 2
  %27 = select i1 %25, i32 0, i32 %26
  %28 = tail call ptr @trace_print_hex_seq(ptr noundef %9, ptr noundef %22, i32 noundef %27, i1 noundef zeroext false) #12
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef %12, ptr noundef %14, i32 noundef %16, i32 noundef %18, ptr noundef %28) #12
  %29 = tail call i32 @trace_handle_return(ptr noundef %10) #12
  br label %30

30:                                               ; preds = %8, %3
  %31 = phi i32 [ %29, %8 ], [ %6, %3 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_hex_seq(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_host1x_channel_submit(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #12
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #12
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #12
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_host1x_channel_submitted(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #12
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submitted, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submitted, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submitted, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef %11, i32 noundef %13, i32 noundef %15) #12
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #12
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_host1x_channel_submit_complete(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #12
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit_complete, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit_complete, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_host1x_channel_submit_complete, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %11, i32 noundef %13, i32 noundef %15) #12
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #12
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_host1x_wait_cdma(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #12
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_host1x_wait_cdma, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_host1x_wait_cdma, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef %11, i32 noundef %13) #12
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #12
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_host1x_syncpt_load_min(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #12
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_load_min, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_load_min, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %11, i32 noundef %13) #12
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #12
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_host1x_syncpt_wait_check(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #12
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_host1x_syncpt_wait_check, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #12
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #12
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @host1x_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.tegra_core_opp_params, align 1
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 1120, i32 noundef 3520) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %140, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @of_device_get_match_data(ptr noundef %3) #12
  store ptr %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.host1x_info, ptr %7, i32 0, i32 8
  %9 = load i8, ptr %8, align 1, !range !21
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.38) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.39) #13
  br label %140

15:                                               ; preds = %11
  %16 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.40) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.41) #13
  br label %140

19:                                               ; preds = %6
  %20 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.42) #13
  br label %140

23:                                               ; preds = %19, %15
  %24 = phi ptr [ %12, %15 ], [ %20, %19 ]
  %25 = phi ptr [ %16, %15 ], [ null, %19 ]
  %26 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #12
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %140, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.host1x, ptr %4, i32 0, i32 29
  store volatile ptr %29, ptr %29, align 4
  %30 = getelementptr inbounds %struct.host1x, ptr %4, i32 0, i32 29, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.host1x, ptr %4, i32 0, i32 29, i32 1
  tail call void @__mutex_init(ptr noundef %31, ptr noundef nonnull @.str.49, ptr noundef nonnull @host1x_bo_cache_init.__key) #12
  %32 = getelementptr inbounds %struct.host1x, ptr %4, i32 0, i32 25
  tail call void @__mutex_init(ptr noundef %32, ptr noundef nonnull @.str.43, ptr noundef nonnull @host1x_probe.__key) #12
  %33 = getelementptr inbounds %struct.host1x, ptr %4, i32 0, i32 26
  store volatile ptr %33, ptr %33, align 4
  %34 = getelementptr inbounds %struct.host1x, ptr %4, i32 0, i32 26, i32 1
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.host1x, ptr %4, i32 0, i32 27
  store volatile ptr %35, ptr %35, align 4
  %36 = getelementptr inbounds %struct.host1x, ptr %4, i32 0, i32 27, i32 1
  store ptr %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.host1x, ptr %4, i32 0, i32 5
  store ptr %3, ptr %37, align 4
  %38 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %38, align 8
  %39 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef nonnull %24) #12
  %40 = getelementptr inbounds %struct.host1x, ptr %4, i32 0, i32 1
  store ptr %39, ptr %40, align 4
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = ptrtoint ptr %39 to i32
  br label %140

44:                                               ; preds = %28
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr inbounds %struct.host1x_info, ptr %45, i32 0, i32 8
  %47 = load i8, ptr %46, align 1, !range !21
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %25) #12
  %51 = getelementptr inbounds %struct.host1x, ptr %4, i32 0, i32 2
  store ptr %50, ptr %51, align 4
  %52 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = ptrtoint ptr %50 to i32
  br label %140

55:                                               ; preds = %49, %44
  %56 = getelementptr inbounds %struct.host1x, ptr %4, i32 0, i32 28
  %57 = load ptr, ptr %37, align 4
  %58 = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 20
  store ptr %56, ptr %58, align 4
  %59 = load ptr, ptr %37, align 4
  %60 = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 20
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %55
  store i32 -1, ptr %61, align 4
  br label %64

64:                                               ; preds = %63, %55
  %65 = load ptr, ptr %4, align 4
  %66 = getelementptr inbounds %struct.host1x_info, ptr %65, i32 0, i32 4
  %67 = load ptr, ptr %66, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = tail call i32 %67(ptr noundef nonnull %4) #12
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %140

72:                                               ; preds = %69, %64
  %73 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #12
  %74 = getelementptr inbounds %struct.host1x, ptr %4, i32 0, i32 6
  store ptr %73, ptr %74, align 4
  %75 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = icmp eq ptr %73, inttoptr (i32 -517 to ptr)
  br i1 %77, label %140, label %78

78:                                               ; preds = %76
  %79 = ptrtoint ptr %73 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.44, i32 noundef %79) #13
  br label %140

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.host1x, ptr %4, i32 0, i32 7
  store ptr @.str.50, ptr %81, align 4
  %82 = getelementptr %struct.host1x, ptr %4, i32 0, i32 7, i32 1
  store ptr @.str.51, ptr %82, align 4
  %83 = getelementptr inbounds %struct.host1x, ptr %4, i32 0, i32 8
  store i32 2, ptr %83, align 4
  %84 = load ptr, ptr %37, align 4
  %85 = tail call i32 @__devm_reset_control_bulk_get(ptr noundef %84, i32 noundef 2, ptr noundef %81, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #12
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %80
  %88 = load ptr, ptr %37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.52, i32 noundef %85) #13
  br label %140

89:                                               ; preds = %80
  %90 = getelementptr %struct.host1x, ptr %4, i32 0, i32 7, i32 1, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %94, !prof !11

93:                                               ; preds = %89
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 405, i32 noundef 9, ptr noundef null) #12
  br label %140

94:                                               ; preds = %89
  %95 = tail call fastcc i32 @host1x_iommu_init(ptr noundef nonnull %4)
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.45, i32 noundef %95) #13
  br label %140

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.host1x, ptr %4, i32 0, i32 23
  %100 = load ptr, ptr %4, align 4
  %101 = load i32, ptr %100, align 8
  %102 = tail call i32 @host1x_channel_list_init(ptr noundef %99, i32 noundef %101) #12
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %98
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.46) #13
  br label %138

105:                                              ; preds = %98
  %106 = tail call i32 @host1x_syncpt_init(ptr noundef nonnull %4) #12
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.47) #13
  br label %136

109:                                              ; preds = %105
  %110 = tail call i32 @host1x_intr_init(ptr noundef nonnull %4, i32 noundef %26) #12
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.48) #13
  br label %134

113:                                              ; preds = %109
  tail call void @pm_runtime_enable(ptr noundef %3) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #12
  store i8 1, ptr %2, align 1
  %114 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %3, ptr noundef nonnull %2) #12
  %115 = icmp eq i32 %114, -19
  %116 = select i1 %115, i32 0, i32 %114
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %113
  %119 = call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %3)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %118
  call void @host1x_debug_init(ptr noundef nonnull %4) #12
  %122 = call i32 @host1x_register(ptr noundef nonnull %4) #12
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %121
  %125 = call i32 @devm_of_platform_populate(ptr noundef %3) #12
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = call i32 @host1x_unregister(ptr noundef nonnull %4) #12
  br label %129

129:                                              ; preds = %127, %121
  %130 = phi i32 [ %122, %121 ], [ %125, %127 ]
  call void @host1x_debug_deinit(ptr noundef nonnull %4) #12
  %131 = call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 4) #12
  br label %132

132:                                              ; preds = %129, %118, %113
  %133 = phi i32 [ %116, %113 ], [ %119, %118 ], [ %130, %129 ]
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #12
  call void @host1x_intr_deinit(ptr noundef nonnull %4) #12
  br label %134

134:                                              ; preds = %132, %112
  %135 = phi i32 [ %110, %112 ], [ %133, %132 ]
  call void @host1x_syncpt_deinit(ptr noundef nonnull %4) #12
  br label %136

136:                                              ; preds = %134, %108
  %137 = phi i32 [ %106, %108 ], [ %135, %134 ]
  call void @host1x_channel_list_free(ptr noundef %99) #12
  br label %138

138:                                              ; preds = %136, %104
  %139 = phi i32 [ %102, %104 ], [ %137, %136 ]
  call fastcc void @host1x_iommu_exit(ptr noundef nonnull %4)
  br label %140

140:                                              ; preds = %138, %124, %97, %93, %87, %78, %76, %69, %53, %42, %23, %22, %18, %14, %1
  %141 = phi i32 [ %43, %42 ], [ %54, %53 ], [ %95, %97 ], [ %139, %138 ], [ -6, %18 ], [ -6, %14 ], [ -6, %22 ], [ -12, %1 ], [ %26, %23 ], [ %70, %69 ], [ %79, %78 ], [ -517, %76 ], [ 0, %124 ], [ -2, %93 ], [ %85, %87 ]
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @host1x_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @host1x_unregister(ptr noundef %3) #12
  tail call void @host1x_debug_deinit(ptr noundef %3) #12
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call i32 @pm_runtime_force_suspend(ptr noundef %5) #12
  tail call void @host1x_intr_deinit(ptr noundef %3) #12
  tail call void @host1x_syncpt_deinit(ptr noundef %3) #12
  %7 = getelementptr inbounds %struct.host1x, ptr %3, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.host1x, ptr %3, i32 0, i32 11
  tail call void @put_iova_domain(ptr noundef %11) #12
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr inbounds %struct.host1x, ptr %3, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  tail call void @iommu_detach_group(ptr noundef %12, ptr noundef %14) #12
  %15 = load ptr, ptr %7, align 4
  tail call void @iommu_domain_free(ptr noundef %15) #12
  store ptr null, ptr %7, align 4
  tail call void @iova_cache_put() #12
  %16 = load ptr, ptr %13, align 4
  tail call void @iommu_group_put(ptr noundef %16) #12
  store ptr null, ptr %13, align 4
  br label %17

17:                                               ; preds = %10, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @host1x_iommu_init(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.host1x_info, ptr %2, i32 0, i32 6
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @iommu_get_domain_for_dev(ptr noundef %6) #12
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 24
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  tail call void @arm_iommu_detach_device(ptr noundef %8) #12
  tail call void @arm_iommu_release_mapping(ptr noundef nonnull %10) #12
  %13 = load ptr, ptr %5, align 4
  %14 = tail call ptr @iommu_get_domain_for_dev(ptr noundef %13) #12
  br label %15

15:                                               ; preds = %12, %1
  %16 = phi ptr [ %14, %12 ], [ %7, %1 ]
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.host1x_info, ptr %17, i32 0, i32 6
  %19 = load i64, ptr %18, align 8
  %20 = icmp ult i64 %19, 4294967296
  %21 = icmp ne ptr %16, null
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %69, label %23

23:                                               ; preds = %15
  %24 = load ptr, ptr %5, align 4
  %25 = tail call ptr @iommu_group_get(ptr noundef %24) #12
  %26 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 9
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %25, null
  br i1 %27, label %77, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @iova_cache_get() #12
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %65, label %31

31:                                               ; preds = %28
  %32 = tail call ptr @iommu_domain_alloc(ptr noundef nonnull @platform_bus_type) #12
  %33 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 10
  store ptr %32, ptr %33, align 4
  %34 = icmp eq ptr %32, null
  br i1 %34, label %63, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %26, align 4
  %37 = tail call i32 @iommu_attach_group(ptr noundef nonnull %32, ptr noundef %36) #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = load ptr, ptr %33, align 4
  %41 = getelementptr inbounds %struct.iommu_domain, ptr %40, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %0, align 4
  %44 = getelementptr inbounds %struct.host1x_info, ptr %43, i32 0, i32 6
  %45 = load i64, ptr %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = and i32 %42, %46
  %48 = getelementptr inbounds %struct.iommu_domain, ptr %40, i32 0, i32 5, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, %46
  %51 = getelementptr inbounds %struct.iommu_domain, ptr %40, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = tail call i32 @llvm.cttz.i32(i32 %52, i1 false) #12, !range !22
  %54 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 11
  %55 = shl nuw i32 1, %53
  %56 = lshr i32 %47, %53
  tail call void @init_iova_domain(ptr noundef %54, i32 noundef %55, i32 noundef %56) #12
  %57 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 12
  store i32 %50, ptr %57, align 4
  %58 = load ptr, ptr %33, align 4
  br label %69

59:                                               ; preds = %35
  %60 = icmp eq i32 %37, -19
  %61 = select i1 %60, i32 0, i32 %37
  %62 = load ptr, ptr %33, align 4
  tail call void @iommu_domain_free(ptr noundef %62) #12
  store ptr null, ptr %33, align 4
  br label %63

63:                                               ; preds = %59, %31
  %64 = phi i32 [ %61, %59 ], [ -12, %31 ]
  tail call void @iova_cache_put() #12
  br label %65

65:                                               ; preds = %63, %28
  %66 = phi i32 [ %64, %63 ], [ %29, %28 ]
  %67 = load ptr, ptr %26, align 4
  tail call void @iommu_group_put(ptr noundef %67) #12
  store ptr null, ptr %26, align 4
  %68 = inttoptr i32 %66 to ptr
  br label %69

69:                                               ; preds = %65, %39, %15
  %70 = phi ptr [ %68, %65 ], [ %16, %15 ], [ %58, %39 ]
  %71 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = ptrtoint ptr %70 to i32
  %74 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.54, i32 noundef %73) #13
  br label %96

75:                                               ; preds = %69
  %76 = icmp eq ptr %70, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %75, %23
  %78 = load ptr, ptr %0, align 4
  %79 = getelementptr inbounds %struct.host1x_info, ptr %78, i32 0, i32 7
  %80 = load i8, ptr %79, align 8, !range !21
  %81 = icmp eq i8 %80, 0
  %82 = select i1 %81, i64 4294967295, i64 %4
  br label %83

83:                                               ; preds = %77, %75
  %84 = phi i64 [ %4, %75 ], [ %82, %77 ]
  %85 = load ptr, ptr %5, align 4
  %86 = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 17
  %87 = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 16
  store ptr %86, ptr %87, align 4
  %88 = tail call i32 @dma_set_mask(ptr noundef %85, i64 noundef %84) #12
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = tail call i32 @dma_set_coherent_mask(ptr noundef %85, i64 noundef %84) #12
  br label %96

92:                                               ; preds = %83
  %93 = icmp slt i32 %88, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %92
  %95 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.55, i32 noundef %88) #13
  br label %96

96:                                               ; preds = %94, %92, %90, %72
  %97 = phi i32 [ %73, %72 ], [ %88, %94 ], [ 0, %92 ], [ 0, %90 ]
  ret i32 %97
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_channel_list_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_intr_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pm_runtime_resume_and_get(ptr noundef %0) unnamed_addr #10 {
  %2 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #12
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #12, !srcloc !24
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 0, i32 -1, ptr elementtype(i32) %5) #12, !srcloc !25
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !26
  br label %10

10:                                               ; preds = %9, %4, %1
  %11 = phi i32 [ 0, %1 ], [ %2, %4 ], [ %2, %9 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_debug_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_debug_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_intr_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_syncpt_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_channel_list_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @host1x_iommu_exit(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 11
  tail call void @put_iova_domain(ptr noundef %6) #12
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  tail call void @iommu_detach_group(ptr noundef %7, ptr noundef %9) #12
  %10 = load ptr, ptr %2, align 4
  tail call void @iommu_domain_free(ptr noundef %10) #12
  store ptr null, ptr %2, align 4
  tail call void @iova_cache_put() #12
  %11 = load ptr, ptr %8, align 4
  tail call void @iommu_group_put(ptr noundef %11) #12
  store ptr null, ptr %8, align 4
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_reset_control_bulk_get(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_get_domain_for_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_iommu_detach_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_iommu_release_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_group_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iova_cache_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_attach_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_iova_domain(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iova_cache_put() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_group_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_tegra_core_dev_init_opp_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_iova_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_detach_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x07_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x06_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x05_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x04_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x02_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x01_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @host1x_runtime_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @host1x_intr_stop(ptr noundef %3) #12
  tail call void @host1x_syncpt_save(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.host1x, ptr %3, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.host1x, ptr %3, i32 0, i32 7
  %7 = tail call i32 @reset_control_bulk_assert(i32 noundef %5, ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %40, label %9

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.56, i32 noundef %7) #13
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.host1x_info, ptr %10, i32 0, i32 8
  %12 = load i8, ptr %11, align 1, !range !21
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %39, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.host1x_info, ptr %10, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.host1x_info, ptr %10, i32 0, i32 10
  %20 = getelementptr inbounds %struct.host1x, ptr %3, i32 0, i32 2
  br label %21

21:                                               ; preds = %21, %18
  %22 = phi i32 [ 0, %18 ], [ %36, %21 ]
  %23 = load ptr, ptr %19, align 8
  %24 = getelementptr %struct.host1x_sid_entry, ptr %23, i32 %22
  %25 = getelementptr %struct.host1x_sid_entry, ptr %23, i32 %22, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %24, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %28 = load ptr, ptr %20, align 4
  %29 = getelementptr i8, ptr %28, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #12, !srcloc !14
  %30 = getelementptr %struct.host1x_sid_entry, ptr %23, i32 %22, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %24, align 4
  %33 = add i32 %32, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %34 = load ptr, ptr %20, align 4
  %35 = getelementptr i8, ptr %34, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %31) #12, !srcloc !14
  %36 = add nuw i32 %22, 1
  %37 = load i32, ptr %15, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %21, label %39

39:                                               ; preds = %21, %14, %9
  tail call void @host1x_syncpt_restore(ptr noundef %3) #12
  tail call void @host1x_intr_start(ptr noundef %3) #12
  br label %44

40:                                               ; preds = %1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %41 = getelementptr inbounds %struct.host1x, ptr %3, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  tail call void @clk_disable(ptr noundef %42) #12
  tail call void @clk_unprepare(ptr noundef %42) #12
  %43 = load i32, ptr %4, align 4
  tail call void @reset_control_bulk_release(i32 noundef %43, ptr noundef %6) #12
  br label %44

44:                                               ; preds = %40, %39
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @host1x_runtime_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.host1x, ptr %3, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.host1x, ptr %3, i32 0, i32 7
  %7 = tail call i32 @reset_control_bulk_acquire(i32 noundef %5, ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %7) #13
  br label %61

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.host1x, ptr %3, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_prepare(ptr noundef %12) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = tail call i32 @clk_enable(ptr noundef %12) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  tail call void @clk_unprepare(ptr noundef %12) #12
  br label %19

19:                                               ; preds = %18, %10
  %20 = phi i32 [ %16, %18 ], [ %13, %10 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.58, i32 noundef %20) #13
  br label %58

21:                                               ; preds = %15
  %22 = load i32, ptr %4, align 4
  %23 = tail call i32 @reset_control_bulk_deassert(i32 noundef %22, ptr noundef %6) #12
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.59, i32 noundef %23) #13
  %26 = load ptr, ptr %11, align 4
  tail call void @clk_disable(ptr noundef %26) #12
  tail call void @clk_unprepare(ptr noundef %26) #12
  br label %58

27:                                               ; preds = %21
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr inbounds %struct.host1x_info, ptr %28, i32 0, i32 8
  %30 = load i8, ptr %29, align 1, !range !21
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.host1x_info, ptr %28, i32 0, i32 9
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.host1x_info, ptr %28, i32 0, i32 10
  %38 = getelementptr inbounds %struct.host1x, ptr %3, i32 0, i32 2
  br label %39

39:                                               ; preds = %39, %36
  %40 = phi i32 [ 0, %36 ], [ %54, %39 ]
  %41 = load ptr, ptr %37, align 8
  %42 = getelementptr %struct.host1x_sid_entry, ptr %41, i32 %40
  %43 = getelementptr %struct.host1x_sid_entry, ptr %41, i32 %40, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %42, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %46 = load ptr, ptr %38, align 4
  %47 = getelementptr i8, ptr %46, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %44) #12, !srcloc !14
  %48 = getelementptr %struct.host1x_sid_entry, ptr %41, i32 %40, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = load i32, ptr %42, align 4
  %51 = add i32 %50, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !13
  tail call void @arm_heavy_mb() #12
  %52 = load ptr, ptr %38, align 4
  %53 = getelementptr i8, ptr %52, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %49) #12, !srcloc !14
  %54 = add nuw i32 %40, 1
  %55 = load i32, ptr %33, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %39, label %57

57:                                               ; preds = %39, %32, %27
  tail call void @host1x_syncpt_restore(ptr noundef %3) #12
  tail call void @host1x_intr_start(ptr noundef %3) #12
  br label %61

58:                                               ; preds = %25, %19
  %59 = phi i32 [ %20, %19 ], [ %23, %25 ]
  %60 = load i32, ptr %4, align 4
  tail call void @reset_control_bulk_release(i32 noundef %60, ptr noundef %6) #12
  br label %61

61:                                               ; preds = %58, %57, %9
  %62 = phi i32 [ %7, %9 ], [ %59, %58 ], [ 0, %57 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_intr_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_syncpt_save(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_bulk_assert(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_bulk_release(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_syncpt_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_intr_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_bulk_acquire(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_bulk_deassert(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }

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
!12 = !{i64 369124}
!13 = !{i64 2154875893}
!14 = !{i64 5006590}
!15 = !{i64 5007008}
!16 = !{i64 2154876360}
!17 = !{i64 2154876539}
!18 = !{i64 2154876982}
!19 = !{i64 2154877160}
!20 = !{i64 2154877599}
!21 = !{i8 0, i8 2}
!22 = !{i32 0, i32 33}
!23 = !{i64 2147956875}
!24 = !{i64 455185, i64 2147945156, i64 2147945182, i64 2147945229, i64 2147945251, i64 2147945279, i64 2147945299}
!25 = !{i64 441754, i64 441779, i64 441801, i64 441817, i64 441829, i64 441849, i64 441873, i64 441889, i64 441901}
!26 = !{i64 2147957001}
