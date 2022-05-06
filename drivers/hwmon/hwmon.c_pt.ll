; ModuleID = '/llk/IR/drivers/hwmon/hwmon.c_pt.bc'
source_filename = "../drivers/hwmon/hwmon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hwmon_notify_event:\09\09\09\09\09"
module asm "\09.asciz \09\22hwmon_notify_event\22\09\09\09\09\09"
module asm "__kstrtabns_hwmon_notify_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hwmon_device_register_with_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22hwmon_device_register_with_groups\22\09\09\09\09\09"
module asm "__kstrtabns_hwmon_device_register_with_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hwmon_device_register_with_info:\09\09\09\09\09"
module asm "\09.asciz \09\22hwmon_device_register_with_info\22\09\09\09\09\09"
module asm "__kstrtabns_hwmon_device_register_with_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hwmon_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22hwmon_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_hwmon_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hwmon_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22hwmon_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_hwmon_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_hwmon_device_register_with_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_hwmon_device_register_with_groups\22\09\09\09\09\09"
module asm "__kstrtabns_devm_hwmon_device_register_with_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_hwmon_device_register_with_info:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_hwmon_device_register_with_info\22\09\09\09\09\09"
module asm "__kstrtabns_devm_hwmon_device_register_with_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_hwmon_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_hwmon_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_devm_hwmon_device_unregister:\09\09\09\09\09"
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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.lock_class_key = type {}
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_hwmon_attr_class = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_hwmon_attr_show_string = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.hwmon_thermal_data = type { %struct.list_head, ptr, i32, ptr }
%struct.hwmon_device = type { ptr, %struct.device, ptr, %struct.list_head, %struct.attribute_group, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_device_attribute = type { %struct.device_attribute, ptr, i32, i32, i32, [32 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__tpstrtab_hwmon_attr_show = internal constant [16 x i8] c"hwmon_attr_show\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hwmon_attr_show = dso_local global %struct.static_call_key { ptr @__traceiter_hwmon_attr_show }, align 4
@__tracepoint_hwmon_attr_show = dso_local global %struct.tracepoint { ptr @__tpstrtab_hwmon_attr_show, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_hwmon_attr_show, ptr null, ptr @__traceiter_hwmon_attr_show, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hwmon_attr_show = internal constant ptr @__tracepoint_hwmon_attr_show, section "__tracepoints_ptrs", align 4
@__tpstrtab_hwmon_attr_store = internal constant [17 x i8] c"hwmon_attr_store\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hwmon_attr_store = dso_local global %struct.static_call_key { ptr @__traceiter_hwmon_attr_store }, align 4
@__tracepoint_hwmon_attr_store = dso_local global %struct.tracepoint { ptr @__tpstrtab_hwmon_attr_store, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_hwmon_attr_store, ptr null, ptr @__traceiter_hwmon_attr_store, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hwmon_attr_store = internal constant ptr @__tracepoint_hwmon_attr_store, section "__tracepoints_ptrs", align 4
@__tpstrtab_hwmon_attr_show_string = internal constant [23 x i8] c"hwmon_attr_show_string\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hwmon_attr_show_string = dso_local global %struct.static_call_key { ptr @__traceiter_hwmon_attr_show_string }, align 4
@__tracepoint_hwmon_attr_show_string = dso_local global %struct.tracepoint { ptr @__tpstrtab_hwmon_attr_show_string, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_hwmon_attr_show_string, ptr null, ptr @__traceiter_hwmon_attr_show_string, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hwmon_attr_show_string = internal constant ptr @__tracepoint_hwmon_attr_show_string, section "__tracepoints_ptrs", align 4
@trace_event_fields_hwmon_attr_class = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon { %struct.anon { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_hwmon_attr_class = internal global %struct.trace_event_class { ptr @.str.157, ptr @trace_event_raw_event_hwmon_attr_class, ptr @perf_trace_hwmon_attr_class, ptr @trace_event_reg, ptr @trace_event_fields_hwmon_attr_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_hwmon_attr_class, i64 24), ptr getelementptr (i8, ptr @event_class_hwmon_attr_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_hwmon_attr_class = internal global %struct.trace_event_functions { ptr @trace_raw_output_hwmon_attr_class, ptr null, ptr null, ptr null }, align 4
@print_fmt_hwmon_attr_class = internal global [78 x i8] c"\22index=%d, attr_name=%s, val=%ld\22, REC->index, __get_str(attr_name), REC->val\00", align 1
@event_hwmon_attr_show = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hwmon_attr_class, %union.anon.0 { ptr @__tracepoint_hwmon_attr_show }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hwmon_attr_class }, ptr @print_fmt_hwmon_attr_class, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_hwmon_attr_show = internal global ptr @event_hwmon_attr_show, section "_ftrace_events", align 4
@event_hwmon_attr_store = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hwmon_attr_class, %union.anon.0 { ptr @__tracepoint_hwmon_attr_store }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hwmon_attr_class }, ptr @print_fmt_hwmon_attr_class, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_hwmon_attr_store = internal global ptr @event_hwmon_attr_store, section "_ftrace_events", align 4
@trace_event_fields_hwmon_attr_show_string = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon { %struct.anon { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_hwmon_attr_show_string = internal global %struct.trace_event_class { ptr @.str.157, ptr @trace_event_raw_event_hwmon_attr_show_string, ptr @perf_trace_hwmon_attr_show_string, ptr @trace_event_reg, ptr @trace_event_fields_hwmon_attr_show_string, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_hwmon_attr_show_string, i64 24), ptr getelementptr (i8, ptr @event_class_hwmon_attr_show_string, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_hwmon_attr_show_string = internal global %struct.trace_event_functions { ptr @trace_raw_output_hwmon_attr_show_string, ptr null, ptr null, ptr null }, align 4
@print_fmt_hwmon_attr_show_string = internal global [85 x i8] c"\22index=%d, attr_name=%s, val=%s\22, REC->index, __get_str(attr_name), __get_str(label)\00", align 1
@event_hwmon_attr_show_string = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hwmon_attr_show_string, %union.anon.0 { ptr @__tracepoint_hwmon_attr_show_string }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hwmon_attr_show_string }, ptr @print_fmt_hwmon_attr_show_string, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_hwmon_attr_show_string = internal global ptr @event_hwmon_attr_show_string, section "_ftrace_events", align 4
@__templates_size = internal unnamed_addr constant [10 x i32] [i32 12, i32 27, i32 18, i32 18, i32 31, i32 3, i32 11, i32 12, i32 4, i32 2], align 4
@__templates = internal unnamed_addr constant [10 x ptr] [ptr @hwmon_chip_attrs, ptr @hwmon_temp_attr_templates, ptr @hwmon_in_attr_templates, ptr @hwmon_curr_attr_templates, ptr @hwmon_power_attr_templates, ptr @hwmon_energy_attr_templates, ptr @hwmon_humidity_attr_templates, ptr @hwmon_fan_attr_templates, ptr @hwmon_pwm_attr_templates, ptr @hwmon_intrusion_attr_templates], align 4
@__kstrtab_hwmon_notify_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_hwmon_notify_event = external dso_local constant [0 x i8], align 1
@__ksymtab_hwmon_notify_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hwmon_notify_event to i32), ptr @__kstrtab_hwmon_notify_event, ptr @__kstrtabns_hwmon_notify_event }, section "___ksymtab_gpl+hwmon_notify_event", align 4
@__kstrtab_hwmon_device_register_with_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_hwmon_device_register_with_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_hwmon_device_register_with_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hwmon_device_register_with_groups to i32), ptr @__kstrtab_hwmon_device_register_with_groups, ptr @__kstrtabns_hwmon_device_register_with_groups }, section "___ksymtab_gpl+hwmon_device_register_with_groups", align 4
@__kstrtab_hwmon_device_register_with_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_hwmon_device_register_with_info = external dso_local constant [0 x i8], align 1
@__ksymtab_hwmon_device_register_with_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hwmon_device_register_with_info to i32), ptr @__kstrtab_hwmon_device_register_with_info, ptr @__kstrtabns_hwmon_device_register_with_info }, section "___ksymtab_gpl+hwmon_device_register_with_info", align 4
@.str = private unnamed_addr constant [108 x i8] c"hwmon_device_register() is deprecated. Please convert the driver to use hwmon_device_register_with_info().\0A\00", align 1
@__kstrtab_hwmon_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_hwmon_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_hwmon_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hwmon_device_register to i32), ptr @__kstrtab_hwmon_device_register, ptr @__kstrtabns_hwmon_device_register }, section "___ksymtab_gpl+hwmon_device_register", align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"hwmon%d\00", align 1
@hwmon_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@__kstrtab_hwmon_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_hwmon_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_hwmon_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hwmon_device_unregister to i32), ptr @__kstrtab_hwmon_device_unregister, ptr @__kstrtabns_hwmon_device_unregister }, section "___ksymtab_gpl+hwmon_device_unregister", align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"devm_hwmon_release\00", align 1
@__kstrtab_devm_hwmon_device_register_with_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_hwmon_device_register_with_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_hwmon_device_register_with_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_hwmon_device_register_with_groups to i32), ptr @__kstrtab_devm_hwmon_device_register_with_groups, ptr @__kstrtabns_devm_hwmon_device_register_with_groups }, section "___ksymtab_gpl+devm_hwmon_device_register_with_groups", align 4
@__kstrtab_devm_hwmon_device_register_with_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_hwmon_device_register_with_info = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_hwmon_device_register_with_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_hwmon_device_register_with_info to i32), ptr @__kstrtab_devm_hwmon_device_register_with_info, ptr @__kstrtabns_devm_hwmon_device_register_with_info }, section "___ksymtab_gpl+devm_hwmon_device_register_with_info", align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"drivers/hwmon/hwmon.c\00", align 1
@__kstrtab_devm_hwmon_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_hwmon_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_hwmon_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_hwmon_device_unregister to i32), ptr @__kstrtab_devm_hwmon_device_unregister, ptr @__kstrtabns_devm_hwmon_device_unregister }, section "___ksymtab_gpl+devm_hwmon_device_unregister", align 4
@hwmon_class = internal global %struct.class { ptr @.str.157, ptr null, ptr null, ptr @hwmon_dev_attr_groups, ptr null, ptr null, ptr null, ptr null, ptr @hwmon_dev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__initcall__kmod_hwmon__258_1075_hwmon_init4 = internal global ptr @hwmon_init, section ".initcall4.init", align 4
@__exitcall_hwmon_exit = internal global ptr @hwmon_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author259 = internal constant [54 x i8] c"hwmon.author=Mark M. Hoffman <mhoffman@lightlink.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description260 = internal constant [58 x i8] c"hwmon.description=hardware monitoring sysfs/class support\00", section ".modinfo", align 1
@__UNIQUE_ID_file261 = internal constant [31 x i8] c"hwmon.file=drivers/hwmon/hwmon\00", section ".modinfo", align 1
@__UNIQUE_ID_license262 = internal constant [18 x i8] c"hwmon.license=GPL\00", section ".modinfo", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"attr_name\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"index=%d, attr_name=%s, val=%ld\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"index=%d, attr_name=%s, val=%s\0A\00", align 1
@hwmon_chip_attrs = internal constant [12 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr null, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], align 4
@hwmon_temp_attr_templates = internal constant [27 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], align 4
@hwmon_in_attr_templates = internal constant [18 x ptr] [ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], align 4
@hwmon_curr_attr_templates = internal constant [18 x ptr] [ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87], align 4
@hwmon_power_attr_templates = internal constant [31 x ptr] [ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118], align 4
@hwmon_energy_attr_templates = internal constant [3 x ptr] [ptr @.str.119, ptr @.str.120, ptr @.str.121], align 4
@hwmon_humidity_attr_templates = internal constant [11 x ptr] [ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132], align 4
@hwmon_fan_attr_templates = internal constant [12 x ptr] [ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144], align 4
@hwmon_pwm_attr_templates = internal constant [4 x ptr] [ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148], align 4
@hwmon_intrusion_attr_templates = internal constant [2 x ptr] [ptr @.str.149, ptr @.str.150], align 4
@.str.14 = private unnamed_addr constant [19 x i8] c"temp_reset_history\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"in_reset_history\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"curr_reset_history\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"power_reset_history\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"update_interval\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"alarms\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"samples\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"curr_samples\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"in_samples\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"power_samples\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"temp_samples\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"temp%d_enable\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"temp%d_input\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"temp%d_type\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"temp%d_lcrit\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"temp%d_lcrit_hyst\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"temp%d_min\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"temp%d_min_hyst\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"temp%d_max\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"temp%d_max_hyst\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"temp%d_crit\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"temp%d_crit_hyst\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"temp%d_emergency\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"temp%d_emergency_hyst\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"temp%d_alarm\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"temp%d_lcrit_alarm\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"temp%d_min_alarm\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"temp%d_max_alarm\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"temp%d_crit_alarm\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"temp%d_emergency_alarm\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"temp%d_fault\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"temp%d_offset\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"temp%d_label\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"temp%d_lowest\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"temp%d_highest\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"temp%d_reset_history\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"temp%d_rated_min\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"temp%d_rated_max\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"in%d_enable\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"in%d_input\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"in%d_min\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"in%d_max\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"in%d_lcrit\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"in%d_crit\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"in%d_average\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"in%d_lowest\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"in%d_highest\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"in%d_reset_history\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"in%d_label\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"in%d_alarm\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"in%d_min_alarm\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"in%d_max_alarm\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"in%d_lcrit_alarm\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"in%d_crit_alarm\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"in%d_rated_min\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"in%d_rated_max\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"curr%d_enable\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"curr%d_input\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"curr%d_min\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"curr%d_max\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"curr%d_lcrit\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"curr%d_crit\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"curr%d_average\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"curr%d_lowest\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"curr%d_highest\00", align 1
@.str.79 = private unnamed_addr constant [21 x i8] c"curr%d_reset_history\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"curr%d_label\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"curr%d_alarm\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"curr%d_min_alarm\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"curr%d_max_alarm\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"curr%d_lcrit_alarm\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"curr%d_crit_alarm\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"curr%d_rated_min\00", align 1
@.str.87 = private unnamed_addr constant [17 x i8] c"curr%d_rated_max\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"power%d_enable\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"power%d_average\00", align 1
@.str.90 = private unnamed_addr constant [25 x i8] c"power%d_average_interval\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"power%d_interval_max\00", align 1
@.str.92 = private unnamed_addr constant [21 x i8] c"power%d_interval_min\00", align 1
@.str.93 = private unnamed_addr constant [24 x i8] c"power%d_average_highest\00", align 1
@.str.94 = private unnamed_addr constant [23 x i8] c"power%d_average_lowest\00", align 1
@.str.95 = private unnamed_addr constant [20 x i8] c"power%d_average_max\00", align 1
@.str.96 = private unnamed_addr constant [20 x i8] c"power%d_average_min\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c"power%d_input\00", align 1
@.str.98 = private unnamed_addr constant [22 x i8] c"power%d_input_highest\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"power%d_input_lowest\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"power%d_reset_history\00", align 1
@.str.101 = private unnamed_addr constant [17 x i8] c"power%d_accuracy\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"power%d_cap\00", align 1
@.str.103 = private unnamed_addr constant [17 x i8] c"power%d_cap_hyst\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"power%d_cap_max\00", align 1
@.str.105 = private unnamed_addr constant [16 x i8] c"power%d_cap_min\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"power%d_min\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"power%d_max\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"power%d_crit\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"power%d_lcrit\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"power%d_label\00", align 1
@.str.111 = private unnamed_addr constant [14 x i8] c"power%d_alarm\00", align 1
@.str.112 = private unnamed_addr constant [18 x i8] c"power%d_cap_alarm\00", align 1
@.str.113 = private unnamed_addr constant [18 x i8] c"power%d_min_alarm\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"power%d_max_alarm\00", align 1
@.str.115 = private unnamed_addr constant [20 x i8] c"power%d_lcrit_alarm\00", align 1
@.str.116 = private unnamed_addr constant [19 x i8] c"power%d_crit_alarm\00", align 1
@.str.117 = private unnamed_addr constant [18 x i8] c"power%d_rated_min\00", align 1
@.str.118 = private unnamed_addr constant [18 x i8] c"power%d_rated_max\00", align 1
@.str.119 = private unnamed_addr constant [16 x i8] c"energy%d_enable\00", align 1
@.str.120 = private unnamed_addr constant [15 x i8] c"energy%d_input\00", align 1
@.str.121 = private unnamed_addr constant [15 x i8] c"energy%d_label\00", align 1
@.str.122 = private unnamed_addr constant [18 x i8] c"humidity%d_enable\00", align 1
@.str.123 = private unnamed_addr constant [17 x i8] c"humidity%d_input\00", align 1
@.str.124 = private unnamed_addr constant [17 x i8] c"humidity%d_label\00", align 1
@.str.125 = private unnamed_addr constant [15 x i8] c"humidity%d_min\00", align 1
@.str.126 = private unnamed_addr constant [20 x i8] c"humidity%d_min_hyst\00", align 1
@.str.127 = private unnamed_addr constant [15 x i8] c"humidity%d_max\00", align 1
@.str.128 = private unnamed_addr constant [20 x i8] c"humidity%d_max_hyst\00", align 1
@.str.129 = private unnamed_addr constant [17 x i8] c"humidity%d_alarm\00", align 1
@.str.130 = private unnamed_addr constant [17 x i8] c"humidity%d_fault\00", align 1
@.str.131 = private unnamed_addr constant [21 x i8] c"humidity%d_rated_min\00", align 1
@.str.132 = private unnamed_addr constant [21 x i8] c"humidity%d_rated_max\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"fan%d_enable\00", align 1
@.str.134 = private unnamed_addr constant [12 x i8] c"fan%d_input\00", align 1
@.str.135 = private unnamed_addr constant [12 x i8] c"fan%d_label\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"fan%d_min\00", align 1
@.str.137 = private unnamed_addr constant [10 x i8] c"fan%d_max\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"fan%d_div\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"fan%d_pulses\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"fan%d_target\00", align 1
@.str.141 = private unnamed_addr constant [12 x i8] c"fan%d_alarm\00", align 1
@.str.142 = private unnamed_addr constant [16 x i8] c"fan%d_min_alarm\00", align 1
@.str.143 = private unnamed_addr constant [16 x i8] c"fan%d_max_alarm\00", align 1
@.str.144 = private unnamed_addr constant [12 x i8] c"fan%d_fault\00", align 1
@.str.145 = private unnamed_addr constant [6 x i8] c"pwm%d\00", align 1
@.str.146 = private unnamed_addr constant [13 x i8] c"pwm%d_enable\00", align 1
@.str.147 = private unnamed_addr constant [11 x i8] c"pwm%d_mode\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"pwm%d_freq\00", align 1
@.str.149 = private unnamed_addr constant [18 x i8] c"intrusion%d_alarm\00", align 1
@.str.150 = private unnamed_addr constant [17 x i8] c"intrusion%d_beep\00", align 1
@.str.151 = private unnamed_addr constant [6 x i8] c"-* \09\0A\00", align 1
@.str.152 = private unnamed_addr constant [55 x i8] c"hwmon: '%s' is not a valid name attribute, please fix\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.153 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.155 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@hwmon_thermal_ops = internal constant %struct.thermal_zone_of_device_ops { ptr @hwmon_thermal_get_temp, ptr null, ptr @hwmon_thermal_set_trips, ptr null, ptr null }, align 4
@.str.156 = private unnamed_addr constant [47 x i8] c"temp%d_input not attached to any thermal zone\0A\00", align 1
@.str.157 = private constant [6 x i8] c"hwmon\00", align 1
@hwmon_dev_attr_groups = internal global [2 x ptr] [ptr @hwmon_dev_attr_group, ptr null], align 4
@hwmon_dev_attr_group = internal constant %struct.attribute_group { ptr null, ptr @hwmon_dev_name_is_visible, ptr null, ptr @hwmon_dev_attrs, ptr null }, align 4
@hwmon_dev_attrs = internal global [2 x ptr] [ptr @dev_attr_name, ptr null], align 4
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.158, i16 292 }, ptr @name_show, ptr null }, align 4
@.str.158 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@hwmon_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.159 = private unnamed_addr constant [46 x i8] c"\013hwmon: couldn't register hwmon sysfs class\0A\00", align 1
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_description260, ptr @__UNIQUE_ID_file261, ptr @__UNIQUE_ID_license262, ptr @__event_hwmon_attr_show, ptr @__event_hwmon_attr_show_string, ptr @__event_hwmon_attr_store, ptr @__exitcall_hwmon_exit, ptr @__initcall__kmod_hwmon__258_1075_hwmon_init4, ptr @__ksymtab_devm_hwmon_device_register_with_groups, ptr @__ksymtab_devm_hwmon_device_register_with_info, ptr @__ksymtab_devm_hwmon_device_unregister, ptr @__ksymtab_hwmon_device_register, ptr @__ksymtab_hwmon_device_register_with_groups, ptr @__ksymtab_hwmon_device_register_with_info, ptr @__ksymtab_hwmon_device_unregister, ptr @__ksymtab_hwmon_notify_event, ptr @__tracepoint_hwmon_attr_show, ptr @__tracepoint_hwmon_attr_show_string, ptr @__tracepoint_hwmon_attr_store, ptr @__tracepoint_ptr_hwmon_attr_show, ptr @__tracepoint_ptr_hwmon_attr_show_string, ptr @__tracepoint_ptr_hwmon_attr_store, ptr @event_class_hwmon_attr_class, ptr @event_class_hwmon_attr_show_string, ptr @event_hwmon_attr_show, ptr @event_hwmon_attr_show_string, ptr @event_hwmon_attr_store, ptr @hwmon_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_hwmon_attr_show(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hwmon_attr_show, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, ptr noundef %2, i32 noundef %3) #17
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
define dso_local i32 @__traceiter_hwmon_attr_store(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hwmon_attr_store, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, ptr noundef %2, i32 noundef %3) #17
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_hwmon_attr_show_string(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hwmon_attr_show_string, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, ptr noundef %2, ptr noundef %3) #17
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_hwmon_attr_class(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #17
  br i1 %14, label %30, label %15

15:                                               ; preds = %13, %10, %4
  %16 = icmp eq ptr %2, null
  %17 = select i1 %16, ptr @.str.4, ptr %2
  %18 = tail call i32 @strlen(ptr noundef %17) #17
  %19 = add i32 %18, 21
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %19) #17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %15
  %23 = shl i32 %18, 16
  %24 = add i32 %23, 65556
  %25 = getelementptr inbounds %struct.trace_event_raw_hwmon_attr_class, ptr %20, i32 0, i32 2
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_hwmon_attr_class, ptr %20, i32 0, i32 1
  store i32 %1, ptr %26, align 4
  %27 = getelementptr i8, ptr %20, i32 20
  %28 = call ptr @strcpy(ptr noundef %27, ptr noundef %17)
  %29 = getelementptr inbounds %struct.trace_event_raw_hwmon_attr_class, ptr %20, i32 0, i32 3
  store i32 %3, ptr %29, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #17
  br label %30

30:                                               ; preds = %22, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_hwmon_attr_class(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = icmp eq ptr %2, null
  %8 = select i1 %7, ptr @.str.4, ptr %2
  %9 = tail call i32 @strlen(ptr noundef %8) #17
  %10 = shl i32 %9, 16
  %11 = add i32 %10, 65556
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #10, !srcloc !12
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
  %30 = call ptr @perf_trace_buf_alloc(i32 noundef %29, ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %31 = icmp eq ptr %30, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %5, align 4
  %34 = call ptr @llvm.returnaddress(i32 0) #17
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %33, i32 0, i32 15
  store i32 %35, ptr %36, align 4
  %37 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %33, i32 0, i32 11
  store i32 %38, ptr %39, align 4
  %40 = call i32 @llvm.read_register.i32(metadata !0) #17
  %41 = getelementptr [18 x i32], ptr %33, i32 0, i32 13
  store i32 %40, ptr %41, align 4
  %42 = getelementptr [18 x i32], ptr %33, i32 0, i32 16
  store i32 19, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_hwmon_attr_class, ptr %30, i32 0, i32 2
  store i32 %11, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_hwmon_attr_class, ptr %30, i32 0, i32 1
  store i32 %1, ptr %44, align 4
  %45 = getelementptr i8, ptr %30, i32 20
  %46 = call ptr @strcpy(ptr noundef %45, ptr noundef %8)
  %47 = getelementptr inbounds %struct.trace_event_raw_hwmon_attr_class, ptr %30, i32 0, i32 3
  store i32 %3, ptr %47, align 4
  %48 = load i32, ptr %6, align 4
  %49 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %30, i32 noundef %29, i32 noundef %48, ptr noundef %0, i64 noundef 1, ptr noundef %49, ptr noundef %19, ptr noundef null) #17
  br label %50

50:                                               ; preds = %32, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_hwmon_attr_show_string(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readonly %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #17
  br i1 %14, label %40, label %15

15:                                               ; preds = %13, %10, %4
  %16 = icmp eq ptr %2, null
  %17 = select i1 %16, ptr @.str.4, ptr %2
  %18 = tail call i32 @strlen(ptr noundef %17) #17
  %19 = icmp eq ptr %3, null
  %20 = select i1 %19, ptr @.str.4, ptr %3
  %21 = tail call i32 @strlen(ptr noundef %20) #17
  %22 = add i32 %21, 1
  %23 = add i32 %18, 21
  %24 = add i32 %23, %22
  %25 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %24) #17
  %26 = icmp eq ptr %25, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %15
  %28 = shl i32 %22, 16
  %29 = or i32 %28, %23
  %30 = shl i32 %18, 16
  %31 = add i32 %30, 65556
  %32 = getelementptr inbounds %struct.trace_event_raw_hwmon_attr_show_string, ptr %25, i32 0, i32 2
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_hwmon_attr_show_string, ptr %25, i32 0, i32 3
  store i32 %29, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_hwmon_attr_show_string, ptr %25, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr i8, ptr %25, i32 20
  %36 = call ptr @strcpy(ptr noundef %35, ptr noundef %17)
  %37 = and i32 %23, 65535
  %38 = getelementptr i8, ptr %25, i32 %37
  %39 = call ptr @strcpy(ptr noundef %38, ptr noundef %20)
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #17
  br label %40

40:                                               ; preds = %27, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_hwmon_attr_show_string(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readonly %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = icmp eq ptr %2, null
  %8 = select i1 %7, ptr @.str.4, ptr %2
  %9 = tail call i32 @strlen(ptr noundef %8) #17
  %10 = shl i32 %9, 16
  %11 = add i32 %10, 65536
  %12 = or i32 %11, 20
  %13 = icmp eq ptr %3, null
  %14 = select i1 %13, ptr @.str.4, ptr %3
  %15 = tail call i32 @strlen(ptr noundef %14) #17
  %16 = add i32 %15, 1
  %17 = add i32 %9, 21
  %18 = shl i32 %16, 16
  %19 = or i32 %18, %17
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %24 = inttoptr i32 %23 to ptr
  %25 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %24) #10, !srcloc !12
  %26 = add i32 %25, %22
  %27 = inttoptr i32 %26 to ptr
  %28 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load volatile ptr, ptr %27, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %62, label %34

34:                                               ; preds = %31, %4
  %35 = add i32 %9, 32
  %36 = add i32 %35, %16
  %37 = and i32 %36, -8
  %38 = add i32 %37, -4
  %39 = call ptr @perf_trace_buf_alloc(i32 noundef %38, ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %40 = icmp eq ptr %39, null
  br i1 %40, label %62, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr %5, align 4
  %43 = call ptr @llvm.returnaddress(i32 0) #17
  %44 = ptrtoint ptr %43 to i32
  %45 = getelementptr [18 x i32], ptr %42, i32 0, i32 15
  store i32 %44, ptr %45, align 4
  %46 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %47 = ptrtoint ptr %46 to i32
  %48 = getelementptr [18 x i32], ptr %42, i32 0, i32 11
  store i32 %47, ptr %48, align 4
  %49 = call i32 @llvm.read_register.i32(metadata !0) #17
  %50 = getelementptr [18 x i32], ptr %42, i32 0, i32 13
  store i32 %49, ptr %50, align 4
  %51 = getelementptr [18 x i32], ptr %42, i32 0, i32 16
  store i32 19, ptr %51, align 4
  %52 = getelementptr inbounds %struct.trace_event_raw_hwmon_attr_show_string, ptr %39, i32 0, i32 2
  store i32 %12, ptr %52, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_hwmon_attr_show_string, ptr %39, i32 0, i32 3
  store i32 %19, ptr %53, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_hwmon_attr_show_string, ptr %39, i32 0, i32 1
  store i32 %1, ptr %54, align 4
  %55 = getelementptr i8, ptr %39, i32 20
  %56 = call ptr @strcpy(ptr noundef %55, ptr noundef %8)
  %57 = and i32 %17, 65535
  %58 = getelementptr i8, ptr %39, i32 %57
  %59 = call ptr @strcpy(ptr noundef %58, ptr noundef %14)
  %60 = load i32, ptr %6, align 4
  %61 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %39, i32 noundef %38, i32 noundef %60, ptr noundef %0, i64 noundef 1, ptr noundef %61, ptr noundef %27, ptr noundef null) #17
  br label %62

62:                                               ; preds = %41, %34, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hwmon_notify_event(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !9
  %6 = icmp ugt i32 %1, 9
  br i1 %6, label %39, label %7

7:                                                ; preds = %4
  %8 = getelementptr [10 x i32], ptr @__templates_size, i32 0, i32 %1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, %2
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  %12 = getelementptr [10 x ptr], ptr @__templates, i32 0, i32 %1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr ptr, ptr %13, i32 %2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ne i32 %1, 9
  %17 = icmp ne i32 %1, 2
  %18 = and i1 %16, %17
  %19 = zext i1 %18 to i32
  %20 = add i32 %19, %3
  %21 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %5, i32 noundef 32, ptr noundef %15, i32 noundef %20) #17
  call void @sysfs_notify(ptr noundef %0, ptr noundef null, ptr noundef nonnull %5) #17
  %22 = call i32 @kobject_uevent(ptr noundef %0, i32 noundef 2) #17
  %23 = icmp eq i32 %1, 1
  br i1 %23, label %24, label %39

24:                                               ; preds = %11
  %25 = getelementptr i8, ptr %0, i32 476
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %39, label %28

28:                                               ; preds = %36, %24
  %29 = phi ptr [ %37, %36 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.hwmon_thermal_data, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %3
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.hwmon_thermal_data, ptr %29, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  call void @thermal_zone_device_update(ptr noundef %35, i32 noundef 0) #17
  br label %36

36:                                               ; preds = %33, %28
  %37 = load ptr, ptr %29, align 4
  %38 = icmp eq ptr %37, %25
  br i1 %38, label %39, label %28

39:                                               ; preds = %36, %24, %11, %7, %4
  %40 = phi i32 [ -22, %4 ], [ -22, %7 ], [ 0, %11 ], [ 0, %24 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  ret i32 %40
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hwmon_device_register_with_groups(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call fastcc ptr @__hwmon_device_register(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null, ptr noundef %3)
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %7, %6 ], [ inttoptr (i32 -22 to ptr), %4 ]
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__hwmon_device_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %5
  %8 = load i8, ptr %1, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @strpbrk(ptr noundef nonnull %1, ptr noundef nonnull @.str.151)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.152, ptr noundef nonnull %1) #18
  br label %14

14:                                               ; preds = %13, %10, %5
  %15 = tail call i32 @ida_alloc_range(ptr noundef nonnull @hwmon_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #17
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = inttoptr i32 %15 to ptr
  br label %342

19:                                               ; preds = %14
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 520) #19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %339, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.hwmon_device, ptr %21, i32 0, i32 1
  %25 = icmp ne ptr %3, null
  br i1 %25, label %26, label %273

26:                                               ; preds = %23
  %27 = icmp eq ptr %4, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %26
  %29 = load ptr, ptr %4, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %31, %28
  %32 = phi i32 [ %34, %31 ], [ 2, %28 ]
  %33 = phi i32 [ %35, %31 ], [ 0, %28 ]
  %34 = add i32 %32, 1
  %35 = add i32 %33, 1
  %36 = getelementptr ptr, ptr %4, i32 %35
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %31

39:                                               ; preds = %31, %28, %26
  %40 = phi i32 [ 2, %26 ], [ 2, %28 ], [ %34, %31 ]
  %41 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %40, i32 4) #17
  %42 = extractvalue { i32, i1 } %41, 1
  br i1 %42, label %43, label %45, !prof !11

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.hwmon_device, ptr %21, i32 0, i32 5
  store ptr null, ptr %44, align 8
  br label %320

45:                                               ; preds = %39
  %46 = extractvalue { i32, i1 } %41, 0
  %47 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %46, i32 noundef 3520) #20
  %48 = getelementptr inbounds %struct.hwmon_device, ptr %21, i32 0, i32 5
  store ptr %47, ptr %48, align 8
  %49 = icmp eq ptr %47, null
  br i1 %49, label %320, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.hwmon_chip_info, ptr %3, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %250, label %55

55:                                               ; preds = %77, %50
  %56 = phi ptr [ %78, %77 ], [ %52, %50 ]
  %57 = phi ptr [ %83, %77 ], [ %53, %50 ]
  %58 = phi i32 [ %80, %77 ], [ 0, %50 ]
  %59 = phi i32 [ %81, %77 ], [ 0, %50 ]
  %60 = getelementptr inbounds %struct.hwmon_channel_info, ptr %57, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %64, %55
  %65 = phi i32 [ %73, %64 ], [ %62, %55 ]
  %66 = phi i32 [ %70, %64 ], [ 0, %55 ]
  %67 = phi i32 [ %71, %64 ], [ 0, %55 ]
  %68 = tail call i32 @__sw_hweight32(i32 noundef %65) #17
  %69 = load ptr, ptr %60, align 4
  %70 = add i32 %68, %66
  %71 = add i32 %67, 1
  %72 = getelementptr i32, ptr %69, i32 %71
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %64

75:                                               ; preds = %64
  %76 = load ptr, ptr %51, align 4
  br label %77

77:                                               ; preds = %75, %55
  %78 = phi ptr [ %56, %55 ], [ %76, %75 ]
  %79 = phi i32 [ 0, %55 ], [ %70, %75 ]
  %80 = add i32 %79, %58
  %81 = add i32 %59, 1
  %82 = getelementptr ptr, ptr %78, i32 %81
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %55

85:                                               ; preds = %77
  %86 = icmp eq i32 %80, 0
  br i1 %86, label %250, label %87

87:                                               ; preds = %85
  %88 = add i32 %80, 1
  %89 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %88, i32 4) #17
  %90 = extractvalue { i32, i1 } %89, 1
  br i1 %90, label %250, label %91, !prof !11

91:                                               ; preds = %87
  %92 = extractvalue { i32, i1 } %89, 0
  %93 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %92, i32 noundef 3520) #20
  %94 = icmp eq ptr %93, null
  br i1 %94, label %250, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr %51, align 4
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %247, label %99

99:                                               ; preds = %239, %95
  %100 = phi ptr [ %240, %239 ], [ %96, %95 ]
  %101 = phi ptr [ %245, %239 ], [ %97, %95 ]
  %102 = phi i32 [ %242, %239 ], [ 0, %95 ]
  %103 = phi i32 [ %243, %239 ], [ 0, %95 ]
  %104 = getelementptr ptr, ptr %93, i32 %102
  %105 = load ptr, ptr %3, align 4
  %106 = load i32, ptr %101, align 4
  %107 = icmp ugt i32 %106, 9
  br i1 %107, label %226, label %108

108:                                              ; preds = %99
  %109 = getelementptr [10 x ptr], ptr @__templates, i32 0, i32 %106
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr [10 x i32], ptr @__templates_size, i32 0, i32 %106
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr inbounds %struct.hwmon_channel_info, ptr %101, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %239, label %117

117:                                              ; preds = %108
  %118 = getelementptr inbounds %struct.hwmon_ops, ptr %105, i32 0, i32 1
  %119 = getelementptr inbounds %struct.hwmon_ops, ptr %105, i32 0, i32 2
  %120 = getelementptr inbounds %struct.hwmon_ops, ptr %105, i32 0, i32 3
  br label %121

121:                                              ; preds = %212, %117
  %122 = phi i32 [ %115, %117 ], [ %216, %212 ]
  %123 = phi i32 [ 0, %117 ], [ %210, %212 ]
  %124 = phi i32 [ 0, %117 ], [ %213, %212 ]
  br label %125

125:                                              ; preds = %209, %121
  %126 = phi i32 [ %122, %121 ], [ %131, %209 ]
  %127 = phi i32 [ %123, %121 ], [ %210, %209 ]
  %128 = tail call i32 @llvm.cttz.i32(i32 %126, i1 true) #17, !range !13
  %129 = shl nuw i32 1, %128
  %130 = xor i32 %129, -1
  %131 = and i32 %126, %130
  %132 = icmp ult i32 %128, %112
  br i1 %132, label %133, label %226

133:                                              ; preds = %125
  %134 = load i32, ptr %101, align 4
  %135 = getelementptr ptr, ptr %110, i32 %128
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq i32 %134, 1
  %138 = icmp eq i32 %128, 21
  %139 = and i1 %138, %137
  br i1 %139, label %157, label %140

140:                                              ; preds = %133
  %141 = icmp eq i32 %128, 10
  %142 = and i32 %134, -2
  %143 = icmp eq i32 %142, 2
  %144 = and i1 %141, %143
  br i1 %144, label %157, label %145

145:                                              ; preds = %140
  %146 = icmp eq i32 %134, 4
  %147 = icmp eq i32 %128, 22
  %148 = and i1 %147, %146
  br i1 %148, label %157, label %149

149:                                              ; preds = %145
  %150 = icmp eq i32 %128, 2
  %151 = add i32 %134, -5
  %152 = icmp ult i32 %151, 2
  %153 = and i1 %150, %152
  br i1 %153, label %157, label %154

154:                                              ; preds = %149
  %155 = icmp eq i32 %134, 7
  %156 = and i1 %150, %155
  br label %157

157:                                              ; preds = %154, %149, %145, %140, %133
  %158 = phi i1 [ %156, %154 ], [ true, %133 ], [ true, %140 ], [ true, %145 ], [ true, %149 ]
  %159 = icmp eq ptr %136, null
  br i1 %159, label %209, label %160

160:                                              ; preds = %157
  %161 = load ptr, ptr %105, align 4
  %162 = tail call zeroext i16 %161(ptr noundef %2, i32 noundef %134, i32 noundef %128, i32 noundef %124) #17
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %209, label %164

164:                                              ; preds = %160
  %165 = zext i16 %162 to i32
  %166 = and i32 %165, 292
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %164
  br i1 %158, label %169, label %172

169:                                              ; preds = %168
  %170 = load ptr, ptr %119, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %218, label %175

172:                                              ; preds = %168
  %173 = load ptr, ptr %118, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %218, label %175

175:                                              ; preds = %172, %169, %164
  %176 = and i32 %165, 146
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = load ptr, ptr %120, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %218, label %181

181:                                              ; preds = %178, %175
  %182 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %183 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %182, i32 noundef 3520, i32 noundef 64) #19
  %184 = icmp eq ptr %183, null
  br i1 %184, label %218, label %185

185:                                              ; preds = %181
  %186 = icmp eq i32 %134, 0
  br i1 %186, label %195, label %187

187:                                              ; preds = %185
  %188 = getelementptr inbounds %struct.hwmon_device_attribute, ptr %183, i32 0, i32 5
  %189 = icmp ne i32 %134, 9
  %190 = icmp ne i32 %134, 2
  %191 = and i1 %189, %190
  %192 = zext i1 %191 to i32
  %193 = add i32 %124, %192
  %194 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %188, i32 noundef 32, ptr noundef nonnull %136, i32 noundef %193) #17
  br label %195

195:                                              ; preds = %187, %185
  %196 = phi ptr [ %188, %187 ], [ %136, %185 ]
  %197 = getelementptr inbounds %struct.hwmon_device_attribute, ptr %183, i32 0, i32 2
  store i32 %134, ptr %197, align 4
  %198 = getelementptr inbounds %struct.hwmon_device_attribute, ptr %183, i32 0, i32 3
  store i32 %128, ptr %198, align 8
  %199 = getelementptr inbounds %struct.hwmon_device_attribute, ptr %183, i32 0, i32 4
  store i32 %124, ptr %199, align 4
  %200 = getelementptr inbounds %struct.hwmon_device_attribute, ptr %183, i32 0, i32 1
  store ptr %105, ptr %200, align 8
  %201 = select i1 %158, ptr @hwmon_attr_show_string, ptr @hwmon_attr_show
  %202 = getelementptr inbounds %struct.device_attribute, ptr %183, i32 0, i32 1
  store ptr %201, ptr %202, align 8
  %203 = getelementptr inbounds %struct.device_attribute, ptr %183, i32 0, i32 2
  store ptr @hwmon_attr_store, ptr %203, align 4
  store ptr %196, ptr %183, align 8
  %204 = getelementptr inbounds %struct.attribute, ptr %183, i32 0, i32 1
  store i16 %162, ptr %204, align 4
  %205 = icmp ugt ptr %183, inttoptr (i32 -4096 to ptr)
  br i1 %205, label %218, label %206

206:                                              ; preds = %195
  %207 = add i32 %127, 1
  %208 = getelementptr ptr, ptr %104, i32 %127
  store ptr %183, ptr %208, align 4
  br label %209

209:                                              ; preds = %206, %160, %157
  %210 = phi i32 [ %207, %206 ], [ %127, %160 ], [ %127, %157 ]
  %211 = icmp eq i32 %131, 0
  br i1 %211, label %212, label %125

212:                                              ; preds = %209
  %213 = add i32 %124, 1
  %214 = load ptr, ptr %113, align 4
  %215 = getelementptr i32, ptr %214, i32 %213
  %216 = load i32, ptr %215, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %221, label %121

218:                                              ; preds = %195, %181, %178, %172, %169
  %219 = phi ptr [ inttoptr (i32 -22 to ptr), %172 ], [ inttoptr (i32 -22 to ptr), %169 ], [ inttoptr (i32 -22 to ptr), %178 ], [ inttoptr (i32 -12 to ptr), %181 ], [ %183, %195 ]
  %220 = ptrtoint ptr %219 to i32
  br label %221

221:                                              ; preds = %218, %212
  %222 = phi i32 [ %220, %218 ], [ %210, %212 ]
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %221
  %225 = load ptr, ptr %51, align 4
  br label %239

226:                                              ; preds = %221, %125, %99
  %227 = phi i32 [ -22, %125 ], [ %222, %221 ], [ -22, %99 ]
  %228 = load ptr, ptr %93, align 64
  %229 = icmp eq ptr %228, null
  br i1 %229, label %237, label %230

230:                                              ; preds = %230, %226
  %231 = phi ptr [ %235, %230 ], [ %228, %226 ]
  %232 = phi i32 [ %233, %230 ], [ 0, %226 ]
  tail call void @kfree(ptr noundef nonnull %231) #17
  %233 = add i32 %232, 1
  %234 = getelementptr ptr, ptr %93, i32 %233
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %230

237:                                              ; preds = %230, %226
  tail call void @kfree(ptr noundef nonnull %93) #17
  %238 = inttoptr i32 %227 to ptr
  br label %247

239:                                              ; preds = %224, %108
  %240 = phi ptr [ %225, %224 ], [ %100, %108 ]
  %241 = phi i32 [ %222, %224 ], [ 0, %108 ]
  %242 = add i32 %241, %102
  %243 = add i32 %103, 1
  %244 = getelementptr ptr, ptr %240, i32 %243
  %245 = load ptr, ptr %244, align 4
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %99

247:                                              ; preds = %239, %237, %95
  %248 = phi ptr [ %238, %237 ], [ %93, %95 ], [ %93, %239 ]
  %249 = icmp ugt ptr %248, inttoptr (i32 -4096 to ptr)
  br i1 %249, label %250, label %253

250:                                              ; preds = %247, %91, %87, %85, %50
  %251 = phi ptr [ %248, %247 ], [ inttoptr (i32 -22 to ptr), %50 ], [ inttoptr (i32 -12 to ptr), %87 ], [ inttoptr (i32 -12 to ptr), %91 ], [ inttoptr (i32 -22 to ptr), %85 ]
  %252 = ptrtoint ptr %251 to i32
  br label %320

253:                                              ; preds = %247
  %254 = getelementptr inbounds %struct.hwmon_device, ptr %21, i32 0, i32 4
  %255 = getelementptr inbounds %struct.hwmon_device, ptr %21, i32 0, i32 4, i32 3
  store ptr %248, ptr %255, align 8
  %256 = load ptr, ptr %48, align 8
  store ptr %254, ptr %256, align 4
  br i1 %27, label %271, label %257

257:                                              ; preds = %253
  %258 = load ptr, ptr %4, align 4
  %259 = icmp eq ptr %258, null
  br i1 %259, label %271, label %260

260:                                              ; preds = %260, %257
  %261 = phi ptr [ %269, %260 ], [ %258, %257 ]
  %262 = phi i32 [ %265, %260 ], [ 1, %257 ]
  %263 = phi i32 [ %267, %260 ], [ 0, %257 ]
  %264 = load ptr, ptr %48, align 8
  %265 = add i32 %262, 1
  %266 = getelementptr ptr, ptr %264, i32 %262
  store ptr %261, ptr %266, align 4
  %267 = add i32 %263, 1
  %268 = getelementptr ptr, ptr %4, i32 %267
  %269 = load ptr, ptr %268, align 4
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %260

271:                                              ; preds = %260, %257, %253
  %272 = load ptr, ptr %48, align 8
  br label %273

273:                                              ; preds = %271, %23
  %274 = phi ptr [ %272, %271 ], [ %4, %23 ]
  %275 = getelementptr inbounds %struct.hwmon_device, ptr %21, i32 0, i32 1, i32 32
  store ptr %274, ptr %275, align 8
  store ptr %1, ptr %21, align 8
  %276 = getelementptr inbounds %struct.hwmon_device, ptr %21, i32 0, i32 1, i32 31
  store ptr @hwmon_class, ptr %276, align 4
  %277 = getelementptr inbounds %struct.hwmon_device, ptr %21, i32 0, i32 1, i32 1
  store ptr %0, ptr %277, align 4
  %278 = icmp eq ptr %0, null
  br i1 %278, label %282, label %279

279:                                              ; preds = %273
  %280 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %281 = load ptr, ptr %280, align 8
  br label %282

282:                                              ; preds = %279, %273
  %283 = phi ptr [ %281, %279 ], [ null, %273 ]
  %284 = getelementptr inbounds %struct.hwmon_device, ptr %21, i32 0, i32 1, i32 25
  store ptr %283, ptr %284, align 8
  %285 = getelementptr inbounds %struct.hwmon_device, ptr %21, i32 0, i32 2
  store ptr %3, ptr %285, align 8
  %286 = getelementptr inbounds %struct.hwmon_device, ptr %21, i32 0, i32 1, i32 8
  store ptr %2, ptr %286, align 8
  %287 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %24, ptr noundef nonnull @.str.1, i32 noundef %15) #17
  %288 = tail call i32 @device_register(ptr noundef %24) #17
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %291, label %290

290:                                              ; preds = %282
  tail call void @put_device(ptr noundef %24) #17
  br label %339

291:                                              ; preds = %282
  %292 = getelementptr inbounds %struct.hwmon_device, ptr %21, i32 0, i32 3
  store volatile ptr %292, ptr %292, align 4
  %293 = getelementptr inbounds %struct.hwmon_device, ptr %21, i32 0, i32 3, i32 1
  store ptr %292, ptr %293, align 8
  br i1 %278, label %342, label %294

294:                                              ; preds = %291
  %295 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %296 = load ptr, ptr %295, align 8
  %297 = icmp ne ptr %296, null
  %298 = and i1 %25, %297
  br i1 %298, label %299, label %342

299:                                              ; preds = %294
  %300 = load ptr, ptr %3, align 4
  %301 = getelementptr inbounds %struct.hwmon_ops, ptr %300, i32 0, i32 1
  %302 = load ptr, ptr %301, align 4
  %303 = icmp eq ptr %302, null
  br i1 %303, label %342, label %304

304:                                              ; preds = %299
  %305 = getelementptr inbounds %struct.hwmon_chip_info, ptr %3, i32 0, i32 1
  %306 = load ptr, ptr %305, align 4
  %307 = load ptr, ptr %306, align 4
  %308 = load i32, ptr %307, align 4
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %342

310:                                              ; preds = %304
  %311 = getelementptr inbounds %struct.hwmon_channel_info, ptr %307, i32 0, i32 1
  %312 = load ptr, ptr %311, align 4
  %313 = load i32, ptr %312, align 4
  %314 = and i32 %313, 16
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %342, label %316

316:                                              ; preds = %310
  %317 = tail call fastcc i32 @hwmon_thermal_register_sensors(ptr noundef %24)
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %342, label %319

319:                                              ; preds = %316
  tail call void @device_unregister(ptr noundef %24) #17
  br label %339

320:                                              ; preds = %250, %45, %43
  %321 = phi i32 [ -12, %43 ], [ -12, %45 ], [ %252, %250 ]
  %322 = getelementptr %struct.hwmon_device, ptr %21, i32 0, i32 4, i32 3
  %323 = load ptr, ptr %322, align 8
  %324 = icmp eq ptr %323, null
  br i1 %324, label %336, label %325

325:                                              ; preds = %320
  %326 = load ptr, ptr %323, align 4
  %327 = icmp eq ptr %326, null
  br i1 %327, label %335, label %328

328:                                              ; preds = %328, %325
  %329 = phi ptr [ %333, %328 ], [ %326, %325 ]
  %330 = phi i32 [ %331, %328 ], [ 0, %325 ]
  tail call void @kfree(ptr noundef nonnull %329) #17
  %331 = add i32 %330, 1
  %332 = getelementptr ptr, ptr %323, i32 %331
  %333 = load ptr, ptr %332, align 4
  %334 = icmp eq ptr %333, null
  br i1 %334, label %335, label %328

335:                                              ; preds = %328, %325
  tail call void @kfree(ptr noundef nonnull %323) #17
  br label %336

336:                                              ; preds = %335, %320
  %337 = getelementptr %struct.hwmon_device, ptr %21, i32 0, i32 5
  %338 = load ptr, ptr %337, align 8
  tail call void @kfree(ptr noundef %338) #17
  tail call void @kfree(ptr noundef nonnull %21) #17
  br label %339

339:                                              ; preds = %336, %319, %290, %19
  %340 = phi i32 [ %321, %336 ], [ %288, %290 ], [ %317, %319 ], [ -12, %19 ]
  tail call void @ida_free(ptr noundef nonnull @hwmon_ida, i32 noundef %15) #17
  %341 = inttoptr i32 %340 to ptr
  br label %342

342:                                              ; preds = %339, %316, %310, %304, %299, %294, %291, %17
  %343 = phi ptr [ %18, %17 ], [ %341, %339 ], [ %24, %316 ], [ %24, %310 ], [ %24, %304 ], [ %24, %299 ], [ %24, %294 ], [ %24, %291 ]
  ret ptr %343
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hwmon_device_register_with_info(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %5
  %8 = icmp eq ptr %3, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr %3, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %10, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.hwmon_chip_info, ptr %3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp ne ptr %17, null
  %19 = icmp ne ptr %0, null
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %23

21:                                               ; preds = %15, %7
  %22 = tail call fastcc ptr @__hwmon_device_register(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %23

23:                                               ; preds = %21, %15, %12, %9, %5
  %24 = phi ptr [ %22, %21 ], [ inttoptr (i32 -22 to ptr), %5 ], [ inttoptr (i32 -22 to ptr), %15 ], [ inttoptr (i32 -22 to ptr), %12 ], [ inttoptr (i32 -22 to ptr), %9 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hwmon_device_register(ptr noundef %0) #0 {
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str) #18
  %2 = tail call fastcc ptr @__hwmon_device_register(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hwmon_device_unregister(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %7, %6 ], [ %4, %1 ]
  %10 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull %2)
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %14, !prof !10

12:                                               ; preds = %8
  call void @device_unregister(ptr noundef %0) #17
  %13 = load i32, ptr %2, align 4
  call void @ida_free(ptr noundef nonnull @hwmon_ida, i32 noundef %13) #17
  br label %14

14:                                               ; preds = %12, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_hwmon_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.2) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = icmp eq ptr %1, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %9
  %12 = tail call fastcc ptr @__hwmon_device_register(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null, ptr noundef %3) #17
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store ptr %12, ptr %7, align 4
  tail call void @devres_add(ptr noundef nonnull %0, ptr noundef nonnull %7) #17
  br label %17

15:                                               ; preds = %11, %9
  %16 = phi ptr [ %12, %11 ], [ inttoptr (i32 -22 to ptr), %9 ]
  tail call void @devres_free(ptr noundef nonnull %7) #17
  br label %17

17:                                               ; preds = %15, %14, %6, %4
  %18 = phi ptr [ %16, %15 ], [ %12, %14 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -12 to ptr), %6 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_hwmon_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 4
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi ptr [ %9, %8 ], [ %6, %2 ]
  %12 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull %3) #17
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %16, !prof !10

14:                                               ; preds = %10
  call void @device_unregister(ptr noundef %4) #17
  %15 = load i32, ptr %3, align 4
  call void @ida_free(ptr noundef nonnull @hwmon_ida, i32 noundef %15) #17
  br label %16

16:                                               ; preds = %14, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %5
  %8 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_hwmon_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.2) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %1, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %10
  %13 = icmp eq ptr %3, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %3, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %15, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.hwmon_chip_info, ptr %3, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20, %12
  %25 = tail call fastcc ptr @__hwmon_device_register(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #17
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store ptr %25, ptr %8, align 4
  tail call void @devres_add(ptr noundef nonnull %0, ptr noundef nonnull %8) #17
  br label %30

28:                                               ; preds = %24, %20, %17, %14, %10
  %29 = phi ptr [ %25, %24 ], [ inttoptr (i32 -22 to ptr), %10 ], [ inttoptr (i32 -22 to ptr), %20 ], [ inttoptr (i32 -22 to ptr), %17 ], [ inttoptr (i32 -22 to ptr), %14 ]
  tail call void @devres_free(ptr noundef nonnull %8) #17
  br label %30

30:                                               ; preds = %28, %27, %7, %5
  %31 = phi ptr [ %29, %28 ], [ %25, %27 ], [ inttoptr (i32 -22 to ptr), %5 ], [ inttoptr (i32 -12 to ptr), %7 ]
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_hwmon_device_unregister(ptr noundef %0) #0 {
  %2 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_hwmon_release, ptr noundef nonnull @devm_hwmon_match, ptr noundef %0) #17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4, !prof !10

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1024, i32 noundef 9, ptr noundef null) #17
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @devm_hwmon_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) #6 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, %2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hwmon_exit() #7 section ".exit.text" {
  tail call void @class_unregister(ptr noundef nonnull @hwmon_class) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @hwmon_init() #7 section ".init.text" {
  %1 = tail call i32 @__class_register(ptr noundef nonnull @hwmon_class, ptr noundef nonnull @hwmon_init.__key) #17
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159) #18
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_hwmon_attr_class(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #17
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_hwmon_attr_class, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_hwmon_attr_class, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 65535
  %15 = getelementptr i8, ptr %5, i32 %14
  %16 = getelementptr inbounds %struct.trace_event_raw_hwmon_attr_class, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %11, ptr noundef %15, i32 noundef %17) #17
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #17
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
define internal i32 @trace_raw_output_hwmon_attr_show_string(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #17
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_hwmon_attr_show_string, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_hwmon_attr_show_string, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 65535
  %15 = getelementptr i8, ptr %5, i32 %14
  %16 = getelementptr inbounds %struct.trace_event_raw_hwmon_attr_show_string, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 65535
  %19 = getelementptr i8, ptr %5, i32 %18
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %11, ptr noundef %15, ptr noundef %19) #17
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #17
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
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hwmon_thermal_register_sensors(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 472
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hwmon_chip_info, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr ptr, ptr %5, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %69, label %11

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 476
  br label %13

13:                                               ; preds = %64, %11
  %14 = phi ptr [ %9, %11 ], [ %67, %64 ]
  %15 = phi ptr [ %8, %11 ], [ %66, %64 ]
  %16 = phi i32 [ 1, %11 ], [ %65, %64 ]
  %17 = load i32, ptr %14, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %64

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.hwmon_channel_info, ptr %14, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %64, label %24

24:                                               ; preds = %56, %19
  %25 = phi i32 [ %62, %56 ], [ %22, %19 ]
  %26 = phi i32 [ %57, %56 ], [ 0, %19 ]
  %27 = and i32 %25, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %56, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %3, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = tail call zeroext i16 %31(ptr noundef %7, i32 noundef 1, i32 noundef 1, i32 noundef %26) #17
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %56, label %34

34:                                               ; preds = %29
  %35 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 20, i32 noundef 3520) #17
  %36 = icmp eq ptr %35, null
  br i1 %36, label %69, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.hwmon_thermal_data, ptr %35, i32 0, i32 1
  store ptr %0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.hwmon_thermal_data, ptr %35, i32 0, i32 2
  store i32 %26, ptr %39, align 4
  %40 = tail call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %0, i32 noundef %26, ptr noundef nonnull %35, ptr noundef nonnull @hwmon_thermal_ops) #17
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = icmp eq ptr %40, inttoptr (i32 -19 to ptr)
  br i1 %43, label %44, label %54

44:                                               ; preds = %42
  %45 = add i32 %26, 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.156, i32 noundef %45) #18
  tail call void @devm_kfree(ptr noundef %0, ptr noundef nonnull %35) #17
  br label %56

46:                                               ; preds = %37
  %47 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @hwmon_thermal_remove_sensor, ptr noundef nonnull %35) #17
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.hwmon_thermal_data, ptr %35, i32 0, i32 3
  store ptr %40, ptr %50, align 4
  %51 = load ptr, ptr %12, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %35, ptr %52, align 4
  store ptr %51, ptr %35, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %12, ptr %53, align 4
  store volatile ptr %35, ptr %12, align 4
  br label %56

54:                                               ; preds = %42
  %55 = ptrtoint ptr %40 to i32
  br label %69

56:                                               ; preds = %49, %44, %29, %24
  %57 = add i32 %26, 1
  %58 = load ptr, ptr %15, align 4
  %59 = getelementptr inbounds %struct.hwmon_channel_info, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i32, ptr %60, i32 %57
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %24

64:                                               ; preds = %56, %19, %13
  %65 = add i32 %16, 1
  %66 = getelementptr ptr, ptr %5, i32 %65
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %13

69:                                               ; preds = %64, %54, %46, %34, %1
  %70 = phi i32 [ %55, %54 ], [ 0, %1 ], [ -12, %34 ], [ %47, %46 ], [ 0, %64 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hwmon_dev_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 496
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = phi i32 [ %11, %8 ], [ 0, %5 ]
  tail call void @kfree(ptr noundef nonnull %9) #17
  %11 = add i32 %10, 1
  %12 = getelementptr ptr, ptr %3, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %8

15:                                               ; preds = %8, %5
  tail call void @kfree(ptr noundef nonnull %3) #17
  br label %16

16:                                               ; preds = %15, %1
  %17 = getelementptr i8, ptr %0, i32 -8
  %18 = getelementptr i8, ptr %0, i32 504
  %19 = load ptr, ptr %18, align 8
  tail call void @kfree(ptr noundef %19) #17
  tail call void @kfree(ptr noundef %17) #17
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hwmon_attr_show_string(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.hwmon_device_attribute, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store ptr null, ptr %4, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.hwmon_device_attribute, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.hwmon_ops, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.hwmon_device_attribute, ptr %1, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.hwmon_device_attribute, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = call i32 %10(ptr noundef %0, i32 noundef %6, i32 noundef %12, i32 noundef %14, ptr noundef nonnull %4) #17
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %55, label %17

17:                                               ; preds = %3
  %18 = load i32, ptr %13, align 4
  %19 = icmp ne i32 %6, 9
  %20 = icmp ne i32 %6, 2
  %21 = and i1 %19, %20
  %22 = zext i1 %21 to i32
  %23 = add i32 %18, %22
  %24 = getelementptr inbounds %struct.hwmon_device_attribute, ptr %1, i32 0, i32 5
  %25 = load ptr, ptr %4, align 4
  %26 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hwmon_attr_show_string, i32 0, i32 1), align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %17
  %29 = tail call ptr @llvm.thread.pointer() #17
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = lshr i32 %31, 5
  %33 = getelementptr i32, ptr @__cpu_online_mask, i32 %32
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %31, 31
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, %34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %28
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %40 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hwmon_attr_show_string, i32 0, i32 7), align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %42, %39
  %43 = phi ptr [ %47, %42 ], [ %40, %39 ]
  %44 = load volatile ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.tracepoint_func, ptr %43, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  call void %44(ptr noundef %46, i32 noundef %23, ptr noundef %24, ptr noundef %25) #17
  %47 = getelementptr %struct.tracepoint_func, ptr %43, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %42

50:                                               ; preds = %42, %39
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !15
  %51 = load ptr, ptr %4, align 4
  br label %52

52:                                               ; preds = %50, %28, %17
  %53 = phi ptr [ %25, %17 ], [ %25, %28 ], [ %51, %50 ]
  %54 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.153, ptr noundef %53)
  br label %55

55:                                               ; preds = %52, %3
  %56 = phi i32 [ %54, %52 ], [ %15, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hwmon_attr_show(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.hwmon_device_attribute, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hwmon_ops, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.hwmon_device_attribute, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.hwmon_device_attribute, ptr %1, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.hwmon_device_attribute, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = call i32 %8(ptr noundef %0, i32 noundef %10, i32 noundef %12, i32 noundef %14, ptr noundef nonnull %4) #17
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %56, label %17

17:                                               ; preds = %3
  %18 = load i32, ptr %13, align 4
  %19 = load i32, ptr %9, align 4
  %20 = icmp ne i32 %19, 9
  %21 = icmp ne i32 %19, 2
  %22 = and i1 %20, %21
  %23 = zext i1 %22 to i32
  %24 = add i32 %18, %23
  %25 = getelementptr inbounds %struct.hwmon_device_attribute, ptr %1, i32 0, i32 5
  %26 = load i32, ptr %4, align 4
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hwmon_attr_show, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %17
  %30 = tail call ptr @llvm.thread.pointer() #17
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %29
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !16
  %41 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hwmon_attr_show, i32 0, i32 7), align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %43, %40
  %44 = phi ptr [ %48, %43 ], [ %41, %40 ]
  %45 = load volatile ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.tracepoint_func, ptr %44, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  call void %45(ptr noundef %47, i32 noundef %24, ptr noundef %25, i32 noundef %26) #17
  %48 = getelementptr %struct.tracepoint_func, ptr %44, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %43

51:                                               ; preds = %43, %40
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !17
  %52 = load i32, ptr %4, align 4
  br label %53

53:                                               ; preds = %51, %29, %17
  %54 = phi i32 [ %26, %17 ], [ %26, %29 ], [ %52, %51 ]
  %55 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.155, i32 noundef %54)
  br label %56

56:                                               ; preds = %53, %3
  %57 = phi i32 [ %55, %53 ], [ %15, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hwmon_attr_store(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = call i32 @_kstrtol(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #17
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %57, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.hwmon_device_attribute, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.hwmon_ops, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.hwmon_device_attribute, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.hwmon_device_attribute, ptr %1, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.hwmon_device_attribute, ptr %1, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %5, align 4
  %20 = call i32 %12(ptr noundef %0, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %19) #17
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %57, label %22

22:                                               ; preds = %8
  %23 = load i32, ptr %17, align 4
  %24 = load i32, ptr %13, align 4
  %25 = icmp ne i32 %24, 9
  %26 = icmp ne i32 %24, 2
  %27 = and i1 %25, %26
  %28 = zext i1 %27 to i32
  %29 = add i32 %23, %28
  %30 = getelementptr inbounds %struct.hwmon_device_attribute, ptr %1, i32 0, i32 5
  %31 = load i32, ptr %5, align 4
  %32 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hwmon_attr_store, i32 0, i32 1), align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %22
  %35 = tail call ptr @llvm.thread.pointer() #17
  %36 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  %38 = lshr i32 %37, 5
  %39 = getelementptr i32, ptr @__cpu_online_mask, i32 %38
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %37, 31
  %42 = shl nuw i32 1, %41
  %43 = and i32 %42, %40
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %34
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !18
  %46 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hwmon_attr_store, i32 0, i32 7), align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %48, %45
  %49 = phi ptr [ %53, %48 ], [ %46, %45 ]
  %50 = load volatile ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.tracepoint_func, ptr %49, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  call void %50(ptr noundef %52, i32 noundef %29, ptr noundef %30, i32 noundef %31) #17
  %53 = getelementptr %struct.tracepoint_func, ptr %49, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %48

56:                                               ; preds = %48, %45
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !19
  br label %57

57:                                               ; preds = %56, %34, %22, %8, %4
  %58 = phi i32 [ %6, %4 ], [ %20, %8 ], [ %3, %22 ], [ %3, %34 ], [ %3, %56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %58
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hwmon_thermal_remove_sensor(ptr nocapture noundef %0) #15 {
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hwmon_thermal_get_temp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.hwmon_thermal_data, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !annotation !9
  %6 = getelementptr i8, ptr %5, i32 472
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.hwmon_ops, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.hwmon_thermal_data, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = call i32 %10(ptr noundef %5, i32 noundef 1, i32 noundef 1, i32 noundef %12, ptr noundef nonnull %3) #17
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, ptr %3, align 4
  store i32 %16, ptr %1, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi i32 [ 0, %15 ], [ %13, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hwmon_thermal_set_trips(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.hwmon_thermal_data, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 472
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hwmon_chip_info, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.hwmon_ops, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %55, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr %9, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %55, label %17

17:                                               ; preds = %22, %14
  %18 = phi ptr [ %25, %22 ], [ %15, %14 ]
  %19 = phi i32 [ %23, %22 ], [ 0, %14 ]
  %20 = load i32, ptr %18, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = add i32 %19, 1
  %24 = getelementptr ptr, ptr %9, i32 %23
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %55, label %17

27:                                               ; preds = %17
  %28 = getelementptr ptr, ptr %9, i32 %19
  %29 = getelementptr inbounds %struct.hwmon_channel_info, ptr %18, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.hwmon_thermal_data, ptr %0, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i32, ptr %30, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %27
  %38 = tail call i32 %12(ptr noundef %5, i32 noundef 1, i32 noundef 5, i32 noundef %32, i32 noundef %1) #17
  switch i32 %38, label %55 [
    i32 -95, label %39
    i32 0, label %39
  ]

39:                                               ; preds = %37, %37, %27
  %40 = load ptr, ptr %28, align 4
  %41 = getelementptr inbounds %struct.hwmon_channel_info, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load i32, ptr %31, align 4
  %44 = getelementptr i32, ptr %42, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 128
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %39
  %49 = load ptr, ptr %7, align 4
  %50 = getelementptr inbounds %struct.hwmon_ops, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %4, align 4
  %53 = tail call i32 %51(ptr noundef %52, i32 noundef 1, i32 noundef 7, i32 noundef %43, i32 noundef %2) #17
  switch i32 %53, label %55 [
    i32 -95, label %54
    i32 0, label %54
  ]

54:                                               ; preds = %48, %48, %39
  br label %55

55:                                               ; preds = %54, %48, %37, %22, %14, %3
  %56 = phi i32 [ 0, %54 ], [ 0, %3 ], [ %38, %37 ], [ %53, %48 ], [ 0, %14 ], [ 0, %22 ]
  ret i32 %56
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @hwmon_dev_name_is_visible(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i16 [ %9, %7 ], [ 0, %3 ]
  ret i16 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #16 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.153, ptr noundef %5)
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }

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
!12 = !{i64 303934}
!13 = !{i32 0, i32 33}
!14 = !{i64 2153386349}
!15 = !{i64 2153386543}
!16 = !{i64 2153348986}
!17 = !{i64 2153349170}
!18 = !{i64 2153369531}
!19 = !{i64 2153369717}
