; ModuleID = '/llk/IR/drivers/thermal/thermal_core.c_pt.bc'
source_filename = "../drivers/thermal/thermal_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_zone_device_critical:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_zone_device_critical\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_zone_device_critical:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_zone_device_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_zone_device_enable\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_zone_device_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_zone_device_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_zone_device_disable\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_zone_device_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_zone_device_update:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_zone_device_update\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_zone_device_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_zone_bind_cooling_device:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_zone_bind_cooling_device\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_zone_bind_cooling_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_zone_unbind_cooling_device:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_zone_unbind_cooling_device\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_zone_unbind_cooling_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_cooling_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_cooling_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_cooling_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_of_cooling_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_of_cooling_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_of_cooling_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_thermal_of_cooling_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_thermal_of_cooling_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_thermal_of_cooling_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_cooling_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_cooling_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_cooling_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_zone_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_zone_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_zone_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_zone_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_zone_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_zone_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_zone_get_zone_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_zone_get_zone_by_name\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_zone_get_zone_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_eval_map = type { ptr, ptr, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.lock_class_key = type {}
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.trace_event_raw_thermal_temperature = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.trace_event_raw_cdev_update = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_thermal_zone_trip = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_thermal_power_cpu_get_power = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_thermal_power_cpu_limit = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_thermal_power_devfreq_get_power = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }
%struct.trace_event_raw_thermal_power_devfreq_limit = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.thermal_governor = type { [20 x i8], ptr, ptr, ptr, %struct.list_head }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.thermal_instance = type { i32, [20 x i8], ptr, ptr, i32, i8, i32, i32, i32, [20 x i8], %struct.device_attribute, [20 x i8], %struct.device_attribute, %struct.list_head, %struct.list_head, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_bind_params = type { ptr, i32, i32, ptr, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_thermal_temperature = internal constant [20 x i8] c"thermal_temperature\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_thermal_temperature = dso_local global %struct.static_call_key { ptr @__traceiter_thermal_temperature }, align 4
@__tracepoint_thermal_temperature = dso_local global %struct.tracepoint { ptr @__tpstrtab_thermal_temperature, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_thermal_temperature, ptr null, ptr @__traceiter_thermal_temperature, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_thermal_temperature = internal constant ptr @__tracepoint_thermal_temperature, section "__tracepoints_ptrs", align 4
@__tpstrtab_cdev_update = internal constant [12 x i8] c"cdev_update\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cdev_update = dso_local global %struct.static_call_key { ptr @__traceiter_cdev_update }, align 4
@__tracepoint_cdev_update = dso_local global %struct.tracepoint { ptr @__tpstrtab_cdev_update, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cdev_update, ptr null, ptr @__traceiter_cdev_update, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cdev_update = internal constant ptr @__tracepoint_cdev_update, section "__tracepoints_ptrs", align 4
@__tpstrtab_thermal_zone_trip = internal constant [18 x i8] c"thermal_zone_trip\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_thermal_zone_trip = dso_local global %struct.static_call_key { ptr @__traceiter_thermal_zone_trip }, align 4
@__tracepoint_thermal_zone_trip = dso_local global %struct.tracepoint { ptr @__tpstrtab_thermal_zone_trip, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_thermal_zone_trip, ptr null, ptr @__traceiter_thermal_zone_trip, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_thermal_zone_trip = internal constant ptr @__tracepoint_thermal_zone_trip, section "__tracepoints_ptrs", align 4
@__tpstrtab_thermal_power_cpu_get_power = internal constant [28 x i8] c"thermal_power_cpu_get_power\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_thermal_power_cpu_get_power = dso_local global %struct.static_call_key { ptr @__traceiter_thermal_power_cpu_get_power }, align 4
@__tracepoint_thermal_power_cpu_get_power = dso_local global %struct.tracepoint { ptr @__tpstrtab_thermal_power_cpu_get_power, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_thermal_power_cpu_get_power, ptr null, ptr @__traceiter_thermal_power_cpu_get_power, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_thermal_power_cpu_get_power = internal constant ptr @__tracepoint_thermal_power_cpu_get_power, section "__tracepoints_ptrs", align 4
@__tpstrtab_thermal_power_cpu_limit = internal constant [24 x i8] c"thermal_power_cpu_limit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_thermal_power_cpu_limit = dso_local global %struct.static_call_key { ptr @__traceiter_thermal_power_cpu_limit }, align 4
@__tracepoint_thermal_power_cpu_limit = dso_local global %struct.tracepoint { ptr @__tpstrtab_thermal_power_cpu_limit, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_thermal_power_cpu_limit, ptr null, ptr @__traceiter_thermal_power_cpu_limit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_thermal_power_cpu_limit = internal constant ptr @__tracepoint_thermal_power_cpu_limit, section "__tracepoints_ptrs", align 4
@__tpstrtab_thermal_power_devfreq_get_power = internal constant [32 x i8] c"thermal_power_devfreq_get_power\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_thermal_power_devfreq_get_power = dso_local global %struct.static_call_key { ptr @__traceiter_thermal_power_devfreq_get_power }, align 4
@__tracepoint_thermal_power_devfreq_get_power = dso_local global %struct.tracepoint { ptr @__tpstrtab_thermal_power_devfreq_get_power, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_thermal_power_devfreq_get_power, ptr null, ptr @__traceiter_thermal_power_devfreq_get_power, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_thermal_power_devfreq_get_power = internal constant ptr @__tracepoint_thermal_power_devfreq_get_power, section "__tracepoints_ptrs", align 4
@__tpstrtab_thermal_power_devfreq_limit = internal constant [28 x i8] c"thermal_power_devfreq_limit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_thermal_power_devfreq_limit = dso_local global %struct.static_call_key { ptr @__traceiter_thermal_power_devfreq_limit }, align 4
@__tracepoint_thermal_power_devfreq_limit = dso_local global %struct.tracepoint { ptr @__tpstrtab_thermal_power_devfreq_limit, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_thermal_power_devfreq_limit, ptr null, ptr @__traceiter_thermal_power_devfreq_limit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_thermal_power_devfreq_limit = internal constant ptr @__tracepoint_thermal_power_devfreq_limit, section "__tracepoints_ptrs", align 4
@.str = private unnamed_addr constant [22 x i8] c"THERMAL_TRIP_CRITICAL\00", align 1
@__TRACE_SYSTEM_THERMAL_TRIP_CRITICAL = internal global %struct.trace_eval_map { ptr @.str.67, ptr @.str, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_THERMAL_TRIP_CRITICAL = internal global ptr @__TRACE_SYSTEM_THERMAL_TRIP_CRITICAL, section "_ftrace_eval_map", align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"THERMAL_TRIP_HOT\00", align 1
@__TRACE_SYSTEM_THERMAL_TRIP_HOT = internal global %struct.trace_eval_map { ptr @.str.67, ptr @.str.1, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_THERMAL_TRIP_HOT = internal global ptr @__TRACE_SYSTEM_THERMAL_TRIP_HOT, section "_ftrace_eval_map", align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"THERMAL_TRIP_PASSIVE\00", align 1
@__TRACE_SYSTEM_THERMAL_TRIP_PASSIVE = internal global %struct.trace_eval_map { ptr @.str.67, ptr @.str.2, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_THERMAL_TRIP_PASSIVE = internal global ptr @__TRACE_SYSTEM_THERMAL_TRIP_PASSIVE, section "_ftrace_eval_map", align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"THERMAL_TRIP_ACTIVE\00", align 1
@__TRACE_SYSTEM_THERMAL_TRIP_ACTIVE = internal global %struct.trace_eval_map { ptr @.str.67, ptr @.str.3, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_THERMAL_TRIP_ACTIVE = internal global ptr @__TRACE_SYSTEM_THERMAL_TRIP_ACTIVE, section "_ftrace_eval_map", align 4
@trace_event_fields_thermal_temperature = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.23, %union.anon.92 { %struct.anon.93 { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.92 { %struct.anon.93 { ptr @.str.26, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.92 { %struct.anon.93 { ptr @.str.27, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.92 { %struct.anon.93 { ptr @.str.28, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_thermal_temperature = internal global %struct.trace_event_class { ptr @.str.67, ptr @trace_event_raw_event_thermal_temperature, ptr @perf_trace_thermal_temperature, ptr @trace_event_reg, ptr @trace_event_fields_thermal_temperature, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_thermal_temperature, i64 24), ptr getelementptr (i8, ptr @event_class_thermal_temperature, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_thermal_temperature = internal global %struct.trace_event_functions { ptr @trace_raw_output_thermal_temperature, ptr null, ptr null, ptr null }, align 4
@print_fmt_thermal_temperature = internal global [106 x i8] c"\22thermal_zone=%s id=%d temp_prev=%d temp=%d\22, __get_str(thermal_zone), REC->id, REC->temp_prev, REC->temp\00", align 1
@event_thermal_temperature = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_thermal_temperature, %union.anon.94 { ptr @__tracepoint_thermal_temperature }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_thermal_temperature }, ptr @print_fmt_thermal_temperature, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_thermal_temperature = internal global ptr @event_thermal_temperature, section "_ftrace_events", align 4
@trace_event_fields_cdev_update = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.23, %union.anon.92 { %struct.anon.93 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon.92 { %struct.anon.93 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_cdev_update = internal global %struct.trace_event_class { ptr @.str.67, ptr @trace_event_raw_event_cdev_update, ptr @perf_trace_cdev_update, ptr @trace_event_reg, ptr @trace_event_fields_cdev_update, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cdev_update, i64 24), ptr getelementptr (i8, ptr @event_class_cdev_update, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cdev_update = internal global %struct.trace_event_functions { ptr @trace_raw_output_cdev_update, ptr null, ptr null, ptr null }, align 4
@print_fmt_cdev_update = internal global [51 x i8] c"\22type=%s target=%lu\22, __get_str(type), REC->target\00", align 1
@event_cdev_update = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cdev_update, %union.anon.94 { ptr @__tracepoint_cdev_update }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cdev_update }, ptr @print_fmt_cdev_update, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cdev_update = internal global ptr @event_cdev_update, section "_ftrace_events", align 4
@trace_event_fields_thermal_zone_trip = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.23, %union.anon.92 { %struct.anon.93 { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.92 { %struct.anon.93 { ptr @.str.26, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.92 { %struct.anon.93 { ptr @.str.34, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.35, %union.anon.92 { %struct.anon.93 { ptr @.str.36, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_thermal_zone_trip = internal global %struct.trace_event_class { ptr @.str.67, ptr @trace_event_raw_event_thermal_zone_trip, ptr @perf_trace_thermal_zone_trip, ptr @trace_event_reg, ptr @trace_event_fields_thermal_zone_trip, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_thermal_zone_trip, i64 24), ptr getelementptr (i8, ptr @event_class_thermal_zone_trip, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_thermal_zone_trip = internal global %struct.trace_event_functions { ptr @trace_raw_output_thermal_zone_trip, ptr null, ptr null, ptr null }, align 4
@print_fmt_thermal_zone_trip = internal global [260 x i8] c"\22thermal_zone=%s id=%d trip=%d trip_type=%s\22, __get_str(thermal_zone), REC->id, REC->trip, __print_symbolic(REC->trip_type, { THERMAL_TRIP_CRITICAL, \22CRITICAL\22}, { THERMAL_TRIP_HOT, \22HOT\22}, { THERMAL_TRIP_PASSIVE, \22PASSIVE\22}, { THERMAL_TRIP_ACTIVE, \22ACTIVE\22})\00", align 1
@event_thermal_zone_trip = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_thermal_zone_trip, %union.anon.94 { ptr @__tracepoint_thermal_zone_trip }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_thermal_zone_trip }, ptr @print_fmt_thermal_zone_trip, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_thermal_zone_trip = internal global ptr @event_thermal_zone_trip, section "_ftrace_events", align 4
@trace_event_fields_thermal_power_cpu_get_power = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.92 { %struct.anon.93 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon.92 { %struct.anon.93 { ptr @.str.44, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.92 { %struct.anon.93 { ptr @.str.46, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.47, %union.anon.92 { %struct.anon.93 { ptr @.str.48, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.92 { %struct.anon.93 { ptr @.str.50, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_thermal_power_cpu_get_power = internal global %struct.trace_event_class { ptr @.str.67, ptr @trace_event_raw_event_thermal_power_cpu_get_power, ptr @perf_trace_thermal_power_cpu_get_power, ptr @trace_event_reg, ptr @trace_event_fields_thermal_power_cpu_get_power, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_thermal_power_cpu_get_power, i64 24), ptr getelementptr (i8, ptr @event_class_thermal_power_cpu_get_power, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_thermal_power_cpu_get_power = internal global %struct.trace_event_functions { ptr @trace_raw_output_thermal_power_cpu_get_power, ptr null, ptr null, ptr null }, align 4
@print_fmt_thermal_power_cpu_get_power = internal global [161 x i8] c"\22cpus=%s freq=%lu load={%s} dynamic_power=%d\22, __get_bitmask(cpumask), REC->freq, __print_array(__get_dynamic_array(load), REC->load_len, 4), REC->dynamic_power\00", align 1
@event_thermal_power_cpu_get_power = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_thermal_power_cpu_get_power, %union.anon.94 { ptr @__tracepoint_thermal_power_cpu_get_power }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_thermal_power_cpu_get_power }, ptr @print_fmt_thermal_power_cpu_get_power, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_thermal_power_cpu_get_power = internal global ptr @event_thermal_power_cpu_get_power, section "_ftrace_events", align 4
@trace_event_fields_thermal_power_cpu_limit = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.92 { %struct.anon.93 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.92 { %struct.anon.93 { ptr @.str.44, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon.92 { %struct.anon.93 { ptr @.str.53, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.92 { %struct.anon.93 { ptr @.str.54, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_thermal_power_cpu_limit = internal global %struct.trace_event_class { ptr @.str.67, ptr @trace_event_raw_event_thermal_power_cpu_limit, ptr @perf_trace_thermal_power_cpu_limit, ptr @trace_event_reg, ptr @trace_event_fields_thermal_power_cpu_limit, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_thermal_power_cpu_limit, i64 24), ptr getelementptr (i8, ptr @event_class_thermal_power_cpu_limit, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_thermal_power_cpu_limit = internal global %struct.trace_event_functions { ptr @trace_raw_output_thermal_power_cpu_limit, ptr null, ptr null, ptr null }, align 4
@print_fmt_thermal_power_cpu_limit = internal global [106 x i8] c"\22cpus=%s freq=%u cdev_state=%lu power=%u\22, __get_bitmask(cpumask), REC->freq, REC->cdev_state, REC->power\00", align 1
@event_thermal_power_cpu_limit = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_thermal_power_cpu_limit, %union.anon.94 { ptr @__tracepoint_thermal_power_cpu_limit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_thermal_power_cpu_limit }, ptr @print_fmt_thermal_power_cpu_limit, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_thermal_power_cpu_limit = internal global ptr @event_thermal_power_cpu_limit, section "_ftrace_events", align 4
@trace_event_fields_thermal_power_devfreq_get_power = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.23, %union.anon.92 { %struct.anon.93 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon.92 { %struct.anon.93 { ptr @.str.44, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.92 { %struct.anon.93 { ptr @.str.56, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.92 { %struct.anon.93 { ptr @.str.57, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.92 { %struct.anon.93 { ptr @.str.54, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_thermal_power_devfreq_get_power = internal global %struct.trace_event_class { ptr @.str.67, ptr @trace_event_raw_event_thermal_power_devfreq_get_power, ptr @perf_trace_thermal_power_devfreq_get_power, ptr @trace_event_reg, ptr @trace_event_fields_thermal_power_devfreq_get_power, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_thermal_power_devfreq_get_power, i64 24), ptr getelementptr (i8, ptr @event_class_thermal_power_devfreq_get_power, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_thermal_power_devfreq_get_power = internal global %struct.trace_event_functions { ptr @trace_raw_output_thermal_power_devfreq_get_power, ptr null, ptr null, ptr null }, align 4
@print_fmt_thermal_power_devfreq_get_power = internal global [145 x i8] c"\22type=%s freq=%lu load=%u power=%u\22, __get_str(type), REC->freq, REC->total_time == 0 ? 0 : (100 * REC->busy_time) / REC->total_time, REC->power\00", align 1
@event_thermal_power_devfreq_get_power = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_thermal_power_devfreq_get_power, %union.anon.94 { ptr @__tracepoint_thermal_power_devfreq_get_power }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_thermal_power_devfreq_get_power }, ptr @print_fmt_thermal_power_devfreq_get_power, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_thermal_power_devfreq_get_power = internal global ptr @event_thermal_power_devfreq_get_power, section "_ftrace_events", align 4
@trace_event_fields_thermal_power_devfreq_limit = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.23, %union.anon.92 { %struct.anon.93 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.92 { %struct.anon.93 { ptr @.str.44, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon.92 { %struct.anon.93 { ptr @.str.53, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.92 { %struct.anon.93 { ptr @.str.54, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_thermal_power_devfreq_limit = internal global %struct.trace_event_class { ptr @.str.67, ptr @trace_event_raw_event_thermal_power_devfreq_limit, ptr @perf_trace_thermal_power_devfreq_limit, ptr @trace_event_reg, ptr @trace_event_fields_thermal_power_devfreq_limit, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_thermal_power_devfreq_limit, i64 24), ptr getelementptr (i8, ptr @event_class_thermal_power_devfreq_limit, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_thermal_power_devfreq_limit = internal global %struct.trace_event_functions { ptr @trace_raw_output_thermal_power_devfreq_limit, ptr null, ptr null, ptr null }, align 4
@print_fmt_thermal_power_devfreq_limit = internal global [99 x i8] c"\22type=%s freq=%u cdev_state=%lu power=%u\22, __get_str(type), REC->freq, REC->cdev_state, REC->power\00", align 1
@event_thermal_power_devfreq_limit = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_thermal_power_devfreq_limit, %union.anon.94 { ptr @__tracepoint_thermal_power_devfreq_limit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_thermal_power_devfreq_limit }, ptr @print_fmt_thermal_power_devfreq_limit, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_thermal_power_devfreq_limit = internal global ptr @event_thermal_power_devfreq_limit, section "_ftrace_events", align 4
@thermal_governor_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @thermal_governor_lock, i64 12), ptr getelementptr (i8, ptr @thermal_governor_lock, i64 12) } }, align 4
@thermal_governor_list = internal global %struct.list_head { ptr @thermal_governor_list, ptr @thermal_governor_list }, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"step_wise\00", align 1
@def_governor = internal unnamed_addr global ptr null, align 4
@thermal_list_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @thermal_list_lock, i64 12), ptr getelementptr (i8, ptr @thermal_list_lock, i64 12) } }, align 4
@thermal_tz_list = internal global %struct.list_head { ptr @thermal_tz_list, ptr @thermal_tz_list }, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"Failed to set governor %s for thermal zone %s: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"%s: critical temperature reached, shutting down\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Temperature too high\00", align 1
@__kstrtab_thermal_zone_device_critical = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_zone_device_critical = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_zone_device_critical = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_zone_device_critical to i32), ptr @__kstrtab_thermal_zone_device_critical, ptr @__kstrtabns_thermal_zone_device_critical }, section "___ksymtab+thermal_zone_device_critical", align 4
@__kstrtab_thermal_zone_device_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_zone_device_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_zone_device_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_zone_device_enable to i32), ptr @__kstrtab_thermal_zone_device_enable, ptr @__kstrtabns_thermal_zone_device_enable }, section "___ksymtab_gpl+thermal_zone_device_enable", align 4
@__kstrtab_thermal_zone_device_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_zone_device_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_zone_device_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_zone_device_disable to i32), ptr @__kstrtab_thermal_zone_device_disable, ptr @__kstrtabns_thermal_zone_device_disable }, section "___ksymtab_gpl+thermal_zone_device_disable", align 4
@in_suspend = internal global %struct.atomic_t zeroinitializer, align 4
@thermal_zone_device_update.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"drivers/thermal/thermal_core.c\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"'%s' must not be called without 'get_temp' ops set\0A\00", align 1
@__func__.thermal_zone_device_update = private unnamed_addr constant [27 x i8] c"thermal_zone_device_update\00", align 1
@__kstrtab_thermal_zone_device_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_zone_device_update = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_zone_device_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_zone_device_update to i32), ptr @__kstrtab_thermal_zone_device_update, ptr @__kstrtabns_thermal_zone_device_update }, section "___ksymtab_gpl+thermal_zone_device_update", align 4
@thermal_cdev_list = internal global %struct.list_head { ptr @thermal_cdev_list, ptr @thermal_cdev_list }, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"cdev%d\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"cdev%d_trip_point\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"cdev%d_weight\00", align 1
@__kstrtab_thermal_zone_bind_cooling_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_zone_bind_cooling_device = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_zone_bind_cooling_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_zone_bind_cooling_device to i32), ptr @__kstrtab_thermal_zone_bind_cooling_device, ptr @__kstrtabns_thermal_zone_bind_cooling_device }, section "___ksymtab_gpl+thermal_zone_bind_cooling_device", align 4
@__kstrtab_thermal_zone_unbind_cooling_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_zone_unbind_cooling_device = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_zone_unbind_cooling_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_zone_unbind_cooling_device to i32), ptr @__kstrtab_thermal_zone_unbind_cooling_device, ptr @__kstrtabns_thermal_zone_unbind_cooling_device }, section "___ksymtab_gpl+thermal_zone_unbind_cooling_device", align 4
@__kstrtab_thermal_cooling_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_cooling_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_cooling_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_cooling_device_register to i32), ptr @__kstrtab_thermal_cooling_device_register, ptr @__kstrtabns_thermal_cooling_device_register }, section "___ksymtab_gpl+thermal_cooling_device_register", align 4
@__kstrtab_thermal_of_cooling_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_of_cooling_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_of_cooling_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_of_cooling_device_register to i32), ptr @__kstrtab_thermal_of_cooling_device_register, ptr @__kstrtabns_thermal_of_cooling_device_register }, section "___ksymtab_gpl+thermal_of_cooling_device_register", align 4
@.str.15 = private unnamed_addr constant [31 x i8] c"thermal_cooling_device_release\00", align 1
@__kstrtab_devm_thermal_of_cooling_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_thermal_of_cooling_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_thermal_of_cooling_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_thermal_of_cooling_device_register to i32), ptr @__kstrtab_devm_thermal_of_cooling_device_register, ptr @__kstrtabns_devm_thermal_of_cooling_device_register }, section "___ksymtab_gpl+devm_thermal_of_cooling_device_register", align 4
@thermal_cdev_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@__kstrtab_thermal_cooling_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_cooling_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_cooling_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_cooling_device_unregister to i32), ptr @__kstrtab_thermal_cooling_device_unregister, ptr @__kstrtabns_thermal_cooling_device_unregister }, section "___ksymtab_gpl+thermal_cooling_device_unregister", align 4
@.str.16 = private unnamed_addr constant [52 x i8] c"\013thermal_sys: Error: No thermal zone type defined\0A\00", align 1
@.str.17 = private unnamed_addr constant [81 x i8] c"\013thermal_sys: Error: Thermal zone name (%s) too long, should be under %d chars\0A\00", align 1
@.str.18 = private unnamed_addr constant [57 x i8] c"\013thermal_sys: Error: Incorrect number of thermal trips\0A\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"\013thermal_sys: Error: Thermal zone device ops not defined\0A\00", align 1
@thermal_zone_device_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"&tz->lock\00", align 1
@thermal_tz_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.21 = private unnamed_addr constant [15 x i8] c"thermal_zone%d\00", align 1
@thermal_class = internal global %struct.class { ptr @.str.67, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @thermal_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_thermal_zone_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_zone_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_zone_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_zone_device_register to i32), ptr @__kstrtab_thermal_zone_device_register, ptr @__kstrtabns_thermal_zone_device_register }, section "___ksymtab_gpl+thermal_zone_device_register", align 4
@__kstrtab_thermal_zone_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_zone_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_zone_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_zone_device_unregister to i32), ptr @__kstrtab_thermal_zone_device_unregister, ptr @__kstrtabns_thermal_zone_device_unregister }, section "___ksymtab_gpl+thermal_zone_device_unregister", align 4
@__kstrtab_thermal_zone_get_zone_by_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_zone_get_zone_by_name = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_zone_get_zone_by_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_zone_get_zone_by_name to i32), ptr @__kstrtab_thermal_zone_get_zone_by_name, ptr @__kstrtabns_thermal_zone_get_zone_by_name }, section "___ksymtab_gpl+thermal_zone_get_zone_by_name", align 4
@__initcall__kmod_thermal_sys__295_1500_thermal_init2 = internal global ptr @thermal_init, section ".initcall2.init", align 4
@.str.22 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"thermal_zone\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"temp_prev\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c"thermal_zone=%s id=%d temp_prev=%d temp=%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"type=%s target=%lu\0A\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"trip\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"enum thermal_trip_type\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"trip_type\00", align 1
@.str.37 = private unnamed_addr constant [44 x i8] c"thermal_zone=%s id=%d trip=%d trip_type=%s\0A\00", align 1
@trace_raw_output_thermal_zone_trip.symbols = internal constant [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 3, ptr @.str.38 }, %struct.trace_print_flags { i32 2, ptr @.str.39 }, %struct.trace_print_flags { i32 1, ptr @.str.40 }, %struct.trace_print_flags { i32 0, ptr @.str.41 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.38 = private unnamed_addr constant [9 x i8] c"CRITICAL\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"HOT\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"PASSIVE\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"ACTIVE\00", align 1
@__cpu_possible_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@.str.42 = private unnamed_addr constant [27 x i8] c"__data_loc unsigned long[]\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"cpumask\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"__data_loc u32[]\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"size_t\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"load_len\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"dynamic_power\00", align 1
@.str.51 = private unnamed_addr constant [45 x i8] c"cpus=%s freq=%lu load={%s} dynamic_power=%d\0A\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"cdev_state\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.55 = private unnamed_addr constant [41 x i8] c"cpus=%s freq=%u cdev_state=%lu power=%u\0A\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"busy_time\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"total_time\00", align 1
@.str.58 = private unnamed_addr constant [35 x i8] c"type=%s freq=%lu load=%u power=%u\0A\00", align 1
@.str.59 = private unnamed_addr constant [41 x i8] c"type=%s freq=%u cdev_state=%lu power=%u\0A\00", align 1
@.str.60 = private unnamed_addr constant [108 x i8] c"governor %s failed to bind and the previous one (%s) failed to bind again, thermal zone %s has no governor\0A\00", align 1
@.str.61 = private unnamed_addr constant [38 x i8] c"failed to read out thermal zone (%d)\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@system_freezable_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.63 = private unnamed_addr constant [17 x i8] c"cooling_device%d\00", align 1
@.str.64 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__thermal_cooling_device_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"&cdev->lock\00", align 1
@.str.66 = private unnamed_addr constant [40 x i8] c"binding zone %s with cdev %s failed:%d\0A\00", align 1
@.str.67 = private constant [8 x i8] c"thermal\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"cooling_device\00", align 1
@thermal_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@thermal_pm_nb = internal global %struct.notifier_block { ptr @thermal_pm_notify, ptr null, i32 0 }, align 4
@.str.69 = private unnamed_addr constant [70 x i8] c"\014thermal_sys: Thermal: Can not register suspend notifier, return %d\0A\00", align 1
@__governor_thermal_table = external dso_local global [0 x ptr], align 4
@__governor_thermal_table_end = external dso_local global [0 x ptr], align 4
@.str.70 = private unnamed_addr constant [49 x i8] c"\013thermal_sys: Failed to register governor: '%s'\00", align 1
@.str.71 = private unnamed_addr constant [48 x i8] c"\016thermal_sys: Registered thermal governor '%s'\00", align 1
@llvm.compiler.used = appending global [57 x ptr] [ptr @TRACE_SYSTEM_THERMAL_TRIP_ACTIVE, ptr @TRACE_SYSTEM_THERMAL_TRIP_CRITICAL, ptr @TRACE_SYSTEM_THERMAL_TRIP_HOT, ptr @TRACE_SYSTEM_THERMAL_TRIP_PASSIVE, ptr @__TRACE_SYSTEM_THERMAL_TRIP_ACTIVE, ptr @__TRACE_SYSTEM_THERMAL_TRIP_CRITICAL, ptr @__TRACE_SYSTEM_THERMAL_TRIP_HOT, ptr @__TRACE_SYSTEM_THERMAL_TRIP_PASSIVE, ptr @__event_cdev_update, ptr @__event_thermal_power_cpu_get_power, ptr @__event_thermal_power_cpu_limit, ptr @__event_thermal_power_devfreq_get_power, ptr @__event_thermal_power_devfreq_limit, ptr @__event_thermal_temperature, ptr @__event_thermal_zone_trip, ptr @__initcall__kmod_thermal_sys__295_1500_thermal_init2, ptr @__ksymtab_devm_thermal_of_cooling_device_register, ptr @__ksymtab_thermal_cooling_device_register, ptr @__ksymtab_thermal_cooling_device_unregister, ptr @__ksymtab_thermal_of_cooling_device_register, ptr @__ksymtab_thermal_zone_bind_cooling_device, ptr @__ksymtab_thermal_zone_device_critical, ptr @__ksymtab_thermal_zone_device_disable, ptr @__ksymtab_thermal_zone_device_enable, ptr @__ksymtab_thermal_zone_device_register, ptr @__ksymtab_thermal_zone_device_unregister, ptr @__ksymtab_thermal_zone_device_update, ptr @__ksymtab_thermal_zone_get_zone_by_name, ptr @__ksymtab_thermal_zone_unbind_cooling_device, ptr @__tracepoint_cdev_update, ptr @__tracepoint_ptr_cdev_update, ptr @__tracepoint_ptr_thermal_power_cpu_get_power, ptr @__tracepoint_ptr_thermal_power_cpu_limit, ptr @__tracepoint_ptr_thermal_power_devfreq_get_power, ptr @__tracepoint_ptr_thermal_power_devfreq_limit, ptr @__tracepoint_ptr_thermal_temperature, ptr @__tracepoint_ptr_thermal_zone_trip, ptr @__tracepoint_thermal_power_cpu_get_power, ptr @__tracepoint_thermal_power_cpu_limit, ptr @__tracepoint_thermal_power_devfreq_get_power, ptr @__tracepoint_thermal_power_devfreq_limit, ptr @__tracepoint_thermal_temperature, ptr @__tracepoint_thermal_zone_trip, ptr @event_cdev_update, ptr @event_class_cdev_update, ptr @event_class_thermal_power_cpu_get_power, ptr @event_class_thermal_power_cpu_limit, ptr @event_class_thermal_power_devfreq_get_power, ptr @event_class_thermal_power_devfreq_limit, ptr @event_class_thermal_temperature, ptr @event_class_thermal_zone_trip, ptr @event_thermal_power_cpu_get_power, ptr @event_thermal_power_cpu_limit, ptr @event_thermal_power_devfreq_get_power, ptr @event_thermal_power_devfreq_limit, ptr @event_thermal_temperature, ptr @event_thermal_zone_trip], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_thermal_temperature(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_temperature, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #16
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
define dso_local i32 @__traceiter_cdev_update(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdev_update, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_thermal_zone_trip(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_zone_trip, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #16
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_thermal_power_cpu_get_power(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_power_cpu_get_power, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #16
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_thermal_power_cpu_limit(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_power_cpu_limit, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #16
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_thermal_power_devfreq_get_power(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_power_devfreq_get_power, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #16
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_thermal_power_devfreq_limit(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_power_devfreq_limit, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #16
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_thermal_temperature(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %12, label %35, label %13

13:                                               ; preds = %11, %8, %2
  %14 = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 1
  %15 = tail call i32 @strlen(ptr noundef %14) #16
  %16 = add i32 %15, 25
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %16) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %13
  %20 = shl i32 %15, 16
  %21 = add i32 %20, 65560
  %22 = getelementptr inbounds %struct.trace_event_raw_thermal_temperature, ptr %17, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr i8, ptr %17, i32 24
  %24 = icmp eq ptr %14, null
  %25 = select i1 %24, ptr @.str.22, ptr %14
  %26 = call ptr @strcpy(ptr noundef %23, ptr noundef %25)
  %27 = load i32, ptr %1, align 8
  %28 = getelementptr inbounds %struct.trace_event_raw_thermal_temperature, ptr %17, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 14
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_thermal_temperature, ptr %17, i32 0, i32 3
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 13
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.trace_event_raw_thermal_temperature, ptr %17, i32 0, i32 4
  store i32 %33, ptr %34, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #16
  br label %35

35:                                               ; preds = %19, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_thermal_temperature(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 1
  %6 = tail call i32 @strlen(ptr noundef %5) #16
  %7 = shl i32 %6, 16
  %8 = add i32 %7, 65560
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #13, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %55, label %23

23:                                               ; preds = %20, %2
  %24 = add i32 %6, 36
  %25 = and i32 %24, -8
  %26 = add i32 %25, -4
  %27 = call ptr @perf_trace_buf_alloc(i32 noundef %26, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %55, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr %3, align 4
  %31 = call ptr @llvm.returnaddress(i32 0) #16
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %30, i32 0, i32 15
  store i32 %32, ptr %33, align 4
  %34 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %30, i32 0, i32 11
  store i32 %35, ptr %36, align 4
  %37 = call i32 @llvm.read_register.i32(metadata !0) #16
  %38 = getelementptr [18 x i32], ptr %30, i32 0, i32 13
  store i32 %37, ptr %38, align 4
  %39 = getelementptr [18 x i32], ptr %30, i32 0, i32 16
  store i32 19, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_thermal_temperature, ptr %27, i32 0, i32 1
  store i32 %8, ptr %40, align 4
  %41 = getelementptr i8, ptr %27, i32 24
  %42 = icmp eq ptr %5, null
  %43 = select i1 %42, ptr @.str.22, ptr %5
  %44 = call ptr @strcpy(ptr noundef %41, ptr noundef %43)
  %45 = load i32, ptr %1, align 8
  %46 = getelementptr inbounds %struct.trace_event_raw_thermal_temperature, ptr %27, i32 0, i32 2
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 14
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_thermal_temperature, ptr %27, i32 0, i32 3
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 13
  %51 = load i32, ptr %50, align 8
  %52 = getelementptr inbounds %struct.trace_event_raw_thermal_temperature, ptr %27, i32 0, i32 4
  store i32 %51, ptr %52, align 4
  %53 = load i32, ptr %4, align 4
  %54 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %27, i32 noundef %26, i32 noundef %53, ptr noundef %0, i64 noundef 1, ptr noundef %54, ptr noundef %16, ptr noundef null) #16
  br label %55

55:                                               ; preds = %29, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cdev_update(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %13, label %33, label %14

14:                                               ; preds = %12, %9, %3
  %15 = getelementptr inbounds %struct.thermal_cooling_device, ptr %1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, ptr @.str.22, ptr %16
  %19 = tail call i32 @strlen(ptr noundef nonnull %18) #16
  %20 = add i32 %19, 17
  %21 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %20) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %14
  %24 = shl i32 %19, 16
  %25 = add i32 %24, 65552
  %26 = getelementptr inbounds %struct.trace_event_raw_cdev_update, ptr %21, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = getelementptr i8, ptr %21, i32 16
  %28 = load ptr, ptr %15, align 4
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, ptr @.str.22, ptr %28
  %31 = call ptr @strcpy(ptr noundef %27, ptr noundef nonnull %30)
  %32 = getelementptr inbounds %struct.trace_event_raw_cdev_update, ptr %21, i32 0, i32 2
  store i32 %2, ptr %32, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #16
  br label %33

33:                                               ; preds = %23, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_cdev_update(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.thermal_cooling_device, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @.str.22, ptr %7
  %10 = tail call i32 @strlen(ptr noundef nonnull %9) #16
  %11 = shl i32 %10, 16
  %12 = add i32 %11, 65552
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #13, !srcloc !12
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load volatile ptr, ptr %20, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %53, label %27

27:                                               ; preds = %24, %3
  %28 = add i32 %10, 28
  %29 = and i32 %28, -8
  %30 = add i32 %29, -4
  %31 = call ptr @perf_trace_buf_alloc(i32 noundef %30, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %32 = icmp eq ptr %31, null
  br i1 %32, label %53, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %4, align 4
  %35 = call ptr @llvm.returnaddress(i32 0) #16
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %34, i32 0, i32 15
  store i32 %36, ptr %37, align 4
  %38 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %39 = ptrtoint ptr %38 to i32
  %40 = getelementptr [18 x i32], ptr %34, i32 0, i32 11
  store i32 %39, ptr %40, align 4
  %41 = call i32 @llvm.read_register.i32(metadata !0) #16
  %42 = getelementptr [18 x i32], ptr %34, i32 0, i32 13
  store i32 %41, ptr %42, align 4
  %43 = getelementptr [18 x i32], ptr %34, i32 0, i32 16
  store i32 19, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_cdev_update, ptr %31, i32 0, i32 1
  store i32 %12, ptr %44, align 4
  %45 = getelementptr i8, ptr %31, i32 16
  %46 = load ptr, ptr %6, align 4
  %47 = icmp eq ptr %46, null
  %48 = select i1 %47, ptr @.str.22, ptr %46
  %49 = call ptr @strcpy(ptr noundef %45, ptr noundef nonnull %48)
  %50 = getelementptr inbounds %struct.trace_event_raw_cdev_update, ptr %31, i32 0, i32 2
  store i32 %2, ptr %50, align 4
  %51 = load i32, ptr %5, align 4
  %52 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %31, i32 noundef %30, i32 noundef %51, ptr noundef %0, i64 noundef 1, ptr noundef %52, ptr noundef %20, ptr noundef null) #16
  br label %53

53:                                               ; preds = %33, %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_thermal_zone_trip(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %14, label %33, label %15

15:                                               ; preds = %13, %10, %4
  %16 = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 1
  %17 = tail call i32 @strlen(ptr noundef %16) #16
  %18 = add i32 %17, 25
  %19 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %18) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = shl i32 %17, 16
  %23 = add i32 %22, 65560
  %24 = getelementptr inbounds %struct.trace_event_raw_thermal_zone_trip, ptr %19, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = getelementptr i8, ptr %19, i32 24
  %26 = icmp eq ptr %16, null
  %27 = select i1 %26, ptr @.str.22, ptr %16
  %28 = call ptr @strcpy(ptr noundef %25, ptr noundef %27)
  %29 = load i32, ptr %1, align 8
  %30 = getelementptr inbounds %struct.trace_event_raw_thermal_zone_trip, ptr %19, i32 0, i32 2
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_thermal_zone_trip, ptr %19, i32 0, i32 3
  store i32 %2, ptr %31, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_thermal_zone_trip, ptr %19, i32 0, i32 4
  store i32 %3, ptr %32, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #16
  br label %33

33:                                               ; preds = %21, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_thermal_zone_trip(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 1
  %8 = tail call i32 @strlen(ptr noundef %7) #16
  %9 = shl i32 %8, 16
  %10 = add i32 %9, 65560
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #13, !srcloc !12
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load volatile ptr, ptr %18, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %53, label %25

25:                                               ; preds = %22, %4
  %26 = add i32 %8, 36
  %27 = and i32 %26, -8
  %28 = add i32 %27, -4
  %29 = call ptr @perf_trace_buf_alloc(i32 noundef %28, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %53, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %5, align 4
  %33 = call ptr @llvm.returnaddress(i32 0) #16
  %34 = ptrtoint ptr %33 to i32
  %35 = getelementptr [18 x i32], ptr %32, i32 0, i32 15
  store i32 %34, ptr %35, align 4
  %36 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %37 = ptrtoint ptr %36 to i32
  %38 = getelementptr [18 x i32], ptr %32, i32 0, i32 11
  store i32 %37, ptr %38, align 4
  %39 = call i32 @llvm.read_register.i32(metadata !0) #16
  %40 = getelementptr [18 x i32], ptr %32, i32 0, i32 13
  store i32 %39, ptr %40, align 4
  %41 = getelementptr [18 x i32], ptr %32, i32 0, i32 16
  store i32 19, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_thermal_zone_trip, ptr %29, i32 0, i32 1
  store i32 %10, ptr %42, align 4
  %43 = getelementptr i8, ptr %29, i32 24
  %44 = icmp eq ptr %7, null
  %45 = select i1 %44, ptr @.str.22, ptr %7
  %46 = call ptr @strcpy(ptr noundef %43, ptr noundef %45)
  %47 = load i32, ptr %1, align 8
  %48 = getelementptr inbounds %struct.trace_event_raw_thermal_zone_trip, ptr %29, i32 0, i32 2
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_thermal_zone_trip, ptr %29, i32 0, i32 3
  store i32 %2, ptr %49, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_thermal_zone_trip, ptr %29, i32 0, i32 4
  store i32 %3, ptr %50, align 4
  %51 = load i32, ptr %6, align 4
  %52 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %29, i32 noundef %28, i32 noundef %51, ptr noundef %0, i64 noundef 1, ptr noundef %52, ptr noundef %18, ptr noundef null) #16
  br label %53

53:                                               ; preds = %31, %25, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_thermal_power_cpu_get_power(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
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
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %16, label %51, label %17

17:                                               ; preds = %15, %12, %6
  %18 = load i32, ptr @__cpu_possible_mask, align 4
  %19 = and i32 %18, 65535
  %20 = tail call i32 @__sw_hweight32(i32 noundef %19) #16
  %21 = add i32 %20, 7
  %22 = lshr i32 %21, 3
  %23 = add nuw nsw i32 %22, 3
  %24 = and i32 %23, 1073741820
  %25 = shl i32 %4, 2
  %26 = add nuw nsw i32 %24, 28
  %27 = add i32 %26, %25
  %28 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef %27) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %51, label %30

30:                                               ; preds = %17
  %31 = shl i32 %4, 18
  %32 = or i32 %26, %31
  %33 = shl i32 %24, 16
  %34 = or i32 %33, 28
  %35 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_get_power, ptr %28, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_get_power, ptr %28, i32 0, i32 3
  store i32 %32, ptr %36, align 4
  %37 = getelementptr i8, ptr %28, i32 28
  %38 = load i32, ptr @__cpu_possible_mask, align 4
  %39 = and i32 %38, 65535
  %40 = call i32 @__sw_hweight32(i32 noundef %39) #16
  %41 = load i32, ptr %36, align 4
  %42 = add i32 %40, 7
  %43 = lshr i32 %42, 3
  %44 = add nuw nsw i32 %43, 3
  %45 = and i32 %44, 1073741820
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %37, ptr align 4 %1, i32 %45, i1 false)
  %46 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_get_power, ptr %28, i32 0, i32 2
  store i32 %2, ptr %46, align 4
  %47 = and i32 %41, 65535
  %48 = getelementptr i8, ptr %28, i32 %47
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %48, ptr align 4 %3, i32 %25, i1 false)
  %49 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_get_power, ptr %28, i32 0, i32 4
  store i32 %4, ptr %49, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_get_power, ptr %28, i32 0, i32 5
  store i32 %5, ptr %50, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #16
  br label %51

51:                                               ; preds = %30, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_thermal_power_cpu_get_power(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = load i32, ptr @__cpu_possible_mask, align 4
  %10 = and i32 %9, 65535
  %11 = tail call i32 @__sw_hweight32(i32 noundef %10) #16
  %12 = add i32 %11, 7
  %13 = lshr i32 %12, 3
  %14 = add nuw nsw i32 %13, 3
  %15 = and i32 %14, 1073741820
  %16 = shl i32 %15, 16
  %17 = or i32 %16, 28
  %18 = shl i32 %4, 2
  %19 = add nuw nsw i32 %15, 28
  %20 = shl i32 %4, 18
  %21 = or i32 %19, %20
  %22 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %26 = inttoptr i32 %25 to ptr
  %27 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %26) #13, !srcloc !12
  %28 = add i32 %27, %24
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %6
  %34 = load volatile ptr, ptr %29, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %72, label %36

36:                                               ; preds = %33, %6
  %37 = add i32 %18, 39
  %38 = add i32 %37, %15
  %39 = and i32 %38, -8
  %40 = add i32 %39, -4
  %41 = call ptr @perf_trace_buf_alloc(i32 noundef %40, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %42 = icmp eq ptr %41, null
  br i1 %42, label %72, label %43

43:                                               ; preds = %36
  %44 = load ptr, ptr %7, align 4
  %45 = call ptr @llvm.returnaddress(i32 0) #16
  %46 = ptrtoint ptr %45 to i32
  %47 = getelementptr [18 x i32], ptr %44, i32 0, i32 15
  store i32 %46, ptr %47, align 4
  %48 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %49 = ptrtoint ptr %48 to i32
  %50 = getelementptr [18 x i32], ptr %44, i32 0, i32 11
  store i32 %49, ptr %50, align 4
  %51 = call i32 @llvm.read_register.i32(metadata !0) #16
  %52 = getelementptr [18 x i32], ptr %44, i32 0, i32 13
  store i32 %51, ptr %52, align 4
  %53 = getelementptr [18 x i32], ptr %44, i32 0, i32 16
  store i32 19, ptr %53, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_get_power, ptr %41, i32 0, i32 1
  store i32 %17, ptr %54, align 4
  %55 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_get_power, ptr %41, i32 0, i32 3
  store i32 %21, ptr %55, align 4
  %56 = getelementptr i8, ptr %41, i32 28
  %57 = load i32, ptr @__cpu_possible_mask, align 4
  %58 = and i32 %57, 65535
  %59 = call i32 @__sw_hweight32(i32 noundef %58) #16
  %60 = load i32, ptr %55, align 4
  %61 = add i32 %59, 7
  %62 = lshr i32 %61, 3
  %63 = add nuw nsw i32 %62, 3
  %64 = and i32 %63, 1073741820
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %56, ptr align 4 %1, i32 %64, i1 false)
  %65 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_get_power, ptr %41, i32 0, i32 2
  store i32 %2, ptr %65, align 4
  %66 = and i32 %60, 65535
  %67 = getelementptr i8, ptr %41, i32 %66
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %67, ptr align 4 %3, i32 %18, i1 false)
  %68 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_get_power, ptr %41, i32 0, i32 4
  store i32 %4, ptr %68, align 4
  %69 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_get_power, ptr %41, i32 0, i32 5
  store i32 %5, ptr %69, align 4
  %70 = load i32, ptr %8, align 4
  %71 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %41, i32 noundef %40, i32 noundef %70, ptr noundef %0, i64 noundef 1, ptr noundef %71, ptr noundef %29, ptr noundef null) #16
  br label %72

72:                                               ; preds = %43, %36, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_thermal_power_cpu_limit(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
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
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %15, label %42, label %16

16:                                               ; preds = %14, %11, %5
  %17 = load i32, ptr @__cpu_possible_mask, align 4
  %18 = and i32 %17, 65535
  %19 = tail call i32 @__sw_hweight32(i32 noundef %18) #16
  %20 = add i32 %19, 7
  %21 = lshr i32 %20, 3
  %22 = add nuw nsw i32 %21, 3
  %23 = and i32 %22, 1073741820
  %24 = add nuw nsw i32 %23, 24
  %25 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %24) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %16
  %28 = shl i32 %23, 16
  %29 = or i32 %28, 24
  %30 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_limit, ptr %25, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = getelementptr i8, ptr %25, i32 24
  %32 = load i32, ptr @__cpu_possible_mask, align 4
  %33 = and i32 %32, 65535
  %34 = call i32 @__sw_hweight32(i32 noundef %33) #16
  %35 = add i32 %34, 7
  %36 = lshr i32 %35, 3
  %37 = add nuw nsw i32 %36, 3
  %38 = and i32 %37, 1073741820
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %31, ptr align 4 %1, i32 %38, i1 false)
  %39 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_limit, ptr %25, i32 0, i32 2
  store i32 %2, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_limit, ptr %25, i32 0, i32 3
  store i32 %3, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_limit, ptr %25, i32 0, i32 4
  store i32 %4, ptr %41, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #16
  br label %42

42:                                               ; preds = %27, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_thermal_power_cpu_limit(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = load i32, ptr @__cpu_possible_mask, align 4
  %9 = and i32 %8, 65535
  %10 = tail call i32 @__sw_hweight32(i32 noundef %9) #16
  %11 = add i32 %10, 7
  %12 = lshr i32 %11, 3
  %13 = add nuw nsw i32 %12, 3
  %14 = and i32 %13, 1073741820
  %15 = shl i32 %14, 16
  %16 = or i32 %15, 24
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %21) #13, !srcloc !12
  %23 = add i32 %22, %19
  %24 = inttoptr i32 %23 to ptr
  %25 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load volatile ptr, ptr %24, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %62, label %31

31:                                               ; preds = %28, %5
  %32 = add nuw nsw i32 %14, 35
  %33 = and i32 %32, 2147483640
  %34 = add nsw i32 %33, -4
  %35 = call ptr @perf_trace_buf_alloc(i32 noundef %34, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %36 = icmp eq ptr %35, null
  br i1 %36, label %62, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr %6, align 4
  %39 = call ptr @llvm.returnaddress(i32 0) #16
  %40 = ptrtoint ptr %39 to i32
  %41 = getelementptr [18 x i32], ptr %38, i32 0, i32 15
  store i32 %40, ptr %41, align 4
  %42 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %43 = ptrtoint ptr %42 to i32
  %44 = getelementptr [18 x i32], ptr %38, i32 0, i32 11
  store i32 %43, ptr %44, align 4
  %45 = call i32 @llvm.read_register.i32(metadata !0) #16
  %46 = getelementptr [18 x i32], ptr %38, i32 0, i32 13
  store i32 %45, ptr %46, align 4
  %47 = getelementptr [18 x i32], ptr %38, i32 0, i32 16
  store i32 19, ptr %47, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_limit, ptr %35, i32 0, i32 1
  store i32 %16, ptr %48, align 4
  %49 = getelementptr i8, ptr %35, i32 24
  %50 = load i32, ptr @__cpu_possible_mask, align 4
  %51 = and i32 %50, 65535
  %52 = call i32 @__sw_hweight32(i32 noundef %51) #16
  %53 = add i32 %52, 7
  %54 = lshr i32 %53, 3
  %55 = add nuw nsw i32 %54, 3
  %56 = and i32 %55, 1073741820
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %49, ptr align 4 %1, i32 %56, i1 false)
  %57 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_limit, ptr %35, i32 0, i32 2
  store i32 %2, ptr %57, align 4
  %58 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_limit, ptr %35, i32 0, i32 3
  store i32 %3, ptr %58, align 4
  %59 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_limit, ptr %35, i32 0, i32 4
  store i32 %4, ptr %59, align 4
  %60 = load i32, ptr %7, align 4
  %61 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %35, i32 noundef %34, i32 noundef %60, ptr noundef %0, i64 noundef 1, ptr noundef %61, ptr noundef %24, ptr noundef null) #16
  br label %62

62:                                               ; preds = %37, %31, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_thermal_power_devfreq_get_power(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
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
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %15, label %41, label %16

16:                                               ; preds = %14, %11, %5
  %17 = getelementptr inbounds %struct.thermal_cooling_device, ptr %1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, ptr @.str.22, ptr %18
  %21 = tail call i32 @strlen(ptr noundef nonnull %20) #16
  %22 = add i32 %21, 29
  %23 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %22) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %16
  %26 = shl i32 %21, 16
  %27 = add i32 %26, 65564
  %28 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_get_power, ptr %23, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = getelementptr i8, ptr %23, i32 28
  %30 = load ptr, ptr %17, align 4
  %31 = icmp eq ptr %30, null
  %32 = select i1 %31, ptr @.str.22, ptr %30
  %33 = call ptr @strcpy(ptr noundef %29, ptr noundef nonnull %32)
  %34 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_get_power, ptr %23, i32 0, i32 2
  store i32 %3, ptr %34, align 4
  %35 = getelementptr inbounds %struct.devfreq_dev_status, ptr %2, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_get_power, ptr %23, i32 0, i32 3
  store i32 %36, ptr %37, align 4
  %38 = load i32, ptr %2, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_get_power, ptr %23, i32 0, i32 4
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_get_power, ptr %23, i32 0, i32 5
  store i32 %4, ptr %40, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #16
  br label %41

41:                                               ; preds = %25, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_thermal_power_devfreq_get_power(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.thermal_cooling_device, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @.str.22, ptr %9
  %12 = tail call i32 @strlen(ptr noundef nonnull %11) #16
  %13 = shl i32 %12, 16
  %14 = add i32 %13, 65564
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #13, !srcloc !12
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load volatile ptr, ptr %22, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %61, label %29

29:                                               ; preds = %26, %5
  %30 = add i32 %12, 40
  %31 = and i32 %30, -8
  %32 = add i32 %31, -4
  %33 = call ptr @perf_trace_buf_alloc(i32 noundef %32, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %61, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %6, align 4
  %37 = call ptr @llvm.returnaddress(i32 0) #16
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %36, i32 0, i32 15
  store i32 %38, ptr %39, align 4
  %40 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %41 = ptrtoint ptr %40 to i32
  %42 = getelementptr [18 x i32], ptr %36, i32 0, i32 11
  store i32 %41, ptr %42, align 4
  %43 = call i32 @llvm.read_register.i32(metadata !0) #16
  %44 = getelementptr [18 x i32], ptr %36, i32 0, i32 13
  store i32 %43, ptr %44, align 4
  %45 = getelementptr [18 x i32], ptr %36, i32 0, i32 16
  store i32 19, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_get_power, ptr %33, i32 0, i32 1
  store i32 %14, ptr %46, align 4
  %47 = getelementptr i8, ptr %33, i32 28
  %48 = load ptr, ptr %8, align 4
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, ptr @.str.22, ptr %48
  %51 = call ptr @strcpy(ptr noundef %47, ptr noundef nonnull %50)
  %52 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_get_power, ptr %33, i32 0, i32 2
  store i32 %3, ptr %52, align 4
  %53 = getelementptr inbounds %struct.devfreq_dev_status, ptr %2, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_get_power, ptr %33, i32 0, i32 3
  store i32 %54, ptr %55, align 4
  %56 = load i32, ptr %2, align 4
  %57 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_get_power, ptr %33, i32 0, i32 4
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_get_power, ptr %33, i32 0, i32 5
  store i32 %4, ptr %58, align 4
  %59 = load i32, ptr %7, align 4
  %60 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %33, i32 noundef %32, i32 noundef %59, ptr noundef %0, i64 noundef 1, ptr noundef %60, ptr noundef %22, ptr noundef null) #16
  br label %61

61:                                               ; preds = %35, %29, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_thermal_power_devfreq_limit(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
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
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %15, label %37, label %16

16:                                               ; preds = %14, %11, %5
  %17 = getelementptr inbounds %struct.thermal_cooling_device, ptr %1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, ptr @.str.22, ptr %18
  %21 = tail call i32 @strlen(ptr noundef nonnull %20) #16
  %22 = add i32 %21, 25
  %23 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %22) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %16
  %26 = shl i32 %21, 16
  %27 = add i32 %26, 65560
  %28 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_limit, ptr %23, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = getelementptr i8, ptr %23, i32 24
  %30 = load ptr, ptr %17, align 4
  %31 = icmp eq ptr %30, null
  %32 = select i1 %31, ptr @.str.22, ptr %30
  %33 = call ptr @strcpy(ptr noundef %29, ptr noundef nonnull %32)
  %34 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_limit, ptr %23, i32 0, i32 2
  store i32 %2, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_limit, ptr %23, i32 0, i32 3
  store i32 %3, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_limit, ptr %23, i32 0, i32 4
  store i32 %4, ptr %36, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #16
  br label %37

37:                                               ; preds = %25, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_thermal_power_devfreq_limit(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.thermal_cooling_device, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @.str.22, ptr %9
  %12 = tail call i32 @strlen(ptr noundef nonnull %11) #16
  %13 = shl i32 %12, 16
  %14 = add i32 %13, 65560
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #13, !srcloc !12
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load volatile ptr, ptr %22, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %57, label %29

29:                                               ; preds = %26, %5
  %30 = add i32 %12, 36
  %31 = and i32 %30, -8
  %32 = add i32 %31, -4
  %33 = call ptr @perf_trace_buf_alloc(i32 noundef %32, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %57, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %6, align 4
  %37 = call ptr @llvm.returnaddress(i32 0) #16
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %36, i32 0, i32 15
  store i32 %38, ptr %39, align 4
  %40 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %41 = ptrtoint ptr %40 to i32
  %42 = getelementptr [18 x i32], ptr %36, i32 0, i32 11
  store i32 %41, ptr %42, align 4
  %43 = call i32 @llvm.read_register.i32(metadata !0) #16
  %44 = getelementptr [18 x i32], ptr %36, i32 0, i32 13
  store i32 %43, ptr %44, align 4
  %45 = getelementptr [18 x i32], ptr %36, i32 0, i32 16
  store i32 19, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_limit, ptr %33, i32 0, i32 1
  store i32 %14, ptr %46, align 4
  %47 = getelementptr i8, ptr %33, i32 24
  %48 = load ptr, ptr %8, align 4
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, ptr @.str.22, ptr %48
  %51 = call ptr @strcpy(ptr noundef %47, ptr noundef nonnull %50)
  %52 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_limit, ptr %33, i32 0, i32 2
  store i32 %2, ptr %52, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_limit, ptr %33, i32 0, i32 3
  store i32 %3, ptr %53, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_limit, ptr %33, i32 0, i32 4
  store i32 %4, ptr %54, align 4
  %55 = load i32, ptr %7, align 4
  %56 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %33, i32 noundef %32, i32 noundef %55, ptr noundef %0, i64 noundef 1, ptr noundef %56, ptr noundef %22, ptr noundef null) #16
  br label %57

57:                                               ; preds = %35, %29, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @thermal_register_governor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %75, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @thermal_governor_lock) #16
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = load ptr, ptr @def_governor, align 4
  br label %16

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %10, %12 ], [ @thermal_governor_list, %3 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, @thermal_governor_list
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %10, i32 -32
  %14 = tail call i32 @strncasecmp(ptr noundef nonnull %0, ptr noundef %13, i32 noundef 20) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %8

16:                                               ; preds = %12, %6
  %17 = phi ptr [ %7, %6 ], [ %13, %12 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %16, %8
  %20 = getelementptr inbounds %struct.thermal_governor, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr @thermal_governor_list, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  store ptr %21, ptr %20, align 4
  %23 = getelementptr inbounds %struct.thermal_governor, ptr %0, i32 0, i32 4, i32 1
  store ptr @thermal_governor_list, ptr %23, align 4
  store volatile ptr %20, ptr @thermal_governor_list, align 4
  %24 = load ptr, ptr @def_governor, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(10) @.str.4, i32 noundef 20)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store ptr %0, ptr @def_governor, align 4
  br label %30

30:                                               ; preds = %29, %26, %19, %16
  %31 = phi i32 [ -16, %16 ], [ 0, %29 ], [ 0, %26 ], [ 0, %19 ]
  tail call void @mutex_lock(ptr noundef nonnull @thermal_list_lock) #16
  %32 = load ptr, ptr @thermal_tz_list, align 4
  %33 = icmp eq ptr %32, @thermal_tz_list
  br i1 %33, label %74, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.thermal_governor, ptr %0, i32 0, i32 1
  br label %36

36:                                               ; preds = %71, %34
  %37 = phi ptr [ %32, %34 ], [ %72, %71 ]
  %38 = getelementptr i8, ptr %37, i32 -636
  %39 = getelementptr i8, ptr %37, i32 -48
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %71

42:                                               ; preds = %36
  %43 = getelementptr i8, ptr %37, i32 -52
  %44 = load ptr, ptr %43, align 8
  %45 = tail call i32 @strncasecmp(ptr noundef %44, ptr noundef nonnull %0, i32 noundef 20)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %42
  %48 = load ptr, ptr %35, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %63, label %50

50:                                               ; preds = %47
  %51 = tail call i32 %48(ptr noundef %38) #16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %39, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %68, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.thermal_governor, ptr %54, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = tail call i32 %58(ptr noundef %38) #16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %64

63:                                               ; preds = %50, %47
  store ptr %0, ptr %39, align 4
  br label %71

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %37, i32 -612
  %66 = load ptr, ptr %39, align 4
  %67 = getelementptr i8, ptr %37, i32 -632
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.60, ptr noundef nonnull %0, ptr noundef %66, ptr noundef %67) #17
  store ptr null, ptr %39, align 4
  br label %68

68:                                               ; preds = %64, %60, %56, %53
  %69 = getelementptr i8, ptr %37, i32 -612
  %70 = getelementptr i8, ptr %37, i32 -632
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.5, ptr noundef nonnull %0, ptr noundef %70, i32 noundef %51) #17
  br label %71

71:                                               ; preds = %68, %63, %42, %36
  %72 = load ptr, ptr %37, align 4
  %73 = icmp eq ptr %72, @thermal_tz_list
  br i1 %73, label %74, label %36

74:                                               ; preds = %71, %30
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_list_lock) #16
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_governor_lock) #16
  br label %75

75:                                               ; preds = %74, %1
  %76 = phi i32 [ %31, %74 ], [ -22, %1 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc ptr @__find_governor(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3, %1
  %7 = load ptr, ptr @def_governor, align 4
  br label %16

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %10, %12 ], [ @thermal_governor_list, %3 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, @thermal_governor_list
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %10, i32 -32
  %14 = tail call i32 @strncasecmp(ptr noundef nonnull %0, ptr noundef %13, i32 noundef 20)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %8

16:                                               ; preds = %12, %8, %6
  %17 = phi ptr [ %7, %6 ], [ null, %8 ], [ %13, %12 ]
  ret ptr %17
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @thermal_set_governor(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.thermal_governor, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void %8(ptr noundef %0) #16
  br label %11

11:                                               ; preds = %10, %6, %2
  %12 = icmp eq ptr %1, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.thermal_governor, ptr %1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %34, label %17

17:                                               ; preds = %13
  %18 = tail call i32 %15(ptr noundef %0) #16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %3, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.thermal_governor, ptr %21, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = tail call i32 %25(ptr noundef %0) #16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.60, ptr noundef nonnull %1, ptr noundef %32, ptr noundef %33) #17
  br label %34

34:                                               ; preds = %30, %17, %13, %11
  %35 = phi ptr [ null, %30 ], [ %1, %17 ], [ %1, %13 ], [ %1, %11 ]
  %36 = phi i32 [ %18, %30 ], [ 0, %17 ], [ 0, %13 ], [ 0, %11 ]
  store ptr %35, ptr %3, align 4
  br label %37

37:                                               ; preds = %34, %27, %23, %20
  %38 = phi i32 [ %18, %20 ], [ %18, %23 ], [ %18, %27 ], [ %36, %34 ]
  ret i32 %38
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @thermal_unregister_governor(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %47, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @thermal_governor_lock) #16
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = load ptr, ptr @def_governor, align 4
  br label %16

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %10, %12 ], [ @thermal_governor_list, %3 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, @thermal_governor_list
  br i1 %11, label %46, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %10, i32 -32
  %14 = tail call i32 @strncasecmp(ptr noundef nonnull %0, ptr noundef %13, i32 noundef 20) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %8

16:                                               ; preds = %12, %6
  %17 = phi ptr [ %7, %6 ], [ %13, %12 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %46, label %19

19:                                               ; preds = %16
  tail call void @mutex_lock(ptr noundef nonnull @thermal_list_lock) #16
  %20 = load ptr, ptr @thermal_tz_list, align 4
  %21 = icmp eq ptr %20, @thermal_tz_list
  br i1 %21, label %40, label %22

22:                                               ; preds = %37, %19
  %23 = phi ptr [ %38, %37 ], [ %20, %19 ]
  %24 = getelementptr i8, ptr %23, i32 -636
  %25 = getelementptr i8, ptr %23, i32 -48
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @strncasecmp(ptr noundef %26, ptr noundef nonnull %0, i32 noundef 20)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = icmp eq ptr %26, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.thermal_governor, ptr %26, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void %33(ptr noundef %24) #16
  br label %36

36:                                               ; preds = %35, %31, %29
  store ptr null, ptr %25, align 4
  br label %37

37:                                               ; preds = %36, %22
  %38 = load ptr, ptr %23, align 4
  %39 = icmp eq ptr %38, @thermal_tz_list
  br i1 %39, label %40, label %22

40:                                               ; preds = %37, %19
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_list_lock) #16
  %41 = getelementptr inbounds %struct.thermal_governor, ptr %0, i32 0, i32 4
  %42 = getelementptr inbounds %struct.thermal_governor, ptr %0, i32 0, i32 4, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %41, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %43, ptr %45, align 4
  store volatile ptr %44, ptr %43, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %41, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %42, align 4
  br label %46

46:                                               ; preds = %40, %16, %8
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_governor_lock) #16
  br label %47

47:                                               ; preds = %46, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @thermal_zone_device_set_policy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @thermal_governor_lock) #16
  %3 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %3) #16
  %4 = tail call ptr @strim(ptr noundef %1) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %4, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6, %2
  %10 = load ptr, ptr @def_governor, align 4
  br label %19

11:                                               ; preds = %15, %6
  %12 = phi ptr [ %13, %15 ], [ @thermal_governor_list, %6 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, @thermal_governor_list
  br i1 %14, label %55, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %13, i32 -32
  %17 = tail call i32 @strncasecmp(ptr noundef nonnull %4, ptr noundef %16, i32 noundef 20) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %11

19:                                               ; preds = %15, %9
  %20 = phi ptr [ %10, %9 ], [ %16, %15 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %55, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 22
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.thermal_governor, ptr %24, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void %28(ptr noundef %0) #16
  br label %31

31:                                               ; preds = %30, %26, %22
  %32 = getelementptr inbounds %struct.thermal_governor, ptr %20, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %52, label %35

35:                                               ; preds = %31
  %36 = tail call i32 %33(ptr noundef %0) #16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %23, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.thermal_governor, ptr %39, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  %46 = tail call i32 %43(ptr noundef %0) #16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 2
  %50 = load ptr, ptr %23, align 4
  %51 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.60, ptr noundef nonnull %20, ptr noundef %50, ptr noundef %51) #17
  br label %52

52:                                               ; preds = %48, %35, %31
  %53 = phi ptr [ null, %48 ], [ %20, %35 ], [ %20, %31 ]
  %54 = phi i32 [ %36, %48 ], [ 0, %35 ], [ 0, %31 ]
  store ptr %53, ptr %23, align 4
  br label %55

55:                                               ; preds = %52, %45, %41, %38, %19, %11
  %56 = phi i32 [ -22, %19 ], [ %36, %38 ], [ %36, %41 ], [ %36, %45 ], [ %54, %52 ], [ -22, %11 ]
  tail call void @mutex_unlock(ptr noundef %3) #16
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_governor_lock) #16
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @thermal_build_list_of_policies(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @thermal_governor_lock) #16
  %2 = load ptr, ptr @thermal_governor_list, align 4
  %3 = icmp eq ptr %2, @thermal_governor_list
  br i1 %3, label %14, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %12, %4 ], [ %2, %1 ]
  %6 = phi i32 [ %11, %4 ], [ 0, %1 ]
  %7 = getelementptr i8, ptr %5, i32 -32
  %8 = getelementptr i8, ptr %0, i32 %6
  %9 = sub i32 4096, %6
  %10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %8, i32 noundef %9, ptr noundef nonnull @.str.6, ptr noundef %7) #16
  %11 = add i32 %10, %6
  %12 = load ptr, ptr %5, align 4
  %13 = icmp eq ptr %12, @thermal_governor_list
  br i1 %13, label %14, label %4

14:                                               ; preds = %4, %1
  %15 = phi i32 [ 0, %1 ], [ %11, %4 ]
  %16 = getelementptr i8, ptr %0, i32 %15
  %17 = sub i32 4096, %15
  %18 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %16, i32 noundef %17, ptr noundef nonnull @.str.7) #16
  %19 = add i32 %18, %15
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_governor_lock) #16
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @thermal_zone_device_critical(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef %3) #17
  tail call void @hw_protection_shutdown(ptr noundef nonnull @.str.9, i32 noundef 0) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_emerg(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_protection_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @thermal_zone_device_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %2) #16
  %3 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef %2) #16
  br label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 20
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = tail call i32 %11(ptr noundef %0, i32 noundef 1) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %7
  store i32 1, ptr %3, align 8
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ 0, %16 ], [ %14, %13 ]
  tail call void @mutex_unlock(ptr noundef %2) #16
  tail call void @thermal_zone_device_update(ptr noundef %0, i32 noundef 0) #16
  br label %19

19:                                               ; preds = %17, %6
  %20 = phi i32 [ 0, %6 ], [ %18, %17 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @thermal_zone_device_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %2) #16
  %3 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef %2) #16
  br label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 20
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = tail call i32 %11(ptr noundef %0, i32 noundef 0) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %7
  store i32 0, ptr %3, align 8
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ 0, %16 ], [ %14, %13 ]
  tail call void @mutex_unlock(ptr noundef %2) #16
  tail call void @thermal_zone_device_update(ptr noundef %0, i32 noundef 0) #16
  br label %19

19:                                               ; preds = %17, %6
  %20 = phi i32 [ 0, %6 ], [ %18, %17 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @thermal_zone_device_is_enabled(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %2) #16
  %3 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 8
  tail call void @mutex_unlock(ptr noundef %2) #16
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @thermal_zone_device_update(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %8) #16
  %9 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 8
  tail call void @mutex_unlock(ptr noundef %8) #16
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %187

12:                                               ; preds = %2
  %13 = load volatile i32, ptr @in_suspend, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %187

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 20
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = load i1, ptr @thermal_zone_device_update.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !11

24:                                               ; preds = %15
  store i1 true, ptr @thermal_zone_device_update.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 499, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.thermal_zone_device_update) #16
  br label %25

25:                                               ; preds = %24, %15
  br i1 %20, label %187, label %26

26:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !annotation !9
  %27 = call i32 @thermal_zone_get_temp(ptr noundef %0, ptr noundef nonnull %7) #16
  switch i32 %27, label %28 [
    i32 0, label %30
    i32 -11, label %60
  ]

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.61, i32 noundef %27) #17
  br label %60

30:                                               ; preds = %26
  call void @mutex_lock(ptr noundef %8) #16
  %31 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 13
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 14
  store i32 %32, ptr %33, align 4
  %34 = load i32, ptr %7, align 4
  store i32 %34, ptr %31, align 8
  call void @mutex_unlock(ptr noundef %8) #16
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_temperature, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %30
  %38 = tail call ptr @llvm.thread.pointer() #16
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 5
  %42 = getelementptr i32, ptr @__cpu_online_mask, i32 %41
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %40, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %37
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  %49 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_temperature, i32 0, i32 7), align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %51, %48
  %52 = phi ptr [ %56, %51 ], [ %49, %48 ]
  %53 = load volatile ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.tracepoint_func, ptr %52, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  call void %53(ptr noundef %55, ptr noundef %0) #16
  %56 = getelementptr %struct.tracepoint_func, ptr %52, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %51

59:                                               ; preds = %51, %48
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !14
  br label %60

60:                                               ; preds = %59, %37, %30, %28, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @thermal_zone_set_trips(ptr noundef %0) #16
  %61 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 29
  store i32 %1, ptr %61, align 8
  %62 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 9
  %63 = load i32, ptr %62, align 8
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %187

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 10
  %67 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 22
  %68 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 13
  %69 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 16
  %70 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 11
  %71 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 28
  %72 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 12
  br label %73

73:                                               ; preds = %183, %65
  %74 = phi i32 [ %63, %65 ], [ %184, %183 ]
  %75 = phi i32 [ 0, %65 ], [ %185, %183 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4
  %76 = lshr i32 %75, 5
  %77 = getelementptr i32, ptr %66, i32 %76
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %75, 31
  %80 = shl nuw i32 1, %79
  %81 = and i32 %78, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %183

83:                                               ; preds = %73
  %84 = load ptr, ptr %16, align 4
  %85 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %84, i32 0, i32 6
  %86 = load ptr, ptr %85, align 4
  %87 = call i32 %86(ptr noundef %0, i32 noundef %75, ptr noundef nonnull %5) #16
  %88 = load ptr, ptr %16, align 4
  %89 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %88, i32 0, i32 5
  %90 = load ptr, ptr %89, align 4
  %91 = call i32 %90(ptr noundef %0, i32 noundef %75, ptr noundef nonnull %4) #16
  %92 = load ptr, ptr %16, align 4
  %93 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %92, i32 0, i32 8
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %83
  %97 = call i32 %94(ptr noundef %0, i32 noundef %75, ptr noundef nonnull %6) #16
  br label %98

98:                                               ; preds = %96, %83
  %99 = load i32, ptr %4, align 4
  %100 = and i32 %99, -2
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %102, label %151

102:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %103 = load ptr, ptr %16, align 4
  %104 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %103, i32 0, i32 6
  %105 = load ptr, ptr %104, align 4
  %106 = call i32 %105(ptr noundef %0, i32 noundef %75, ptr noundef nonnull %3) #16
  %107 = load i32, ptr %3, align 4
  %108 = icmp slt i32 %107, 1
  br i1 %108, label %150, label %109

109:                                              ; preds = %102
  %110 = load i32, ptr %68, align 8
  %111 = icmp slt i32 %110, %107
  br i1 %111, label %150, label %112

112:                                              ; preds = %109
  %113 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_zone_trip, i32 0, i32 1), align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %112
  %116 = tail call ptr @llvm.thread.pointer() #16
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
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  %127 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_zone_trip, i32 0, i32 7), align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %137, label %129

129:                                              ; preds = %129, %126
  %130 = phi ptr [ %134, %129 ], [ %127, %126 ]
  %131 = load volatile ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.tracepoint_func, ptr %130, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  call void %131(ptr noundef %133, ptr noundef %0, i32 noundef %75, i32 noundef %99) #16
  %134 = getelementptr %struct.tracepoint_func, ptr %130, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %129

137:                                              ; preds = %129, %126
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  br label %138

138:                                              ; preds = %137, %115, %112
  switch i32 %99, label %150 [
    i32 2, label %139
    i32 3, label %144
  ]

139:                                              ; preds = %138
  %140 = load ptr, ptr %16, align 4
  %141 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %140, i32 0, i32 13
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %150, label %148

144:                                              ; preds = %138
  %145 = load ptr, ptr %16, align 4
  %146 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %145, i32 0, i32 14
  %147 = load ptr, ptr %146, align 4
  br label %148

148:                                              ; preds = %144, %139
  %149 = phi ptr [ %147, %144 ], [ %142, %139 ]
  call void %149(ptr noundef %0) #16
  br label %150

150:                                              ; preds = %148, %139, %138, %109, %102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %159

151:                                              ; preds = %98
  %152 = load ptr, ptr %67, align 4
  %153 = icmp eq ptr %152, null
  %154 = load ptr, ptr @def_governor, align 4
  %155 = select i1 %153, ptr %154, ptr %152
  %156 = getelementptr inbounds %struct.thermal_governor, ptr %155, i32 0, i32 3
  %157 = load ptr, ptr %156, align 4
  %158 = call i32 %157(ptr noundef %0, i32 noundef %75) #16
  br label %159

159:                                              ; preds = %151, %150
  call void @mutex_lock(ptr noundef %8) #16
  %160 = load i32, ptr %9, align 8
  call void @mutex_unlock(ptr noundef %8) #16
  %161 = icmp eq i32 %160, 1
  call void @mutex_lock(ptr noundef %8) #16
  br i1 %161, label %162, label %179

162:                                              ; preds = %159
  %163 = load i32, ptr %69, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %162
  %166 = load i32, ptr %70, align 8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = load ptr, ptr @system_freezable_power_efficient_wq, align 4
  %170 = call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %169, ptr noundef %71, i32 noundef %166) #16
  br label %181

171:                                              ; preds = %165
  %172 = call zeroext i1 @cancel_delayed_work(ptr noundef %71) #16
  br label %181

173:                                              ; preds = %162
  %174 = load i32, ptr %72, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %173
  %177 = load ptr, ptr @system_freezable_power_efficient_wq, align 4
  %178 = call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %177, ptr noundef %71, i32 noundef %174) #16
  br label %181

179:                                              ; preds = %173, %159
  %180 = call zeroext i1 @cancel_delayed_work(ptr noundef %71) #16
  br label %181

181:                                              ; preds = %179, %176, %171, %168
  call void @mutex_unlock(ptr noundef %8) #16
  %182 = load i32, ptr %62, align 8
  br label %183

183:                                              ; preds = %181, %73
  %184 = phi i32 [ %74, %73 ], [ %182, %181 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  %185 = add nuw nsw i32 %75, 1
  %186 = icmp slt i32 %185, %184
  br i1 %186, label %73, label %187

187:                                              ; preds = %183, %60, %25, %12, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_set_trips(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @for_each_thermal_governor(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @thermal_governor_lock) #16
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ @thermal_governor_list, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @thermal_governor_list
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -32
  %9 = tail call i32 %0(ptr noundef %8, ptr noundef %1) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %3, label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %9, %7 ], [ 0, %3 ]
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_governor_lock) #16
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @for_each_thermal_cooling_device(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @thermal_list_lock) #16
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ @thermal_cdev_list, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @thermal_cdev_list
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -528
  %9 = tail call i32 %0(ptr noundef %8, ptr noundef %1) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %3, label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %9, %7 ], [ 0, %3 ]
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_list_lock) #16
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @for_each_thermal_zone(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @thermal_list_lock) #16
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ @thermal_tz_list, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @thermal_tz_list
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -636
  %9 = tail call i32 %0(ptr noundef %8, ptr noundef %1) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %3, label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %9, %7 ], [ 0, %3 ]
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_list_lock) #16
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @thermal_zone_get_by_id(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @thermal_list_lock) #16
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @thermal_tz_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @thermal_tz_list
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -636
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %4, i32 -636
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi ptr [ %11, %10 ], [ null, %2 ]
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_list_lock) #16
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @thermal_zone_bind_cooling_device(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 9
  %9 = load i32, ptr %8, align 8
  %10 = icmp sle i32 %9, %1
  %11 = icmp slt i32 %1, 0
  %12 = or i1 %11, %10
  br i1 %12, label %128, label %13

13:                                               ; preds = %13, %6
  %14 = phi ptr [ %15, %13 ], [ @thermal_tz_list, %6 ]
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 -636
  %17 = icmp eq ptr %15, @thermal_tz_list
  %18 = icmp eq ptr %16, %0
  %19 = or i1 %17, %18
  br i1 %19, label %20, label %13

20:                                               ; preds = %20, %13
  %21 = phi ptr [ %22, %20 ], [ @thermal_cdev_list, %13 ]
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 -528
  %24 = icmp eq ptr %22, @thermal_cdev_list
  %25 = icmp eq ptr %23, %2
  %26 = or i1 %24, %25
  br i1 %26, label %27, label %20

27:                                               ; preds = %20
  %28 = select i1 %18, i1 %25, i1 false
  br i1 %28, label %29, label %128

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.thermal_cooling_device, ptr %2, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 %32(ptr noundef %2, ptr noundef nonnull %7) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %128

35:                                               ; preds = %29
  %36 = icmp eq i32 %4, -1
  %37 = select i1 %36, i32 0, i32 %4
  %38 = icmp eq i32 %3, -1
  %39 = load i32, ptr %7, align 4
  %40 = select i1 %38, i32 %39, i32 %3
  %41 = icmp ugt i32 %37, %40
  %42 = icmp ugt i32 %40, %39
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %128, label %44

44:                                               ; preds = %35
  %45 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %46 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3520, i32 noundef 144) #18
  %47 = icmp eq ptr %46, null
  br i1 %47, label %128, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.thermal_instance, ptr %46, i32 0, i32 2
  store ptr %0, ptr %49, align 8
  %50 = getelementptr inbounds %struct.thermal_instance, ptr %46, i32 0, i32 3
  store ptr %2, ptr %50, align 4
  %51 = getelementptr inbounds %struct.thermal_instance, ptr %46, i32 0, i32 4
  store i32 %1, ptr %51, align 8
  %52 = getelementptr inbounds %struct.thermal_instance, ptr %46, i32 0, i32 6
  store i32 %40, ptr %52, align 8
  %53 = getelementptr inbounds %struct.thermal_instance, ptr %46, i32 0, i32 7
  store i32 %37, ptr %53, align 4
  %54 = getelementptr inbounds %struct.thermal_instance, ptr %46, i32 0, i32 8
  store i32 -1, ptr %54, align 8
  %55 = getelementptr inbounds %struct.thermal_instance, ptr %46, i32 0, i32 15
  store i32 %5, ptr %55, align 4
  %56 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 25
  %57 = call i32 @ida_alloc_range(ptr noundef %56, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #16
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %126, label %59

59:                                               ; preds = %48
  store i32 %57, ptr %46, align 8
  %60 = getelementptr inbounds %struct.thermal_instance, ptr %46, i32 0, i32 1
  %61 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %60, ptr noundef nonnull @.str.12, i32 noundef %57)
  %62 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 2
  %63 = getelementptr inbounds %struct.thermal_cooling_device, ptr %2, i32 0, i32 2
  %64 = call i32 @sysfs_create_link(ptr noundef %62, ptr noundef %63, ptr noundef %60) #16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %123

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.thermal_instance, ptr %46, i32 0, i32 9
  %68 = load i32, ptr %46, align 8
  %69 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %67, ptr noundef nonnull @.str.13, i32 noundef %68)
  %70 = getelementptr inbounds %struct.thermal_instance, ptr %46, i32 0, i32 10
  store ptr %67, ptr %70, align 8
  %71 = getelementptr inbounds %struct.thermal_instance, ptr %46, i32 0, i32 10, i32 0, i32 1
  store i16 292, ptr %71, align 4
  %72 = getelementptr inbounds %struct.thermal_instance, ptr %46, i32 0, i32 10, i32 1
  store ptr @trip_point_show, ptr %72, align 8
  %73 = call i32 @device_create_file(ptr noundef %62, ptr noundef %70) #16
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %121

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.thermal_instance, ptr %46, i32 0, i32 11
  %77 = load i32, ptr %46, align 8
  %78 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %76, ptr noundef nonnull @.str.14, i32 noundef %77)
  %79 = getelementptr inbounds %struct.thermal_instance, ptr %46, i32 0, i32 12
  store ptr %76, ptr %79, align 4
  %80 = getelementptr inbounds %struct.thermal_instance, ptr %46, i32 0, i32 12, i32 0, i32 1
  store i16 420, ptr %80, align 8
  %81 = getelementptr inbounds %struct.thermal_instance, ptr %46, i32 0, i32 12, i32 1
  store ptr @weight_show, ptr %81, align 4
  %82 = getelementptr inbounds %struct.thermal_instance, ptr %46, i32 0, i32 12, i32 2
  store ptr @weight_store, ptr %82, align 8
  %83 = call i32 @device_create_file(ptr noundef %62, ptr noundef %79) #16
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %119

85:                                               ; preds = %75
  %86 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 26
  call void @mutex_lock(ptr noundef %86) #16
  %87 = getelementptr inbounds %struct.thermal_cooling_device, ptr %2, i32 0, i32 8
  call void @mutex_lock(ptr noundef %87) #16
  %88 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 24
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, %88
  br i1 %90, label %107, label %91

91:                                               ; preds = %104, %85
  %92 = phi ptr [ %105, %104 ], [ %89, %85 ]
  %93 = getelementptr i8, ptr %92, i32 -100
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, %0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = getelementptr i8, ptr %92, i32 -92
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, %1
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = getelementptr i8, ptr %92, i32 -96
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, %2
  br i1 %103, label %118, label %104

104:                                              ; preds = %100, %96, %91
  %105 = load ptr, ptr %92, align 4
  %106 = icmp eq ptr %105, %88
  br i1 %106, label %107, label %91

107:                                              ; preds = %104, %85
  %108 = getelementptr inbounds %struct.thermal_instance, ptr %46, i32 0, i32 13
  %109 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 24, i32 1
  %110 = load ptr, ptr %109, align 4
  store ptr %108, ptr %109, align 4
  store ptr %88, ptr %108, align 4
  %111 = getelementptr inbounds %struct.thermal_instance, ptr %46, i32 0, i32 13, i32 1
  store ptr %110, ptr %111, align 8
  store volatile ptr %108, ptr %110, align 4
  %112 = getelementptr inbounds %struct.thermal_instance, ptr %46, i32 0, i32 14
  %113 = getelementptr inbounds %struct.thermal_cooling_device, ptr %2, i32 0, i32 9
  %114 = getelementptr inbounds %struct.thermal_cooling_device, ptr %2, i32 0, i32 9, i32 1
  %115 = load ptr, ptr %114, align 4
  store ptr %112, ptr %114, align 4
  store ptr %113, ptr %112, align 4
  %116 = getelementptr inbounds %struct.thermal_instance, ptr %46, i32 0, i32 14, i32 1
  store ptr %115, ptr %116, align 8
  store volatile ptr %112, ptr %115, align 4
  %117 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 19
  store volatile i32 1, ptr %117, align 4
  call void @mutex_unlock(ptr noundef %87) #16
  call void @mutex_unlock(ptr noundef %86) #16
  br label %128

118:                                              ; preds = %100
  call void @mutex_unlock(ptr noundef %87) #16
  call void @mutex_unlock(ptr noundef %86) #16
  call void @device_remove_file(ptr noundef %62, ptr noundef %79) #16
  br label %119

119:                                              ; preds = %118, %75
  %120 = phi i32 [ %83, %75 ], [ -17, %118 ]
  call void @device_remove_file(ptr noundef %62, ptr noundef %70) #16
  br label %121

121:                                              ; preds = %119, %66
  %122 = phi i32 [ %73, %66 ], [ %120, %119 ]
  call void @sysfs_remove_link(ptr noundef %62, ptr noundef %60) #16
  br label %123

123:                                              ; preds = %121, %59
  %124 = phi i32 [ %64, %59 ], [ %122, %121 ]
  %125 = load i32, ptr %46, align 8
  call void @ida_free(ptr noundef %56, i32 noundef %125) #16
  br label %126

126:                                              ; preds = %123, %48
  %127 = phi i32 [ %57, %48 ], [ %124, %123 ]
  call void @kfree(ptr noundef nonnull %46) #16
  br label %128

128:                                              ; preds = %126, %107, %44, %35, %29, %27, %6
  %129 = phi i32 [ %127, %126 ], [ 0, %107 ], [ -22, %6 ], [ -22, %27 ], [ %33, %29 ], [ -22, %35 ], [ -12, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret i32 %129
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trip_point_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @weight_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @weight_store(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @thermal_zone_unbind_cooling_device(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %4) #16
  %5 = getelementptr inbounds %struct.thermal_cooling_device, ptr %2, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 24
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %41, label %9

9:                                                ; preds = %39, %3
  %10 = phi ptr [ %11, %39 ], [ %7, %3 ]
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %10, i32 -100
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %39

15:                                               ; preds = %9
  %16 = getelementptr i8, ptr %10, i32 -92
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %10, i32 -96
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %2
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %10, i32 -124
  %25 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  store volatile ptr %11, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  %28 = getelementptr i8, ptr %10, i32 8
  %29 = getelementptr i8, ptr %10, i32 12
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %28, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store volatile ptr %31, ptr %30, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %29, align 4
  tail call void @mutex_unlock(ptr noundef %5) #16
  tail call void @mutex_unlock(ptr noundef %4) #16
  %33 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 2
  %34 = getelementptr i8, ptr %10, i32 -16
  tail call void @device_remove_file(ptr noundef %33, ptr noundef %34) #16
  %35 = getelementptr i8, ptr %10, i32 -52
  tail call void @device_remove_file(ptr noundef %33, ptr noundef %35) #16
  %36 = getelementptr i8, ptr %10, i32 -120
  tail call void @sysfs_remove_link(ptr noundef %33, ptr noundef %36) #16
  %37 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 25
  %38 = load i32, ptr %24, align 4
  tail call void @ida_free(ptr noundef %37, i32 noundef %38) #16
  tail call void @kfree(ptr noundef %24) #16
  br label %42

39:                                               ; preds = %19, %15, %9
  %40 = icmp eq ptr %11, %6
  br i1 %40, label %41, label %9

41:                                               ; preds = %39, %3
  tail call void @mutex_unlock(ptr noundef %5) #16
  tail call void @mutex_unlock(ptr noundef %4) #16
  br label %42

42:                                               ; preds = %41, %23
  %43 = phi i32 [ 0, %23 ], [ -19, %41 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @thermal_cooling_device_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc ptr @__thermal_cooling_device_register(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__thermal_cooling_device_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %77, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %3, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %77, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %77, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %3, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %77, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 536) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %77, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @ida_alloc_range(ptr noundef nonnull @thermal_cdev_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #16
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %73, label %24

24:                                               ; preds = %21
  store i32 %22, ptr %19, align 8
  %25 = getelementptr inbounds %struct.thermal_cooling_device, ptr %19, i32 0, i32 2
  %26 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %25, ptr noundef nonnull @.str.63, i32 noundef %22) #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %24
  %29 = icmp eq ptr %1, null
  %30 = select i1 %29, ptr @.str.64, ptr %1
  %31 = tail call noalias ptr @kstrdup(ptr noundef %30, i32 noundef 3264) #16
  %32 = getelementptr inbounds %struct.thermal_cooling_device, ptr %19, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %70, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.thermal_cooling_device, ptr %19, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %35, ptr noundef nonnull @.str.65, ptr noundef nonnull @__thermal_cooling_device_register.__key) #16
  %36 = getelementptr inbounds %struct.thermal_cooling_device, ptr %19, i32 0, i32 9
  store volatile ptr %36, ptr %36, align 8
  %37 = getelementptr inbounds %struct.thermal_cooling_device, ptr %19, i32 0, i32 9, i32 1
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.thermal_cooling_device, ptr %19, i32 0, i32 3
  store ptr %0, ptr %38, align 8
  %39 = getelementptr inbounds %struct.thermal_cooling_device, ptr %19, i32 0, i32 6
  store ptr %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.thermal_cooling_device, ptr %19, i32 0, i32 7
  store i8 0, ptr %40, align 8
  %41 = getelementptr inbounds %struct.thermal_cooling_device, ptr %19, i32 0, i32 2, i32 31
  store ptr @thermal_class, ptr %41, align 4
  %42 = getelementptr inbounds %struct.thermal_cooling_device, ptr %19, i32 0, i32 4
  store ptr %2, ptr %42, align 4
  tail call void @thermal_cooling_device_setup_sysfs(ptr noundef nonnull %19) #16
  %43 = tail call i32 @device_register(ptr noundef %25) #16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %34
  tail call void @mutex_lock(ptr noundef nonnull @thermal_list_lock) #16
  %46 = getelementptr inbounds %struct.thermal_cooling_device, ptr %19, i32 0, i32 10
  %47 = load ptr, ptr @thermal_cdev_list, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  store ptr %47, ptr %46, align 8
  %49 = getelementptr inbounds %struct.thermal_cooling_device, ptr %19, i32 0, i32 10, i32 1
  store ptr @thermal_cdev_list, ptr %49, align 4
  store volatile ptr %46, ptr @thermal_cdev_list, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_list_lock) #16
  tail call fastcc void @bind_cdev(ptr noundef nonnull %19)
  tail call void @mutex_lock(ptr noundef nonnull @thermal_list_lock) #16
  %50 = load ptr, ptr @thermal_tz_list, align 4
  %51 = icmp eq ptr %50, @thermal_tz_list
  br i1 %51, label %67, label %52

52:                                               ; preds = %64, %45
  %53 = phi ptr [ %65, %64 ], [ %50, %45 ]
  %54 = getelementptr i8, ptr %53, i32 -60
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #16, !srcloc !18
  br label %55

55:                                               ; preds = %55, %52
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 1, i32 0, ptr elementtype(i32) %54) #16, !srcloc !19
  %57 = extractvalue { i32, i32 } %56, 0
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %55

59:                                               ; preds = %55
  %60 = extractvalue { i32, i32 } %56, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = getelementptr i8, ptr %53, i32 -636
  tail call void @thermal_zone_device_update(ptr noundef %63, i32 noundef 0)
  br label %64

64:                                               ; preds = %62, %59
  %65 = load ptr, ptr %53, align 4
  %66 = icmp eq ptr %65, @thermal_tz_list
  br i1 %66, label %67, label %52

67:                                               ; preds = %64, %45
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_list_lock) #16
  br label %77

68:                                               ; preds = %34
  %69 = load ptr, ptr %32, align 4
  tail call void @kfree(ptr noundef %69) #16
  tail call void @put_device(ptr noundef %25) #16
  br label %70

70:                                               ; preds = %68, %28, %24
  %71 = phi i32 [ %26, %24 ], [ %43, %68 ], [ -12, %28 ]
  %72 = phi ptr [ %19, %24 ], [ null, %68 ], [ %19, %28 ]
  tail call void @ida_free(ptr noundef nonnull @thermal_cdev_ida, i32 noundef %22) #16
  br label %73

73:                                               ; preds = %70, %21
  %74 = phi i32 [ %22, %21 ], [ %71, %70 ]
  %75 = phi ptr [ %19, %21 ], [ %72, %70 ]
  tail call void @kfree(ptr noundef %75) #16
  %76 = inttoptr i32 %74 to ptr
  br label %77

77:                                               ; preds = %73, %67, %17, %13, %9, %6, %4
  %78 = phi ptr [ %76, %73 ], [ %19, %67 ], [ inttoptr (i32 -22 to ptr), %13 ], [ inttoptr (i32 -22 to ptr), %9 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -12 to ptr), %17 ]
  ret ptr %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @thermal_of_cooling_device_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call fastcc ptr @__thermal_cooling_device_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_thermal_of_cooling_device_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @thermal_cooling_device_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.15) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @__thermal_cooling_device_register(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @devres_free(ptr noundef nonnull %6) #16
  br label %13

12:                                               ; preds = %8
  store ptr %9, ptr %6, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %6) #16
  br label %13

13:                                               ; preds = %12, %11, %5
  %14 = phi ptr [ %9, %11 ], [ %9, %12 ], [ inttoptr (i32 -12 to ptr), %5 ]
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @thermal_cooling_device_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @thermal_cooling_device_unregister(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @thermal_cooling_device_unregister(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %90, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @thermal_list_lock) #16
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ @thermal_cdev_list, %3 ], [ %6, %4 ]
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -528
  %8 = icmp eq ptr %6, @thermal_cdev_list
  %9 = icmp eq ptr %7, %0
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %4

11:                                               ; preds = %4
  br i1 %9, label %13, label %12

12:                                               ; preds = %11
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_list_lock) #16
  br label %90

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 10
  %15 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 10, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %15, align 4
  %19 = load ptr, ptr @thermal_tz_list, align 4
  %20 = icmp eq ptr %19, @thermal_tz_list
  br i1 %20, label %85, label %21

21:                                               ; preds = %82, %13
  %22 = phi ptr [ %83, %82 ], [ %19, %13 ]
  %23 = getelementptr i8, ptr %22, i32 -636
  %24 = getelementptr i8, ptr %22, i32 -56
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = tail call i32 %27(ptr noundef %23, ptr noundef nonnull %0) #16
  br label %82

31:                                               ; preds = %21
  %32 = getelementptr i8, ptr %22, i32 -52
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %82, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.thermal_zone_params, ptr %33, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %82, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.thermal_zone_params, ptr %33, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %82

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %22, i32 -100
  br label %45

45:                                               ; preds = %80, %43
  %46 = phi i32 [ %41, %43 ], [ %77, %80 ]
  %47 = phi ptr [ %37, %43 ], [ %81, %80 ]
  %48 = phi i32 [ 0, %43 ], [ %78, %80 ]
  %49 = getelementptr %struct.thermal_bind_params, ptr %47, i32 %48
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %0
  br i1 %51, label %52, label %76

52:                                               ; preds = %45
  %53 = getelementptr %struct.thermal_bind_params, ptr %47, i32 %48, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = load i32, ptr %44, align 8
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %66, %52
  %58 = phi i32 [ %67, %66 ], [ %55, %52 ]
  %59 = phi i32 [ %68, %66 ], [ 0, %52 ]
  %60 = shl nuw i32 1, %59
  %61 = and i32 %60, %54
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = tail call i32 @thermal_zone_unbind_cooling_device(ptr noundef %23, i32 noundef %59, ptr noundef nonnull %0) #16
  %65 = load i32, ptr %44, align 8
  br label %66

66:                                               ; preds = %63, %57
  %67 = phi i32 [ %58, %57 ], [ %65, %63 ]
  %68 = add nuw nsw i32 %59, 1
  %69 = icmp slt i32 %68, %67
  br i1 %69, label %57, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %36, align 4
  br label %72

72:                                               ; preds = %70, %52
  %73 = phi ptr [ %71, %70 ], [ %47, %52 ]
  %74 = getelementptr %struct.thermal_bind_params, ptr %73, i32 %48
  store ptr null, ptr %74, align 4
  %75 = load i32, ptr %40, align 4
  br label %76

76:                                               ; preds = %72, %45
  %77 = phi i32 [ %46, %45 ], [ %75, %72 ]
  %78 = add nuw nsw i32 %48, 1
  %79 = icmp slt i32 %78, %77
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load ptr, ptr %36, align 4
  br label %45

82:                                               ; preds = %76, %39, %35, %31, %29
  %83 = load ptr, ptr %22, align 4
  %84 = icmp eq ptr %83, @thermal_tz_list
  br i1 %84, label %85, label %21

85:                                               ; preds = %82, %13
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_list_lock) #16
  %86 = load i32, ptr %0, align 8
  tail call void @ida_free(ptr noundef nonnull @thermal_cdev_ida, i32 noundef %86) #16
  %87 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 2
  tail call void @device_del(ptr noundef %87) #16
  tail call void @thermal_cooling_device_destroy_sysfs(ptr noundef nonnull %0) #16
  %88 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  tail call void @kfree(ptr noundef %89) #16
  tail call void @put_device(ptr noundef %87) #16
  br label %90

90:                                               ; preds = %85, %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_cooling_device_destroy_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @thermal_zone_device_register(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  store i32 0, ptr %9, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  store i32 0, ptr %10, align 4, !annotation !9
  %11 = icmp eq ptr %0, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @strlen(ptr noundef nonnull %0)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %8
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #17
  br label %165

17:                                               ; preds = %12
  %18 = icmp ugt i32 %13, 19
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %0, i32 noundef 20) #17
  br label %165

21:                                               ; preds = %17
  %22 = icmp ult i32 %1, 13
  %23 = ashr i32 %2, %1
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #17
  br label %165

28:                                               ; preds = %21
  %29 = icmp eq ptr %4, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #17
  br label %165

32:                                               ; preds = %28
  %33 = icmp eq i32 %1, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %4, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %165, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %4, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %165, label %42

42:                                               ; preds = %38, %32
  %43 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %44 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 696) #18
  %45 = icmp eq ptr %44, null
  br i1 %45, label %165, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 24
  store volatile ptr %47, ptr %47, align 4
  %48 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 24, i32 1
  store ptr %47, ptr %48, align 8
  %49 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 25
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 25, i32 0, i32 1
  store i32 33554437, ptr %50, align 8
  %51 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 25, i32 0, i32 2
  store ptr null, ptr %51, align 4
  %52 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 26
  tail call void @__mutex_init(ptr noundef %52, ptr noundef nonnull @.str.20, ptr noundef nonnull @thermal_zone_device_register.__key) #16
  %53 = tail call i32 @ida_alloc_range(ptr noundef nonnull @thermal_tz_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #16
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %161, label %55

55:                                               ; preds = %46
  store i32 %53, ptr %44, align 8
  %56 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 1
  %57 = tail call i32 @strlcpy(ptr noundef %56, ptr noundef nonnull %0, i32 noundef 20) #16
  %58 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 2
  %59 = load i32, ptr %44, align 8
  %60 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %58, ptr noundef nonnull @.str.21, i32 noundef %59) #16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %158

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %4, i32 0, i32 14
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store ptr @thermal_zone_device_critical, ptr %63, align 4
  br label %67

67:                                               ; preds = %66, %62
  %68 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 20
  store ptr %4, ptr %68, align 4
  %69 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 21
  store ptr %5, ptr %69, align 8
  %70 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 2, i32 31
  store ptr @thermal_class, ptr %70, align 4
  %71 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 8
  store ptr %3, ptr %71, align 4
  %72 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 9
  store i32 %1, ptr %72, align 8
  %73 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 11
  tail call void @thermal_set_delay_jiffies(ptr noundef %73, i32 noundef %6) #16
  %74 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 12
  tail call void @thermal_set_delay_jiffies(ptr noundef %74, i32 noundef %7) #16
  %75 = tail call i32 @thermal_zone_create_device_groups(ptr noundef nonnull %44, i32 noundef %2) #16
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %158

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 19
  store volatile i32 1, ptr %78, align 8
  %79 = tail call i32 @device_register(ptr noundef %58) #16
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %156

81:                                               ; preds = %77
  %82 = icmp eq i32 %1, 0
  br i1 %82, label %105, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 10
  br label %85

85:                                               ; preds = %102, %83
  %86 = phi i32 [ 0, %83 ], [ %103, %102 ]
  %87 = load ptr, ptr %68, align 4
  %88 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %87, i32 0, i32 5
  %89 = load ptr, ptr %88, align 4
  %90 = call i32 %89(ptr noundef nonnull %44, i32 noundef %86, ptr noundef nonnull %9) #16
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %85
  %93 = load ptr, ptr %68, align 4
  %94 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %93, i32 0, i32 6
  %95 = load ptr, ptr %94, align 4
  %96 = call i32 %95(ptr noundef nonnull %44, i32 noundef %86, ptr noundef nonnull %10) #16
  %97 = icmp eq i32 %96, 0
  %98 = load i32, ptr %10, align 4
  %99 = icmp ne i32 %98, 0
  %100 = select i1 %97, i1 %99, i1 false
  br i1 %100, label %102, label %101

101:                                              ; preds = %92, %85
  call void @_set_bit(i32 noundef %86, ptr noundef %84) #16
  br label %102

102:                                              ; preds = %101, %92
  %103 = add nuw nsw i32 %86, 1
  %104 = icmp eq i32 %103, %1
  br i1 %104, label %105, label %85

105:                                              ; preds = %102, %81
  call void @mutex_lock(ptr noundef nonnull @thermal_governor_lock) #16
  %106 = load ptr, ptr %69, align 8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = call fastcc ptr @__find_governor(ptr noundef nonnull %106)
  br label %112

110:                                              ; preds = %105
  %111 = load ptr, ptr @def_governor, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi ptr [ %109, %108 ], [ %111, %110 ]
  %114 = call fastcc i32 @thermal_set_governor(ptr noundef nonnull %44, ptr noundef %113)
  %115 = icmp eq i32 %114, 0
  call void @mutex_unlock(ptr noundef nonnull @thermal_governor_lock) #16
  br i1 %115, label %116, label %154

116:                                              ; preds = %112
  %117 = load ptr, ptr %69, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.thermal_zone_params, ptr %117, i32 0, i32 1
  %121 = load i8, ptr %120, align 4, !range !21
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %119, %116
  %124 = call i32 @thermal_add_hwmon_sysfs(ptr noundef nonnull %44) #16
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %154

126:                                              ; preds = %123, %119
  call void @mutex_lock(ptr noundef nonnull @thermal_list_lock) #16
  %127 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 27
  %128 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @thermal_tz_list, i32 0, i32 1), align 4
  store ptr %127, ptr getelementptr inbounds (%struct.list_head, ptr @thermal_tz_list, i32 0, i32 1), align 4
  store ptr @thermal_tz_list, ptr %127, align 4
  %129 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 27, i32 1
  store ptr %128, ptr %129, align 8
  store volatile ptr %127, ptr %128, align 4
  call void @mutex_unlock(ptr noundef nonnull @thermal_list_lock) #16
  call fastcc void @bind_tz(ptr noundef nonnull %44)
  %130 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 28
  store i32 -32, ptr %130, align 4
  %131 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 28, i32 0, i32 1
  store volatile ptr %131, ptr %131, align 8
  %132 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 28, i32 0, i32 1, i32 1
  store ptr %131, ptr %132, align 4
  %133 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 28, i32 0, i32 2
  store ptr @thermal_zone_device_check, ptr %133, align 8
  %134 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 28, i32 1
  call void @init_timer_key(ptr noundef %134, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #16
  %135 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 13
  store i32 -274000, ptr %135, align 8
  %136 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 17
  store i32 -2147483647, ptr %136, align 8
  %137 = getelementptr inbounds %struct.thermal_zone_device, ptr %44, i32 0, i32 18
  store i32 2147483647, ptr %137, align 4
  %138 = load ptr, ptr %47, align 4
  %139 = icmp eq ptr %138, %47
  br i1 %139, label %145, label %140

140:                                              ; preds = %140, %126
  %141 = phi ptr [ %143, %140 ], [ %138, %126 ]
  %142 = getelementptr i8, ptr %141, i32 -88
  store i8 0, ptr %142, align 4
  %143 = load ptr, ptr %141, align 4
  %144 = icmp eq ptr %143, %47
  br i1 %144, label %145, label %140

145:                                              ; preds = %140, %126
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %78) #16, !srcloc !18
  br label %146

146:                                              ; preds = %146, %145
  %147 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %78, ptr %78, i32 1, i32 0, ptr elementtype(i32) %78) #16, !srcloc !19
  %148 = extractvalue { i32, i32 } %147, 0
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %146

150:                                              ; preds = %146
  %151 = extractvalue { i32, i32 } %147, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %165, label %153

153:                                              ; preds = %150
  call void @thermal_zone_device_update(ptr noundef nonnull %44, i32 noundef 0)
  br label %165

154:                                              ; preds = %123, %112
  %155 = phi i32 [ %124, %123 ], [ %114, %112 ]
  call void @device_del(ptr noundef %58) #16
  br label %156

156:                                              ; preds = %154, %77
  %157 = phi i32 [ %79, %77 ], [ %155, %154 ]
  call void @put_device(ptr noundef %58) #16
  br label %158

158:                                              ; preds = %156, %67, %55
  %159 = phi i32 [ %60, %55 ], [ %75, %67 ], [ %157, %156 ]
  %160 = phi ptr [ %44, %55 ], [ %44, %67 ], [ null, %156 ]
  call void @ida_free(ptr noundef nonnull @thermal_tz_ida, i32 noundef %53) #16
  br label %161

161:                                              ; preds = %158, %46
  %162 = phi i32 [ %159, %158 ], [ %53, %46 ]
  %163 = phi ptr [ %160, %158 ], [ %44, %46 ]
  call void @kfree(ptr noundef %163) #16
  %164 = inttoptr i32 %162 to ptr
  br label %165

165:                                              ; preds = %161, %153, %150, %42, %38, %34, %30, %26, %19, %15
  %166 = phi ptr [ inttoptr (i32 -22 to ptr), %15 ], [ inttoptr (i32 -22 to ptr), %19 ], [ inttoptr (i32 -22 to ptr), %26 ], [ %164, %161 ], [ inttoptr (i32 -22 to ptr), %30 ], [ inttoptr (i32 -22 to ptr), %38 ], [ inttoptr (i32 -22 to ptr), %34 ], [ inttoptr (i32 -12 to ptr), %42 ], [ %44, %153 ], [ %44, %150 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  ret ptr %166
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_set_delay_jiffies(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_create_device_groups(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_add_hwmon_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bind_tz(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %117, label %10

10:                                               ; preds = %5, %1
  tail call void @mutex_lock(ptr noundef nonnull @thermal_list_lock) #16
  %11 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 20
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %36, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr @thermal_cdev_list, align 4
  %17 = icmp eq ptr %16, @thermal_cdev_list
  br i1 %17, label %116, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 2
  %20 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 1
  br label %21

21:                                               ; preds = %33, %18
  %22 = phi ptr [ %13, %18 ], [ %35, %33 ]
  %23 = phi ptr [ %16, %18 ], [ %31, %33 ]
  %24 = getelementptr i8, ptr %23, i32 -528
  %25 = tail call i32 %22(ptr noundef %0, ptr noundef %24) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = getelementptr i8, ptr %23, i32 -524
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.66, ptr noundef %20, ptr noundef %29, i32 noundef %25) #17
  br label %30

30:                                               ; preds = %27, %21
  %31 = load ptr, ptr %23, align 4
  %32 = icmp eq ptr %31, @thermal_cdev_list
  br i1 %32, label %116, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %11, align 4
  %35 = load ptr, ptr %34, align 4
  br label %21

36:                                               ; preds = %10
  br i1 %4, label %116, label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.thermal_zone_params, ptr %3, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %116, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @thermal_cdev_list, align 4
  %43 = icmp eq ptr %42, @thermal_cdev_list
  br i1 %43, label %116, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.thermal_zone_params, ptr %3, i32 0, i32 2
  %46 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 9
  %47 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 2
  %48 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 1
  %49 = load i32, ptr %45, align 4
  br label %54

50:                                               ; preds = %112, %54
  %51 = phi i32 [ %55, %54 ], [ %114, %112 ]
  %52 = load ptr, ptr %56, align 4
  %53 = icmp eq ptr %52, @thermal_cdev_list
  br i1 %53, label %116, label %54

54:                                               ; preds = %50, %44
  %55 = phi i32 [ %49, %44 ], [ %51, %50 ]
  %56 = phi ptr [ %42, %44 ], [ %52, %50 ]
  %57 = getelementptr i8, ptr %56, i32 -528
  %58 = icmp sgt i32 %55, 0
  br i1 %58, label %59, label %50

59:                                               ; preds = %54
  %60 = getelementptr i8, ptr %56, i32 -524
  br label %61

61:                                               ; preds = %112, %59
  %62 = phi i32 [ 0, %59 ], [ %113, %112 ]
  %63 = load ptr, ptr %38, align 4
  %64 = getelementptr %struct.thermal_bind_params, ptr %63, i32 %62
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %112

67:                                               ; preds = %61
  %68 = getelementptr %struct.thermal_bind_params, ptr %63, i32 %62, i32 4
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %112, label %71

71:                                               ; preds = %67
  %72 = tail call i32 %69(ptr noundef %0, ptr noundef %57) #16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %112

74:                                               ; preds = %71
  %75 = load ptr, ptr %38, align 4
  %76 = getelementptr %struct.thermal_bind_params, ptr %75, i32 %62
  store ptr %57, ptr %76, align 4
  %77 = load ptr, ptr %38, align 4
  %78 = getelementptr %struct.thermal_bind_params, ptr %77, i32 %62, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr %struct.thermal_bind_params, ptr %77, i32 %62, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr %struct.thermal_bind_params, ptr %77, i32 %62, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = load i32, ptr %46, align 8
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %112

86:                                               ; preds = %74
  %87 = icmp eq ptr %81, null
  br label %88

88:                                               ; preds = %108, %86
  %89 = phi i32 [ 0, %86 ], [ %109, %108 ]
  %90 = shl nuw i32 1, %89
  %91 = and i32 %90, %79
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %108, label %93

93:                                               ; preds = %88
  br i1 %87, label %101, label %94

94:                                               ; preds = %93
  %95 = shl nuw i32 %89, 1
  %96 = getelementptr i32, ptr %81, i32 %95
  %97 = load i32, ptr %96, align 4
  %98 = or i32 %95, 1
  %99 = getelementptr i32, ptr %81, i32 %98
  %100 = load i32, ptr %99, align 4
  br label %101

101:                                              ; preds = %94, %93
  %102 = phi i32 [ %100, %94 ], [ -1, %93 ]
  %103 = phi i32 [ %97, %94 ], [ -1, %93 ]
  %104 = tail call i32 @thermal_zone_bind_cooling_device(ptr noundef %0, i32 noundef %89, ptr noundef %57, i32 noundef %102, i32 noundef %103, i32 noundef %83) #16
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %101
  %107 = load ptr, ptr %60, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.66, ptr noundef %48, ptr noundef %107, i32 noundef %104) #17
  br label %108

108:                                              ; preds = %106, %101, %88
  %109 = add nuw nsw i32 %89, 1
  %110 = load i32, ptr %46, align 8
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %88, label %112

112:                                              ; preds = %108, %74, %71, %67, %61
  %113 = add nuw nsw i32 %62, 1
  %114 = load i32, ptr %45, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %61, label %50

116:                                              ; preds = %50, %41, %37, %36, %30, %15
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_list_lock) #16
  br label %117

117:                                              ; preds = %116, %5
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @thermal_zone_device_check(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -644
  tail call void @thermal_zone_device_update(ptr noundef %2, i32 noundef 0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @thermal_zone_device_unregister(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %100, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 21
  %5 = load ptr, ptr %4, align 8
  tail call void @mutex_lock(ptr noundef nonnull @thermal_list_lock) #16
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ @thermal_tz_list, %3 ], [ %8, %6 ]
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -636
  %10 = icmp eq ptr %8, @thermal_tz_list
  %11 = icmp eq ptr %9, %0
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %6

13:                                               ; preds = %6
  br i1 %11, label %15, label %14

14:                                               ; preds = %13
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_list_lock) #16
  br label %100

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 27
  %17 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 27, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  %21 = getelementptr inbounds %struct.thermal_zone_params, ptr %5, i32 0, i32 3
  %22 = load ptr, ptr @thermal_cdev_list, align 4
  %23 = icmp eq ptr %22, @thermal_cdev_list
  br i1 %23, label %85, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 20
  %26 = icmp eq ptr %5, null
  %27 = getelementptr inbounds %struct.thermal_zone_params, ptr %5, i32 0, i32 2
  %28 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 9
  br label %29

29:                                               ; preds = %82, %24
  %30 = phi ptr [ %22, %24 ], [ %83, %82 ]
  %31 = getelementptr i8, ptr %30, i32 -528
  %32 = load ptr, ptr %25, align 4
  %33 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = tail call i32 %34(ptr noundef nonnull %0, ptr noundef %31) #16
  br label %82

38:                                               ; preds = %29
  br i1 %26, label %85, label %39

39:                                               ; preds = %38
  %40 = load ptr, ptr %21, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %85, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr %27, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %82

45:                                               ; preds = %80, %42
  %46 = phi i32 [ %77, %80 ], [ %43, %42 ]
  %47 = phi ptr [ %81, %80 ], [ %40, %42 ]
  %48 = phi i32 [ %78, %80 ], [ 0, %42 ]
  %49 = getelementptr %struct.thermal_bind_params, ptr %47, i32 %48
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %31
  br i1 %51, label %52, label %76

52:                                               ; preds = %45
  %53 = getelementptr %struct.thermal_bind_params, ptr %47, i32 %48, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = load i32, ptr %28, align 8
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %66, %52
  %58 = phi i32 [ %67, %66 ], [ %55, %52 ]
  %59 = phi i32 [ %68, %66 ], [ 0, %52 ]
  %60 = shl nuw i32 1, %59
  %61 = and i32 %60, %54
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = tail call i32 @thermal_zone_unbind_cooling_device(ptr noundef nonnull %0, i32 noundef %59, ptr noundef %31) #16
  %65 = load i32, ptr %28, align 8
  br label %66

66:                                               ; preds = %63, %57
  %67 = phi i32 [ %58, %57 ], [ %65, %63 ]
  %68 = add nuw nsw i32 %59, 1
  %69 = icmp slt i32 %68, %67
  br i1 %69, label %57, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %21, align 4
  br label %72

72:                                               ; preds = %70, %52
  %73 = phi ptr [ %71, %70 ], [ %47, %52 ]
  %74 = getelementptr %struct.thermal_bind_params, ptr %73, i32 %48
  store ptr null, ptr %74, align 4
  %75 = load i32, ptr %27, align 4
  br label %76

76:                                               ; preds = %72, %45
  %77 = phi i32 [ %46, %45 ], [ %75, %72 ]
  %78 = add nuw nsw i32 %48, 1
  %79 = icmp slt i32 %78, %77
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load ptr, ptr %21, align 4
  br label %45

82:                                               ; preds = %76, %42, %36
  %83 = load ptr, ptr %30, align 4
  %84 = icmp eq ptr %83, @thermal_cdev_list
  br i1 %84, label %85, label %29

85:                                               ; preds = %82, %39, %38, %15
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_list_lock) #16
  %86 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 28
  %87 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %86) #16
  %88 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 22
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.thermal_governor, ptr %89, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  tail call void %93(ptr noundef nonnull %0) #16
  br label %96

96:                                               ; preds = %95, %91, %85
  store ptr null, ptr %88, align 4
  tail call void @thermal_remove_hwmon_sysfs(ptr noundef nonnull %0) #16
  %97 = load i32, ptr %0, align 8
  tail call void @ida_free(ptr noundef nonnull @thermal_tz_ida, i32 noundef %97) #16
  %98 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 25
  tail call void @ida_destroy(ptr noundef %98) #16
  %99 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 2
  tail call void @device_unregister(ptr noundef %99) #16
  br label %100

100:                                              ; preds = %96, %14, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_remove_hwmon_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @thermal_zone_get_zone_by_name(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @thermal_list_lock) #16
  %4 = load ptr, ptr @thermal_tz_list, align 4
  %5 = icmp eq ptr %4, @thermal_tz_list
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_list_lock) #16
  br label %21

7:                                                ; preds = %7, %3
  %8 = phi ptr [ %18, %7 ], [ %4, %3 ]
  %9 = phi ptr [ %17, %7 ], [ inttoptr (i32 -22 to ptr), %3 ]
  %10 = phi i32 [ %16, %7 ], [ 0, %3 ]
  %11 = getelementptr i8, ptr %8, i32 -636
  %12 = getelementptr i8, ptr %8, i32 -632
  %13 = tail call i32 @strncasecmp(ptr noundef nonnull %0, ptr noundef %12, i32 noundef 20)
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = add i32 %10, %15
  %17 = select i1 %14, ptr %11, ptr %9
  %18 = load ptr, ptr %8, align 4
  %19 = icmp eq ptr %18, @thermal_tz_list
  br i1 %19, label %20, label %7

20:                                               ; preds = %7
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_list_lock) #16
  switch i32 %16, label %22 [
    i32 0, label %21
    i32 1, label %23
  ]

21:                                               ; preds = %20, %6
  br label %23

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22, %21, %20, %1
  %24 = phi ptr [ inttoptr (i32 -19 to ptr), %21 ], [ inttoptr (i32 -17 to ptr), %22 ], [ inttoptr (i32 -22 to ptr), %1 ], [ %17, %20 ]
  ret ptr %24
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @thermal_init() #10 section ".init.text" {
  %1 = tail call fastcc i32 @thermal_register_governors() #19
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %22

3:                                                ; preds = %0
  %4 = tail call i32 @__class_register(ptr noundef nonnull @thermal_class, ptr noundef nonnull @thermal_init.__key) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = tail call i32 @of_parse_thermal_zones() #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = tail call i32 @register_pm_notifier(ptr noundef nonnull @thermal_pm_nb) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %10) #17
  br label %24

14:                                               ; preds = %6
  tail call void @class_unregister(ptr noundef nonnull @thermal_class) #16
  br label %15

15:                                               ; preds = %14, %3
  %16 = phi i32 [ %4, %3 ], [ %7, %14 ]
  br i1 icmp ult (ptr @__governor_thermal_table, ptr @__governor_thermal_table_end), label %17, label %22

17:                                               ; preds = %17, %15
  %18 = phi ptr [ %20, %17 ], [ @__governor_thermal_table, %15 ]
  %19 = load ptr, ptr %18, align 4
  tail call void @thermal_unregister_governor(ptr noundef %19) #16
  %20 = getelementptr ptr, ptr %18, i32 1
  %21 = icmp ult ptr %20, @__governor_thermal_table_end
  br i1 %21, label %17, label %22

22:                                               ; preds = %17, %15, %0
  %23 = phi i32 [ %1, %0 ], [ %16, %15 ], [ %16, %17 ]
  tail call void @ida_destroy(ptr noundef nonnull @thermal_tz_ida) #16
  tail call void @ida_destroy(ptr noundef nonnull @thermal_cdev_ida) #16
  br label %24

24:                                               ; preds = %22, %12, %9
  %25 = phi i32 [ %23, %22 ], [ 0, %12 ], [ 0, %9 ]
  ret i32 %25
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_thermal_temperature(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_thermal_temperature, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_thermal_temperature, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_thermal_temperature, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_thermal_temperature, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #16
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #16
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
define internal i32 @trace_raw_output_cdev_update(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_cdev_update, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_cdev_update, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef %13, i32 noundef %15) #16
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_thermal_zone_trip(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_thermal_zone_trip, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 65535
  %14 = getelementptr i8, ptr %5, i32 %13
  %15 = getelementptr inbounds %struct.trace_event_raw_thermal_zone_trip, ptr %5, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_thermal_zone_trip, ptr %5, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_thermal_zone_trip, ptr %5, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %20, ptr noundef nonnull @trace_raw_output_thermal_zone_trip.symbols) #16
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef %14, i32 noundef %16, i32 noundef %18, ptr noundef %21) #16
  %22 = tail call i32 @trace_handle_return(ptr noundef %10) #16
  br label %23

23:                                               ; preds = %8, %3
  %24 = phi i32 [ %22, %8 ], [ %6, %3 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_thermal_power_cpu_get_power(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %29

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_get_power, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 65535
  %14 = getelementptr i8, ptr %5, i32 %13
  %15 = lshr i32 %12, 16
  %16 = tail call ptr @trace_print_bitmask_seq(ptr noundef %9, ptr noundef %14, i32 noundef %15) #16
  %17 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_get_power, ptr %5, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_get_power, ptr %5, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 65535
  %22 = getelementptr i8, ptr %5, i32 %21
  %23 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_get_power, ptr %5, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = tail call ptr @trace_print_array_seq(ptr noundef %9, ptr noundef %22, i32 noundef %24, i32 noundef 4) #16
  %26 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_get_power, ptr %5, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.51, ptr noundef %16, i32 noundef %18, ptr noundef %25, i32 noundef %27) #16
  %28 = tail call i32 @trace_handle_return(ptr noundef %10) #16
  br label %29

29:                                               ; preds = %8, %3
  %30 = phi i32 [ %28, %8 ], [ %6, %3 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_bitmask_seq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_array_seq(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_thermal_power_cpu_limit(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_limit, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 65535
  %14 = getelementptr i8, ptr %5, i32 %13
  %15 = lshr i32 %12, 16
  %16 = tail call ptr @trace_print_bitmask_seq(ptr noundef %9, ptr noundef %14, i32 noundef %15) #16
  %17 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_limit, ptr %5, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_limit, ptr %5, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_thermal_power_cpu_limit, ptr %5, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.55, ptr noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22) #16
  %23 = tail call i32 @trace_handle_return(ptr noundef %10) #16
  br label %24

24:                                               ; preds = %8, %3
  %25 = phi i32 [ %23, %8 ], [ %6, %3 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_thermal_power_devfreq_get_power(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %29

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_get_power, ptr %6, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %6, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_get_power, ptr %6, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_get_power, ptr %6, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_get_power, ptr %6, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = mul i32 %21, 100
  %23 = udiv i32 %22, %17
  br label %24

24:                                               ; preds = %19, %9
  %25 = phi i32 [ %23, %19 ], [ 0, %9 ]
  %26 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_get_power, ptr %6, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.58, ptr noundef %13, i32 noundef %15, i32 noundef %25, i32 noundef %27) #16
  %28 = tail call i32 @trace_handle_return(ptr noundef %4) #16
  br label %29

29:                                               ; preds = %24, %3
  %30 = phi i32 [ %28, %24 ], [ %7, %3 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_thermal_power_devfreq_limit(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_limit, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_limit, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_limit, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_thermal_power_devfreq_limit, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.59, ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #16
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #16
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
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_get_temp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #14

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_cooling_device_setup_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bind_cdev(ptr noundef %0) unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @thermal_list_lock) #16
  %2 = load ptr, ptr @thermal_tz_list, align 4
  %3 = icmp eq ptr %2, @thermal_tz_list
  br i1 %3, label %97, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 1
  br label %6

6:                                                ; preds = %94, %4
  %7 = phi ptr [ %2, %4 ], [ %95, %94 ]
  %8 = getelementptr i8, ptr %7, i32 -636
  %9 = getelementptr i8, ptr %7, i32 -52
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  %12 = getelementptr i8, ptr %7, i32 -56
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %11, label %16, label %17

16:                                               ; preds = %6
  br i1 %15, label %94, label %18

17:                                               ; preds = %6
  br i1 %15, label %25, label %18

18:                                               ; preds = %17, %16
  %19 = tail call i32 %14(ptr noundef %8, ptr noundef %0) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %94, label %21

21:                                               ; preds = %18
  %22 = getelementptr i8, ptr %7, i32 -612
  %23 = getelementptr i8, ptr %7, i32 -632
  %24 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.66, ptr noundef %23, ptr noundef %24, i32 noundef %19) #17
  br label %94

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.thermal_zone_params, ptr %10, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %94, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.thermal_zone_params, ptr %10, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %94

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %7, i32 -100
  %35 = getelementptr i8, ptr %7, i32 -612
  %36 = getelementptr i8, ptr %7, i32 -632
  br label %37

37:                                               ; preds = %92, %33
  %38 = phi ptr [ %27, %33 ], [ %93, %92 ]
  %39 = phi i32 [ 0, %33 ], [ %89, %92 ]
  %40 = getelementptr %struct.thermal_bind_params, ptr %38, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %88

43:                                               ; preds = %37
  %44 = getelementptr %struct.thermal_bind_params, ptr %38, i32 %39, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %88, label %47

47:                                               ; preds = %43
  %48 = tail call i32 %45(ptr noundef %8, ptr noundef %0) #16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %88

50:                                               ; preds = %47
  %51 = load ptr, ptr %26, align 4
  %52 = getelementptr %struct.thermal_bind_params, ptr %51, i32 %39
  store ptr %0, ptr %52, align 4
  %53 = load ptr, ptr %26, align 4
  %54 = getelementptr %struct.thermal_bind_params, ptr %53, i32 %39, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr %struct.thermal_bind_params, ptr %53, i32 %39, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr %struct.thermal_bind_params, ptr %53, i32 %39, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = load i32, ptr %34, align 8
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %50
  %63 = icmp eq ptr %57, null
  br label %64

64:                                               ; preds = %84, %62
  %65 = phi i32 [ 0, %62 ], [ %85, %84 ]
  %66 = shl nuw i32 1, %65
  %67 = and i32 %66, %55
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %64
  br i1 %63, label %77, label %70

70:                                               ; preds = %69
  %71 = shl nuw i32 %65, 1
  %72 = getelementptr i32, ptr %57, i32 %71
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %71, 1
  %75 = getelementptr i32, ptr %57, i32 %74
  %76 = load i32, ptr %75, align 4
  br label %77

77:                                               ; preds = %70, %69
  %78 = phi i32 [ %76, %70 ], [ -1, %69 ]
  %79 = phi i32 [ %73, %70 ], [ -1, %69 ]
  %80 = tail call i32 @thermal_zone_bind_cooling_device(ptr noundef %8, i32 noundef %65, ptr noundef %0, i32 noundef %78, i32 noundef %79, i32 noundef %59) #16
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.66, ptr noundef %36, ptr noundef %83, i32 noundef %80) #17
  br label %84

84:                                               ; preds = %82, %77, %64
  %85 = add nuw nsw i32 %65, 1
  %86 = load i32, ptr %34, align 8
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %64, label %88

88:                                               ; preds = %84, %50, %47, %43, %37
  %89 = add nuw nsw i32 %39, 1
  %90 = load i32, ptr %30, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load ptr, ptr %26, align 4
  br label %37

94:                                               ; preds = %88, %29, %25, %21, %18, %16
  %95 = load ptr, ptr %7, align 4
  %96 = icmp eq ptr %95, @thermal_tz_list
  br i1 %96, label %97, label %6

97:                                               ; preds = %94, %1
  tail call void @mutex_unlock(ptr noundef nonnull @thermal_list_lock) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @thermal_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = tail call i32 @strncmp(ptr noundef %6, ptr noundef nonnull dereferenceable(13) @.str.24, i32 noundef 12)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %14

9:                                                ; preds = %1
  %10 = tail call i32 @strncmp(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(13) @.str.24, i32 noundef 12)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %5
  %13 = getelementptr i8, ptr %0, i32 -24
  tail call void @thermal_zone_destroy_device_groups(ptr noundef %13) #16
  br label %20

14:                                               ; preds = %9, %5
  %15 = phi ptr [ %3, %9 ], [ %6, %5 ]
  %16 = tail call i32 @strncmp(ptr noundef %15, ptr noundef nonnull dereferenceable(15) @.str.68, i32 noundef 14)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %0, i32 -8
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi ptr [ %19, %18 ], [ %13, %12 ]
  tail call void @kfree(ptr noundef %21) #16
  br label %22

22:                                               ; preds = %20, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_destroy_device_groups(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @thermal_register_governors() unnamed_addr #10 section ".init.text" {
  br i1 icmp ult (ptr @__governor_thermal_table, ptr @__governor_thermal_table_end), label %1, label %22

1:                                                ; preds = %7, %0
  %2 = phi ptr [ %9, %7 ], [ @__governor_thermal_table, %0 ]
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @thermal_register_governor(ptr noundef %3)
  %5 = icmp eq i32 %4, 0
  %6 = load ptr, ptr %2, align 4
  br i1 %5, label %7, label %11

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %6) #17
  %9 = getelementptr ptr, ptr %2, i32 1
  %10 = icmp ult ptr %9, @__governor_thermal_table_end
  br i1 %10, label %1, label %22

11:                                               ; preds = %1
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %6) #17
  %13 = icmp eq ptr %2, @__governor_thermal_table
  %14 = select i1 icmp uge (ptr @__governor_thermal_table, ptr @__governor_thermal_table_end), i1 true, i1 %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %15, %11
  %16 = phi ptr [ %18, %15 ], [ @__governor_thermal_table, %11 ]
  %17 = load ptr, ptr %16, align 4
  tail call void @thermal_unregister_governor(ptr noundef %17)
  %18 = getelementptr ptr, ptr %16, i32 1
  %19 = icmp uge ptr %18, @__governor_thermal_table_end
  %20 = icmp eq ptr %18, %2
  %21 = or i1 %19, %20
  br i1 %21, label %22, label %15

22:                                               ; preds = %15, %11, %7, %0
  %23 = phi i32 [ %4, %11 ], [ 0, %0 ], [ %4, %15 ], [ 0, %7 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_parse_thermal_zones() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pm_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @thermal_pm_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  switch i32 %1, label %31 [
    i32 1, label %4
    i32 5, label %4
    i32 3, label %4
    i32 2, label %5
    i32 6, label %5
    i32 4, label %5
  ]

4:                                                ; preds = %3, %3, %3
  store volatile i32 1, ptr @in_suspend, align 4
  br label %31

5:                                                ; preds = %3, %3, %3
  store volatile i32 0, ptr @in_suspend, align 4
  %6 = load ptr, ptr @thermal_tz_list, align 4
  %7 = icmp eq ptr %6, @thermal_tz_list
  br i1 %7, label %31, label %8

8:                                                ; preds = %28, %5
  %9 = phi ptr [ %29, %28 ], [ %6, %5 ]
  %10 = getelementptr i8, ptr %9, i32 -636
  %11 = getelementptr i8, ptr %9, i32 -20
  tail call void @mutex_lock(ptr noundef %11) #16
  %12 = getelementptr i8, ptr %9, i32 -108
  %13 = load i32, ptr %12, align 8
  tail call void @mutex_unlock(ptr noundef %11) #16
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %28

15:                                               ; preds = %8
  %16 = getelementptr i8, ptr %9, i32 -84
  store i32 -274000, ptr %16, align 8
  %17 = getelementptr i8, ptr %9, i32 -68
  store i32 -2147483647, ptr %17, align 8
  %18 = getelementptr i8, ptr %9, i32 -64
  store i32 2147483647, ptr %18, align 4
  %19 = getelementptr i8, ptr %9, i32 -40
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %27, label %22

22:                                               ; preds = %22, %15
  %23 = phi ptr [ %25, %22 ], [ %20, %15 ]
  %24 = getelementptr i8, ptr %23, i32 -88
  store i8 0, ptr %24, align 4
  %25 = load ptr, ptr %23, align 4
  %26 = icmp eq ptr %25, %19
  br i1 %26, label %27, label %22

27:                                               ; preds = %22, %15
  tail call void @thermal_zone_device_update(ptr noundef %10, i32 noundef 0)
  br label %28

28:                                               ; preds = %27, %8
  %29 = load ptr, ptr %9, align 4
  %30 = icmp eq ptr %29, @thermal_tz_list
  br i1 %30, label %31, label %8

31:                                               ; preds = %28, %5, %4, %3
  ret i32 0
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind readonly }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { cold }

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
!12 = !{i64 645558}
!13 = !{i64 2153624434}
!14 = !{i64 2153624588}
!15 = !{i64 2153661688}
!16 = !{i64 2153661872}
!17 = !{i64 2148287960}
!18 = !{i64 609706, i64 2148111272, i64 2148111298, i64 2148111345, i64 2148111367, i64 2148111395, i64 2148111415}
!19 = !{i64 595769, i64 595793, i64 595814, i64 595831, i64 595848}
!20 = !{i64 2148288160}
!21 = !{i8 0, i8 2}
