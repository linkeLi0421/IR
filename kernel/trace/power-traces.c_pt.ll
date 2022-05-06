; ModuleID = '/llk/IR/kernel/trace/power-traces.c_pt.bc'
source_filename = "../kernel/trace/power-traces.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_suspend_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_suspend_resume\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_suspend_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_suspend_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_suspend_resume\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_suspend_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_suspend_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_suspend_resume\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_suspend_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_cpu_idle:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_cpu_idle\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_cpu_idle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_cpu_idle:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_cpu_idle\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_cpu_idle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_cpu_idle:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_cpu_idle\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_cpu_idle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_cpu_frequency:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_cpu_frequency\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_cpu_frequency:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_cpu_frequency:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_cpu_frequency\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_cpu_frequency:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_cpu_frequency:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_cpu_frequency\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_cpu_frequency:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_powernv_throttle:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_powernv_throttle\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_powernv_throttle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_powernv_throttle:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_powernv_throttle\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_powernv_throttle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_powernv_throttle:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_powernv_throttle\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_powernv_throttle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.66 }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.68, %struct.trace_event, ptr, ptr, %union.anon.69, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.69 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_cpu = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_powernv_throttle = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_pstate_sample = type { %struct.trace_entry, i32, i32, i32, i32, i64, i64, i64, i32, i32, [0 x i8] }
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpumask = type { [1 x i32] }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.trace_event_raw_cpu_frequency_limits = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_data_offsets_device_pm_callback_start = type { i32, i32, i32, i32 }
%struct.trace_event_raw_device_pm_callback_start = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.trace_event_raw_device_pm_callback_end = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_suspend_resume = type { %struct.trace_entry, ptr, i32, i8, [0 x i8] }
%struct.trace_event_raw_wakeup_source = type { %struct.trace_entry, i32, i64, [0 x i8] }
%struct.trace_event_raw_clock = type { %struct.trace_entry, i32, i64, i64, [0 x i8] }
%struct.trace_event_raw_power_domain = type { %struct.trace_entry, i32, i64, i64, [0 x i8] }
%struct.trace_event_raw_cpu_latency_qos_request = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_pm_qos_update = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_dev_pm_qos_request = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_cpu_idle = internal constant [9 x i8] c"cpu_idle\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cpu_idle = dso_local global %struct.static_call_key { ptr @__traceiter_cpu_idle }, align 4
@__tracepoint_cpu_idle = dso_local global %struct.tracepoint { ptr @__tpstrtab_cpu_idle, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cpu_idle, ptr null, ptr @__traceiter_cpu_idle, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cpu_idle = internal constant ptr @__tracepoint_cpu_idle, section "__tracepoints_ptrs", align 4
@__tpstrtab_powernv_throttle = internal constant [17 x i8] c"powernv_throttle\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_powernv_throttle = dso_local global %struct.static_call_key { ptr @__traceiter_powernv_throttle }, align 4
@__tracepoint_powernv_throttle = dso_local global %struct.tracepoint { ptr @__tpstrtab_powernv_throttle, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_powernv_throttle, ptr null, ptr @__traceiter_powernv_throttle, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_powernv_throttle = internal constant ptr @__tracepoint_powernv_throttle, section "__tracepoints_ptrs", align 4
@__tpstrtab_pstate_sample = internal constant [14 x i8] c"pstate_sample\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_pstate_sample = dso_local global %struct.static_call_key { ptr @__traceiter_pstate_sample }, align 4
@__tracepoint_pstate_sample = dso_local global %struct.tracepoint { ptr @__tpstrtab_pstate_sample, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_pstate_sample, ptr null, ptr @__traceiter_pstate_sample, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_pstate_sample = internal constant ptr @__tracepoint_pstate_sample, section "__tracepoints_ptrs", align 4
@__tpstrtab_cpu_frequency = internal constant [14 x i8] c"cpu_frequency\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cpu_frequency = dso_local global %struct.static_call_key { ptr @__traceiter_cpu_frequency }, align 4
@__tracepoint_cpu_frequency = dso_local global %struct.tracepoint { ptr @__tpstrtab_cpu_frequency, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cpu_frequency, ptr null, ptr @__traceiter_cpu_frequency, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cpu_frequency = internal constant ptr @__tracepoint_cpu_frequency, section "__tracepoints_ptrs", align 4
@__tpstrtab_cpu_frequency_limits = internal constant [21 x i8] c"cpu_frequency_limits\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cpu_frequency_limits = dso_local global %struct.static_call_key { ptr @__traceiter_cpu_frequency_limits }, align 4
@__tracepoint_cpu_frequency_limits = dso_local global %struct.tracepoint { ptr @__tpstrtab_cpu_frequency_limits, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cpu_frequency_limits, ptr null, ptr @__traceiter_cpu_frequency_limits, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cpu_frequency_limits = internal constant ptr @__tracepoint_cpu_frequency_limits, section "__tracepoints_ptrs", align 4
@__tpstrtab_device_pm_callback_start = internal constant [25 x i8] c"device_pm_callback_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_device_pm_callback_start = dso_local global %struct.static_call_key { ptr @__traceiter_device_pm_callback_start }, align 4
@__tracepoint_device_pm_callback_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_device_pm_callback_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_device_pm_callback_start, ptr null, ptr @__traceiter_device_pm_callback_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_device_pm_callback_start = internal constant ptr @__tracepoint_device_pm_callback_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_device_pm_callback_end = internal constant [23 x i8] c"device_pm_callback_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_device_pm_callback_end = dso_local global %struct.static_call_key { ptr @__traceiter_device_pm_callback_end }, align 4
@__tracepoint_device_pm_callback_end = dso_local global %struct.tracepoint { ptr @__tpstrtab_device_pm_callback_end, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_device_pm_callback_end, ptr null, ptr @__traceiter_device_pm_callback_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_device_pm_callback_end = internal constant ptr @__tracepoint_device_pm_callback_end, section "__tracepoints_ptrs", align 4
@__tpstrtab_suspend_resume = internal constant [15 x i8] c"suspend_resume\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_suspend_resume = dso_local global %struct.static_call_key { ptr @__traceiter_suspend_resume }, align 4
@__tracepoint_suspend_resume = dso_local global %struct.tracepoint { ptr @__tpstrtab_suspend_resume, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_suspend_resume, ptr null, ptr @__traceiter_suspend_resume, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_suspend_resume = internal constant ptr @__tracepoint_suspend_resume, section "__tracepoints_ptrs", align 4
@__tpstrtab_wakeup_source_activate = internal constant [23 x i8] c"wakeup_source_activate\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wakeup_source_activate = dso_local global %struct.static_call_key { ptr @__traceiter_wakeup_source_activate }, align 4
@__tracepoint_wakeup_source_activate = dso_local global %struct.tracepoint { ptr @__tpstrtab_wakeup_source_activate, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_wakeup_source_activate, ptr null, ptr @__traceiter_wakeup_source_activate, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wakeup_source_activate = internal constant ptr @__tracepoint_wakeup_source_activate, section "__tracepoints_ptrs", align 4
@__tpstrtab_wakeup_source_deactivate = internal constant [25 x i8] c"wakeup_source_deactivate\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wakeup_source_deactivate = dso_local global %struct.static_call_key { ptr @__traceiter_wakeup_source_deactivate }, align 4
@__tracepoint_wakeup_source_deactivate = dso_local global %struct.tracepoint { ptr @__tpstrtab_wakeup_source_deactivate, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_wakeup_source_deactivate, ptr null, ptr @__traceiter_wakeup_source_deactivate, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wakeup_source_deactivate = internal constant ptr @__tracepoint_wakeup_source_deactivate, section "__tracepoints_ptrs", align 4
@__tpstrtab_clock_enable = internal constant [13 x i8] c"clock_enable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_clock_enable = dso_local global %struct.static_call_key { ptr @__traceiter_clock_enable }, align 4
@__tracepoint_clock_enable = dso_local global %struct.tracepoint { ptr @__tpstrtab_clock_enable, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_clock_enable, ptr null, ptr @__traceiter_clock_enable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_clock_enable = internal constant ptr @__tracepoint_clock_enable, section "__tracepoints_ptrs", align 4
@__tpstrtab_clock_disable = internal constant [14 x i8] c"clock_disable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_clock_disable = dso_local global %struct.static_call_key { ptr @__traceiter_clock_disable }, align 4
@__tracepoint_clock_disable = dso_local global %struct.tracepoint { ptr @__tpstrtab_clock_disable, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_clock_disable, ptr null, ptr @__traceiter_clock_disable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_clock_disable = internal constant ptr @__tracepoint_clock_disable, section "__tracepoints_ptrs", align 4
@__tpstrtab_clock_set_rate = internal constant [15 x i8] c"clock_set_rate\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_clock_set_rate = dso_local global %struct.static_call_key { ptr @__traceiter_clock_set_rate }, align 4
@__tracepoint_clock_set_rate = dso_local global %struct.tracepoint { ptr @__tpstrtab_clock_set_rate, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_clock_set_rate, ptr null, ptr @__traceiter_clock_set_rate, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_clock_set_rate = internal constant ptr @__tracepoint_clock_set_rate, section "__tracepoints_ptrs", align 4
@__tpstrtab_power_domain_target = internal constant [20 x i8] c"power_domain_target\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_power_domain_target = dso_local global %struct.static_call_key { ptr @__traceiter_power_domain_target }, align 4
@__tracepoint_power_domain_target = dso_local global %struct.tracepoint { ptr @__tpstrtab_power_domain_target, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_power_domain_target, ptr null, ptr @__traceiter_power_domain_target, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_power_domain_target = internal constant ptr @__tracepoint_power_domain_target, section "__tracepoints_ptrs", align 4
@__tpstrtab_pm_qos_add_request = internal constant [19 x i8] c"pm_qos_add_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_pm_qos_add_request = dso_local global %struct.static_call_key { ptr @__traceiter_pm_qos_add_request }, align 4
@__tracepoint_pm_qos_add_request = dso_local global %struct.tracepoint { ptr @__tpstrtab_pm_qos_add_request, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_pm_qos_add_request, ptr null, ptr @__traceiter_pm_qos_add_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_pm_qos_add_request = internal constant ptr @__tracepoint_pm_qos_add_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_pm_qos_update_request = internal constant [22 x i8] c"pm_qos_update_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_pm_qos_update_request = dso_local global %struct.static_call_key { ptr @__traceiter_pm_qos_update_request }, align 4
@__tracepoint_pm_qos_update_request = dso_local global %struct.tracepoint { ptr @__tpstrtab_pm_qos_update_request, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_pm_qos_update_request, ptr null, ptr @__traceiter_pm_qos_update_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_pm_qos_update_request = internal constant ptr @__tracepoint_pm_qos_update_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_pm_qos_remove_request = internal constant [22 x i8] c"pm_qos_remove_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_pm_qos_remove_request = dso_local global %struct.static_call_key { ptr @__traceiter_pm_qos_remove_request }, align 4
@__tracepoint_pm_qos_remove_request = dso_local global %struct.tracepoint { ptr @__tpstrtab_pm_qos_remove_request, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_pm_qos_remove_request, ptr null, ptr @__traceiter_pm_qos_remove_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_pm_qos_remove_request = internal constant ptr @__tracepoint_pm_qos_remove_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_pm_qos_update_target = internal constant [21 x i8] c"pm_qos_update_target\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_pm_qos_update_target = dso_local global %struct.static_call_key { ptr @__traceiter_pm_qos_update_target }, align 4
@__tracepoint_pm_qos_update_target = dso_local global %struct.tracepoint { ptr @__tpstrtab_pm_qos_update_target, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_pm_qos_update_target, ptr null, ptr @__traceiter_pm_qos_update_target, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_pm_qos_update_target = internal constant ptr @__tracepoint_pm_qos_update_target, section "__tracepoints_ptrs", align 4
@__tpstrtab_pm_qos_update_flags = internal constant [20 x i8] c"pm_qos_update_flags\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_pm_qos_update_flags = dso_local global %struct.static_call_key { ptr @__traceiter_pm_qos_update_flags }, align 4
@__tracepoint_pm_qos_update_flags = dso_local global %struct.tracepoint { ptr @__tpstrtab_pm_qos_update_flags, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_pm_qos_update_flags, ptr null, ptr @__traceiter_pm_qos_update_flags, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_pm_qos_update_flags = internal constant ptr @__tracepoint_pm_qos_update_flags, section "__tracepoints_ptrs", align 4
@__tpstrtab_dev_pm_qos_add_request = internal constant [23 x i8] c"dev_pm_qos_add_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dev_pm_qos_add_request = dso_local global %struct.static_call_key { ptr @__traceiter_dev_pm_qos_add_request }, align 4
@__tracepoint_dev_pm_qos_add_request = dso_local global %struct.tracepoint { ptr @__tpstrtab_dev_pm_qos_add_request, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dev_pm_qos_add_request, ptr null, ptr @__traceiter_dev_pm_qos_add_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dev_pm_qos_add_request = internal constant ptr @__tracepoint_dev_pm_qos_add_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_dev_pm_qos_update_request = internal constant [26 x i8] c"dev_pm_qos_update_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dev_pm_qos_update_request = dso_local global %struct.static_call_key { ptr @__traceiter_dev_pm_qos_update_request }, align 4
@__tracepoint_dev_pm_qos_update_request = dso_local global %struct.tracepoint { ptr @__tpstrtab_dev_pm_qos_update_request, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dev_pm_qos_update_request, ptr null, ptr @__traceiter_dev_pm_qos_update_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dev_pm_qos_update_request = internal constant ptr @__tracepoint_dev_pm_qos_update_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_dev_pm_qos_remove_request = internal constant [26 x i8] c"dev_pm_qos_remove_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dev_pm_qos_remove_request = dso_local global %struct.static_call_key { ptr @__traceiter_dev_pm_qos_remove_request }, align 4
@__tracepoint_dev_pm_qos_remove_request = dso_local global %struct.tracepoint { ptr @__tpstrtab_dev_pm_qos_remove_request, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dev_pm_qos_remove_request, ptr null, ptr @__traceiter_dev_pm_qos_remove_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dev_pm_qos_remove_request = internal constant ptr @__tracepoint_dev_pm_qos_remove_request, section "__tracepoints_ptrs", align 4
@str__power__trace_system_name = internal constant [6 x i8] c"power\00", align 1
@trace_event_fields_cpu = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.66 { %struct.anon.67 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.66 { %struct.anon.67 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_cpu = internal global %struct.trace_event_class { ptr @str__power__trace_system_name, ptr @trace_event_raw_event_cpu, ptr @perf_trace_cpu, ptr @trace_event_reg, ptr @trace_event_fields_cpu, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cpu, i64 24), ptr getelementptr (i8, ptr @event_class_cpu, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cpu = internal global %struct.trace_event_functions { ptr @trace_raw_output_cpu, ptr null, ptr null, ptr null }, align 4
@print_fmt_cpu = internal global [78 x i8] c"\22state=%lu cpu_id=%lu\22, (unsigned long)REC->state, (unsigned long)REC->cpu_id\00", align 1
@event_cpu_idle = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cpu, %union.anon.68 { ptr @__tracepoint_cpu_idle }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cpu }, ptr @print_fmt_cpu, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cpu_idle = internal global ptr @event_cpu_idle, section "_ftrace_events", align 4
@trace_event_fields_powernv_throttle = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.66 { %struct.anon.67 { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.66 { %struct.anon.67 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.66 { %struct.anon.67 { ptr @.str.9, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_powernv_throttle = internal global %struct.trace_event_class { ptr @str__power__trace_system_name, ptr @trace_event_raw_event_powernv_throttle, ptr @perf_trace_powernv_throttle, ptr @trace_event_reg, ptr @trace_event_fields_powernv_throttle, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_powernv_throttle, i64 24), ptr getelementptr (i8, ptr @event_class_powernv_throttle, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_powernv_throttle = internal global %struct.trace_event_functions { ptr @trace_raw_output_powernv_throttle, ptr null, ptr null, ptr null }, align 4
@print_fmt_powernv_throttle = internal global [65 x i8] c"\22Chip %d Pmax %d %s\22, REC->chip_id, REC->pmax, __get_str(reason)\00", align 1
@event_powernv_throttle = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_powernv_throttle, %union.anon.68 { ptr @__tracepoint_powernv_throttle }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_powernv_throttle }, ptr @print_fmt_powernv_throttle, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_powernv_throttle = internal global ptr @event_powernv_throttle, section "_ftrace_events", align 4
@trace_event_fields_pstate_sample = internal global [10 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.66 { %struct.anon.67 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.66 { %struct.anon.67 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.66 { %struct.anon.67 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.66 { %struct.anon.67 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.66 { %struct.anon.67 { ptr @.str.16, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.66 { %struct.anon.67 { ptr @.str.17, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.66 { %struct.anon.67 { ptr @.str.18, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.66 { %struct.anon.67 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.66 { %struct.anon.67 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_pstate_sample = internal global %struct.trace_event_class { ptr @str__power__trace_system_name, ptr @trace_event_raw_event_pstate_sample, ptr @perf_trace_pstate_sample, ptr @trace_event_reg, ptr @trace_event_fields_pstate_sample, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_pstate_sample, i64 24), ptr getelementptr (i8, ptr @event_class_pstate_sample, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_pstate_sample = internal global %struct.trace_event_functions { ptr @trace_raw_output_pstate_sample, ptr null, ptr null, ptr null }, align 4
@print_fmt_pstate_sample = internal global [360 x i8] c"\22core_busy=%lu scaled=%lu from=%lu to=%lu mperf=%llu aperf=%llu tsc=%llu freq=%lu io_boost=%lu\22, (unsigned long)REC->core_busy, (unsigned long)REC->scaled_busy, (unsigned long)REC->from, (unsigned long)REC->to, (unsigned long long)REC->mperf, (unsigned long long)REC->aperf, (unsigned long long)REC->tsc, (unsigned long)REC->freq, (unsigned long)REC->io_boost\00", align 1
@event_pstate_sample = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_pstate_sample, %union.anon.68 { ptr @__tracepoint_pstate_sample }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_pstate_sample }, ptr @print_fmt_pstate_sample, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_pstate_sample = internal global ptr @event_pstate_sample, section "_ftrace_events", align 4
@event_cpu_frequency = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cpu, %union.anon.68 { ptr @__tracepoint_cpu_frequency }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cpu }, ptr @print_fmt_cpu, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cpu_frequency = internal global ptr @event_cpu_frequency, section "_ftrace_events", align 4
@trace_event_fields_cpu_frequency_limits = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.66 { %struct.anon.67 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.66 { %struct.anon.67 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.66 { %struct.anon.67 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_cpu_frequency_limits = internal global %struct.trace_event_class { ptr @str__power__trace_system_name, ptr @trace_event_raw_event_cpu_frequency_limits, ptr @perf_trace_cpu_frequency_limits, ptr @trace_event_reg, ptr @trace_event_fields_cpu_frequency_limits, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cpu_frequency_limits, i64 24), ptr getelementptr (i8, ptr @event_class_cpu_frequency_limits, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cpu_frequency_limits = internal global %struct.trace_event_functions { ptr @trace_raw_output_cpu_frequency_limits, ptr null, ptr null, ptr null }, align 4
@print_fmt_cpu_frequency_limits = internal global [117 x i8] c"\22min=%lu max=%lu cpu_id=%lu\22, (unsigned long)REC->min_freq, (unsigned long)REC->max_freq, (unsigned long)REC->cpu_id\00", align 1
@event_cpu_frequency_limits = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cpu_frequency_limits, %union.anon.68 { ptr @__tracepoint_cpu_frequency_limits }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cpu_frequency_limits }, ptr @print_fmt_cpu_frequency_limits, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cpu_frequency_limits = internal global ptr @event_cpu_frequency_limits, section "_ftrace_events", align 4
@trace_event_fields_device_pm_callback_start = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.7, %union.anon.66 { %struct.anon.67 { ptr @.str.27, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.66 { %struct.anon.67 { ptr @.str.28, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.66 { %struct.anon.67 { ptr @.str.29, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.66 { %struct.anon.67 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.66 { %struct.anon.67 { ptr @.str.31, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_device_pm_callback_start = internal global %struct.trace_event_class { ptr @str__power__trace_system_name, ptr @trace_event_raw_event_device_pm_callback_start, ptr @perf_trace_device_pm_callback_start, ptr @trace_event_reg, ptr @trace_event_fields_device_pm_callback_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_device_pm_callback_start, i64 24), ptr getelementptr (i8, ptr @event_class_device_pm_callback_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_device_pm_callback_start = internal global %struct.trace_event_functions { ptr @trace_raw_output_device_pm_callback_start, ptr null, ptr null, ptr null }, align 4
@print_fmt_device_pm_callback_start = internal global [315 x i8] c"\22%s %s, parent: %s, %s[%s]\22, __get_str(driver), __get_str(device), __get_str(parent), __get_str(pm_ops), __print_symbolic(REC->event, { 0x0002, \22suspend\22 }, { 0x0010, \22resume\22 }, { 0x0001, \22freeze\22 }, { 0x0008, \22quiesce\22 }, { 0x0004, \22hibernate\22 }, { 0x0020, \22thaw\22 }, { 0x0040, \22restore\22 }, { 0x0080, \22recover\22 })\00", align 1
@event_device_pm_callback_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_device_pm_callback_start, %union.anon.68 { ptr @__tracepoint_device_pm_callback_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_device_pm_callback_start }, ptr @print_fmt_device_pm_callback_start, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_device_pm_callback_start = internal global ptr @event_device_pm_callback_start, section "_ftrace_events", align 4
@trace_event_fields_device_pm_callback_end = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.7, %union.anon.66 { %struct.anon.67 { ptr @.str.27, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.66 { %struct.anon.67 { ptr @.str.28, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.66 { %struct.anon.67 { ptr @.str.41, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_device_pm_callback_end = internal global %struct.trace_event_class { ptr @str__power__trace_system_name, ptr @trace_event_raw_event_device_pm_callback_end, ptr @perf_trace_device_pm_callback_end, ptr @trace_event_reg, ptr @trace_event_fields_device_pm_callback_end, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_device_pm_callback_end, i64 24), ptr getelementptr (i8, ptr @event_class_device_pm_callback_end, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_device_pm_callback_end = internal global %struct.trace_event_functions { ptr @trace_raw_output_device_pm_callback_end, ptr null, ptr null, ptr null }, align 4
@print_fmt_device_pm_callback_end = internal global [66 x i8] c"\22%s %s, err=%d\22, __get_str(driver), __get_str(device), REC->error\00", align 1
@event_device_pm_callback_end = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_device_pm_callback_end, %union.anon.68 { ptr @__tracepoint_device_pm_callback_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_device_pm_callback_end }, ptr @print_fmt_device_pm_callback_end, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_device_pm_callback_end = internal global ptr @event_device_pm_callback_end, section "_ftrace_events", align 4
@trace_event_fields_suspend_resume = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.43, %union.anon.66 { %struct.anon.67 { ptr @.str.44, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.66 { %struct.anon.67 { ptr @.str.45, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.46, %union.anon.66 { %struct.anon.67 { ptr @.str.47, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_suspend_resume = internal global %struct.trace_event_class { ptr @str__power__trace_system_name, ptr @trace_event_raw_event_suspend_resume, ptr @perf_trace_suspend_resume, ptr @trace_event_reg, ptr @trace_event_fields_suspend_resume, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_suspend_resume, i64 24), ptr getelementptr (i8, ptr @event_class_suspend_resume, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_suspend_resume = internal global %struct.trace_event_functions { ptr @trace_raw_output_suspend_resume, ptr null, ptr null, ptr null }, align 4
@print_fmt_suspend_resume = internal global [77 x i8] c"\22%s[%u] %s\22, REC->action, (unsigned int)REC->val, (REC->start)?\22begin\22:\22end\22\00", align 1
@event_suspend_resume = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_suspend_resume, %union.anon.68 { ptr @__tracepoint_suspend_resume }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_suspend_resume }, ptr @print_fmt_suspend_resume, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_suspend_resume = internal global ptr @event_suspend_resume, section "_ftrace_events", align 4
@trace_event_fields_wakeup_source = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.7, %union.anon.66 { %struct.anon.67 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.66 { %struct.anon.67 { ptr @.str.1, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_wakeup_source = internal global %struct.trace_event_class { ptr @str__power__trace_system_name, ptr @trace_event_raw_event_wakeup_source, ptr @perf_trace_wakeup_source, ptr @trace_event_reg, ptr @trace_event_fields_wakeup_source, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_wakeup_source, i64 24), ptr getelementptr (i8, ptr @event_class_wakeup_source, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_wakeup_source = internal global %struct.trace_event_functions { ptr @trace_raw_output_wakeup_source, ptr null, ptr null, ptr null }, align 4
@print_fmt_wakeup_source = internal global [61 x i8] c"\22%s state=0x%lx\22, __get_str(name), (unsigned long)REC->state\00", align 1
@event_wakeup_source_activate = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wakeup_source, %union.anon.68 { ptr @__tracepoint_wakeup_source_activate }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wakeup_source }, ptr @print_fmt_wakeup_source, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_wakeup_source_activate = internal global ptr @event_wakeup_source_activate, section "_ftrace_events", align 4
@event_wakeup_source_deactivate = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wakeup_source, %union.anon.68 { ptr @__tracepoint_wakeup_source_deactivate }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wakeup_source }, ptr @print_fmt_wakeup_source, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_wakeup_source_deactivate = internal global ptr @event_wakeup_source_deactivate, section "_ftrace_events", align 4
@trace_event_fields_clock = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.7, %union.anon.66 { %struct.anon.67 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.66 { %struct.anon.67 { ptr @.str.1, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.66 { %struct.anon.67 { ptr @.str.2, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_clock = internal global %struct.trace_event_class { ptr @str__power__trace_system_name, ptr @trace_event_raw_event_clock, ptr @perf_trace_clock, ptr @trace_event_reg, ptr @trace_event_fields_clock, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_clock, i64 24), ptr getelementptr (i8, ptr @event_class_clock, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_clock = internal global %struct.trace_event_functions { ptr @trace_raw_output_clock, ptr null, ptr null, ptr null }, align 4
@print_fmt_clock = internal global [98 x i8] c"\22%s state=%lu cpu_id=%lu\22, __get_str(name), (unsigned long)REC->state, (unsigned long)REC->cpu_id\00", align 1
@event_clock_enable = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_clock, %union.anon.68 { ptr @__tracepoint_clock_enable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_clock }, ptr @print_fmt_clock, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_clock_enable = internal global ptr @event_clock_enable, section "_ftrace_events", align 4
@event_clock_disable = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_clock, %union.anon.68 { ptr @__tracepoint_clock_disable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_clock }, ptr @print_fmt_clock, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_clock_disable = internal global ptr @event_clock_disable, section "_ftrace_events", align 4
@event_clock_set_rate = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_clock, %union.anon.68 { ptr @__tracepoint_clock_set_rate }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_clock }, ptr @print_fmt_clock, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_clock_set_rate = internal global ptr @event_clock_set_rate, section "_ftrace_events", align 4
@trace_event_fields_power_domain = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.7, %union.anon.66 { %struct.anon.67 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.66 { %struct.anon.67 { ptr @.str.1, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.66 { %struct.anon.67 { ptr @.str.2, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_power_domain = internal global %struct.trace_event_class { ptr @str__power__trace_system_name, ptr @trace_event_raw_event_power_domain, ptr @perf_trace_power_domain, ptr @trace_event_reg, ptr @trace_event_fields_power_domain, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_power_domain, i64 24), ptr getelementptr (i8, ptr @event_class_power_domain, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_power_domain = internal global %struct.trace_event_functions { ptr @trace_raw_output_power_domain, ptr null, ptr null, ptr null }, align 4
@print_fmt_power_domain = internal global [98 x i8] c"\22%s state=%lu cpu_id=%lu\22, __get_str(name), (unsigned long)REC->state, (unsigned long)REC->cpu_id\00", align 1
@event_power_domain_target = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_power_domain, %union.anon.68 { ptr @__tracepoint_power_domain_target }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_power_domain }, ptr @print_fmt_power_domain, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_power_domain_target = internal global ptr @event_power_domain_target, section "_ftrace_events", align 4
@trace_event_fields_cpu_latency_qos_request = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.54, %union.anon.66 { %struct.anon.67 { ptr @.str.55, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_cpu_latency_qos_request = internal global %struct.trace_event_class { ptr @str__power__trace_system_name, ptr @trace_event_raw_event_cpu_latency_qos_request, ptr @perf_trace_cpu_latency_qos_request, ptr @trace_event_reg, ptr @trace_event_fields_cpu_latency_qos_request, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cpu_latency_qos_request, i64 24), ptr getelementptr (i8, ptr @event_class_cpu_latency_qos_request, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cpu_latency_qos_request = internal global %struct.trace_event_functions { ptr @trace_raw_output_cpu_latency_qos_request, ptr null, ptr null, ptr null }, align 4
@print_fmt_cpu_latency_qos_request = internal global [39 x i8] c"\22CPU_DMA_LATENCY value=%d\22, REC->value\00", align 1
@event_pm_qos_add_request = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cpu_latency_qos_request, %union.anon.68 { ptr @__tracepoint_pm_qos_add_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cpu_latency_qos_request }, ptr @print_fmt_cpu_latency_qos_request, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_pm_qos_add_request = internal global ptr @event_pm_qos_add_request, section "_ftrace_events", align 4
@event_pm_qos_update_request = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cpu_latency_qos_request, %union.anon.68 { ptr @__tracepoint_pm_qos_update_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cpu_latency_qos_request }, ptr @print_fmt_cpu_latency_qos_request, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_pm_qos_update_request = internal global ptr @event_pm_qos_update_request, section "_ftrace_events", align 4
@event_pm_qos_remove_request = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cpu_latency_qos_request, %union.anon.68 { ptr @__tracepoint_pm_qos_remove_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cpu_latency_qos_request }, ptr @print_fmt_cpu_latency_qos_request, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_pm_qos_remove_request = internal global ptr @event_pm_qos_remove_request, section "_ftrace_events", align 4
@trace_event_fields_pm_qos_update = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.57, %union.anon.66 { %struct.anon.67 { ptr @.str.44, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.66 { %struct.anon.67 { ptr @.str.58, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.66 { %struct.anon.67 { ptr @.str.59, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_pm_qos_update = internal global %struct.trace_event_class { ptr @str__power__trace_system_name, ptr @trace_event_raw_event_pm_qos_update, ptr @perf_trace_pm_qos_update, ptr @trace_event_reg, ptr @trace_event_fields_pm_qos_update, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_pm_qos_update, i64 24), ptr getelementptr (i8, ptr @event_class_pm_qos_update, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_pm_qos_update = internal global %struct.trace_event_functions { ptr @trace_raw_output_pm_qos_update, ptr null, ptr null, ptr null }, align 4
@print_fmt_pm_qos_update = internal global [210 x i8] c"\22action=%s prev_value=%d curr_value=%d\22, __print_symbolic(REC->action, { PM_QOS_ADD_REQ, \22ADD_REQ\22 }, { PM_QOS_UPDATE_REQ, \22UPDATE_REQ\22 }, { PM_QOS_REMOVE_REQ, \22REMOVE_REQ\22 }), REC->prev_value, REC->curr_value\00", align 1
@event_pm_qos_update_target = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_pm_qos_update, %union.anon.68 { ptr @__tracepoint_pm_qos_update_target }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_pm_qos_update }, ptr @print_fmt_pm_qos_update, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_pm_qos_update_target = internal global ptr @event_pm_qos_update_target, section "_ftrace_events", align 4
@trace_event_type_funcs_pm_qos_update_flags = internal global %struct.trace_event_functions { ptr @trace_raw_output_pm_qos_update_flags, ptr null, ptr null, ptr null }, align 4
@print_fmt_pm_qos_update_flags = internal global [214 x i8] c"\22action=%s prev_value=0x%x curr_value=0x%x\22, __print_symbolic(REC->action, { PM_QOS_ADD_REQ, \22ADD_REQ\22 }, { PM_QOS_UPDATE_REQ, \22UPDATE_REQ\22 }, { PM_QOS_REMOVE_REQ, \22REMOVE_REQ\22 }), REC->prev_value, REC->curr_value\00", align 1
@event_pm_qos_update_flags = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_pm_qos_update, %union.anon.68 { ptr @__tracepoint_pm_qos_update_flags }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_pm_qos_update_flags }, ptr @print_fmt_pm_qos_update_flags, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_pm_qos_update_flags = internal global ptr @event_pm_qos_update_flags, section "_ftrace_events", align 4
@trace_event_fields_dev_pm_qos_request = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.7, %union.anon.66 { %struct.anon.67 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.67, %union.anon.66 { %struct.anon.67 { ptr @.str.68, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.54, %union.anon.66 { %struct.anon.67 { ptr @.str.69, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dev_pm_qos_request = internal global %struct.trace_event_class { ptr @str__power__trace_system_name, ptr @trace_event_raw_event_dev_pm_qos_request, ptr @perf_trace_dev_pm_qos_request, ptr @trace_event_reg, ptr @trace_event_fields_dev_pm_qos_request, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dev_pm_qos_request, i64 24), ptr getelementptr (i8, ptr @event_class_dev_pm_qos_request, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dev_pm_qos_request = internal global %struct.trace_event_functions { ptr @trace_raw_output_dev_pm_qos_request, ptr null, ptr null, ptr null }, align 4
@print_fmt_dev_pm_qos_request = internal global [197 x i8] c"\22device=%s type=%s new_value=%d\22, __get_str(name), __print_symbolic(REC->type, { DEV_PM_QOS_RESUME_LATENCY, \22DEV_PM_QOS_RESUME_LATENCY\22 }, { DEV_PM_QOS_FLAGS, \22DEV_PM_QOS_FLAGS\22 }), REC->new_value\00", align 1
@event_dev_pm_qos_add_request = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dev_pm_qos_request, %union.anon.68 { ptr @__tracepoint_dev_pm_qos_add_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dev_pm_qos_request }, ptr @print_fmt_dev_pm_qos_request, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dev_pm_qos_add_request = internal global ptr @event_dev_pm_qos_add_request, section "_ftrace_events", align 4
@event_dev_pm_qos_update_request = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dev_pm_qos_request, %union.anon.68 { ptr @__tracepoint_dev_pm_qos_update_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dev_pm_qos_request }, ptr @print_fmt_dev_pm_qos_request, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dev_pm_qos_update_request = internal global ptr @event_dev_pm_qos_update_request, section "_ftrace_events", align 4
@event_dev_pm_qos_remove_request = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dev_pm_qos_request, %union.anon.68 { ptr @__tracepoint_dev_pm_qos_remove_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dev_pm_qos_request }, ptr @print_fmt_dev_pm_qos_request, ptr null, %union.anon.69 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dev_pm_qos_remove_request = internal global ptr @event_dev_pm_qos_remove_request, section "_ftrace_events", align 4
@__kstrtab___tracepoint_suspend_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_suspend_resume = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_suspend_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_suspend_resume to i32), ptr @__kstrtab___tracepoint_suspend_resume, ptr @__kstrtabns___tracepoint_suspend_resume }, section "___ksymtab_gpl+__tracepoint_suspend_resume", align 4
@__kstrtab___traceiter_suspend_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_suspend_resume = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_suspend_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_suspend_resume to i32), ptr @__kstrtab___traceiter_suspend_resume, ptr @__kstrtabns___traceiter_suspend_resume }, section "___ksymtab_gpl+__traceiter_suspend_resume", align 4
@__kstrtab___SCK__tp_func_suspend_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_suspend_resume = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_suspend_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_suspend_resume to i32), ptr @__kstrtab___SCK__tp_func_suspend_resume, ptr @__kstrtabns___SCK__tp_func_suspend_resume }, section "___ksymtab_gpl+__SCK__tp_func_suspend_resume", align 4
@__kstrtab___tracepoint_cpu_idle = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_cpu_idle = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_cpu_idle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_cpu_idle to i32), ptr @__kstrtab___tracepoint_cpu_idle, ptr @__kstrtabns___tracepoint_cpu_idle }, section "___ksymtab_gpl+__tracepoint_cpu_idle", align 4
@__kstrtab___traceiter_cpu_idle = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_cpu_idle = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_cpu_idle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_cpu_idle to i32), ptr @__kstrtab___traceiter_cpu_idle, ptr @__kstrtabns___traceiter_cpu_idle }, section "___ksymtab_gpl+__traceiter_cpu_idle", align 4
@__kstrtab___SCK__tp_func_cpu_idle = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_cpu_idle = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_cpu_idle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_cpu_idle to i32), ptr @__kstrtab___SCK__tp_func_cpu_idle, ptr @__kstrtabns___SCK__tp_func_cpu_idle }, section "___ksymtab_gpl+__SCK__tp_func_cpu_idle", align 4
@__kstrtab___tracepoint_cpu_frequency = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_cpu_frequency = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_cpu_frequency = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_cpu_frequency to i32), ptr @__kstrtab___tracepoint_cpu_frequency, ptr @__kstrtabns___tracepoint_cpu_frequency }, section "___ksymtab_gpl+__tracepoint_cpu_frequency", align 4
@__kstrtab___traceiter_cpu_frequency = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_cpu_frequency = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_cpu_frequency = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_cpu_frequency to i32), ptr @__kstrtab___traceiter_cpu_frequency, ptr @__kstrtabns___traceiter_cpu_frequency }, section "___ksymtab_gpl+__traceiter_cpu_frequency", align 4
@__kstrtab___SCK__tp_func_cpu_frequency = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_cpu_frequency = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_cpu_frequency = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_cpu_frequency to i32), ptr @__kstrtab___SCK__tp_func_cpu_frequency, ptr @__kstrtabns___SCK__tp_func_cpu_frequency }, section "___ksymtab_gpl+__SCK__tp_func_cpu_frequency", align 4
@__kstrtab___tracepoint_powernv_throttle = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_powernv_throttle = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_powernv_throttle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_powernv_throttle to i32), ptr @__kstrtab___tracepoint_powernv_throttle, ptr @__kstrtabns___tracepoint_powernv_throttle }, section "___ksymtab_gpl+__tracepoint_powernv_throttle", align 4
@__kstrtab___traceiter_powernv_throttle = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_powernv_throttle = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_powernv_throttle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_powernv_throttle to i32), ptr @__kstrtab___traceiter_powernv_throttle, ptr @__kstrtabns___traceiter_powernv_throttle }, section "___ksymtab_gpl+__traceiter_powernv_throttle", align 4
@__kstrtab___SCK__tp_func_powernv_throttle = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_powernv_throttle = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_powernv_throttle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_powernv_throttle to i32), ptr @__kstrtab___SCK__tp_func_powernv_throttle, ptr @__kstrtabns___SCK__tp_func_powernv_throttle }, section "___ksymtab_gpl+__SCK__tp_func_powernv_throttle", align 4
@.str = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cpu_id\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"state=%lu cpu_id=%lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"chip_id\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"reason\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"pmax\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Chip %d Pmax %d %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"core_busy\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"scaled_busy\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"u64\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"mperf\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"aperf\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"tsc\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"io_boost\00", align 1
@.str.21 = private unnamed_addr constant [95 x i8] c"core_busy=%lu scaled=%lu from=%lu to=%lu mperf=%llu aperf=%llu tsc=%llu freq=%lu io_boost=%lu\0A\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"min_freq\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"max_freq\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"min=%lu max=%lu cpu_id=%lu\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"none \00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"pm_ops\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"%s %s, parent: %s, %s[%s]\0A\00", align 1
@trace_raw_output_device_pm_callback_start.symbols = internal constant [9 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 2, ptr @.str.33 }, %struct.trace_print_flags { i32 16, ptr @.str.34 }, %struct.trace_print_flags { i32 1, ptr @.str.35 }, %struct.trace_print_flags { i32 8, ptr @.str.36 }, %struct.trace_print_flags { i32 4, ptr @.str.37 }, %struct.trace_print_flags { i32 32, ptr @.str.38 }, %struct.trace_print_flags { i32 64, ptr @.str.39 }, %struct.trace_print_flags { i32 128, ptr @.str.40 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.33 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"resume\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"freeze\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"quiesce\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"hibernate\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"thaw\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"restore\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"recover\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"%s %s, err=%d\0A\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"const char *\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"%s[%u] %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"%s state=0x%lx\0A\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"%s state=%lu cpu_id=%lu\0A\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"s32\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"CPU_DMA_LATENCY value=%d\0A\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"enum pm_qos_req_action\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"prev_value\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"curr_value\00", align 1
@.str.60 = private unnamed_addr constant [39 x i8] c"action=%s prev_value=%d curr_value=%d\0A\00", align 1
@trace_raw_output_pm_qos_update.symbols = internal constant [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.61 }, %struct.trace_print_flags { i32 1, ptr @.str.62 }, %struct.trace_print_flags { i32 2, ptr @.str.63 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.61 = private unnamed_addr constant [8 x i8] c"ADD_REQ\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"UPDATE_REQ\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"REMOVE_REQ\00", align 1
@trace_raw_output_pm_qos_update_flags.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.64 = private unnamed_addr constant [29 x i8] c"include/trace/events/power.h\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"pm_qos_update_flags\00", align 1
@.str.66 = private unnamed_addr constant [43 x i8] c"action=%s prev_value=0x%x curr_value=0x%x\0A\00", align 1
@trace_raw_output_pm_qos_update_flags.symbols = internal constant [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.61 }, %struct.trace_print_flags { i32 1, ptr @.str.62 }, %struct.trace_print_flags { i32 2, ptr @.str.63 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.67 = private unnamed_addr constant [25 x i8] c"enum dev_pm_qos_req_type\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"new_value\00", align 1
@.str.70 = private unnamed_addr constant [32 x i8] c"device=%s type=%s new_value=%d\0A\00", align 1
@trace_raw_output_dev_pm_qos_request.symbols = internal constant [3 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.71 }, %struct.trace_print_flags { i32 5, ptr @.str.72 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.71 = private unnamed_addr constant [26 x i8] c"DEV_PM_QOS_RESUME_LATENCY\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"DEV_PM_QOS_FLAGS\00", align 1
@llvm.compiler.used = appending global [113 x ptr] [ptr @__event_clock_disable, ptr @__event_clock_enable, ptr @__event_clock_set_rate, ptr @__event_cpu_frequency, ptr @__event_cpu_frequency_limits, ptr @__event_cpu_idle, ptr @__event_dev_pm_qos_add_request, ptr @__event_dev_pm_qos_remove_request, ptr @__event_dev_pm_qos_update_request, ptr @__event_device_pm_callback_end, ptr @__event_device_pm_callback_start, ptr @__event_pm_qos_add_request, ptr @__event_pm_qos_remove_request, ptr @__event_pm_qos_update_flags, ptr @__event_pm_qos_update_request, ptr @__event_pm_qos_update_target, ptr @__event_power_domain_target, ptr @__event_powernv_throttle, ptr @__event_pstate_sample, ptr @__event_suspend_resume, ptr @__event_wakeup_source_activate, ptr @__event_wakeup_source_deactivate, ptr @__ksymtab___SCK__tp_func_cpu_frequency, ptr @__ksymtab___SCK__tp_func_cpu_idle, ptr @__ksymtab___SCK__tp_func_powernv_throttle, ptr @__ksymtab___SCK__tp_func_suspend_resume, ptr @__ksymtab___traceiter_cpu_frequency, ptr @__ksymtab___traceiter_cpu_idle, ptr @__ksymtab___traceiter_powernv_throttle, ptr @__ksymtab___traceiter_suspend_resume, ptr @__ksymtab___tracepoint_cpu_frequency, ptr @__ksymtab___tracepoint_cpu_idle, ptr @__ksymtab___tracepoint_powernv_throttle, ptr @__ksymtab___tracepoint_suspend_resume, ptr @__tracepoint_clock_disable, ptr @__tracepoint_clock_enable, ptr @__tracepoint_clock_set_rate, ptr @__tracepoint_cpu_frequency, ptr @__tracepoint_cpu_frequency_limits, ptr @__tracepoint_cpu_idle, ptr @__tracepoint_dev_pm_qos_add_request, ptr @__tracepoint_dev_pm_qos_remove_request, ptr @__tracepoint_dev_pm_qos_update_request, ptr @__tracepoint_device_pm_callback_end, ptr @__tracepoint_device_pm_callback_start, ptr @__tracepoint_pm_qos_add_request, ptr @__tracepoint_pm_qos_remove_request, ptr @__tracepoint_pm_qos_update_flags, ptr @__tracepoint_pm_qos_update_request, ptr @__tracepoint_pm_qos_update_target, ptr @__tracepoint_power_domain_target, ptr @__tracepoint_powernv_throttle, ptr @__tracepoint_pstate_sample, ptr @__tracepoint_ptr_clock_disable, ptr @__tracepoint_ptr_clock_enable, ptr @__tracepoint_ptr_clock_set_rate, ptr @__tracepoint_ptr_cpu_frequency, ptr @__tracepoint_ptr_cpu_frequency_limits, ptr @__tracepoint_ptr_cpu_idle, ptr @__tracepoint_ptr_dev_pm_qos_add_request, ptr @__tracepoint_ptr_dev_pm_qos_remove_request, ptr @__tracepoint_ptr_dev_pm_qos_update_request, ptr @__tracepoint_ptr_device_pm_callback_end, ptr @__tracepoint_ptr_device_pm_callback_start, ptr @__tracepoint_ptr_pm_qos_add_request, ptr @__tracepoint_ptr_pm_qos_remove_request, ptr @__tracepoint_ptr_pm_qos_update_flags, ptr @__tracepoint_ptr_pm_qos_update_request, ptr @__tracepoint_ptr_pm_qos_update_target, ptr @__tracepoint_ptr_power_domain_target, ptr @__tracepoint_ptr_powernv_throttle, ptr @__tracepoint_ptr_pstate_sample, ptr @__tracepoint_ptr_suspend_resume, ptr @__tracepoint_ptr_wakeup_source_activate, ptr @__tracepoint_ptr_wakeup_source_deactivate, ptr @__tracepoint_suspend_resume, ptr @__tracepoint_wakeup_source_activate, ptr @__tracepoint_wakeup_source_deactivate, ptr @event_class_clock, ptr @event_class_cpu, ptr @event_class_cpu_frequency_limits, ptr @event_class_cpu_latency_qos_request, ptr @event_class_dev_pm_qos_request, ptr @event_class_device_pm_callback_end, ptr @event_class_device_pm_callback_start, ptr @event_class_pm_qos_update, ptr @event_class_power_domain, ptr @event_class_powernv_throttle, ptr @event_class_pstate_sample, ptr @event_class_suspend_resume, ptr @event_class_wakeup_source, ptr @event_clock_disable, ptr @event_clock_enable, ptr @event_clock_set_rate, ptr @event_cpu_frequency, ptr @event_cpu_frequency_limits, ptr @event_cpu_idle, ptr @event_dev_pm_qos_add_request, ptr @event_dev_pm_qos_remove_request, ptr @event_dev_pm_qos_update_request, ptr @event_device_pm_callback_end, ptr @event_device_pm_callback_start, ptr @event_pm_qos_add_request, ptr @event_pm_qos_remove_request, ptr @event_pm_qos_update_flags, ptr @event_pm_qos_update_request, ptr @event_pm_qos_update_target, ptr @event_power_domain_target, ptr @event_powernv_throttle, ptr @event_pstate_sample, ptr @event_suspend_resume, ptr @event_wakeup_source_activate, ptr @event_wakeup_source_deactivate], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cpu_idle(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpu_idle, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #9
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
define dso_local i32 @__traceiter_powernv_throttle(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_powernv_throttle, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, ptr noundef %2, i32 noundef %3) #9
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_pstate_sample(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #0 {
  %11 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pstate_sample, i32 0, i32 7), align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %13, %10
  %14 = phi ptr [ %18, %13 ], [ %11, %10 ]
  %15 = load volatile ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.tracepoint_func, ptr %14, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void %15(ptr noundef %17, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #9
  %18 = getelementptr %struct.tracepoint_func, ptr %14, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %13

21:                                               ; preds = %13, %10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cpu_frequency(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpu_frequency, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #9
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cpu_frequency_limits(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpu_frequency_limits, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #9
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_device_pm_callback_start(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_device_pm_callback_start, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #9
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_device_pm_callback_end(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_device_pm_callback_end, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #9
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_suspend_resume(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #9
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_wakeup_source_activate(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wakeup_source_activate, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #9
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_wakeup_source_deactivate(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wakeup_source_deactivate, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #9
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_clock_enable(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clock_enable, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #9
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_clock_disable(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clock_disable, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #9
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_clock_set_rate(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clock_set_rate, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #9
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_power_domain_target(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_power_domain_target, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #9
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_pm_qos_add_request(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_add_request, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #9
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_pm_qos_update_request(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_update_request, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #9
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_pm_qos_remove_request(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_remove_request, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #9
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_pm_qos_update_target(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_update_target, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, i32 noundef %2, i32 noundef %3) #9
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_pm_qos_update_flags(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_update_flags, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, i32 noundef %2, i32 noundef %3) #9
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dev_pm_qos_add_request(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dev_pm_qos_add_request, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #9
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dev_pm_qos_update_request(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dev_pm_qos_update_request, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #9
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dev_pm_qos_remove_request(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dev_pm_qos_remove_request, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #9
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cpu(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_cpu, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_cpu, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #9
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_cpu(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #9
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
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #9
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #9
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_cpu, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_cpu, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #9
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_powernv_throttle(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %14, label %30, label %15

15:                                               ; preds = %13, %10, %4
  %16 = icmp eq ptr %2, null
  %17 = select i1 %16, ptr @.str.4, ptr %2
  %18 = tail call i32 @strlen(ptr noundef %17) #9
  %19 = add i32 %18, 21
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %19) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %15
  %23 = shl i32 %18, 16
  %24 = add i32 %23, 65556
  %25 = getelementptr inbounds %struct.trace_event_raw_powernv_throttle, ptr %20, i32 0, i32 2
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_powernv_throttle, ptr %20, i32 0, i32 1
  store i32 %1, ptr %26, align 4
  %27 = getelementptr i8, ptr %20, i32 20
  %28 = call ptr @strcpy(ptr noundef %27, ptr noundef %17)
  %29 = getelementptr inbounds %struct.trace_event_raw_powernv_throttle, ptr %20, i32 0, i32 3
  store i32 %3, ptr %29, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #9
  br label %30

30:                                               ; preds = %22, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_powernv_throttle(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = icmp eq ptr %2, null
  %8 = select i1 %7, ptr @.str.4, ptr %2
  %9 = tail call i32 @strlen(ptr noundef %8) #9
  %10 = shl i32 %9, 16
  %11 = add i32 %10, 65556
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #7, !srcloc !12
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
  %30 = call ptr @perf_trace_buf_alloc(i32 noundef %29, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %5, align 4
  %34 = call ptr @llvm.returnaddress(i32 0) #9
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %33, i32 0, i32 15
  store i32 %35, ptr %36, align 4
  %37 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %33, i32 0, i32 11
  store i32 %38, ptr %39, align 4
  %40 = call i32 @llvm.read_register.i32(metadata !0) #9
  %41 = getelementptr [18 x i32], ptr %33, i32 0, i32 13
  store i32 %40, ptr %41, align 4
  %42 = getelementptr [18 x i32], ptr %33, i32 0, i32 16
  store i32 19, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_powernv_throttle, ptr %30, i32 0, i32 2
  store i32 %11, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_powernv_throttle, ptr %30, i32 0, i32 1
  store i32 %1, ptr %44, align 4
  %45 = getelementptr i8, ptr %30, i32 20
  %46 = call ptr @strcpy(ptr noundef %45, ptr noundef %8)
  %47 = getelementptr inbounds %struct.trace_event_raw_powernv_throttle, ptr %30, i32 0, i32 3
  store i32 %3, ptr %47, align 4
  %48 = load i32, ptr %6, align 4
  %49 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %30, i32 noundef %29, i32 noundef %48, ptr noundef %0, i64 noundef 1, ptr noundef %49, ptr noundef %19, ptr noundef null) #9
  br label %50

50:                                               ; preds = %32, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_pstate_sample(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #0 {
  %11 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 24, i1 false), !annotation !9
  %12 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 704
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16, !prof !10

16:                                               ; preds = %10
  %17 = and i32 %13, 256
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21, !prof !11

19:                                               ; preds = %16
  %20 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %20, label %34, label %21

21:                                               ; preds = %19, %16, %10
  %22 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %11, ptr noundef %0, i32 noundef 56) #9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %22, i32 0, i32 1
  store i32 %1, ptr %25, align 8
  %26 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %22, i32 0, i32 2
  store i32 %2, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %22, i32 0, i32 3
  store i32 %3, ptr %27, align 8
  %28 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %22, i32 0, i32 4
  store i32 %4, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %22, i32 0, i32 5
  store i64 %5, ptr %29, align 8
  %30 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %22, i32 0, i32 6
  store i64 %6, ptr %30, align 8
  %31 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %22, i32 0, i32 7
  store i64 %7, ptr %31, align 8
  %32 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %22, i32 0, i32 8
  store i32 %8, ptr %32, align 8
  %33 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %22, i32 0, i32 9
  store i32 %9, ptr %33, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %11) #9
  br label %34

34:                                               ; preds = %24, %21, %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_pstate_sample(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #0 {
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #9
  store ptr null, ptr %11, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #9
  store i32 0, ptr %12, align 4, !annotation !9
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #7, !srcloc !12
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %10
  %25 = load volatile ptr, ptr %20, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %52, label %27

27:                                               ; preds = %24, %10
  %28 = call ptr @perf_trace_buf_alloc(i32 noundef 60, ptr noundef nonnull %11, ptr noundef nonnull %12) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %52, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %11, align 4
  %32 = call ptr @llvm.returnaddress(i32 0) #9
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr [18 x i32], ptr %31, i32 0, i32 15
  store i32 %33, ptr %34, align 4
  %35 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %31, i32 0, i32 11
  store i32 %36, ptr %37, align 4
  %38 = call i32 @llvm.read_register.i32(metadata !0) #9
  %39 = getelementptr [18 x i32], ptr %31, i32 0, i32 13
  store i32 %38, ptr %39, align 4
  %40 = getelementptr [18 x i32], ptr %31, i32 0, i32 16
  store i32 19, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %28, i32 0, i32 1
  store i32 %1, ptr %41, align 8
  %42 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %28, i32 0, i32 2
  store i32 %2, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %28, i32 0, i32 3
  store i32 %3, ptr %43, align 8
  %44 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %28, i32 0, i32 4
  store i32 %4, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %28, i32 0, i32 5
  store i64 %5, ptr %45, align 8
  %46 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %28, i32 0, i32 6
  store i64 %6, ptr %46, align 8
  %47 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %28, i32 0, i32 7
  store i64 %7, ptr %47, align 8
  %48 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %28, i32 0, i32 8
  store i32 %8, ptr %48, align 8
  %49 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %28, i32 0, i32 9
  store i32 %9, ptr %49, align 4
  %50 = load i32, ptr %12, align 4
  %51 = load ptr, ptr %11, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %28, i32 noundef 60, i32 noundef %50, ptr noundef %0, i64 noundef 1, ptr noundef %51, ptr noundef %20, ptr noundef null) #9
  br label %52

52:                                               ; preds = %30, %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cpu_frequency_limits(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %12, label %26, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 20) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.cpufreq_policy, ptr %1, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_cpu_frequency_limits, ptr %14, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.cpufreq_policy, ptr %1, i32 0, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_cpu_frequency_limits, ptr %14, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.cpufreq_policy, ptr %1, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_cpu_frequency_limits, ptr %14, i32 0, i32 3
  store i32 %24, ptr %25, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #9
  br label %26

26:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_cpu_frequency_limits(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #9
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
  br i1 %18, label %44, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %44, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #9
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #9
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.cpufreq_policy, ptr %1, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_cpu_frequency_limits, ptr %20, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.cpufreq_policy, ptr %1, i32 0, i32 8
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_cpu_frequency_limits, ptr %20, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.cpufreq_policy, ptr %1, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_cpu_frequency_limits, ptr %20, i32 0, i32 3
  store i32 %40, ptr %41, align 4
  %42 = load i32, ptr %4, align 4
  %43 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 20, i32 noundef %42, ptr noundef %0, i64 noundef 1, ptr noundef %43, ptr noundef %12, ptr noundef null) #9
  br label %44

44:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_device_pm_callback_start(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_data_offsets_device_pm_callback_start, align 4
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 704
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !10

11:                                               ; preds = %4
  %12 = and i32 %8, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %11
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %15, label %80, label %16

16:                                               ; preds = %14, %11, %4
  %17 = call fastcc i32 @trace_event_get_offsets_device_pm_callback_start(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2)
  %18 = add i32 %17, 28
  %19 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %18) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %80, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %5, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_start, ptr %19, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_data_offsets_device_pm_callback_start, ptr %5, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_start, ptr %19, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_data_offsets_device_pm_callback_start, ptr %5, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_start, ptr %19, i32 0, i32 3
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.trace_event_data_offsets_device_pm_callback_start, ptr %5, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_start, ptr %19, i32 0, i32 4
  store i32 %31, ptr %32, align 4
  %33 = and i32 %22, 65535
  %34 = getelementptr i8, ptr %19, i32 %33
  %35 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %21
  %39 = load ptr, ptr %1, align 4
  %40 = icmp eq ptr %39, null
  %41 = select i1 %40, ptr @.str.4, ptr %39
  br label %42

42:                                               ; preds = %38, %21
  %43 = phi ptr [ %36, %21 ], [ %41, %38 ]
  %44 = call ptr @strcpy(ptr noundef %34, ptr noundef nonnull %43)
  %45 = load i32, ptr %26, align 4
  %46 = and i32 %45, 65535
  %47 = getelementptr i8, ptr %19, i32 %46
  %48 = call ptr @dev_driver_string(ptr noundef %1) #9
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %42
  %51 = call ptr @dev_driver_string(ptr noundef %1) #9
  br label %52

52:                                               ; preds = %50, %42
  %53 = phi ptr [ %51, %50 ], [ @.str.4, %42 ]
  %54 = call ptr @strcpy(ptr noundef %47, ptr noundef %53)
  %55 = load i32, ptr %29, align 4
  %56 = and i32 %55, 65535
  %57 = getelementptr i8, ptr %19, i32 %56
  %58 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load ptr, ptr %59, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %59, align 4
  br label %70

70:                                               ; preds = %68, %65, %61, %52
  %71 = phi ptr [ @.str.4, %65 ], [ @.str.25, %52 ], [ %69, %68 ], [ %63, %61 ]
  %72 = call ptr @strcpy(ptr noundef %57, ptr noundef %71)
  %73 = load i32, ptr %32, align 4
  %74 = and i32 %73, 65535
  %75 = getelementptr i8, ptr %19, i32 %74
  %76 = icmp eq ptr %2, null
  %77 = select i1 %76, ptr @.str.26, ptr %2
  %78 = call ptr @strcpy(ptr noundef %75, ptr noundef %77)
  %79 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_start, ptr %19, i32 0, i32 5
  store i32 %3, ptr %79, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #9
  br label %80

80:                                               ; preds = %70, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_device_pm_callback_start(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_data_offsets_device_pm_callback_start, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = call fastcc i32 @trace_event_get_offsets_device_pm_callback_start(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2)
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #7, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %100, label %23

23:                                               ; preds = %20, %4
  %24 = add i32 %8, 39
  %25 = and i32 %24, -8
  %26 = add i32 %25, -4
  %27 = call ptr @perf_trace_buf_alloc(i32 noundef %26, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  %28 = icmp eq ptr %27, null
  br i1 %28, label %100, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr %6, align 4
  %31 = call ptr @llvm.returnaddress(i32 0) #9
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %30, i32 0, i32 15
  store i32 %32, ptr %33, align 4
  %34 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %30, i32 0, i32 11
  store i32 %35, ptr %36, align 4
  %37 = call i32 @llvm.read_register.i32(metadata !0) #9
  %38 = getelementptr [18 x i32], ptr %30, i32 0, i32 13
  store i32 %37, ptr %38, align 4
  %39 = getelementptr [18 x i32], ptr %30, i32 0, i32 16
  store i32 19, ptr %39, align 4
  %40 = load i32, ptr %5, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_start, ptr %27, i32 0, i32 1
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_data_offsets_device_pm_callback_start, ptr %5, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_start, ptr %27, i32 0, i32 2
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_data_offsets_device_pm_callback_start, ptr %5, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_start, ptr %27, i32 0, i32 3
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.trace_event_data_offsets_device_pm_callback_start, ptr %5, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_start, ptr %27, i32 0, i32 4
  store i32 %49, ptr %50, align 4
  %51 = and i32 %40, 65535
  %52 = getelementptr i8, ptr %27, i32 %51
  %53 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %29
  %57 = load ptr, ptr %1, align 4
  %58 = icmp eq ptr %57, null
  %59 = select i1 %58, ptr @.str.4, ptr %57
  br label %60

60:                                               ; preds = %56, %29
  %61 = phi ptr [ %54, %29 ], [ %59, %56 ]
  %62 = call ptr @strcpy(ptr noundef %52, ptr noundef nonnull %61)
  %63 = load i32, ptr %44, align 4
  %64 = and i32 %63, 65535
  %65 = getelementptr i8, ptr %27, i32 %64
  %66 = call ptr @dev_driver_string(ptr noundef %1) #9
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %60
  %69 = call ptr @dev_driver_string(ptr noundef %1) #9
  br label %70

70:                                               ; preds = %68, %60
  %71 = phi ptr [ %69, %68 ], [ @.str.4, %60 ]
  %72 = call ptr @strcpy(ptr noundef %65, ptr noundef %71)
  %73 = load i32, ptr %47, align 4
  %74 = and i32 %73, 65535
  %75 = getelementptr i8, ptr %27, i32 %74
  %76 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %88, label %79

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.device, ptr %77, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load ptr, ptr %77, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %77, align 4
  br label %88

88:                                               ; preds = %86, %83, %79, %70
  %89 = phi ptr [ @.str.4, %83 ], [ @.str.25, %70 ], [ %87, %86 ], [ %81, %79 ]
  %90 = call ptr @strcpy(ptr noundef %75, ptr noundef %89)
  %91 = load i32, ptr %50, align 4
  %92 = and i32 %91, 65535
  %93 = getelementptr i8, ptr %27, i32 %92
  %94 = icmp eq ptr %2, null
  %95 = select i1 %94, ptr @.str.26, ptr %2
  %96 = call ptr @strcpy(ptr noundef %93, ptr noundef %95)
  %97 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_start, ptr %27, i32 0, i32 5
  store i32 %3, ptr %97, align 4
  %98 = load i32, ptr %7, align 4
  %99 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %27, i32 noundef %26, i32 noundef %98, ptr noundef %0, i64 noundef 1, ptr noundef %99, ptr noundef %16, ptr noundef null) #9
  br label %100

100:                                              ; preds = %88, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_device_pm_callback_end(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %13, label %65, label %14

14:                                               ; preds = %12, %9, %3
  %15 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load ptr, ptr %1, align 4
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr @.str.4, ptr %19
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi ptr [ %16, %14 ], [ %21, %18 ]
  %24 = tail call i32 @strlen(ptr noundef nonnull %23) #9
  %25 = shl i32 %24, 16
  %26 = add i32 %25, 65536
  %27 = or i32 %26, 20
  %28 = tail call ptr @dev_driver_string(ptr noundef %1) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = tail call ptr @dev_driver_string(ptr noundef %1) #9
  br label %32

32:                                               ; preds = %30, %22
  %33 = phi ptr [ %31, %30 ], [ @.str.4, %22 ]
  %34 = tail call i32 @strlen(ptr noundef %33) #9
  %35 = add i32 %34, 1
  %36 = add i32 %24, 21
  %37 = add i32 %36, %35
  %38 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %37) #9
  %39 = icmp eq ptr %38, null
  br i1 %39, label %65, label %40

40:                                               ; preds = %32
  %41 = shl i32 %35, 16
  %42 = or i32 %41, %36
  %43 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_end, ptr %38, i32 0, i32 1
  store i32 %27, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_end, ptr %38, i32 0, i32 2
  store i32 %42, ptr %44, align 4
  %45 = getelementptr i8, ptr %38, i32 20
  %46 = load ptr, ptr %15, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load ptr, ptr %1, align 4
  %50 = icmp eq ptr %49, null
  %51 = select i1 %50, ptr @.str.4, ptr %49
  br label %52

52:                                               ; preds = %48, %40
  %53 = phi ptr [ %46, %40 ], [ %51, %48 ]
  %54 = call ptr @strcpy(ptr noundef %45, ptr noundef nonnull %53)
  %55 = and i32 %36, 65535
  %56 = getelementptr i8, ptr %38, i32 %55
  %57 = call ptr @dev_driver_string(ptr noundef %1) #9
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %52
  %60 = call ptr @dev_driver_string(ptr noundef %1) #9
  br label %61

61:                                               ; preds = %59, %52
  %62 = phi ptr [ %60, %59 ], [ @.str.4, %52 ]
  %63 = call ptr @strcpy(ptr noundef %56, ptr noundef %62)
  %64 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_end, ptr %38, i32 0, i32 3
  store i32 %2, ptr %64, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #9
  br label %65

65:                                               ; preds = %61, %32, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_device_pm_callback_end(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 4
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr @.str.4, ptr %10
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi ptr [ %7, %3 ], [ %12, %9 ]
  %15 = tail call i32 @strlen(ptr noundef nonnull %14) #9
  %16 = shl i32 %15, 16
  %17 = add i32 %16, 65536
  %18 = or i32 %17, 20
  %19 = tail call ptr @dev_driver_string(ptr noundef %1) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %13
  %22 = tail call ptr @dev_driver_string(ptr noundef %1) #9
  br label %23

23:                                               ; preds = %21, %13
  %24 = phi ptr [ %22, %21 ], [ @.str.4, %13 ]
  %25 = tail call i32 @strlen(ptr noundef %24) #9
  %26 = add i32 %25, 1
  %27 = add i32 %15, 21
  %28 = shl i32 %26, 16
  %29 = or i32 %28, %27
  %30 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %31 = load ptr, ptr %30, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %34 = inttoptr i32 %33 to ptr
  %35 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %34) #7, !srcloc !12
  %36 = add i32 %35, %32
  %37 = inttoptr i32 %36 to ptr
  %38 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %23
  %42 = load volatile ptr, ptr %37, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %86, label %44

44:                                               ; preds = %41, %23
  %45 = add i32 %15, 32
  %46 = add i32 %45, %26
  %47 = and i32 %46, -8
  %48 = add i32 %47, -4
  %49 = call ptr @perf_trace_buf_alloc(i32 noundef %48, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %50 = icmp eq ptr %49, null
  br i1 %50, label %86, label %51

51:                                               ; preds = %44
  %52 = load ptr, ptr %4, align 4
  %53 = call ptr @llvm.returnaddress(i32 0) #9
  %54 = ptrtoint ptr %53 to i32
  %55 = getelementptr [18 x i32], ptr %52, i32 0, i32 15
  store i32 %54, ptr %55, align 4
  %56 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %57 = ptrtoint ptr %56 to i32
  %58 = getelementptr [18 x i32], ptr %52, i32 0, i32 11
  store i32 %57, ptr %58, align 4
  %59 = call i32 @llvm.read_register.i32(metadata !0) #9
  %60 = getelementptr [18 x i32], ptr %52, i32 0, i32 13
  store i32 %59, ptr %60, align 4
  %61 = getelementptr [18 x i32], ptr %52, i32 0, i32 16
  store i32 19, ptr %61, align 4
  %62 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_end, ptr %49, i32 0, i32 1
  store i32 %18, ptr %62, align 4
  %63 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_end, ptr %49, i32 0, i32 2
  store i32 %29, ptr %63, align 4
  %64 = getelementptr i8, ptr %49, i32 20
  %65 = load ptr, ptr %6, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %51
  %68 = load ptr, ptr %1, align 4
  %69 = icmp eq ptr %68, null
  %70 = select i1 %69, ptr @.str.4, ptr %68
  br label %71

71:                                               ; preds = %67, %51
  %72 = phi ptr [ %65, %51 ], [ %70, %67 ]
  %73 = call ptr @strcpy(ptr noundef %64, ptr noundef nonnull %72)
  %74 = and i32 %27, 65535
  %75 = getelementptr i8, ptr %49, i32 %74
  %76 = call ptr @dev_driver_string(ptr noundef %1) #9
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %71
  %79 = call ptr @dev_driver_string(ptr noundef %1) #9
  br label %80

80:                                               ; preds = %78, %71
  %81 = phi ptr [ %79, %78 ], [ @.str.4, %71 ]
  %82 = call ptr @strcpy(ptr noundef %75, ptr noundef %81)
  %83 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_end, ptr %49, i32 0, i32 3
  store i32 %2, ptr %83, align 4
  %84 = load i32, ptr %5, align 4
  %85 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %49, i32 noundef %48, i32 noundef %84, ptr noundef %0, i64 noundef 1, ptr noundef %85, ptr noundef %37, ptr noundef null) #9
  br label %86

86:                                               ; preds = %80, %44, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_suspend_resume(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  %6 = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 704
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !10

11:                                               ; preds = %4
  %12 = and i32 %8, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %11
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %15, label %23, label %16

16:                                               ; preds = %14, %11, %4
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.trace_event_raw_suspend_resume, ptr %17, i32 0, i32 1
  store ptr %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_suspend_resume, ptr %17, i32 0, i32 2
  store i32 %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_suspend_resume, ptr %17, i32 0, i32 3
  store i8 %6, ptr %22, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #9
  br label %23

23:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_suspend_resume(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #7, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load volatile ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %41, label %22

22:                                               ; preds = %19, %4
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %5, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #9
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #9
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_suspend_resume, ptr %23, i32 0, i32 1
  store ptr %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_suspend_resume, ptr %23, i32 0, i32 2
  store i32 %2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_suspend_resume, ptr %23, i32 0, i32 3
  store i8 %7, ptr %38, align 4
  %39 = load i32, ptr %6, align 4
  %40 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 20, i32 noundef %39, ptr noundef %0, i64 noundef 1, ptr noundef %40, ptr noundef %15, ptr noundef null) #9
  br label %41

41:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_wakeup_source(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %13, label %29, label %14

14:                                               ; preds = %12, %9, %3
  %15 = icmp eq ptr %1, null
  %16 = select i1 %15, ptr @.str.4, ptr %1
  %17 = tail call i32 @strlen(ptr noundef %16) #9
  %18 = add i32 %17, 25
  %19 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %18) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %14
  %22 = shl i32 %17, 16
  %23 = add i32 %22, 65560
  %24 = getelementptr inbounds %struct.trace_event_raw_wakeup_source, ptr %19, i32 0, i32 1
  store i32 %23, ptr %24, align 8
  %25 = getelementptr i8, ptr %19, i32 24
  %26 = call ptr @strcpy(ptr noundef %25, ptr noundef %16)
  %27 = zext i32 %2 to i64
  %28 = getelementptr inbounds %struct.trace_event_raw_wakeup_source, ptr %19, i32 0, i32 2
  store i64 %27, ptr %28, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #9
  br label %29

29:                                               ; preds = %21, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_wakeup_source(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = icmp eq ptr %1, null
  %7 = select i1 %6, ptr @.str.4, ptr %1
  %8 = tail call i32 @strlen(ptr noundef %7) #9
  %9 = shl i32 %8, 16
  %10 = add i32 %9, 65560
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #7, !srcloc !12
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load volatile ptr, ptr %18, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %49, label %25

25:                                               ; preds = %22, %3
  %26 = add i32 %8, 36
  %27 = and i32 %26, -8
  %28 = add i32 %27, -4
  %29 = call ptr @perf_trace_buf_alloc(i32 noundef %28, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %4, align 4
  %33 = call ptr @llvm.returnaddress(i32 0) #9
  %34 = ptrtoint ptr %33 to i32
  %35 = getelementptr [18 x i32], ptr %32, i32 0, i32 15
  store i32 %34, ptr %35, align 4
  %36 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %37 = ptrtoint ptr %36 to i32
  %38 = getelementptr [18 x i32], ptr %32, i32 0, i32 11
  store i32 %37, ptr %38, align 4
  %39 = call i32 @llvm.read_register.i32(metadata !0) #9
  %40 = getelementptr [18 x i32], ptr %32, i32 0, i32 13
  store i32 %39, ptr %40, align 4
  %41 = getelementptr [18 x i32], ptr %32, i32 0, i32 16
  store i32 19, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_wakeup_source, ptr %29, i32 0, i32 1
  store i32 %10, ptr %42, align 8
  %43 = getelementptr i8, ptr %29, i32 24
  %44 = call ptr @strcpy(ptr noundef %43, ptr noundef %7)
  %45 = zext i32 %2 to i64
  %46 = getelementptr inbounds %struct.trace_event_raw_wakeup_source, ptr %29, i32 0, i32 2
  store i64 %45, ptr %46, align 8
  %47 = load i32, ptr %5, align 4
  %48 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %29, i32 noundef %28, i32 noundef %47, ptr noundef %0, i64 noundef 1, ptr noundef %48, ptr noundef %18, ptr noundef null) #9
  br label %49

49:                                               ; preds = %31, %25, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_clock(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %14, label %32, label %15

15:                                               ; preds = %13, %10, %4
  %16 = icmp eq ptr %1, null
  %17 = select i1 %16, ptr @.str.4, ptr %1
  %18 = tail call i32 @strlen(ptr noundef %17) #9
  %19 = add i32 %18, 33
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %19) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %15
  %23 = shl i32 %18, 16
  %24 = add i32 %23, 65568
  %25 = getelementptr inbounds %struct.trace_event_raw_clock, ptr %20, i32 0, i32 1
  store i32 %24, ptr %25, align 8
  %26 = getelementptr i8, ptr %20, i32 32
  %27 = call ptr @strcpy(ptr noundef %26, ptr noundef %17)
  %28 = zext i32 %2 to i64
  %29 = getelementptr inbounds %struct.trace_event_raw_clock, ptr %20, i32 0, i32 2
  store i64 %28, ptr %29, align 8
  %30 = zext i32 %3 to i64
  %31 = getelementptr inbounds %struct.trace_event_raw_clock, ptr %20, i32 0, i32 3
  store i64 %30, ptr %31, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #9
  br label %32

32:                                               ; preds = %22, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_clock(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = icmp eq ptr %1, null
  %8 = select i1 %7, ptr @.str.4, ptr %1
  %9 = tail call i32 @strlen(ptr noundef %8) #9
  %10 = shl i32 %9, 16
  %11 = add i32 %10, 65568
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #7, !srcloc !12
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load volatile ptr, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %52, label %26

26:                                               ; preds = %23, %4
  %27 = add i32 %9, 44
  %28 = and i32 %27, -8
  %29 = add i32 %28, -4
  %30 = call ptr @perf_trace_buf_alloc(i32 noundef %29, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %52, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %5, align 4
  %34 = call ptr @llvm.returnaddress(i32 0) #9
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %33, i32 0, i32 15
  store i32 %35, ptr %36, align 4
  %37 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %33, i32 0, i32 11
  store i32 %38, ptr %39, align 4
  %40 = call i32 @llvm.read_register.i32(metadata !0) #9
  %41 = getelementptr [18 x i32], ptr %33, i32 0, i32 13
  store i32 %40, ptr %41, align 4
  %42 = getelementptr [18 x i32], ptr %33, i32 0, i32 16
  store i32 19, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_clock, ptr %30, i32 0, i32 1
  store i32 %11, ptr %43, align 8
  %44 = getelementptr i8, ptr %30, i32 32
  %45 = call ptr @strcpy(ptr noundef %44, ptr noundef %8)
  %46 = zext i32 %2 to i64
  %47 = getelementptr inbounds %struct.trace_event_raw_clock, ptr %30, i32 0, i32 2
  store i64 %46, ptr %47, align 8
  %48 = zext i32 %3 to i64
  %49 = getelementptr inbounds %struct.trace_event_raw_clock, ptr %30, i32 0, i32 3
  store i64 %48, ptr %49, align 8
  %50 = load i32, ptr %6, align 4
  %51 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %30, i32 noundef %29, i32 noundef %50, ptr noundef %0, i64 noundef 1, ptr noundef %51, ptr noundef %19, ptr noundef null) #9
  br label %52

52:                                               ; preds = %32, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_power_domain(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %14, label %32, label %15

15:                                               ; preds = %13, %10, %4
  %16 = icmp eq ptr %1, null
  %17 = select i1 %16, ptr @.str.4, ptr %1
  %18 = tail call i32 @strlen(ptr noundef %17) #9
  %19 = add i32 %18, 33
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %19) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %15
  %23 = shl i32 %18, 16
  %24 = add i32 %23, 65568
  %25 = getelementptr inbounds %struct.trace_event_raw_power_domain, ptr %20, i32 0, i32 1
  store i32 %24, ptr %25, align 8
  %26 = getelementptr i8, ptr %20, i32 32
  %27 = call ptr @strcpy(ptr noundef %26, ptr noundef %17)
  %28 = zext i32 %2 to i64
  %29 = getelementptr inbounds %struct.trace_event_raw_power_domain, ptr %20, i32 0, i32 2
  store i64 %28, ptr %29, align 8
  %30 = zext i32 %3 to i64
  %31 = getelementptr inbounds %struct.trace_event_raw_power_domain, ptr %20, i32 0, i32 3
  store i64 %30, ptr %31, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #9
  br label %32

32:                                               ; preds = %22, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_power_domain(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = icmp eq ptr %1, null
  %8 = select i1 %7, ptr @.str.4, ptr %1
  %9 = tail call i32 @strlen(ptr noundef %8) #9
  %10 = shl i32 %9, 16
  %11 = add i32 %10, 65568
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #7, !srcloc !12
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load volatile ptr, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %52, label %26

26:                                               ; preds = %23, %4
  %27 = add i32 %9, 44
  %28 = and i32 %27, -8
  %29 = add i32 %28, -4
  %30 = call ptr @perf_trace_buf_alloc(i32 noundef %29, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %52, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %5, align 4
  %34 = call ptr @llvm.returnaddress(i32 0) #9
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %33, i32 0, i32 15
  store i32 %35, ptr %36, align 4
  %37 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %33, i32 0, i32 11
  store i32 %38, ptr %39, align 4
  %40 = call i32 @llvm.read_register.i32(metadata !0) #9
  %41 = getelementptr [18 x i32], ptr %33, i32 0, i32 13
  store i32 %40, ptr %41, align 4
  %42 = getelementptr [18 x i32], ptr %33, i32 0, i32 16
  store i32 19, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_power_domain, ptr %30, i32 0, i32 1
  store i32 %11, ptr %43, align 8
  %44 = getelementptr i8, ptr %30, i32 32
  %45 = call ptr @strcpy(ptr noundef %44, ptr noundef %8)
  %46 = zext i32 %2 to i64
  %47 = getelementptr inbounds %struct.trace_event_raw_power_domain, ptr %30, i32 0, i32 2
  store i64 %46, ptr %47, align 8
  %48 = zext i32 %3 to i64
  %49 = getelementptr inbounds %struct.trace_event_raw_power_domain, ptr %30, i32 0, i32 3
  store i64 %48, ptr %49, align 8
  %50 = load i32, ptr %6, align 4
  %51 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %30, i32 noundef %29, i32 noundef %50, ptr noundef %0, i64 noundef 1, ptr noundef %51, ptr noundef %19, ptr noundef null) #9
  br label %52

52:                                               ; preds = %32, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cpu_latency_qos_request(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_cpu_latency_qos_request, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #9
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_cpu_latency_qos_request(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #9
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
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #9
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #9
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_cpu_latency_qos_request, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #9
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_pm_qos_update(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_pm_qos_update, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_pm_qos_update, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_pm_qos_update, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #9
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_pm_qos_update(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #9
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
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #9
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #9
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_pm_qos_update, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_pm_qos_update, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_pm_qos_update, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #9
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dev_pm_qos_request(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %14, label %30, label %15

15:                                               ; preds = %13, %10, %4
  %16 = icmp eq ptr %1, null
  %17 = select i1 %16, ptr @.str.4, ptr %1
  %18 = tail call i32 @strlen(ptr noundef %17) #9
  %19 = add i32 %18, 21
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %19) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %15
  %23 = shl i32 %18, 16
  %24 = add i32 %23, 65556
  %25 = getelementptr inbounds %struct.trace_event_raw_dev_pm_qos_request, ptr %20, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr i8, ptr %20, i32 20
  %27 = call ptr @strcpy(ptr noundef %26, ptr noundef %17)
  %28 = getelementptr inbounds %struct.trace_event_raw_dev_pm_qos_request, ptr %20, i32 0, i32 2
  store i32 %2, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_dev_pm_qos_request, ptr %20, i32 0, i32 3
  store i32 %3, ptr %29, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #9
  br label %30

30:                                               ; preds = %22, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dev_pm_qos_request(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = icmp eq ptr %1, null
  %8 = select i1 %7, ptr @.str.4, ptr %1
  %9 = tail call i32 @strlen(ptr noundef %8) #9
  %10 = shl i32 %9, 16
  %11 = add i32 %10, 65556
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #7, !srcloc !12
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
  %30 = call ptr @perf_trace_buf_alloc(i32 noundef %29, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %5, align 4
  %34 = call ptr @llvm.returnaddress(i32 0) #9
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %33, i32 0, i32 15
  store i32 %35, ptr %36, align 4
  %37 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %33, i32 0, i32 11
  store i32 %38, ptr %39, align 4
  %40 = call i32 @llvm.read_register.i32(metadata !0) #9
  %41 = getelementptr [18 x i32], ptr %33, i32 0, i32 13
  store i32 %40, ptr %41, align 4
  %42 = getelementptr [18 x i32], ptr %33, i32 0, i32 16
  store i32 19, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_dev_pm_qos_request, ptr %30, i32 0, i32 1
  store i32 %11, ptr %43, align 4
  %44 = getelementptr i8, ptr %30, i32 20
  %45 = call ptr @strcpy(ptr noundef %44, ptr noundef %8)
  %46 = getelementptr inbounds %struct.trace_event_raw_dev_pm_qos_request, ptr %30, i32 0, i32 2
  store i32 %2, ptr %46, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_dev_pm_qos_request, ptr %30, i32 0, i32 3
  store i32 %3, ptr %47, align 4
  %48 = load i32, ptr %6, align 4
  %49 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %30, i32 noundef %29, i32 noundef %48, ptr noundef %0, i64 noundef 1, ptr noundef %49, ptr noundef %19, ptr noundef null) #9
  br label %50

50:                                               ; preds = %32, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
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
define internal i32 @trace_raw_output_cpu(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_cpu, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_cpu, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %11, i32 noundef %13) #9
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #9
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

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_powernv_throttle(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_powernv_throttle, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_powernv_throttle, ptr %5, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_powernv_throttle, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 65535
  %17 = getelementptr i8, ptr %5, i32 %16
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %11, i32 noundef %13, ptr noundef %17) #9
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_pstate_sample(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %29

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %5, i32 0, i32 5
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %5, i32 0, i32 6
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %5, i32 0, i32 7
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %5, i32 0, i32 8
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.trace_event_raw_pstate_sample, ptr %5, i32 0, i32 9
  %27 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i64 noundef %19, i64 noundef %21, i64 noundef %23, i32 noundef %25, i32 noundef %27) #9
  %28 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %29

29:                                               ; preds = %8, %3
  %30 = phi i32 [ %28, %8 ], [ %6, %3 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cpu_frequency_limits(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_cpu_frequency_limits, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_cpu_frequency_limits, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_cpu_frequency_limits, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %11, i32 noundef %13, i32 noundef %15) #9
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @trace_event_get_offsets_device_pm_callback_start(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 4
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr @.str.4, ptr %8
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi ptr [ %5, %3 ], [ %10, %7 ]
  %13 = tail call i32 @strlen(ptr noundef nonnull %12)
  %14 = add i32 %13, 1
  %15 = shl i32 %14, 16
  %16 = or i32 %15, 28
  store i32 %16, ptr %0, align 4
  %17 = tail call ptr @dev_driver_string(ptr noundef %1) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %11
  %20 = tail call ptr @dev_driver_string(ptr noundef %1) #9
  br label %21

21:                                               ; preds = %19, %11
  %22 = phi ptr [ %20, %19 ], [ @.str.4, %11 ]
  %23 = tail call i32 @strlen(ptr noundef %22)
  %24 = add i32 %23, 1
  %25 = add i32 %13, 29
  %26 = getelementptr inbounds %struct.trace_event_data_offsets_device_pm_callback_start, ptr %0, i32 0, i32 1
  %27 = shl i32 %24, 16
  %28 = or i32 %27, %25
  store i32 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load ptr, ptr %30, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %30, align 4
  br label %41

41:                                               ; preds = %39, %36, %32, %21
  %42 = phi ptr [ @.str.4, %36 ], [ @.str.25, %21 ], [ %40, %39 ], [ %34, %32 ]
  %43 = add i32 %24, %14
  %44 = tail call i32 @strlen(ptr noundef %42)
  %45 = add i32 %44, 1
  %46 = add i32 %43, 28
  %47 = getelementptr inbounds %struct.trace_event_data_offsets_device_pm_callback_start, ptr %0, i32 0, i32 2
  %48 = shl i32 %45, 16
  %49 = or i32 %48, %46
  store i32 %49, ptr %47, align 4
  %50 = add i32 %45, %43
  %51 = icmp eq ptr %2, null
  %52 = select i1 %51, ptr @.str.26, ptr %2
  %53 = tail call i32 @strlen(ptr noundef %52)
  %54 = add i32 %53, 1
  %55 = add i32 %50, 28
  %56 = getelementptr inbounds %struct.trace_event_data_offsets_device_pm_callback_start, ptr %0, i32 0, i32 3
  %57 = shl i32 %54, 16
  %58 = or i32 %57, %55
  store i32 %58, ptr %56, align 4
  %59 = add i32 %54, %50
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_device_pm_callback_start(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %31

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_start, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 65535
  %14 = getelementptr i8, ptr %5, i32 %13
  %15 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_start, ptr %5, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 65535
  %18 = getelementptr i8, ptr %5, i32 %17
  %19 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_start, ptr %5, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 65535
  %22 = getelementptr i8, ptr %5, i32 %21
  %23 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_start, ptr %5, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 65535
  %26 = getelementptr i8, ptr %5, i32 %25
  %27 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_start, ptr %5, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %28, ptr noundef nonnull @trace_raw_output_device_pm_callback_start.symbols) #9
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef %14, ptr noundef %18, ptr noundef %22, ptr noundef %26, ptr noundef %29) #9
  %30 = tail call i32 @trace_handle_return(ptr noundef %10) #9
  br label %31

31:                                               ; preds = %8, %3
  %32 = phi i32 [ %30, %8 ], [ %6, %3 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_device_pm_callback_end(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_end, ptr %5, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_end, ptr %5, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 65535
  %17 = getelementptr i8, ptr %5, i32 %16
  %18 = getelementptr inbounds %struct.trace_event_raw_device_pm_callback_end, ptr %5, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef %13, ptr noundef %17, i32 noundef %19) #9
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_suspend_resume(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_suspend_resume, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_suspend_resume, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_suspend_resume, ptr %5, i32 0, i32 3
  %15 = load i8, ptr %14, align 4, !range !13
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, ptr @.str.50, ptr @.str.49
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.48, ptr noundef %11, i32 noundef %13, ptr noundef nonnull %17) #9
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_wakeup_source(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_wakeup_source, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_wakeup_source, ptr %5, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.52, ptr noundef %13, i32 noundef %16) #9
  %17 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %18

18:                                               ; preds = %8, %3
  %19 = phi i32 [ %17, %8 ], [ %6, %3 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_clock(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_clock, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_clock, ptr %5, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.trace_event_raw_clock, ptr %5, i32 0, i32 3
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.53, ptr noundef %13, i32 noundef %16, i32 noundef %19) #9
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_power_domain(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_power_domain, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_power_domain, ptr %5, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.trace_event_raw_power_domain, ptr %5, i32 0, i32 3
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.53, ptr noundef %13, i32 noundef %16, i32 noundef %19) #9
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cpu_latency_qos_request(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_cpu_latency_qos_request, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.56, i32 noundef %11) #9
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_pm_qos_update(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_pm_qos_update, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %12, ptr noundef nonnull @trace_raw_output_pm_qos_update.symbols) #9
  %14 = getelementptr inbounds %struct.trace_event_raw_pm_qos_update, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_pm_qos_update, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.60, ptr noundef %13, i32 noundef %15, i32 noundef %17) #9
  %18 = tail call i32 @trace_handle_return(ptr noundef %10) #9
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_pm_qos_update_flags(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = load i32, ptr getelementptr inbounds (%struct.trace_event_call, ptr @event_pm_qos_update_flags, i32 0, i32 3, i32 2), align 4
  %9 = icmp eq i32 %8, %7
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i1, ptr @trace_raw_output_pm_qos_update_flags.__already_done, align 1
  br i1 %11, label %28, label %12, !prof !10

12:                                               ; preds = %10
  store i1 true, ptr @trace_raw_output_pm_qos_update_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 451, i32 noundef 9, ptr noundef null) #9
  br label %28

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %15 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12, i32 1
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12, i32 1, i32 1
  store i32 4096, ptr %16, align 4
  %17 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12, i32 1, i32 2
  store i32 0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12, i32 1, i32 3
  store i64 0, ptr %18, align 8
  %19 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12, i32 2
  store i32 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_pm_qos_update, ptr %5, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = tail call ptr @trace_print_symbols_seq(ptr noundef %14, i32 noundef %21, ptr noundef nonnull @trace_raw_output_pm_qos_update_flags.symbols) #9
  %23 = getelementptr inbounds %struct.trace_event_raw_pm_qos_update, ptr %5, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_pm_qos_update, ptr %5, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 (ptr, ptr, ptr, ...) @trace_output_call(ptr noundef %0, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef %22, i32 noundef %24, i32 noundef %26) #9
  br label %28

28:                                               ; preds = %13, %12, %10
  %29 = phi i32 [ %27, %13 ], [ 2, %12 ], [ 2, %10 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_output_call(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dev_pm_qos_request(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_dev_pm_qos_request, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 65535
  %14 = getelementptr i8, ptr %5, i32 %13
  %15 = getelementptr inbounds %struct.trace_event_raw_dev_pm_qos_request, ptr %5, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %16, ptr noundef nonnull @trace_raw_output_dev_pm_qos_request.symbols) #9
  %18 = getelementptr inbounds %struct.trace_event_raw_dev_pm_qos_request, ptr %5, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.70, ptr noundef %14, ptr noundef %17, i32 noundef %19) #9
  %20 = tail call i32 @trace_handle_return(ptr noundef %10) #9
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

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }

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
!12 = !{i64 480993}
!13 = !{i8 0, i8 2}
