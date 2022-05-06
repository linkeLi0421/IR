; ModuleID = '/llk/IR/drivers/cpufreq/cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/cpufreq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_have_governor_per_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22have_governor_per_policy\22\09\09\09\09\09"
module asm "__kstrtabns_have_governor_per_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_governor_parent_kobj:\09\09\09\09\09"
module asm "\09.asciz \09\22get_governor_parent_kobj\22\09\09\09\09\09"
module asm "__kstrtabns_get_governor_parent_kobj:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_cpu_idle_time:\09\09\09\09\09"
module asm "\09.asciz \09\22get_cpu_idle_time\22\09\09\09\09\09"
module asm "__kstrtabns_get_cpu_idle_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_generic_init:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_generic_init\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_generic_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_cpu_get_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_cpu_get_raw\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_cpu_get_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_generic_get:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_generic_get\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_generic_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_cpu_get:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_cpu_get\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_cpu_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_cpu_put:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_cpu_put\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_cpu_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_freq_transition_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_freq_transition_begin\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_freq_transition_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_freq_transition_end:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_freq_transition_end\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_freq_transition_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_enable_fast_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_enable_fast_switch\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_enable_fast_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_disable_fast_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_disable_fast_switch\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_disable_fast_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_driver_resolve_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_driver_resolve_freq\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_driver_resolve_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_policy_transition_delay_us:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_policy_transition_delay_us\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_policy_transition_delay_us:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_show_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_show_cpus\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_show_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_refresh_frequency_limits:\09\09\09\09\09"
module asm "\09.asciz \09\22refresh_frequency_limits\22\09\09\09\09\09"
module asm "__kstrtabns_refresh_frequency_limits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_quick_get:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_quick_get\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_quick_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_quick_get_max:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_quick_get_max\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_quick_get_max:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_get_hw_max_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_get_hw_max_freq\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_get_hw_max_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_get:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_get\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_generic_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_generic_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_generic_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_get_current_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_get_current_driver\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_get_current_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_get_driver_data:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_get_driver_data\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_get_driver_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_driver_fast_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_driver_fast_switch\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_driver_fast_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cpufreq_driver_target:\09\09\09\09\09"
module asm "\09.asciz \09\22__cpufreq_driver_target\22\09\09\09\09\09"
module asm "__kstrtabns___cpufreq_driver_target:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_driver_target:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_driver_target\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_driver_target:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_register_governor:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_register_governor\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_register_governor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_unregister_governor:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_unregister_governor\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_unregister_governor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_get_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_get_policy\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_get_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_update_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_update_policy\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_update_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_update_limits:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_update_limits\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_update_limits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_enable_boost_support:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_enable_boost_support\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_enable_boost_support:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_boost_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_boost_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_boost_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.srcu_notifier_head = type { %struct.mutex, %struct.srcu_struct, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type {}
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.subsys_interface = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_cpustat = type { [10 x i64] }
%struct.srcu_data = type { [2 x i32], [2 x i32], [48 x i8], %struct.spinlock, %struct.rcu_segcblist, i32, i32, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, ptr, i32, i32, ptr, [56 x i8] }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i32], i32, [4 x i32], i8 }
%struct.callback_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.freq_attr = type { %struct.attribute, ptr, ptr }
%struct.cpufreq_driver = type { [16 x i8], i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.cpufreq_freqs = type { ptr, i32, i32, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }
%struct.cpufreq_policy_data = type { %struct.cpufreq_cpuinfo, ptr, i32, i32, i32 }
%struct.cpufreq_governor = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }

@cpufreq_freq_invariance = internal global %struct.static_key_false zeroinitializer, align 4
@off = internal global i32 0, section ".data..read_mostly", align 4
@cpufreq_driver = internal unnamed_addr global ptr null, align 4
@__kstrtab_have_governor_per_policy = external dso_local constant [0 x i8], align 1
@__kstrtabns_have_governor_per_policy = external dso_local constant [0 x i8], align 1
@__ksymtab_have_governor_per_policy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @have_governor_per_policy to i32), ptr @__kstrtab_have_governor_per_policy, ptr @__kstrtabns_have_governor_per_policy }, section "___ksymtab_gpl+have_governor_per_policy", align 4
@cpufreq_global_kobject = internal unnamed_addr global ptr null, align 4
@__kstrtab_get_governor_parent_kobj = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_governor_parent_kobj = external dso_local constant [0 x i8], align 1
@__ksymtab_get_governor_parent_kobj = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_governor_parent_kobj to i32), ptr @__kstrtab_get_governor_parent_kobj, ptr @__kstrtabns_get_governor_parent_kobj }, section "___ksymtab_gpl+get_governor_parent_kobj", align 4
@__kstrtab_get_cpu_idle_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_cpu_idle_time = external dso_local constant [0 x i8], align 1
@__ksymtab_get_cpu_idle_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_cpu_idle_time to i32), ptr @__kstrtab_get_cpu_idle_time, ptr @__kstrtabns_get_cpu_idle_time }, section "___ksymtab_gpl+get_cpu_idle_time", align 4
@__kstrtab_cpufreq_generic_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_generic_init = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_generic_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_generic_init to i32), ptr @__kstrtab_cpufreq_generic_init, ptr @__kstrtabns_cpufreq_generic_init }, section "___ksymtab_gpl+cpufreq_generic_init", align 4
@cpufreq_cpu_data = internal global ptr null, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__kstrtab_cpufreq_cpu_get_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_cpu_get_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_cpu_get_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_cpu_get_raw to i32), ptr @__kstrtab_cpufreq_cpu_get_raw, ptr @__kstrtabns_cpufreq_cpu_get_raw }, section "___ksymtab_gpl+cpufreq_cpu_get_raw", align 4
@.str = private unnamed_addr constant [44 x i8] c"\013cpufreq: %s: No %s associated to cpu: %d\0A\00", align 1
@__func__.cpufreq_generic_get = private unnamed_addr constant [20 x i8] c"cpufreq_generic_get\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"clk\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@__kstrtab_cpufreq_generic_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_generic_get = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_generic_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_generic_get to i32), ptr @__kstrtab_cpufreq_generic_get, ptr @__kstrtabns_cpufreq_generic_get }, section "___ksymtab_gpl+cpufreq_generic_get", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"drivers/cpufreq/cpufreq.c\00", align 1
@cpufreq_driver_lock = internal global %struct.rwlock_t zeroinitializer, align 4
@__kstrtab_cpufreq_cpu_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_cpu_get = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_cpu_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_cpu_get to i32), ptr @__kstrtab_cpufreq_cpu_get, ptr @__kstrtabns_cpufreq_cpu_get }, section "___ksymtab_gpl+cpufreq_cpu_get", align 4
@__kstrtab_cpufreq_cpu_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_cpu_put = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_cpu_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_cpu_put to i32), ptr @__kstrtab_cpufreq_cpu_put, ptr @__kstrtabns_cpufreq_cpu_put }, section "___ksymtab_gpl+cpufreq_cpu_put", align 4
@__kstrtab_cpufreq_freq_transition_begin = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_freq_transition_begin = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_freq_transition_begin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_freq_transition_begin to i32), ptr @__kstrtab_cpufreq_freq_transition_begin, ptr @__kstrtabns_cpufreq_freq_transition_begin }, section "___ksymtab_gpl+cpufreq_freq_transition_begin", align 4
@__kstrtab_cpufreq_freq_transition_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_freq_transition_end = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_freq_transition_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_freq_transition_end to i32), ptr @__kstrtab_cpufreq_freq_transition_end, ptr @__kstrtabns_cpufreq_freq_transition_end }, section "___ksymtab_gpl+cpufreq_freq_transition_end", align 4
@cpufreq_fast_switch_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cpufreq_fast_switch_lock, i64 12), ptr getelementptr (i8, ptr @cpufreq_fast_switch_lock, i64 12) } }, align 4
@cpufreq_fast_switch_count = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"\014cpufreq: CPU%u: Fast frequency switching not enabled\0A\00", align 1
@__kstrtab_cpufreq_enable_fast_switch = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_enable_fast_switch = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_enable_fast_switch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_enable_fast_switch to i32), ptr @__kstrtab_cpufreq_enable_fast_switch, ptr @__kstrtabns_cpufreq_enable_fast_switch }, section "___ksymtab_gpl+cpufreq_enable_fast_switch", align 4
@__kstrtab_cpufreq_disable_fast_switch = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_disable_fast_switch = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_disable_fast_switch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_disable_fast_switch to i32), ptr @__kstrtab_cpufreq_disable_fast_switch, ptr @__kstrtabns_cpufreq_disable_fast_switch }, section "___ksymtab_gpl+cpufreq_disable_fast_switch", align 4
@__kstrtab_cpufreq_driver_resolve_freq = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_driver_resolve_freq = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_driver_resolve_freq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_driver_resolve_freq to i32), ptr @__kstrtab_cpufreq_driver_resolve_freq, ptr @__kstrtabns_cpufreq_driver_resolve_freq }, section "___ksymtab_gpl+cpufreq_driver_resolve_freq", align 4
@__kstrtab_cpufreq_policy_transition_delay_us = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_policy_transition_delay_us = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_policy_transition_delay_us = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_policy_transition_delay_us to i32), ptr @__kstrtab_cpufreq_policy_transition_delay_us, ptr @__kstrtabns_cpufreq_policy_transition_delay_us }, section "___ksymtab_gpl+cpufreq_policy_transition_delay_us", align 4
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@__kstrtab_cpufreq_show_cpus = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_show_cpus = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_show_cpus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_show_cpus to i32), ptr @__kstrtab_cpufreq_show_cpus, ptr @__kstrtabns_cpufreq_show_cpus }, section "___ksymtab_gpl+cpufreq_show_cpus", align 4
@__kstrtab_refresh_frequency_limits = external dso_local constant [0 x i8], align 1
@__kstrtabns_refresh_frequency_limits = external dso_local constant [0 x i8], align 1
@__ksymtab_refresh_frequency_limits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @refresh_frequency_limits to i32), ptr @__kstrtab_refresh_frequency_limits, ptr @__kstrtabns_refresh_frequency_limits }, section "___ksymtab+refresh_frequency_limits", align 4
@__kstrtab_cpufreq_quick_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_quick_get = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_quick_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_quick_get to i32), ptr @__kstrtab_cpufreq_quick_get, ptr @__kstrtabns_cpufreq_quick_get }, section "___ksymtab+cpufreq_quick_get", align 4
@__kstrtab_cpufreq_quick_get_max = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_quick_get_max = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_quick_get_max = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_quick_get_max to i32), ptr @__kstrtab_cpufreq_quick_get_max, ptr @__kstrtabns_cpufreq_quick_get_max }, section "___ksymtab+cpufreq_quick_get_max", align 4
@__kstrtab_cpufreq_get_hw_max_freq = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_get_hw_max_freq = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_get_hw_max_freq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_get_hw_max_freq to i32), ptr @__kstrtab_cpufreq_get_hw_max_freq, ptr @__kstrtabns_cpufreq_get_hw_max_freq }, section "___ksymtab+cpufreq_get_hw_max_freq", align 4
@__kstrtab_cpufreq_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_get = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_get to i32), ptr @__kstrtab_cpufreq_get, ptr @__kstrtabns_cpufreq_get }, section "___ksymtab+cpufreq_get", align 4
@.str.8 = private unnamed_addr constant [56 x i8] c"\013cpufreq: %s: unable to set suspend-freq: %u. err: %d\0A\00", align 1
@__func__.cpufreq_generic_suspend = private unnamed_addr constant [24 x i8] c"cpufreq_generic_suspend\00", align 1
@__kstrtab_cpufreq_generic_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_generic_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_generic_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_generic_suspend to i32), ptr @__kstrtab_cpufreq_generic_suspend, ptr @__kstrtabns_cpufreq_generic_suspend }, section "___ksymtab+cpufreq_generic_suspend", align 4
@cpufreq_policy_list = internal global %struct.list_head { ptr @cpufreq_policy_list, ptr @cpufreq_policy_list }, align 4
@.str.9 = private unnamed_addr constant [45 x i8] c"\013cpufreq: %s: Failed to suspend driver: %s\0A\00", align 1
@__func__.cpufreq_suspend = private unnamed_addr constant [16 x i8] c"cpufreq_suspend\00", align 1
@cpufreq_suspended = internal unnamed_addr global i1 false, align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"\013cpufreq: %s: Failed to resume driver: %p\0A\00", align 1
@__func__.cpufreq_resume = private unnamed_addr constant [15 x i8] c"cpufreq_resume\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"\013cpufreq: %s: Failed to start governor for policy: %p\0A\00", align 1
@__kstrtab_cpufreq_get_current_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_get_current_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_get_current_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_get_current_driver to i32), ptr @__kstrtab_cpufreq_get_current_driver, ptr @__kstrtabns_cpufreq_get_current_driver }, section "___ksymtab_gpl+cpufreq_get_current_driver", align 4
@__kstrtab_cpufreq_get_driver_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_get_driver_data = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_get_driver_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_get_driver_data to i32), ptr @__kstrtab_cpufreq_get_driver_data, ptr @__kstrtabns_cpufreq_get_driver_data }, section "___ksymtab_gpl+cpufreq_get_driver_data", align 4
@cpufreq_transition_notifier_list = internal global %struct.srcu_notifier_head { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cpufreq_transition_notifier_list, i64 12), ptr getelementptr (i8, ptr @cpufreq_transition_notifier_list, i64 12) } }, %struct.srcu_struct { [1 x %struct.srcu_node] zeroinitializer, [2 x ptr] zeroinitializer, %struct.mutex zeroinitializer, %struct.spinlock zeroinitializer, %struct.mutex zeroinitializer, i32 0, i32 0, i32 -1, i32 0, i32 0, ptr @cpufreq_transition_notifier_list_head_srcu_data, i32 0, %struct.mutex zeroinitializer, %struct.completion zeroinitializer, %struct.atomic_t zeroinitializer, %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @cpufreq_transition_notifier_list, i64 196), ptr getelementptr (i8, ptr @cpufreq_transition_notifier_list, i64 196) }, ptr null }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, %struct.lockdep_map zeroinitializer }, ptr null }, align 4
@cpufreq_policy_notifier_list = internal global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cpufreq_policy_notifier_list, i64 16), ptr getelementptr (i8, ptr @cpufreq_policy_notifier_list, i64 16) } }, ptr null }, align 4
@__kstrtab_cpufreq_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_register_notifier to i32), ptr @__kstrtab_cpufreq_register_notifier, ptr @__kstrtabns_cpufreq_register_notifier }, section "___ksymtab+cpufreq_register_notifier", align 4
@__kstrtab_cpufreq_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_unregister_notifier to i32), ptr @__kstrtab_cpufreq_unregister_notifier, ptr @__kstrtabns_cpufreq_unregister_notifier }, section "___ksymtab+cpufreq_unregister_notifier", align 4
@__kstrtab_cpufreq_driver_fast_switch = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_driver_fast_switch = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_driver_fast_switch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_driver_fast_switch to i32), ptr @__kstrtab_cpufreq_driver_fast_switch, ptr @__kstrtabns_cpufreq_driver_fast_switch }, section "___ksymtab_gpl+cpufreq_driver_fast_switch", align 4
@__kstrtab___cpufreq_driver_target = external dso_local constant [0 x i8], align 1
@__kstrtabns___cpufreq_driver_target = external dso_local constant [0 x i8], align 1
@__ksymtab___cpufreq_driver_target = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cpufreq_driver_target to i32), ptr @__kstrtab___cpufreq_driver_target, ptr @__kstrtabns___cpufreq_driver_target }, section "___ksymtab_gpl+__cpufreq_driver_target", align 4
@__kstrtab_cpufreq_driver_target = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_driver_target = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_driver_target = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_driver_target to i32), ptr @__kstrtab_cpufreq_driver_target, ptr @__kstrtabns_cpufreq_driver_target }, section "___ksymtab_gpl+cpufreq_driver_target", align 4
@cpufreq_governor_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cpufreq_governor_mutex, i64 12), ptr getelementptr (i8, ptr @cpufreq_governor_mutex, i64 12) } }, align 4
@cpufreq_governor_list = internal global %struct.list_head { ptr @cpufreq_governor_list, ptr @cpufreq_governor_list }, align 4
@__kstrtab_cpufreq_register_governor = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_register_governor = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_register_governor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_register_governor to i32), ptr @__kstrtab_cpufreq_register_governor, ptr @__kstrtabns_cpufreq_register_governor }, section "___ksymtab_gpl+cpufreq_register_governor", align 4
@__kstrtab_cpufreq_unregister_governor = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_unregister_governor = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_unregister_governor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_unregister_governor to i32), ptr @__kstrtab_cpufreq_unregister_governor, ptr @__kstrtabns_cpufreq_unregister_governor }, section "___ksymtab_gpl+cpufreq_unregister_governor", align 4
@__kstrtab_cpufreq_get_policy = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_get_policy = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_get_policy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_get_policy to i32), ptr @__kstrtab_cpufreq_get_policy, ptr @__kstrtabns_cpufreq_get_policy }, section "___ksymtab+cpufreq_get_policy", align 4
@__kstrtab_cpufreq_update_policy = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_update_policy = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_update_policy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_update_policy to i32), ptr @__kstrtab_cpufreq_update_policy, ptr @__kstrtabns_cpufreq_update_policy }, section "___ksymtab+cpufreq_update_policy", align 4
@__kstrtab_cpufreq_update_limits = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_update_limits = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_update_limits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_update_limits to i32), ptr @__kstrtab_cpufreq_update_limits, ptr @__kstrtabns_cpufreq_update_limits }, section "___ksymtab_gpl+cpufreq_update_limits", align 4
@.str.13 = private unnamed_addr constant [32 x i8] c"\013cpufreq: %s: Cannot %s BOOST\0A\00", align 1
@__func__.cpufreq_boost_trigger_state = private unnamed_addr constant [28 x i8] c"cpufreq_boost_trigger_state\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@__kstrtab_cpufreq_enable_boost_support = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_enable_boost_support = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_enable_boost_support = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_enable_boost_support to i32), ptr @__kstrtab_cpufreq_enable_boost_support, ptr @__kstrtabns_cpufreq_enable_boost_support }, section "___ksymtab_gpl+cpufreq_enable_boost_support", align 4
@__kstrtab_cpufreq_boost_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_boost_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_boost_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_boost_enabled to i32), ptr @__kstrtab_cpufreq_boost_enabled, ptr @__kstrtabns_cpufreq_boost_enabled }, section "___ksymtab_gpl+cpufreq_boost_enabled", align 4
@cpufreq_interface = internal global %struct.subsys_interface { ptr @.str.32, ptr @cpu_subsys, %struct.list_head zeroinitializer, ptr @cpufreq_add_dev, ptr @cpufreq_remove_dev }, align 4
@.str.16 = private unnamed_addr constant [15 x i8] c"cpufreq:online\00", align 1
@hp_online = internal unnamed_addr global i32 0, align 4
@__kstrtab_cpufreq_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_register_driver to i32), ptr @__kstrtab_cpufreq_register_driver, ptr @__kstrtabns_cpufreq_register_driver }, section "___ksymtab_gpl+cpufreq_register_driver", align 4
@__kstrtab_cpufreq_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_unregister_driver to i32), ptr @__kstrtab_cpufreq_unregister_driver, ptr @__kstrtabns_cpufreq_unregister_driver }, section "___ksymtab_gpl+cpufreq_unregister_driver", align 4
@__param_str_off = internal constant [12 x i8] c"cpufreq.off\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_off = internal constant %struct.kernel_param { ptr @__param_str_off, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @off } }, section "__param", align 4
@__UNIQUE_ID_offtype322 = internal constant [25 x i8] c"cpufreq.parmtype=off:int\00", section ".modinfo", align 1
@__param_str_default_governor = internal constant [25 x i8] c"cpufreq.default_governor\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_default_governor = internal constant %struct.kparam_string { i32 16, ptr @default_governor }, align 4
@__param_default_governor = internal constant %struct.kernel_param { ptr @__param_str_default_governor, ptr null, ptr @param_ops_string, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_string_default_governor } }, section "__param", align 4
@__UNIQUE_ID_default_governortype323 = internal constant [41 x i8] c"cpufreq.parmtype=default_governor:string\00", section ".modinfo", align 1
@__initcall__kmod_cpufreq__324_2928_cpufreq_core_init1 = internal global ptr @cpufreq_core_init, section ".initcall1.init", align 4
@kernel_cpustat = external dso_local global %struct.kernel_cpustat, section ".data..percpu", align 8
@.str.17 = private unnamed_addr constant [45 x i8] c"\016cpufreq: Registered transition notifiers:\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"\016cpufreq: %pS\0A\00", align 1
@cpufreq_frequency_table_target.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"include/linux/cpufreq.h\00", align 1
@cpufreq_transition_notifier_list_head_srcu_data = internal global %struct.srcu_data zeroinitializer, section ".data..percpu", align 64
@__tracepoint_cpu_frequency = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.21 = private unnamed_addr constant [51 x i8] c"\013cpufreq: %s: Failed to change cpu frequency: %d\0A\00", align 1
@__func__.__target_index = private unnamed_addr constant [15 x i8] c"__target_index\00", align 1
@.str.22 = private unnamed_addr constant [63 x i8] c"\013cpufreq: %s: Failed to change to intermediate frequency: %d\0A\00", align 1
@__func__.__target_intermediate = private unnamed_addr constant [22 x i8] c"__target_intermediate\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_cpu_frequency_limits = external dso_local global %struct.tracepoint, align 4
@.str.23 = private unnamed_addr constant [94 x i8] c"\014cpufreq: Can't use %s governor as dynamic switching is disallowed. Fallback to %s governor\0A\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"\013cpufreq: %s: Policy frequency update failed\0A\00", align 1
@__func__.cpufreq_boost_set_sw = private unnamed_addr constant [21 x i8] c"cpufreq_boost_set_sw\00", align 1
@boost = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.26, i16 420 }, ptr @show_boost, ptr @store_boost }, align 4
@.str.25 = private unnamed_addr constant [56 x i8] c"\013cpufreq: %s: cannot register global BOOST sysfs file\0A\00", align 1
@__func__.create_boost_sysfs_file = private unnamed_addr constant [24 x i8] c"create_boost_sysfs_file\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"boost\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"\013cpufreq: %s: Cannot %s BOOST!\0A\00", align 1
@__func__.store_boost = private unnamed_addr constant [12 x i8] c"store_boost\00", align 1
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.31 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@static_key_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"cpufreq\00", align 1
@cpu_subsys = external dso_local global %struct.bus_type, align 4
@.str.33 = private unnamed_addr constant [31 x i8] c"\013cpufreq: %s: ->get() failed\0A\00", align 1
@__func__.cpufreq_online = private unnamed_addr constant [15 x i8] c"cpufreq_online\00", align 1
@.str.34 = private unnamed_addr constant [90 x i8] c"\016cpufreq: %s: CPU%d: Running at unlisted initial frequency: %u KHz, changing to: %u KHz\0A\00", align 1
@.str.35 = private unnamed_addr constant [61 x i8] c"\013cpufreq: %s: Failed to initialize policy for cpu: %d (%d)\0A\00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c"\013cpufreq: %s: Failed to start governor\0A\00", align 1
@__func__.cpufreq_add_policy_cpu = private unnamed_addr constant [23 x i8] c"cpufreq_add_policy_cpu\00", align 1
@ktype_cpufreq = internal global %struct.kobj_type { ptr @cpufreq_sysfs_release, ptr @sysfs_ops, ptr null, ptr @cpufreq_groups, ptr null, ptr null, ptr null }, align 4
@.str.37 = private unnamed_addr constant [9 x i8] c"policy%u\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"%s: failed to init policy->kobj: %d\0A\00", align 1
@__func__.cpufreq_policy_alloc = private unnamed_addr constant [21 x i8] c"cpufreq_policy_alloc\00", align 1
@.str.39 = private unnamed_addr constant [49 x i8] c"Failed to register MIN QoS notifier: %d (%*pbl)\0A\00", align 1
@.str.40 = private unnamed_addr constant [49 x i8] c"Failed to register MAX QoS notifier: %d (%*pbl)\0A\00", align 1
@cpufreq_policy_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"&policy->rwsem\00", align 1
@cpufreq_policy_alloc.__key.42 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"&policy->transition_wait\00", align 1
@sysfs_ops = internal constant %struct.sysfs_ops { ptr @show, ptr @store }, align 4
@cpufreq_groups = internal global [2 x ptr] [ptr @cpufreq_group, ptr null], align 4
@cpufreq_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cpufreq_attrs, ptr null }, align 4
@cpufreq_attrs = internal global [12 x ptr] [ptr @cpuinfo_min_freq, ptr @cpuinfo_max_freq, ptr @cpuinfo_transition_latency, ptr @scaling_min_freq, ptr @scaling_max_freq, ptr @affected_cpus, ptr @related_cpus, ptr @scaling_governor, ptr @scaling_driver, ptr @scaling_available_governors, ptr @scaling_setspeed, ptr null], align 4
@cpuinfo_min_freq = internal global %struct.freq_attr { %struct.attribute { ptr @.str.44, i16 292 }, ptr @show_cpuinfo_min_freq, ptr null }, align 4
@cpuinfo_max_freq = internal global %struct.freq_attr { %struct.attribute { ptr @.str.46, i16 292 }, ptr @show_cpuinfo_max_freq, ptr null }, align 4
@cpuinfo_transition_latency = internal global %struct.freq_attr { %struct.attribute { ptr @.str.47, i16 292 }, ptr @show_cpuinfo_transition_latency, ptr null }, align 4
@scaling_min_freq = internal global %struct.freq_attr { %struct.attribute { ptr @.str.48, i16 420 }, ptr @show_scaling_min_freq, ptr @store_scaling_min_freq }, align 4
@scaling_max_freq = internal global %struct.freq_attr { %struct.attribute { ptr @.str.50, i16 420 }, ptr @show_scaling_max_freq, ptr @store_scaling_max_freq }, align 4
@affected_cpus = internal global %struct.freq_attr { %struct.attribute { ptr @.str.51, i16 292 }, ptr @show_affected_cpus, ptr null }, align 4
@related_cpus = internal global %struct.freq_attr { %struct.attribute { ptr @.str.52, i16 292 }, ptr @show_related_cpus, ptr null }, align 4
@scaling_governor = internal global %struct.freq_attr { %struct.attribute { ptr @.str.53, i16 420 }, ptr @show_scaling_governor, ptr @store_scaling_governor }, align 4
@scaling_driver = internal global %struct.freq_attr { %struct.attribute { ptr @.str.61, i16 292 }, ptr @show_scaling_driver, ptr null }, align 4
@scaling_available_governors = internal global %struct.freq_attr { %struct.attribute { ptr @.str.62, i16 292 }, ptr @show_scaling_available_governors, ptr null }, align 4
@scaling_setspeed = internal global %struct.freq_attr { %struct.attribute { ptr @.str.65, i16 420 }, ptr @show_scaling_setspeed, ptr @store_scaling_setspeed }, align 4
@.str.44 = private unnamed_addr constant [17 x i8] c"cpuinfo_min_freq\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"cpuinfo_max_freq\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"cpuinfo_transition_latency\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"scaling_min_freq\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"scaling_max_freq\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"affected_cpus\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"related_cpus\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"scaling_governor\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"powersave\0A\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"performance\0A\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"%15s\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"performance\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"powersave\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"cpufreq_%s\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"scaling_driver\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"scaling_available_governors\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"performance powersave\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"scaling_setspeed\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"<unsupported>\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@cpu_bit_bitmap = external dso_local local_unnamed_addr constant [33 x [1 x i32]], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@cpuinfo_cur_freq = internal global %struct.freq_attr { %struct.attribute { ptr @.str.68, i16 256 }, ptr @show_cpuinfo_cur_freq, ptr null }, align 4
@scaling_cur_freq = internal global %struct.freq_attr { %struct.attribute { ptr @.str.70, i16 292 }, ptr @show_scaling_cur_freq, ptr null }, align 4
@bios_limit = internal global %struct.freq_attr { %struct.attribute { ptr @.str.71, i16 292 }, ptr @show_bios_limit, ptr null }, align 4
@.str.68 = private unnamed_addr constant [17 x i8] c"cpuinfo_cur_freq\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"<unknown>\0A\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"scaling_cur_freq\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"bios_limit\00", align 1
@default_governor = internal global [16 x i8] zeroinitializer, align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"cpufreq symlink creation failed\0A\00", align 1
@__func__.cpufreq_offline = private unnamed_addr constant [16 x i8] c"cpufreq_offline\00", align 1
@__func__.static_key_disable = private unnamed_addr constant [19 x i8] c"static_key_disable\00", align 1
@static_key_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_default_governortype323, ptr @__UNIQUE_ID_offtype322, ptr @__initcall__kmod_cpufreq__324_2928_cpufreq_core_init1, ptr @__ksymtab___cpufreq_driver_target, ptr @__ksymtab_cpufreq_boost_enabled, ptr @__ksymtab_cpufreq_cpu_get, ptr @__ksymtab_cpufreq_cpu_get_raw, ptr @__ksymtab_cpufreq_cpu_put, ptr @__ksymtab_cpufreq_disable_fast_switch, ptr @__ksymtab_cpufreq_driver_fast_switch, ptr @__ksymtab_cpufreq_driver_resolve_freq, ptr @__ksymtab_cpufreq_driver_target, ptr @__ksymtab_cpufreq_enable_boost_support, ptr @__ksymtab_cpufreq_enable_fast_switch, ptr @__ksymtab_cpufreq_freq_transition_begin, ptr @__ksymtab_cpufreq_freq_transition_end, ptr @__ksymtab_cpufreq_generic_get, ptr @__ksymtab_cpufreq_generic_init, ptr @__ksymtab_cpufreq_generic_suspend, ptr @__ksymtab_cpufreq_get, ptr @__ksymtab_cpufreq_get_current_driver, ptr @__ksymtab_cpufreq_get_driver_data, ptr @__ksymtab_cpufreq_get_hw_max_freq, ptr @__ksymtab_cpufreq_get_policy, ptr @__ksymtab_cpufreq_policy_transition_delay_us, ptr @__ksymtab_cpufreq_quick_get, ptr @__ksymtab_cpufreq_quick_get_max, ptr @__ksymtab_cpufreq_register_driver, ptr @__ksymtab_cpufreq_register_governor, ptr @__ksymtab_cpufreq_register_notifier, ptr @__ksymtab_cpufreq_show_cpus, ptr @__ksymtab_cpufreq_unregister_driver, ptr @__ksymtab_cpufreq_unregister_governor, ptr @__ksymtab_cpufreq_unregister_notifier, ptr @__ksymtab_cpufreq_update_limits, ptr @__ksymtab_cpufreq_update_policy, ptr @__ksymtab_get_cpu_idle_time, ptr @__ksymtab_get_governor_parent_kobj, ptr @__ksymtab_have_governor_per_policy, ptr @__ksymtab_refresh_frequency_limits, ptr @__param_default_governor, ptr @__param_off], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cpufreq_supports_freq_invariance() local_unnamed_addr #0 {
  %1 = load volatile i32, ptr @cpufreq_freq_invariance, align 4
  %2 = icmp sgt i32 %1, 0
  ret i1 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @disable_cpufreq() local_unnamed_addr #1 {
  store i32 1, ptr @off, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @have_governor_per_policy() #2 {
  %1 = load ptr, ptr @cpufreq_driver, align 4
  %2 = getelementptr inbounds %struct.cpufreq_driver, ptr %1, i32 0, i32 1
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 8
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @get_governor_parent_kobj(ptr noundef readnone %0) #2 {
  %2 = load ptr, ptr @cpufreq_driver, align 4
  %3 = getelementptr inbounds %struct.cpufreq_driver, ptr %2, i32 0, i32 1
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, 8
  %6 = icmp eq i16 %5, 0
  %7 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 23
  %8 = load ptr, ptr @cpufreq_global_kobject, align 4
  %9 = select i1 %6, ptr %8, ptr %7
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @get_cpu_idle_time(i32 noundef %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, ptr null, ptr %1
  %6 = tail call i64 @get_cpu_idle_time_us(i32 noundef %0, ptr noundef %5) #21
  %7 = icmp eq i64 %6, -1
  br i1 %7, label %8, label %47

8:                                                ; preds = %3
  %9 = tail call i64 @get_jiffies_64() #21
  %10 = tail call i64 @jiffies64_to_nsecs(i64 noundef %9) #21
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, ptrtoint (ptr @kernel_cpustat to i32)
  %14 = inttoptr i32 %13 to ptr
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds i8, ptr %14, i32 8
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds i8, ptr %14, i32 16
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds i8, ptr %14, i32 24
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds i8, ptr %14, i32 32
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds i8, ptr %14, i32 56
  %25 = load i64, ptr %24, align 8
  %26 = icmp eq ptr %1, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %8
  %28 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %10, i32 0) #22, !srcloc !8
  %29 = extractvalue { i64, i32 } %28, 0
  %30 = extractvalue { i64, i32 } %28, 1
  %31 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %10, i64 %29, i32 %30) #22, !srcloc !9
  %32 = extractvalue { i64, i32 } %31, 0
  %33 = lshr i64 %32, 9
  store i64 %33, ptr %1, align 8
  br label %34

34:                                               ; preds = %27, %8
  %35 = add i64 %15, %17
  %36 = add i64 %35, %19
  %37 = add i64 %36, %21
  %38 = add i64 %37, %23
  %39 = add i64 %38, %25
  %40 = sub i64 %10, %39
  %41 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %40, i32 0) #22, !srcloc !8
  %42 = extractvalue { i64, i32 } %41, 0
  %43 = extractvalue { i64, i32 } %41, 1
  %44 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %40, i64 %42, i32 %43) #22, !srcloc !9
  %45 = extractvalue { i64, i32 } %44, 0
  %46 = lshr i64 %45, 9
  br label %51

47:                                               ; preds = %3
  br i1 %4, label %48, label %51

48:                                               ; preds = %47
  %49 = tail call i64 @get_cpu_iowait_time_us(i32 noundef %0, ptr noundef %1) #21
  %50 = add i64 %49, %6
  br label %51

51:                                               ; preds = %48, %47, %34
  %52 = phi i64 [ %46, %34 ], [ %6, %47 ], [ %50, %48 ]
  ret i64 %52
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_cpu_idle_time_us(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_cpu_iowait_time_us(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @cpufreq_generic_init(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  store ptr %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 6, i32 2
  store i32 %2, ptr %5, align 4
  store i32 -1, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @cpufreq_cpu_get_raw(i32 noundef %0) #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @cpufreq_cpu_data to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = lshr i32 %0, 5
  %10 = getelementptr i32, ptr %6, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %0, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, ptr null, ptr %6
  br label %17

17:                                               ; preds = %8, %1
  %18 = phi ptr [ null, %1 ], [ %16, %8 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_generic_get(i32 noundef %0) #3 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @cpufreq_cpu_data to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = lshr i32 %0, 5
  %10 = getelementptr i32, ptr %6, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %0, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.cpufreq_policy, ptr %6, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %8, %1
  %21 = phi ptr [ @.str.1, %16 ], [ @.str.2, %1 ], [ @.str.2, %8 ]
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cpufreq_generic_get, ptr noundef nonnull %21, i32 noundef %0) #23
  br label %26

23:                                               ; preds = %16
  %24 = tail call i32 @clk_get_rate(ptr noundef %18) #21
  %25 = udiv i32 %24, 1000
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ 0, %20 ], [ %25, %23 ]
  ret i32 %27
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cpufreq_cpu_get(i32 noundef %0) #3 {
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ugt i32 %2, %0
  br i1 %3, label %5, label %4, !prof !10

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 220, i32 noundef 9, ptr noundef null) #21
  br label %29

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @cpufreq_driver_lock) #21
  %7 = load ptr, ptr @cpufreq_driver, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %5
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, ptrtoint (ptr @cpufreq_cpu_data to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %9
  %17 = lshr i32 %0, 5
  %18 = getelementptr i32, ptr %14, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %0, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.cpufreq_policy, ptr %14, i32 0, i32 23
  %26 = tail call ptr @kobject_get(ptr noundef %25) #21
  br label %27

27:                                               ; preds = %24, %16, %9, %5
  %28 = phi ptr [ %14, %24 ], [ null, %5 ], [ null, %9 ], [ null, %16 ]
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %6) #21
  br label %29

29:                                               ; preds = %27, %4
  %30 = phi ptr [ null, %4 ], [ %28, %27 ]
  ret ptr %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpufreq_cpu_put(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 23
  tail call void @kobject_put(ptr noundef %2) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpufreq_cpu_release(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !11

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 255, i32 noundef 9, ptr noundef null) #21
  br label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 25
  tail call void @up_write(ptr noundef %5) #21
  %6 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 23
  tail call void @kobject_put(ptr noundef %6) #21
  br label %7

7:                                                ; preds = %4, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cpufreq_cpu_acquire(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ugt i32 %2, %0
  br i1 %3, label %5, label %4, !prof !10

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 220, i32 noundef 9, ptr noundef null) #21
  br label %33

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @cpufreq_driver_lock) #21
  %7 = load ptr, ptr @cpufreq_driver, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, ptrtoint (ptr @cpufreq_cpu_data to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %9
  %17 = lshr i32 %0, 5
  %18 = getelementptr i32, ptr %14, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %0, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %9, %5
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %6) #21
  br label %33

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.cpufreq_policy, ptr %14, i32 0, i32 23
  %27 = tail call ptr @kobject_get(ptr noundef %26) #21
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %6) #21
  %28 = getelementptr inbounds %struct.cpufreq_policy, ptr %14, i32 0, i32 25
  tail call void @down_write(ptr noundef %28) #21
  %29 = load i32, ptr %14, align 4
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  tail call void @up_write(ptr noundef %28) #21
  tail call void @kobject_put(ptr noundef %26) #21
  br label %33

33:                                               ; preds = %32, %25, %24, %4
  %34 = phi ptr [ null, %32 ], [ %14, %25 ], [ null, %4 ], [ null, %24 ]
  ret ptr %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpufreq_freq_transition_begin(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = load ptr, ptr @cpufreq_driver, align 4
  %5 = getelementptr inbounds %struct.cpufreq_driver, ptr %4, i32 0, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 16
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = tail call ptr @llvm.thread.pointer() #21
  %11 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 37
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %15, !prof !11

14:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 419, i32 noundef 9, ptr noundef null) #21
  br label %15

15:                                               ; preds = %14, %9, %2
  %16 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 34
  %17 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 36
  %18 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 35
  br label %19

19:                                               ; preds = %34, %15
  %20 = load i8, ptr %16, align 4, !range !12
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !13
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #21
  %23 = call i32 @prepare_to_wait_event(ptr noundef %17, ptr noundef nonnull %3, i32 noundef 2) #21
  %24 = load i8, ptr %16, align 4, !range !12
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %26, %22
  call void @schedule() #21
  %27 = call i32 @prepare_to_wait_event(ptr noundef %17, ptr noundef nonnull %3, i32 noundef 2) #21
  %28 = load i8, ptr %16, align 4, !range !12
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %26

30:                                               ; preds = %26, %22
  call void @finish_wait(ptr noundef %17, ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #21
  br label %31

31:                                               ; preds = %30, %19
  call void @_raw_spin_lock(ptr noundef %18) #21
  %32 = load i8, ptr %16, align 4, !range !12
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %37, label %34, !prof !10

34:                                               ; preds = %31
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !14
  %35 = load i16, ptr %18, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %18, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !17
  br label %19

37:                                               ; preds = %31
  store i8 1, ptr %16, align 4
  %38 = tail call ptr @llvm.thread.pointer() #21
  %39 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 37
  store ptr %38, ptr %39, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !14
  %40 = load i16, ptr %18, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %18, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !17
  %42 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #21, !srcloc !18
  %43 = and i32 %42, 128
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45, !prof !10

45:                                               ; preds = %37
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/cpufreq/cpufreq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 348, 0\0A.popsection", ""() #21, !srcloc !19
  unreachable

46:                                               ; preds = %37
  %47 = load i32, ptr @off, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  store ptr %0, ptr %1, align 4
  %50 = load ptr, ptr @cpufreq_driver, align 4
  %51 = getelementptr inbounds %struct.cpufreq_driver, ptr %50, i32 0, i32 1
  %52 = load i16, ptr %51, align 4
  %53 = trunc i16 %52 to i8
  %54 = getelementptr inbounds %struct.cpufreq_freqs, ptr %1, i32 0, i32 3
  store i8 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 9
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.cpufreq_freqs, ptr %1, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %56, %60
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  store i32 %56, ptr %59, align 4
  br label %63

63:                                               ; preds = %62, %58, %49
  %64 = call i32 @srcu_notifier_call_chain(ptr noundef nonnull @cpufreq_transition_notifier_list, i32 noundef 0, ptr noundef %1) #21
  br label %65

65:                                               ; preds = %63, %46
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpufreq_notify_transition(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #21, !srcloc !18
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !10

7:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/cpufreq/cpufreq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 348, 0\0A.popsection", ""() #21, !srcloc !19
  unreachable

8:                                                ; preds = %3
  %9 = load i32, ptr @off, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %64

11:                                               ; preds = %8
  store ptr %0, ptr %1, align 4
  %12 = load ptr, ptr @cpufreq_driver, align 4
  %13 = getelementptr inbounds %struct.cpufreq_driver, ptr %12, i32 0, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = trunc i16 %14 to i8
  %16 = getelementptr inbounds %struct.cpufreq_freqs, ptr %1, i32 0, i32 3
  store i8 %15, ptr %16, align 4
  switch i32 %2, label %64 [
    i32 0, label %23
    i32 1, label %17
  ]

17:                                               ; preds = %11
  %18 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %0) #24
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cpufreq_freqs, ptr %1, i32 0, i32 2
  br label %34

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 9
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.cpufreq_freqs, ptr %1, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %25, %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 %25, ptr %28, align 4
  br label %32

32:                                               ; preds = %31, %27, %23
  %33 = tail call i32 @srcu_notifier_call_chain(ptr noundef nonnull @cpufreq_transition_notifier_list, i32 noundef 0, ptr noundef %1) #21
  br label %64

34:                                               ; preds = %54, %21
  %35 = phi i32 [ %19, %21 ], [ %55, %54 ]
  %36 = phi i32 [ %18, %21 ], [ %56, %54 ]
  %37 = load i32, ptr %22, align 4
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpu_frequency, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = tail call ptr @llvm.thread.pointer() #21
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !20
  %52 = tail call i32 @__traceiter_cpu_frequency(ptr noundef null, i32 noundef %37, i32 noundef %36) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %53 = load i32, ptr @nr_cpu_ids, align 4
  br label %54

54:                                               ; preds = %51, %40, %34
  %55 = phi i32 [ %35, %34 ], [ %35, %40 ], [ %53, %51 ]
  %56 = tail call i32 @cpumask_next(i32 noundef %36, ptr noundef %0) #24
  %57 = icmp ult i32 %56, %55
  br i1 %57, label %34, label %58

58:                                               ; preds = %54, %17
  %59 = tail call i32 @srcu_notifier_call_chain(ptr noundef nonnull @cpufreq_transition_notifier_list, i32 noundef 1, ptr noundef %1) #21
  %60 = getelementptr inbounds %struct.cpufreq_freqs, ptr %1, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  tail call void @cpufreq_stats_record_transition(ptr noundef %0, i32 noundef %61) #21
  %62 = load i32, ptr %60, align 4
  %63 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 9
  store i32 %62, ptr %63, align 4
  br label %64

64:                                               ; preds = %58, %32, %11, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpufreq_freq_transition_end(ptr noundef %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 34
  %5 = load i8, ptr %4, align 4, !range !12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8, !prof !11

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 443, i32 noundef 9, ptr noundef null) #21
  br label %46

8:                                                ; preds = %3
  tail call fastcc void @cpufreq_notify_transition(ptr noundef %0, ptr noundef %1, i32 noundef 1) #21
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.cpufreq_freqs, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.cpufreq_freqs, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %11, align 4
  store i32 %12, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #21, !srcloc !18
  %16 = and i32 %15, 128
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18, !prof !10

18:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/cpufreq/cpufreq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 348, 0\0A.popsection", ""() #21, !srcloc !19
  unreachable

19:                                               ; preds = %10
  %20 = load i32, ptr @off, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  store ptr %0, ptr %1, align 4
  %23 = load ptr, ptr @cpufreq_driver, align 4
  %24 = getelementptr inbounds %struct.cpufreq_driver, ptr %23, i32 0, i32 1
  %25 = load i16, ptr %24, align 4
  %26 = trunc i16 %25 to i8
  %27 = getelementptr inbounds %struct.cpufreq_freqs, ptr %1, i32 0, i32 3
  store i8 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 9
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %22
  %32 = load i32, ptr %11, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 %29, ptr %11, align 4
  br label %35

35:                                               ; preds = %34, %31, %22
  %36 = tail call i32 @srcu_notifier_call_chain(ptr noundef nonnull @cpufreq_transition_notifier_list, i32 noundef 0, ptr noundef %1) #21
  br label %37

37:                                               ; preds = %35, %19
  tail call fastcc void @cpufreq_notify_transition(ptr noundef %0, ptr noundef %1, i32 noundef 1) #21
  br label %38

38:                                               ; preds = %37, %8
  %39 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 1
  %40 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 9
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  tail call void @topology_set_freq_scale(ptr noundef %39, i32 noundef %41, i32 noundef %43) #21
  store i8 0, ptr %4, align 4
  %44 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 37
  store ptr null, ptr %44, align 4
  %45 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 36
  tail call void @__wake_up(ptr noundef %45, i32 noundef 3, i32 noundef 1, ptr noundef null) #21
  br label %46

46:                                               ; preds = %38, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @topology_set_freq_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpufreq_enable_fast_switch(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 26
  %3 = load i8, ptr %2, align 4, !range !12
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @cpufreq_fast_switch_lock) #21
  %6 = load i32, ptr @cpufreq_fast_switch_count, align 4
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = add nuw i32 %6, 1
  store i32 %9, ptr @cpufreq_fast_switch_count, align 4
  %10 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 27
  store i8 1, ptr %10, align 1
  br label %26

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %13) #23
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #23
  tail call void @mutex_lock(ptr noundef nonnull @cpufreq_transition_notifier_list) #21
  %16 = load ptr, ptr getelementptr inbounds (%struct.srcu_notifier_head, ptr @cpufreq_transition_notifier_list, i32 0, i32 2), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %18, %11
  %19 = phi ptr [ %23, %18 ], [ %16, %11 ]
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %20) #23
  %22 = getelementptr inbounds %struct.notifier_block, ptr %19, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %18

25:                                               ; preds = %18, %11
  tail call void @mutex_unlock(ptr noundef nonnull @cpufreq_transition_notifier_list) #21
  br label %26

26:                                               ; preds = %25, %8
  tail call void @mutex_unlock(ptr noundef nonnull @cpufreq_fast_switch_lock) #21
  br label %27

27:                                               ; preds = %26, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpufreq_disable_fast_switch(ptr nocapture noundef %0) #3 {
  tail call void @mutex_lock(ptr noundef nonnull @cpufreq_fast_switch_lock) #21
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 27
  %3 = load i8, ptr %2, align 1, !range !12
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  store i8 0, ptr %2, align 1
  %6 = load i32, ptr @cpufreq_fast_switch_count, align 4
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 520, i32 noundef 9, ptr noundef null) #21
  br label %11

9:                                                ; preds = %5
  %10 = add nsw i32 %6, -1
  store i32 %10, ptr @cpufreq_fast_switch_count, align 4
  br label %11

11:                                               ; preds = %9, %8, %1
  tail call void @mutex_unlock(ptr noundef nonnull @cpufreq_fast_switch_lock) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_driver_resolve_freq(ptr noundef %0, i32 noundef %1) #3 {
  %3 = tail call fastcc i32 @__resolve_freq(ptr noundef %0, i32 noundef %1, i32 noundef 4)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__resolve_freq(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %5, i32 %1)
  %7 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @llvm.umin.i32(i32 %6, i32 %8)
  %10 = load ptr, ptr @cpufreq_driver, align 4
  %11 = getelementptr inbounds %struct.cpufreq_driver, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %192, label %14

14:                                               ; preds = %3
  %15 = and i32 %2, -5
  %16 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 21
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19, !prof !11

19:                                               ; preds = %14
  %20 = icmp eq i32 %17, 1
  %21 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  %22 = icmp ult i32 %15, 3
  br i1 %22, label %23, label %176

23:                                               ; preds = %19
  %24 = and i32 %2, 4
  %25 = icmp ne i32 %24, 0
  %26 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 29
  %27 = load i8, ptr %26, align 1, !range !12
  %28 = icmp ne i8 %27, 0
  %29 = and i1 %25, %28
  %30 = tail call i32 @llvm.umax.i32(i32 %5, i32 %9) #21
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %8) #21
  br label %34

32:                                               ; preds = %14
  %33 = tail call i32 @cpufreq_table_index_unsorted(ptr noundef %0, i32 noundef %9, i32 noundef %15) #21
  br label %184

34:                                               ; preds = %179, %23
  %35 = phi i1 [ false, %179 ], [ %29, %23 ]
  switch i32 %15, label %118 [
    i32 0, label %36
    i32 1, label %77
  ]

36:                                               ; preds = %34
  %37 = load ptr, ptr %21, align 4
  br i1 %20, label %38, label %55

38:                                               ; preds = %51, %36
  %39 = phi ptr [ %53, %51 ], [ %37, %36 ]
  %40 = phi i32 [ %54, %51 ], [ 0, %36 ]
  %41 = phi i32 [ %52, %51 ], [ -1, %36 ]
  %42 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %39, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  switch i32 %43, label %44 [
    i32 -2, label %179
    i32 -1, label %51
  ]

44:                                               ; preds = %38
  br i1 %35, label %45, label %49

45:                                               ; preds = %44
  %46 = load i32, ptr %39, align 4
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %44
  %50 = icmp ult i32 %43, %31
  br i1 %50, label %51, label %179

51:                                               ; preds = %49, %45, %38
  %52 = phi i32 [ %41, %45 ], [ %41, %38 ], [ %40, %49 ]
  %53 = getelementptr %struct.cpufreq_frequency_table, ptr %39, i32 1
  %54 = add i32 %40, 1
  br label %38

55:                                               ; preds = %73, %36
  %56 = phi ptr [ %75, %73 ], [ %37, %36 ]
  %57 = phi i32 [ %76, %73 ], [ 0, %36 ]
  %58 = phi i32 [ %74, %73 ], [ -1, %36 ]
  %59 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %56, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  switch i32 %60, label %61 [
    i32 -2, label %179
    i32 -1, label %73
  ]

61:                                               ; preds = %55
  br i1 %35, label %62, label %66

62:                                               ; preds = %61
  %63 = load i32, ptr %56, align 4
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62, %61
  %67 = icmp eq i32 %60, %31
  br i1 %67, label %179, label %68

68:                                               ; preds = %66
  %69 = icmp ugt i32 %60, %31
  br i1 %69, label %73, label %70

70:                                               ; preds = %68
  %71 = icmp eq i32 %58, -1
  %72 = select i1 %71, i32 %57, i32 %58
  br label %179

73:                                               ; preds = %68, %62, %55
  %74 = phi i32 [ %58, %62 ], [ %58, %55 ], [ %57, %68 ]
  %75 = getelementptr %struct.cpufreq_frequency_table, ptr %56, i32 1
  %76 = add i32 %57, 1
  br label %55

77:                                               ; preds = %34
  %78 = load ptr, ptr %21, align 4
  br i1 %20, label %79, label %101

79:                                               ; preds = %97, %77
  %80 = phi ptr [ %99, %97 ], [ %78, %77 ]
  %81 = phi i32 [ %100, %97 ], [ 0, %77 ]
  %82 = phi i32 [ %98, %97 ], [ -1, %77 ]
  %83 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %80, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  switch i32 %84, label %85 [
    i32 -2, label %179
    i32 -1, label %97
  ]

85:                                               ; preds = %79
  br i1 %35, label %86, label %90

86:                                               ; preds = %85
  %87 = load i32, ptr %80, align 4
  %88 = and i32 %87, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %86, %85
  %91 = icmp eq i32 %84, %31
  br i1 %91, label %179, label %92

92:                                               ; preds = %90
  %93 = icmp ult i32 %84, %31
  br i1 %93, label %97, label %94

94:                                               ; preds = %92
  %95 = icmp eq i32 %82, -1
  %96 = select i1 %95, i32 %81, i32 %82
  br label %179

97:                                               ; preds = %92, %86, %79
  %98 = phi i32 [ %82, %86 ], [ %82, %79 ], [ %81, %92 ]
  %99 = getelementptr %struct.cpufreq_frequency_table, ptr %80, i32 1
  %100 = add i32 %81, 1
  br label %79

101:                                              ; preds = %114, %77
  %102 = phi ptr [ %116, %114 ], [ %78, %77 ]
  %103 = phi i32 [ %117, %114 ], [ 0, %77 ]
  %104 = phi i32 [ %115, %114 ], [ -1, %77 ]
  %105 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %102, i32 0, i32 2
  %106 = load i32, ptr %105, align 4
  switch i32 %106, label %107 [
    i32 -2, label %179
    i32 -1, label %114
  ]

107:                                              ; preds = %101
  br i1 %35, label %108, label %112

108:                                              ; preds = %107
  %109 = load i32, ptr %102, align 4
  %110 = and i32 %109, 2
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108, %107
  %113 = icmp ugt i32 %106, %31
  br i1 %113, label %114, label %179

114:                                              ; preds = %112, %108, %101
  %115 = phi i32 [ %104, %108 ], [ %104, %101 ], [ %103, %112 ]
  %116 = getelementptr %struct.cpufreq_frequency_table, ptr %102, i32 1
  %117 = add i32 %103, 1
  br label %101

118:                                              ; preds = %34
  %119 = load ptr, ptr %21, align 4
  br i1 %20, label %120, label %148

120:                                              ; preds = %144, %118
  %121 = phi ptr [ %146, %144 ], [ %119, %118 ]
  %122 = phi i32 [ %147, %144 ], [ 0, %118 ]
  %123 = phi i32 [ %145, %144 ], [ -1, %118 ]
  %124 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %121, i32 0, i32 2
  %125 = load i32, ptr %124, align 4
  switch i32 %125, label %126 [
    i32 -2, label %179
    i32 -1, label %144
  ]

126:                                              ; preds = %120
  br i1 %35, label %127, label %131

127:                                              ; preds = %126
  %128 = load i32, ptr %121, align 4
  %129 = and i32 %128, 2
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %127, %126
  %132 = icmp eq i32 %125, %31
  br i1 %132, label %179, label %133

133:                                              ; preds = %131
  %134 = icmp ult i32 %125, %31
  br i1 %134, label %144, label %135

135:                                              ; preds = %133
  %136 = icmp eq i32 %123, -1
  br i1 %136, label %179, label %137

137:                                              ; preds = %135
  %138 = getelementptr %struct.cpufreq_frequency_table, ptr %119, i32 %123, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = sub i32 %31, %139
  %141 = sub i32 %125, %31
  %142 = icmp ugt i32 %140, %141
  %143 = select i1 %142, i32 %122, i32 %123
  br label %179

144:                                              ; preds = %133, %127, %120
  %145 = phi i32 [ %123, %127 ], [ %123, %120 ], [ %122, %133 ]
  %146 = getelementptr %struct.cpufreq_frequency_table, ptr %121, i32 1
  %147 = add i32 %122, 1
  br label %120

148:                                              ; preds = %172, %118
  %149 = phi ptr [ %174, %172 ], [ %119, %118 ]
  %150 = phi i32 [ %175, %172 ], [ 0, %118 ]
  %151 = phi i32 [ %173, %172 ], [ -1, %118 ]
  %152 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %149, i32 0, i32 2
  %153 = load i32, ptr %152, align 4
  switch i32 %153, label %154 [
    i32 -2, label %179
    i32 -1, label %172
  ]

154:                                              ; preds = %148
  br i1 %35, label %155, label %159

155:                                              ; preds = %154
  %156 = load i32, ptr %149, align 4
  %157 = and i32 %156, 2
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %155, %154
  %160 = icmp eq i32 %31, %153
  br i1 %160, label %179, label %161

161:                                              ; preds = %159
  %162 = icmp ult i32 %31, %153
  br i1 %162, label %172, label %163

163:                                              ; preds = %161
  %164 = icmp eq i32 %151, -1
  br i1 %164, label %179, label %165

165:                                              ; preds = %163
  %166 = getelementptr %struct.cpufreq_frequency_table, ptr %119, i32 %151, i32 2
  %167 = load i32, ptr %166, align 4
  %168 = sub i32 %167, %31
  %169 = sub i32 %31, %153
  %170 = icmp ugt i32 %168, %169
  %171 = select i1 %170, i32 %150, i32 %151
  br label %179

172:                                              ; preds = %161, %155, %148
  %173 = phi i32 [ %151, %155 ], [ %151, %148 ], [ %150, %161 ]
  %174 = getelementptr %struct.cpufreq_frequency_table, ptr %149, i32 1
  %175 = add i32 %150, 1
  br label %148

176:                                              ; preds = %19
  %177 = load i1, ptr @cpufreq_frequency_table_target.__already_done, align 1
  br i1 %177, label %184, label %178, !prof !10

178:                                              ; preds = %176
  store i1 true, ptr @cpufreq_frequency_table_target.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 1050, i32 noundef 9, ptr noundef null) #21
  br label %184

179:                                              ; preds = %165, %163, %159, %148, %137, %135, %131, %120, %112, %101, %94, %90, %79, %70, %66, %55, %49, %38
  %180 = phi i32 [ %72, %70 ], [ %96, %94 ], [ %122, %135 ], [ %143, %137 ], [ %150, %163 ], [ %171, %165 ], [ %122, %131 ], [ %123, %120 ], [ %150, %159 ], [ %151, %148 ], [ %41, %38 ], [ %40, %49 ], [ %57, %66 ], [ %58, %55 ], [ %81, %90 ], [ %82, %79 ], [ %104, %101 ], [ %103, %112 ]
  %181 = icmp sgt i32 %180, -1
  %182 = xor i1 %35, true
  %183 = select i1 %181, i1 true, i1 %182
  br i1 %183, label %184, label %34

184:                                              ; preds = %179, %178, %176, %32
  %185 = phi i32 [ %33, %32 ], [ 0, %178 ], [ 0, %176 ], [ %180, %179 ]
  %186 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 33
  store i32 %185, ptr %186, align 4
  %187 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 32
  store i32 %9, ptr %187, align 4
  %188 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr %struct.cpufreq_frequency_table, ptr %189, i32 %185, i32 2
  %191 = load i32, ptr %190, align 4
  br label %192

192:                                              ; preds = %184, %3
  %193 = phi i32 [ %191, %184 ], [ %9, %3 ]
  ret i32 %193
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @cpufreq_policy_transition_delay_us(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 30
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 6, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 1000
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = urem i32 %7, 1000
  %11 = sub nuw i32 %7, %10
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 10000)
  br label %13

13:                                               ; preds = %9, %5, %1
  %14 = phi i32 [ %12, %9 ], [ %3, %1 ], [ 1000, %5 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @arch_freq_get_on_cpu(i32 noundef %0) local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_show_cpus(ptr noundef %0, ptr noundef %1) #3 {
  br label %3

3:                                                ; preds = %16, %2
  %4 = phi i32 [ 0, %2 ], [ %21, %16 ]
  %5 = phi i32 [ -1, %2 ], [ %6, %16 ]
  %6 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef %0) #24
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  %10 = icmp eq i32 %4, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = getelementptr i8, ptr %1, i32 %4
  %13 = sub i32 4094, %4
  %14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %12, i32 noundef %13, ptr noundef nonnull @.str.5) #21
  %15 = add i32 %14, %4
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi i32 [ %15, %11 ], [ 0, %9 ]
  %18 = getelementptr i8, ptr %1, i32 %17
  %19 = sub i32 4094, %17
  %20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %18, i32 noundef %19, ptr noundef nonnull @.str.6, i32 noundef %6) #21
  %21 = add i32 %20, %17
  %22 = icmp ugt i32 %21, 4090
  br i1 %22, label %23, label %3

23:                                               ; preds = %16, %3
  %24 = phi i32 [ %21, %16 ], [ %4, %3 ]
  %25 = getelementptr i8, ptr %1, i32 %24
  store i16 10, ptr %25, align 1
  %26 = add i32 %24, 1
  ret i32 %26
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @refresh_frequency_limits(ptr noundef %0) #3 {
  %2 = load i32, ptr %0, align 4
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = tail call fastcc i32 @cpufreq_set_policy(ptr noundef %0, ptr noundef %7, i32 noundef %9)
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpufreq_set_policy(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = alloca %struct.cpufreq_policy_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef align 4 dereferenceable(12) %5, i32 12, i1 false)
  %6 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cpufreq_policy_data, ptr %4, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.cpufreq_policy_data, ptr %4, i32 0, i32 2
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 17
  %13 = tail call i32 @freq_qos_read_value(ptr noundef %12, i32 noundef 1) #21
  %14 = getelementptr inbounds %struct.cpufreq_policy_data, ptr %4, i32 0, i32 3
  store i32 %13, ptr %14, align 4
  %15 = tail call i32 @freq_qos_read_value(ptr noundef %12, i32 noundef 2) #21
  %16 = getelementptr inbounds %struct.cpufreq_policy_data, ptr %4, i32 0, i32 4
  store i32 %15, ptr %16, align 4
  %17 = load ptr, ptr @cpufreq_driver, align 4
  %18 = getelementptr inbounds %struct.cpufreq_driver, ptr %17, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 %19(ptr noundef nonnull %4) #21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %147

22:                                               ; preds = %3
  %23 = load i32, ptr %14, align 4
  %24 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 7
  store i32 %23, ptr %24, align 4
  %25 = load i32, ptr %16, align 4
  %26 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 8
  store i32 %25, ptr %26, align 4
  %27 = call fastcc i32 @__resolve_freq(ptr noundef %0, i32 noundef %23, i32 noundef 0)
  store i32 %27, ptr %24, align 4
  %28 = load i32, ptr %26, align 4
  %29 = call fastcc i32 @__resolve_freq(ptr noundef %0, i32 noundef %28, i32 noundef 1)
  store i32 %29, ptr %26, align 4
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpu_frequency_limits, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %22
  %33 = tail call ptr @llvm.thread.pointer() #21
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %35, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !22
  %44 = call i32 @__traceiter_cpu_frequency_limits(ptr noundef null, ptr noundef %0) #21
  call void asm sideeffect "", "~{memory}"() #21, !srcloc !23
  br label %45

45:                                               ; preds = %43, %32, %22
  %46 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 32
  store i32 -1, ptr %46, align 4
  %47 = load ptr, ptr @cpufreq_driver, align 4
  %48 = getelementptr inbounds %struct.cpufreq_driver, ptr %47, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 11
  store i32 %2, ptr %52, align 4
  %53 = load ptr, ptr %48, align 4
  %54 = call i32 %53(ptr noundef %0) #21
  br label %147

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 13
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %1
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i1, ptr @cpufreq_suspended, align 1
  %61 = icmp eq ptr %1, null
  %62 = or i1 %60, %61
  br i1 %62, label %147, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.cpufreq_governor, ptr %1, i32 0, i32 5
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %147, label %67

67:                                               ; preds = %63
  call void %65(ptr noundef %0) #21
  br label %147

68:                                               ; preds = %55
  %69 = icmp eq ptr %57, null
  br i1 %69, label %92, label %70

70:                                               ; preds = %68
  %71 = load i1, ptr @cpufreq_suspended, align 1
  br i1 %71, label %92, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.cpufreq_governor, ptr %57, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  call void %74(ptr noundef %0) #21
  %77 = load i1, ptr @cpufreq_suspended, align 1
  br i1 %77, label %92, label %78

78:                                               ; preds = %76
  %79 = load ptr, ptr %56, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %92, label %81

81:                                               ; preds = %78, %72
  %82 = phi ptr [ %79, %78 ], [ %57, %72 ]
  %83 = getelementptr inbounds %struct.cpufreq_governor, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  call void %84(ptr noundef %0) #21
  %87 = load ptr, ptr %56, align 4
  br label %88

88:                                               ; preds = %86, %81
  %89 = phi ptr [ %87, %86 ], [ %82, %81 ]
  %90 = getelementptr inbounds %struct.cpufreq_governor, ptr %89, i32 0, i32 9
  %91 = load ptr, ptr %90, align 4
  call void @module_put(ptr noundef %91) #21
  br label %92

92:                                               ; preds = %88, %78, %76, %70, %68
  store ptr %1, ptr %56, align 4
  %93 = call fastcc i32 @cpufreq_init_governor(ptr noundef %0)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %139

95:                                               ; preds = %92
  %96 = load i1, ptr @cpufreq_suspended, align 1
  br i1 %96, label %147, label %97

97:                                               ; preds = %95
  %98 = load ptr, ptr %56, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %139, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr @cpufreq_driver, align 4
  %102 = getelementptr inbounds %struct.cpufreq_driver, ptr %101, i32 0, i32 12
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = call fastcc i32 @cpufreq_verify_current_freq(ptr noundef %0, i1 noundef zeroext false) #21
  %107 = load ptr, ptr %56, align 4
  br label %108

108:                                              ; preds = %105, %100
  %109 = phi ptr [ %107, %105 ], [ %98, %100 ]
  %110 = getelementptr inbounds %struct.cpufreq_governor, ptr %109, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = call i32 %111(ptr noundef %0) #21
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load ptr, ptr %56, align 4
  br label %118

118:                                              ; preds = %116, %108
  %119 = phi ptr [ %117, %116 ], [ %109, %108 ]
  %120 = getelementptr inbounds %struct.cpufreq_governor, ptr %119, i32 0, i32 5
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %147, label %123

123:                                              ; preds = %118
  call void %121(ptr noundef %0) #21
  br label %147

124:                                              ; preds = %113
  %125 = load i1, ptr @cpufreq_suspended, align 1
  br i1 %125, label %139, label %126

126:                                              ; preds = %124
  %127 = load ptr, ptr %56, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %139, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.cpufreq_governor, ptr %127, i32 0, i32 2
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %129
  call void %131(ptr noundef %0) #21
  %134 = load ptr, ptr %56, align 4
  br label %135

135:                                              ; preds = %133, %129
  %136 = phi ptr [ %134, %133 ], [ %127, %129 ]
  %137 = getelementptr inbounds %struct.cpufreq_governor, ptr %136, i32 0, i32 9
  %138 = load ptr, ptr %137, align 4
  call void @module_put(ptr noundef %138) #21
  br label %139

139:                                              ; preds = %135, %126, %124, %97, %92
  %140 = phi i32 [ %93, %92 ], [ %114, %124 ], [ %114, %126 ], [ %114, %135 ], [ -22, %97 ]
  br i1 %69, label %147, label %141

141:                                              ; preds = %139
  store ptr %57, ptr %56, align 4
  %142 = call fastcc i32 @cpufreq_init_governor(ptr noundef %0)
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %141
  store ptr null, ptr %56, align 4
  br label %147

145:                                              ; preds = %141
  %146 = call i32 @cpufreq_start_governor(ptr noundef %0)
  br label %147

147:                                              ; preds = %145, %144, %139, %123, %118, %95, %67, %63, %59, %51, %3
  %148 = phi i32 [ %54, %51 ], [ %20, %3 ], [ %140, %144 ], [ %140, %145 ], [ %140, %139 ], [ 0, %59 ], [ 0, %63 ], [ 0, %67 ], [ 0, %95 ], [ 0, %123 ], [ 0, %118 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #21
  ret i32 %148
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_quick_get(i32 noundef %0) #3 {
  %2 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @cpufreq_driver_lock) #21
  %3 = load ptr, ptr @cpufreq_driver, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpufreq_driver, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cpufreq_driver, ptr %3, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(i32 noundef %0) #21
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %2) #21
  br label %44

15:                                               ; preds = %9, %5, %1
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %2) #21
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %17 = icmp ugt i32 %16, %0
  br i1 %17, label %19, label %18, !prof !10

18:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 220, i32 noundef 9, ptr noundef null) #21
  br label %44

19:                                               ; preds = %15
  %20 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @cpufreq_driver_lock) #21
  %21 = load ptr, ptr @cpufreq_driver, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %19
  %24 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, ptrtoint (ptr @cpufreq_cpu_data to i32)
  %27 = inttoptr i32 %26 to ptr
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %23
  %31 = lshr i32 %0, 5
  %32 = getelementptr i32, ptr %28, i32 %31
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %0, 31
  %35 = shl nuw i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30, %23, %19
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %20) #21
  br label %44

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.cpufreq_policy, ptr %28, i32 0, i32 23
  %41 = tail call ptr @kobject_get(ptr noundef %40) #21
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %20) #21
  %42 = getelementptr inbounds %struct.cpufreq_policy, ptr %28, i32 0, i32 9
  %43 = load i32, ptr %42, align 4
  tail call void @kobject_put(ptr noundef %40) #21
  br label %44

44:                                               ; preds = %39, %38, %18, %13
  %45 = phi i32 [ %14, %13 ], [ %43, %39 ], [ 0, %18 ], [ 0, %38 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_quick_get_max(i32 noundef %0) #3 {
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ugt i32 %2, %0
  br i1 %3, label %5, label %4, !prof !10

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 220, i32 noundef 9, ptr noundef null) #21
  br label %30

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @cpufreq_driver_lock) #21
  %7 = load ptr, ptr @cpufreq_driver, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, ptrtoint (ptr @cpufreq_cpu_data to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %9
  %17 = lshr i32 %0, 5
  %18 = getelementptr i32, ptr %14, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %0, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %9, %5
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %6) #21
  br label %30

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.cpufreq_policy, ptr %14, i32 0, i32 23
  %27 = tail call ptr @kobject_get(ptr noundef %26) #21
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %6) #21
  %28 = getelementptr inbounds %struct.cpufreq_policy, ptr %14, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  tail call void @kobject_put(ptr noundef %26) #21
  br label %30

30:                                               ; preds = %25, %24, %4
  %31 = phi i32 [ %29, %25 ], [ 0, %4 ], [ 0, %24 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @cpufreq_get_hw_max_freq(i32 noundef %0) #3 {
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ugt i32 %2, %0
  br i1 %3, label %5, label %4, !prof !10

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 220, i32 noundef 9, ptr noundef null) #21
  br label %30

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @cpufreq_driver_lock) #21
  %7 = load ptr, ptr @cpufreq_driver, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, ptrtoint (ptr @cpufreq_cpu_data to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %9
  %17 = lshr i32 %0, 5
  %18 = getelementptr i32, ptr %14, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %0, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %9, %5
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %6) #21
  br label %30

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.cpufreq_policy, ptr %14, i32 0, i32 23
  %27 = tail call ptr @kobject_get(ptr noundef %26) #21
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %6) #21
  %28 = getelementptr inbounds %struct.cpufreq_policy, ptr %14, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  tail call void @kobject_put(ptr noundef %26) #21
  br label %30

30:                                               ; preds = %25, %24, %4
  %31 = phi i32 [ %29, %25 ], [ 0, %4 ], [ 0, %24 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_get(i32 noundef %0) #3 {
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ugt i32 %2, %0
  br i1 %3, label %5, label %4, !prof !10

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 220, i32 noundef 9, ptr noundef null) #21
  br label %41

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @cpufreq_driver_lock) #21
  %7 = load ptr, ptr @cpufreq_driver, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, ptrtoint (ptr @cpufreq_cpu_data to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %9
  %17 = lshr i32 %0, 5
  %18 = getelementptr i32, ptr %14, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %0, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %9, %5
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %6) #21
  br label %41

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.cpufreq_policy, ptr %14, i32 0, i32 23
  %27 = tail call ptr @kobject_get(ptr noundef %26) #21
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %6) #21
  %28 = getelementptr inbounds %struct.cpufreq_policy, ptr %14, i32 0, i32 25
  tail call void @down_read(ptr noundef %28) #21
  %29 = load ptr, ptr @cpufreq_driver, align 4
  %30 = getelementptr inbounds %struct.cpufreq_driver, ptr %29, i32 0, i32 12
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %25
  %34 = load i32, ptr %14, align 4
  %35 = and i32 %34, 65535
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37, !prof !11

37:                                               ; preds = %33
  %38 = tail call fastcc i32 @cpufreq_verify_current_freq(ptr noundef nonnull %14, i1 noundef zeroext true) #21
  br label %39

39:                                               ; preds = %37, %33, %25
  %40 = phi i32 [ 0, %25 ], [ %38, %37 ], [ 0, %33 ]
  tail call void @up_read(ptr noundef %28) #21
  tail call void @kobject_put(ptr noundef %26) #21
  br label %41

41:                                               ; preds = %39, %24, %4
  %42 = phi i32 [ %40, %39 ], [ 0, %4 ], [ 0, %24 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_generic_suspend(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @__cpufreq_driver_target(ptr noundef %0, i32 noundef %3, i32 noundef 1)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %2, align 4
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.cpufreq_generic_suspend, i32 noundef %9, i32 noundef %6) #23
  br label %11

11:                                               ; preds = %8, %5, %1
  %12 = phi i32 [ 0, %1 ], [ %6, %8 ], [ 0, %5 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__cpufreq_driver_target(ptr noundef %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = alloca %struct.cpufreq_freqs, align 4
  %5 = load i32, ptr @off, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %86

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @__resolve_freq(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %9 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  %12 = load ptr, ptr @cpufreq_driver, align 4
  br i1 %11, label %13, label %18

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.cpufreq_driver, ptr %12, i32 0, i32 1
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %86, label %18

18:                                               ; preds = %13, %7
  %19 = getelementptr inbounds %struct.cpufreq_driver, ptr %12, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 29
  %24 = load i8, ptr %23, align 1, !range !12
  %25 = icmp eq i8 %24, 0
  %26 = and i32 %2, -5
  %27 = select i1 %25, i32 %26, i32 %2
  %28 = tail call i32 %20(ptr noundef %0, i32 noundef %8, i32 noundef %27) #21
  br label %86

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.cpufreq_driver, ptr %12, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %86, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 33
  %35 = load i32, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  %36 = getelementptr inbounds %struct.cpufreq_freqs, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false) #21
  store i32 %10, ptr %36, align 4
  %37 = getelementptr inbounds %struct.cpufreq_freqs, ptr %4, i32 0, i32 2
  %38 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr %struct.cpufreq_frequency_table, ptr %39, i32 %35, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, %10
  br i1 %42, label %84, label %43

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.cpufreq_driver, ptr %12, i32 0, i32 1
  %45 = load i16, ptr %44, align 4
  %46 = and i16 %45, 16
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.cpufreq_driver, ptr %12, i32 0, i32 10
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %67, label %52

52:                                               ; preds = %48
  %53 = tail call i32 %50(ptr noundef %0, i32 noundef %35) #21
  store i32 %53, ptr %37, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %52
  call void @cpufreq_freq_transition_begin(ptr noundef %0, ptr noundef nonnull %4) #21
  %56 = load ptr, ptr @cpufreq_driver, align 4
  %57 = getelementptr inbounds %struct.cpufreq_driver, ptr %56, i32 0, i32 11
  %58 = load ptr, ptr %57, align 4
  %59 = call i32 %58(ptr noundef %0, i32 noundef %35) #21
  call void @cpufreq_freq_transition_end(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %59) #21
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.__target_intermediate, i32 noundef %59) #23
  br label %84

63:                                               ; preds = %55
  %64 = load i32, ptr %37, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store i32 %64, ptr %36, align 4
  br label %67

67:                                               ; preds = %66, %63, %52, %48
  %68 = phi i32 [ %64, %66 ], [ 0, %63 ], [ 0, %48 ], [ 0, %52 ]
  store i32 %41, ptr %37, align 4
  call void @cpufreq_freq_transition_begin(ptr noundef %0, ptr noundef nonnull %4) #21
  %69 = load ptr, ptr @cpufreq_driver, align 4
  %70 = getelementptr inbounds %struct.cpufreq_driver, ptr %69, i32 0, i32 7
  %71 = load ptr, ptr %70, align 4
  br label %72

72:                                               ; preds = %67, %43
  %73 = phi ptr [ %71, %67 ], [ %31, %43 ]
  %74 = phi i32 [ %68, %67 ], [ 0, %43 ]
  %75 = call i32 %73(ptr noundef %0, i32 noundef %35) #21
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.__target_index, i32 noundef %75) #23
  br label %79

79:                                               ; preds = %77, %72
  br i1 %47, label %80, label %84

80:                                               ; preds = %79
  call void @cpufreq_freq_transition_end(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %75) #21
  %81 = icmp ne i32 %74, 0
  %82 = select i1 %76, i1 %81, i1 false
  br i1 %82, label %83, label %84, !prof !11

83:                                               ; preds = %80
  store i32 %74, ptr %36, align 4
  store i32 %10, ptr %37, align 4
  call void @cpufreq_freq_transition_begin(ptr noundef %0, ptr noundef nonnull %4) #21
  call void @cpufreq_freq_transition_end(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0) #21
  br label %84

84:                                               ; preds = %83, %80, %79, %61, %33
  %85 = phi i32 [ 0, %33 ], [ %59, %61 ], [ %75, %80 ], [ %75, %83 ], [ %75, %79 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  br label %86

86:                                               ; preds = %84, %29, %22, %13, %3
  %87 = phi i32 [ %28, %22 ], [ %85, %84 ], [ -19, %3 ], [ 0, %13 ], [ -22, %29 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpufreq_suspend() local_unnamed_addr #3 {
  %1 = load ptr, ptr @cpufreq_driver, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %67, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.cpufreq_driver, ptr %1, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cpufreq_driver, ptr %1, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cpufreq_driver, ptr %1, i32 0, i32 18
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = load ptr, ptr @cpufreq_policy_list, align 4
  %16 = icmp eq ptr %15, @cpufreq_policy_list
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %66, label %21

18:                                               ; preds = %7, %3
  %19 = load ptr, ptr @cpufreq_policy_list, align 4
  %20 = icmp eq ptr %19, @cpufreq_policy_list
  br i1 %20, label %66, label %21

21:                                               ; preds = %18, %11
  %22 = phi ptr [ %19, %18 ], [ %15, %11 ]
  br label %23

23:                                               ; preds = %63, %21
  %24 = phi ptr [ %64, %63 ], [ %22, %21 ]
  %25 = getelementptr i8, ptr %24, i32 -228
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %63, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr @cpufreq_driver, align 4
  %31 = getelementptr inbounds %struct.cpufreq_driver, ptr %30, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.cpufreq_driver, ptr %30, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %34, %29
  %39 = getelementptr i8, ptr %24, i32 60
  tail call void @down_write(ptr noundef %39) #21
  %40 = load i1, ptr @cpufreq_suspended, align 1
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %24, i32 -168
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.cpufreq_governor, ptr %43, i32 0, i32 4
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void %47(ptr noundef %25) #21
  br label %50

50:                                               ; preds = %49, %45, %41, %38
  tail call void @up_write(ptr noundef %39) #21
  %51 = load ptr, ptr @cpufreq_driver, align 4
  br label %52

52:                                               ; preds = %50, %34
  %53 = phi ptr [ %51, %50 ], [ %30, %34 ]
  %54 = getelementptr inbounds %struct.cpufreq_driver, ptr %53, i32 0, i32 18
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = tail call i32 %55(ptr noundef %25) #21
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr @cpufreq_driver, align 4
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cpufreq_suspend, ptr noundef %61) #23
  br label %63

63:                                               ; preds = %60, %57, %52, %23
  %64 = load ptr, ptr %24, align 4
  %65 = icmp eq ptr %64, @cpufreq_policy_list
  br i1 %65, label %66, label %23

66:                                               ; preds = %63, %18, %11
  store i1 true, ptr @cpufreq_suspended, align 1
  br label %67

67:                                               ; preds = %66, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpufreq_stop_governor(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load i1, ptr @cpufreq_suspended, align 1
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cpufreq_governor, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void %9(ptr noundef %0) #21
  br label %12

12:                                               ; preds = %11, %7, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpufreq_resume() local_unnamed_addr #3 {
  %1 = load ptr, ptr @cpufreq_driver, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %89, label %3

3:                                                ; preds = %0
  %4 = load i1, ptr @cpufreq_suspended, align 1
  br i1 %4, label %5, label %89, !prof !10

5:                                                ; preds = %3
  store i1 false, ptr @cpufreq_suspended, align 1
  %6 = getelementptr inbounds %struct.cpufreq_driver, ptr %1, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cpufreq_driver, ptr %1, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cpufreq_driver, ptr %1, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = load ptr, ptr @cpufreq_policy_list, align 4
  %18 = icmp eq ptr %17, @cpufreq_policy_list
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %89, label %23

20:                                               ; preds = %9, %5
  %21 = load ptr, ptr @cpufreq_policy_list, align 4
  %22 = icmp eq ptr %21, @cpufreq_policy_list
  br i1 %22, label %89, label %23

23:                                               ; preds = %20, %13
  %24 = phi ptr [ %21, %20 ], [ %17, %13 ]
  br label %25

25:                                               ; preds = %86, %23
  %26 = phi ptr [ %87, %86 ], [ %24, %23 ]
  %27 = getelementptr i8, ptr %26, i32 -228
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %86, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr @cpufreq_driver, align 4
  %33 = getelementptr inbounds %struct.cpufreq_driver, ptr %32, i32 0, i32 19
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = tail call i32 %34(ptr noundef %27) #21
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load ptr, ptr @cpufreq_driver, align 4
  br label %43

41:                                               ; preds = %36
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cpufreq_resume, ptr noundef %27) #23
  br label %86

43:                                               ; preds = %39, %31
  %44 = phi ptr [ %40, %39 ], [ %32, %31 ]
  %45 = getelementptr inbounds %struct.cpufreq_driver, ptr %44, i32 0, i32 7
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.cpufreq_driver, ptr %44, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %86, label %52

52:                                               ; preds = %48, %43
  %53 = getelementptr i8, ptr %26, i32 60
  tail call void @down_write(ptr noundef %53) #21
  %54 = load i1, ptr @cpufreq_suspended, align 1
  br i1 %54, label %83, label %55

55:                                               ; preds = %52
  %56 = getelementptr i8, ptr %26, i32 -168
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %84, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr @cpufreq_driver, align 4
  %61 = getelementptr inbounds %struct.cpufreq_driver, ptr %60, i32 0, i32 12
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = tail call fastcc i32 @cpufreq_verify_current_freq(ptr noundef %27, i1 noundef zeroext false) #21
  %66 = load ptr, ptr %56, align 4
  br label %67

67:                                               ; preds = %64, %59
  %68 = phi ptr [ %66, %64 ], [ %57, %59 ]
  %69 = getelementptr inbounds %struct.cpufreq_governor, ptr %68, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = tail call i32 %70(ptr noundef %27) #21
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load ptr, ptr %56, align 4
  br label %77

77:                                               ; preds = %75, %67
  %78 = phi ptr [ %76, %75 ], [ %68, %67 ]
  %79 = getelementptr inbounds %struct.cpufreq_governor, ptr %78, i32 0, i32 5
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  tail call void %80(ptr noundef %27) #21
  br label %83

83:                                               ; preds = %82, %77, %52
  tail call void @up_write(ptr noundef %53) #21
  br label %86

84:                                               ; preds = %72, %55
  tail call void @up_write(ptr noundef %53) #21
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.cpufreq_resume, ptr noundef %27) #23
  br label %86

86:                                               ; preds = %84, %83, %48, %41, %25
  %87 = load ptr, ptr %26, align 4
  %88 = icmp eq ptr %87, @cpufreq_policy_list
  br i1 %88, label %89, label %25

89:                                               ; preds = %86, %20, %13, %3, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_start_governor(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load i1, ptr @cpufreq_suspended, align 1
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @cpufreq_driver, align 4
  %9 = getelementptr inbounds %struct.cpufreq_driver, ptr %8, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = tail call fastcc i32 @cpufreq_verify_current_freq(ptr noundef %0, i1 noundef zeroext false)
  %14 = load ptr, ptr %4, align 4
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi ptr [ %14, %12 ], [ %5, %7 ]
  %17 = getelementptr inbounds %struct.cpufreq_governor, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = tail call i32 %18(ptr noundef %0) #21
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  br label %25

25:                                               ; preds = %23, %15
  %26 = phi ptr [ %24, %23 ], [ %16, %15 ]
  %27 = getelementptr inbounds %struct.cpufreq_governor, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  tail call void %28(ptr noundef %0) #21
  br label %31

31:                                               ; preds = %30, %25, %20, %3, %1
  %32 = phi i32 [ 0, %1 ], [ -22, %3 ], [ %21, %20 ], [ 0, %30 ], [ 0, %25 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cpufreq_driver_test_flags(i16 noundef zeroext %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @cpufreq_driver, align 4
  %3 = getelementptr inbounds %struct.cpufreq_driver, ptr %2, i32 0, i32 1
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, %0
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @cpufreq_get_current_driver() #2 {
  %1 = load ptr, ptr @cpufreq_driver, align 4
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @cpufreq_get_driver_data() #2 {
  %1 = load ptr, ptr @cpufreq_driver, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.cpufreq_driver, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi ptr [ %5, %3 ], [ null, %0 ]
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_register_notifier(ptr noundef %0, i32 noundef %1) #3 {
  %3 = load i32, ptr @off, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  switch i32 %1, label %19 [
    i32 0, label %6
    i32 1, label %17
  ]

6:                                                ; preds = %5
  tail call void @mutex_lock(ptr noundef nonnull @cpufreq_fast_switch_lock) #21
  %7 = load i32, ptr @cpufreq_fast_switch_count, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @mutex_unlock(ptr noundef nonnull @cpufreq_fast_switch_lock) #21
  br label %19

10:                                               ; preds = %6
  %11 = tail call i32 @srcu_notifier_chain_register(ptr noundef nonnull @cpufreq_transition_notifier_list, ptr noundef %0) #21
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, ptr @cpufreq_fast_switch_count, align 4
  %15 = add i32 %14, -1
  store i32 %15, ptr @cpufreq_fast_switch_count, align 4
  br label %16

16:                                               ; preds = %13, %10
  tail call void @mutex_unlock(ptr noundef nonnull @cpufreq_fast_switch_lock) #21
  br label %19

17:                                               ; preds = %5
  %18 = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @cpufreq_policy_notifier_list, ptr noundef %0) #21
  br label %19

19:                                               ; preds = %17, %16, %9, %5, %2
  %20 = phi i32 [ -16, %9 ], [ -22, %2 ], [ %18, %17 ], [ %11, %16 ], [ -22, %5 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcu_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_unregister_notifier(ptr noundef %0, i32 noundef %1) #3 {
  %3 = load i32, ptr @off, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  switch i32 %1, label %18 [
    i32 0, label %6
    i32 1, label %16
  ]

6:                                                ; preds = %5
  tail call void @mutex_lock(ptr noundef nonnull @cpufreq_fast_switch_lock) #21
  %7 = tail call i32 @srcu_notifier_chain_unregister(ptr noundef nonnull @cpufreq_transition_notifier_list, ptr noundef %0) #21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load i32, ptr @cpufreq_fast_switch_count, align 4
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %13, !prof !11

12:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2047, i32 noundef 9, ptr noundef null) #21
  br label %15

13:                                               ; preds = %9
  %14 = add nsw i32 %10, 1
  store i32 %14, ptr @cpufreq_fast_switch_count, align 4
  br label %15

15:                                               ; preds = %13, %12, %6
  tail call void @mutex_unlock(ptr noundef nonnull @cpufreq_fast_switch_lock) #21
  br label %18

16:                                               ; preds = %5
  %17 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @cpufreq_policy_notifier_list, ptr noundef %0) #21
  br label %18

18:                                               ; preds = %16, %15, %5, %2
  %19 = phi i32 [ -22, %2 ], [ %17, %16 ], [ %7, %15 ], [ -22, %5 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcu_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_driver_fast_switch(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 @llvm.umax.i32(i32 %4, i32 %1)
  %6 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 %7)
  %9 = load ptr, ptr @cpufreq_driver, align 4
  %10 = getelementptr inbounds %struct.cpufreq_driver, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0, i32 noundef %8) #21
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 9
  store i32 %12, ptr %15, align 4
  %16 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 1
  %17 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  tail call void @topology_set_freq_scale(ptr noundef %16, i32 noundef %12, i32 noundef %18) #21
  tail call void @cpufreq_stats_record_transition(ptr noundef %0, i32 noundef %12) #21
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpu_frequency, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %14
  %22 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %0) #24
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %44, %21
  %26 = phi i32 [ %45, %44 ], [ %23, %21 ]
  %27 = phi i32 [ %46, %44 ], [ %22, %21 ]
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpu_frequency, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = tail call ptr @llvm.thread.pointer() #21
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !20
  %42 = tail call i32 @__traceiter_cpu_frequency(ptr noundef null, i32 noundef %12, i32 noundef %27) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !21
  %43 = load i32, ptr @nr_cpu_ids, align 4
  br label %44

44:                                               ; preds = %41, %30, %25
  %45 = phi i32 [ %26, %25 ], [ %26, %30 ], [ %43, %41 ]
  %46 = tail call i32 @cpumask_next(i32 noundef %27, ptr noundef %0) #24
  %47 = icmp ult i32 %46, %45
  br i1 %47, label %25, label %48

48:                                               ; preds = %44, %21, %14, %2
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_stats_record_transition(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpufreq_driver_adjust_perf(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = load ptr, ptr @cpufreq_driver, align 4
  %6 = getelementptr inbounds %struct.cpufreq_driver, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  tail call void %7(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cpufreq_driver_has_adjust_perf() local_unnamed_addr #2 {
  %1 = load ptr, ptr @cpufreq_driver, align 4
  %2 = getelementptr inbounds %struct.cpufreq_driver, ptr %1, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_driver_target(ptr noundef %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 25
  tail call void @down_write(ptr noundef %4) #21
  %5 = tail call i32 @__cpufreq_driver_target(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  tail call void @up_write(ptr noundef %4) #21
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local ptr @cpufreq_fallback_governor() local_unnamed_addr #3 {
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpufreq_verify_current_freq(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #3 {
  %3 = alloca %struct.cpufreq_freqs, align 4
  %4 = load ptr, ptr @cpufreq_driver, align 4
  %5 = getelementptr inbounds %struct.cpufreq_driver, ptr %4, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 %6(i32 noundef %8) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 27
  %13 = load i8, ptr %12, align 1, !range !12
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %11
  %16 = load ptr, ptr @cpufreq_driver, align 4
  %17 = getelementptr inbounds %struct.cpufreq_driver, ptr %16, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.cpufreq_driver, ptr %16, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %47, label %24

24:                                               ; preds = %20, %15
  %25 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 9
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %9
  br i1 %27, label %47, label %28

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #21, !annotation !13
  %29 = getelementptr inbounds %struct.cpufreq_freqs, ptr %3, i32 0, i32 1
  store i32 %26, ptr %29, align 4
  %30 = getelementptr inbounds %struct.cpufreq_freqs, ptr %3, i32 0, i32 2
  store i32 %9, ptr %30, align 4
  call void @cpufreq_freq_transition_begin(ptr noundef %0, ptr noundef nonnull %3) #21
  %31 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 34
  %32 = load i8, ptr %31, align 4, !range !12
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %35, !prof !11

34:                                               ; preds = %28
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 443, i32 noundef 9, ptr noundef null) #21
  br label %42

35:                                               ; preds = %28
  call fastcc void @cpufreq_notify_transition(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1) #21
  %36 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 1
  %37 = load i32, ptr %25, align 4
  %38 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  call void @topology_set_freq_scale(ptr noundef %36, i32 noundef %37, i32 noundef %39) #21
  store i8 0, ptr %31, align 4
  %40 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 37
  store ptr null, ptr %40, align 4
  %41 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 36
  call void @__wake_up(ptr noundef %41, i32 noundef 3, i32 noundef 1, ptr noundef null) #21
  br label %42

42:                                               ; preds = %35, %34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  br i1 %1, label %43, label %47

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 16
  %45 = load ptr, ptr @system_wq, align 4
  %46 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %45, ptr noundef %44) #21
  br label %47

47:                                               ; preds = %43, %42, %24, %20, %11, %2
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_register_governor(ptr noundef %0) #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr @off, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %3
  tail call void @mutex_lock(ptr noundef nonnull @cpufreq_governor_mutex) #21
  br label %7

7:                                                ; preds = %11, %6
  %8 = phi ptr [ @cpufreq_governor_list, %6 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @cpufreq_governor_list
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 -44
  %13 = tail call i32 @strncasecmp(ptr noundef nonnull %0, ptr noundef %12, i32 noundef 16) #21
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %7

15:                                               ; preds = %11
  %16 = icmp eq ptr %12, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %15, %7
  %18 = getelementptr inbounds %struct.cpufreq_governor, ptr %0, i32 0, i32 8
  %19 = load ptr, ptr @cpufreq_governor_list, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store ptr %19, ptr %18, align 4
  %21 = getelementptr inbounds %struct.cpufreq_governor, ptr %0, i32 0, i32 8, i32 1
  store ptr @cpufreq_governor_list, ptr %21, align 4
  store volatile ptr %18, ptr @cpufreq_governor_list, align 4
  br label %22

22:                                               ; preds = %17, %15
  %23 = phi i32 [ -16, %15 ], [ 0, %17 ]
  tail call void @mutex_unlock(ptr noundef nonnull @cpufreq_governor_mutex) #21
  br label %24

24:                                               ; preds = %22, %3, %1
  %25 = phi i32 [ %23, %22 ], [ -22, %1 ], [ -19, %3 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpufreq_unregister_governor(ptr noundef %0) #3 {
  %2 = icmp ne ptr %0, null
  %3 = load i32, ptr @off, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %31

6:                                                ; preds = %1
  %7 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @cpufreq_driver_lock) #21
  %8 = load ptr, ptr @cpufreq_policy_list, align 4
  %9 = icmp eq ptr %8, @cpufreq_policy_list
  br i1 %9, label %25, label %10

10:                                               ; preds = %22, %6
  %11 = phi ptr [ %23, %22 ], [ %8, %6 ]
  %12 = getelementptr i8, ptr %11, i32 -228
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %11, i32 -160
  %18 = tail call i32 @strcmp(ptr noundef %17, ptr noundef nonnull %0)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %11, i32 -168
  store ptr null, ptr %21, align 4
  store i8 0, ptr %17, align 1
  br label %22

22:                                               ; preds = %20, %16, %10
  %23 = load ptr, ptr %11, align 4
  %24 = icmp eq ptr %23, @cpufreq_policy_list
  br i1 %24, label %25, label %10

25:                                               ; preds = %22, %6
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %7) #21
  tail call void @mutex_lock(ptr noundef nonnull @cpufreq_governor_mutex) #21
  %26 = getelementptr inbounds %struct.cpufreq_governor, ptr %0, i32 0, i32 8
  %27 = getelementptr inbounds %struct.cpufreq_governor, ptr %0, i32 0, i32 8, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store volatile ptr %29, ptr %28, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %26, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %27, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @cpufreq_governor_mutex) #21
  br label %31

31:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_get_policy(ptr noundef writeonly %0, i32 noundef %1) #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %8, label %7, !prof !10

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 220, i32 noundef 9, ptr noundef null) #21
  br label %31

8:                                                ; preds = %4
  %9 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @cpufreq_driver_lock) #21
  %10 = load ptr, ptr @cpufreq_driver, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, ptrtoint (ptr @cpufreq_cpu_data to i32)
  %16 = inttoptr i32 %15 to ptr
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %12
  %20 = lshr i32 %1, 5
  %21 = getelementptr i32, ptr %17, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %1, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19, %12, %8
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %9) #21
  br label %31

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.cpufreq_policy, ptr %17, i32 0, i32 23
  %30 = tail call ptr @kobject_get(ptr noundef %29) #21
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %9) #21
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(392) %0, ptr noundef nonnull align 4 dereferenceable(392) %17, i32 392, i1 false)
  tail call void @kobject_put(ptr noundef %29) #21
  br label %31

31:                                               ; preds = %28, %27, %7, %2
  %32 = phi i32 [ 0, %28 ], [ -22, %2 ], [ -22, %7 ], [ -22, %27 ]
  ret i32 %32
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #13

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpufreq_update_policy(i32 noundef %0) #3 {
  %2 = tail call ptr @cpufreq_cpu_acquire(i32 noundef %0)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %36, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @cpufreq_driver, align 4
  %6 = getelementptr inbounds %struct.cpufreq_driver, ptr %5, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.cpufreq_driver, ptr %5, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cpufreq_driver, ptr %5, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13, %9
  %18 = load i1, ptr @cpufreq_suspended, align 1
  br i1 %18, label %33, label %19

19:                                               ; preds = %17
  %20 = tail call fastcc i32 @cpufreq_verify_current_freq(ptr noundef nonnull %2, i1 noundef zeroext false)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23, !prof !11

22:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2624, i32 noundef 9, ptr noundef null) #21
  br label %33

23:                                               ; preds = %19, %13, %4
  %24 = load i32, ptr %2, align 4
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.cpufreq_policy, ptr %2, i32 0, i32 13
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.cpufreq_policy, ptr %2, i32 0, i32 11
  %31 = load i32, ptr %30, align 4
  %32 = tail call fastcc i32 @cpufreq_set_policy(ptr noundef nonnull %2, ptr noundef %29, i32 noundef %31) #21
  br label %33

33:                                               ; preds = %27, %23, %22, %17
  %34 = getelementptr inbounds %struct.cpufreq_policy, ptr %2, i32 0, i32 25
  tail call void @up_write(ptr noundef %34) #21
  %35 = getelementptr inbounds %struct.cpufreq_policy, ptr %2, i32 0, i32 23
  tail call void @kobject_put(ptr noundef %35) #21
  br label %36

36:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpufreq_update_limits(i32 noundef %0) #3 {
  %2 = load ptr, ptr @cpufreq_driver, align 4
  %3 = getelementptr inbounds %struct.cpufreq_driver, ptr %2, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(i32 noundef %0) #21
  br label %8

7:                                                ; preds = %1
  tail call void @cpufreq_update_policy(i32 noundef %0)
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_boost_trigger_state(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @cpufreq_driver, align 4
  %3 = getelementptr inbounds %struct.cpufreq_driver, ptr %2, i32 0, i32 22
  %4 = load i8, ptr %3, align 4, !range !12
  %5 = zext i8 %4 to i32
  %6 = icmp eq i32 %5, %0
  br i1 %6, label %39, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @cpufreq_driver_lock) #21
  %9 = icmp ne i32 %0, 0
  %10 = load ptr, ptr @cpufreq_driver, align 4
  %11 = getelementptr inbounds %struct.cpufreq_driver, ptr %10, i32 0, i32 22
  %12 = zext i1 %9 to i8
  store i8 %12, ptr %11, align 4
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %8) #21
  tail call void @cpus_read_lock() #21
  %13 = load ptr, ptr @cpufreq_policy_list, align 4
  %14 = icmp eq ptr %13, @cpufreq_policy_list
  br i1 %14, label %30, label %15

15:                                               ; preds = %27, %7
  %16 = phi ptr [ %28, %27 ], [ %13, %7 ]
  %17 = getelementptr i8, ptr %16, i32 -228
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr @cpufreq_driver, align 4
  %23 = getelementptr inbounds %struct.cpufreq_driver, ptr %22, i32 0, i32 23
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %17, i32 noundef %0) #21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21, %15
  %28 = load ptr, ptr %16, align 4
  %29 = icmp eq ptr %28, @cpufreq_policy_list
  br i1 %29, label %30, label %15

30:                                               ; preds = %27, %7
  tail call void @cpus_read_unlock() #21
  br label %39

31:                                               ; preds = %21
  tail call void @cpus_read_unlock() #21
  %32 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @cpufreq_driver_lock) #21
  %33 = xor i1 %9, true
  %34 = load ptr, ptr @cpufreq_driver, align 4
  %35 = getelementptr inbounds %struct.cpufreq_driver, ptr %34, i32 0, i32 22
  %36 = zext i1 %33 to i8
  store i8 %36, ptr %35, align 4
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %32) #21
  %37 = select i1 %9, ptr @.str.14, ptr @.str.15
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.cpufreq_boost_trigger_state, ptr noundef nonnull %37) #23
  br label %39

39:                                               ; preds = %31, %30, %1
  %40 = phi i32 [ %25, %31 ], [ 0, %30 ], [ 0, %1 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_enable_boost_support() #3 {
  %1 = load ptr, ptr @cpufreq_driver, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.cpufreq_driver, ptr %1, i32 0, i32 23
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  store ptr @cpufreq_boost_set_sw, ptr %4, align 4
  %8 = load ptr, ptr @cpufreq_global_kobject, align 4
  %9 = tail call i32 @sysfs_create_file_ns(ptr noundef %8, ptr noundef nonnull @boost, ptr noundef null) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.create_boost_sysfs_file) #23
  br label %13

13:                                               ; preds = %11, %7, %3, %0
  %14 = phi i32 [ -22, %0 ], [ 0, %3 ], [ 0, %7 ], [ %9, %11 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpufreq_boost_set_sw(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @cpufreq_frequency_table_cpuinfo(ptr noundef %0, ptr noundef nonnull %4) #21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.cpufreq_boost_set_sw) #23
  br label %18

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @freq_qos_update_request(ptr noundef %13, i32 noundef %15) #21
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 0)
  br label %18

18:                                               ; preds = %11, %9, %2
  %19 = phi i32 [ %7, %9 ], [ -6, %2 ], [ %17, %11 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @create_boost_sysfs_file() unnamed_addr #3 {
  %1 = load ptr, ptr @cpufreq_global_kobject, align 4
  %2 = tail call i32 @sysfs_create_file_ns(ptr noundef %1, ptr noundef nonnull @boost, ptr noundef null) #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.create_boost_sysfs_file) #23
  br label %6

6:                                                ; preds = %4, %0
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @cpufreq_boost_enabled() #2 {
  %1 = load ptr, ptr @cpufreq_driver, align 4
  %2 = getelementptr inbounds %struct.cpufreq_driver, ptr %1, i32 0, i32 22
  %3 = load i8, ptr %2, align 4, !range !12
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_register_driver(ptr noundef %0) #3 {
  %2 = load i32, ptr @off, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %101

4:                                                ; preds = %1
  %5 = tail call ptr @get_cpu_device(i32 noundef 0) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %101, label %7

7:                                                ; preds = %4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %101, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.cpufreq_driver, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %101, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cpufreq_driver, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %101, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cpufreq_driver, ptr %0, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.cpufreq_driver, ptr %0, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %20, label %24, label %29

24:                                               ; preds = %17
  br i1 %23, label %25, label %34

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.cpufreq_driver, ptr %0, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %101, label %34

29:                                               ; preds = %17
  br i1 %23, label %30, label %101

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.cpufreq_driver, ptr %0, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %101

34:                                               ; preds = %30, %25, %24
  %35 = getelementptr inbounds %struct.cpufreq_driver, ptr %0, i32 0, i32 10
  %36 = load ptr, ptr %35, align 4
  %37 = icmp ne ptr %36, null
  %38 = getelementptr inbounds %struct.cpufreq_driver, ptr %0, i32 0, i32 11
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  %41 = xor i1 %37, %40
  br i1 %41, label %42, label %101

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.cpufreq_driver, ptr %0, i32 0, i32 15
  %44 = load ptr, ptr %43, align 4
  %45 = icmp ne ptr %44, null
  %46 = getelementptr inbounds %struct.cpufreq_driver, ptr %0, i32 0, i32 16
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  %49 = xor i1 %45, %48
  br i1 %49, label %50, label %101

50:                                               ; preds = %42
  tail call void @cpus_read_lock() #21
  %51 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @cpufreq_driver_lock) #21
  %52 = load ptr, ptr @cpufreq_driver, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %51) #21
  br label %99

55:                                               ; preds = %50
  store ptr %0, ptr @cpufreq_driver, align 4
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %51) #21
  %56 = load ptr, ptr @cpufreq_driver, align 4
  %57 = getelementptr inbounds %struct.cpufreq_driver, ptr %56, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  tail call fastcc void @static_key_enable()
  br label %61

61:                                               ; preds = %60, %55
  %62 = load ptr, ptr %18, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.cpufreq_driver, ptr %0, i32 0, i32 1
  %66 = load i16, ptr %65, align 4
  %67 = or i16 %66, 2
  store i16 %67, ptr %65, align 4
  br label %68

68:                                               ; preds = %64, %61
  %69 = load ptr, ptr @cpufreq_driver, align 4
  %70 = getelementptr inbounds %struct.cpufreq_driver, ptr %69, i32 0, i32 23
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = tail call fastcc i32 @create_boost_sysfs_file()
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %73, %68
  %77 = tail call i32 @subsys_interface_register(ptr noundef nonnull @cpufreq_interface) #21
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load volatile ptr, ptr @cpufreq_policy_list, align 4
  %81 = icmp eq ptr %80, @cpufreq_policy_list
  br i1 %81, label %86, label %82, !prof !11

82:                                               ; preds = %79
  %83 = tail call i32 @__cpuhp_setup_state_cpuslocked(i32 noundef 194, ptr noundef nonnull @.str.16, i1 noundef zeroext false, ptr noundef nonnull @cpuhp_cpufreq_online, ptr noundef nonnull @cpuhp_cpufreq_offline, i1 noundef zeroext false) #21
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  store i32 %83, ptr @hp_online, align 4
  br label %99

86:                                               ; preds = %82, %79
  %87 = phi i32 [ %83, %82 ], [ -19, %79 ]
  tail call void @subsys_interface_unregister(ptr noundef nonnull @cpufreq_interface) #21
  br label %88

88:                                               ; preds = %86, %76
  %89 = phi i32 [ %77, %76 ], [ %87, %86 ]
  %90 = load ptr, ptr @cpufreq_driver, align 4
  %91 = getelementptr inbounds %struct.cpufreq_driver, ptr %90, i32 0, i32 23
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %88
  %95 = load ptr, ptr @cpufreq_global_kobject, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %95, ptr noundef nonnull @boost, ptr noundef null) #21
  br label %96

96:                                               ; preds = %94, %88, %73
  %97 = phi i32 [ %74, %73 ], [ %89, %88 ], [ %89, %94 ]
  %98 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @cpufreq_driver_lock) #21
  store ptr null, ptr @cpufreq_driver, align 4
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %98) #21
  br label %99

99:                                               ; preds = %96, %85, %54
  %100 = phi i32 [ -17, %54 ], [ %97, %96 ], [ 0, %85 ]
  tail call void @cpus_read_unlock() #21
  br label %101

101:                                              ; preds = %99, %42, %34, %30, %29, %25, %13, %9, %7, %4, %1
  %102 = phi i32 [ %100, %99 ], [ -19, %1 ], [ -517, %4 ], [ -22, %42 ], [ -22, %34 ], [ -22, %30 ], [ -22, %29 ], [ -22, %25 ], [ -22, %13 ], [ -22, %9 ], [ -22, %7 ]
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @static_key_enable() unnamed_addr #14 {
  %1 = load i8, ptr @static_key_initialized, align 1, !range !12
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4, !prof !11

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 318, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.static_key_enable, ptr noundef nonnull @cpufreq_freq_invariance) #21
  br label %4

4:                                                ; preds = %3, %0
  %5 = load volatile i32, ptr @cpufreq_freq_invariance, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load volatile i32, ptr @cpufreq_freq_invariance, align 4
  %9 = icmp ne i32 %8, 1
  %10 = load i1, ptr @static_key_enable.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %7
  store i1 true, ptr @static_key_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 321, i32 noundef 9, ptr noundef null) #21
  br label %15

14:                                               ; preds = %4
  store volatile i32 1, ptr @cpufreq_freq_invariance, align 4
  br label %15

15:                                               ; preds = %14, %13, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subsys_interface_register(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpuhp_cpufreq_online(i32 noundef %0) #3 {
  %2 = tail call fastcc i32 @cpufreq_online(i32 noundef %0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpuhp_cpufreq_offline(i32 noundef %0) #3 {
  tail call fastcc void @cpufreq_offline(i32 noundef %0)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @subsys_interface_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_unregister_driver(ptr nocapture noundef readnone %0) #3 {
  %2 = load ptr, ptr @cpufreq_driver, align 4
  %3 = icmp ne ptr %2, null
  %4 = icmp eq ptr %2, %0
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %31

6:                                                ; preds = %1
  tail call void @cpus_read_lock() #21
  tail call void @subsys_interface_unregister(ptr noundef nonnull @cpufreq_interface) #21
  %7 = load ptr, ptr @cpufreq_driver, align 4
  %8 = getelementptr inbounds %struct.cpufreq_driver, ptr %7, i32 0, i32 23
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr @cpufreq_global_kobject, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %12, ptr noundef nonnull @boost, ptr noundef null) #21
  br label %13

13:                                               ; preds = %11, %6
  %14 = load i8, ptr @static_key_initialized, align 1, !range !12
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17, !prof !11

16:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 329, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.static_key_disable, ptr noundef nonnull @cpufreq_freq_invariance) #21
  br label %17

17:                                               ; preds = %16, %13
  %18 = load volatile i32, ptr @cpufreq_freq_invariance, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = load volatile i32, ptr @cpufreq_freq_invariance, align 4
  %22 = icmp ne i32 %21, 0
  %23 = load i1, ptr @static_key_disable.__already_done, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %28, !prof !11

26:                                               ; preds = %20
  store i1 true, ptr @static_key_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 332, i32 noundef 9, ptr noundef null) #21
  br label %28

27:                                               ; preds = %17
  store volatile i32 0, ptr @cpufreq_freq_invariance, align 4
  br label %28

28:                                               ; preds = %27, %26, %20
  %29 = load i32, ptr @hp_online, align 4
  tail call void @__cpuhp_remove_state_cpuslocked(i32 noundef %29, i1 noundef zeroext false) #21
  %30 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @cpufreq_driver_lock) #21
  store ptr null, ptr @cpufreq_driver, align 4
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %30) #21
  tail call void @cpus_read_unlock() #21
  br label %31

31:                                               ; preds = %28, %1
  %32 = phi i32 [ 0, %28 ], [ -22, %1 ]
  ret i32 %32
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cpufreq_core_init() #15 section ".init.text" {
  %1 = tail call ptr @cpufreq_default_governor() #21
  %2 = load i32, ptr @off, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %0
  %5 = load ptr, ptr getelementptr inbounds (%struct.bus_type, ptr @cpu_subsys, i32 0, i32 2), align 4
  %6 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.32, ptr noundef %5) #21
  store ptr %6, ptr @cpufreq_global_kobject, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/cpufreq/cpufreq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2919, 0\0A.popsection", ""() #21, !srcloc !24
  unreachable

9:                                                ; preds = %4
  %10 = load i8, ptr @default_governor, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call ptr @strncpy(ptr noundef nonnull @default_governor, ptr noundef %1, i32 noundef 16)
  br label %14

14:                                               ; preds = %12, %9, %0
  %15 = phi i32 [ -19, %0 ], [ 0, %12 ], [ 0, %9 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @jiffies64_to_nsecs(i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcu_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_table_index_unsorted(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cpu_frequency(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_read_value(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpufreq_init_governor(ptr noundef %0) unnamed_addr #3 {
  %2 = load i1, ptr @cpufreq_suspended, align 1
  br i1 %2, label %48, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %48, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cpufreq_governor, ptr %5, i32 0, i32 10
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @cpufreq_driver, align 4
  %14 = getelementptr inbounds %struct.cpufreq_driver, ptr %13, i32 0, i32 1
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 64
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = tail call ptr @cpufreq_fallback_governor()
  %20 = icmp eq ptr %19, null
  br i1 %20, label %48, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %4, align 4
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %22, ptr noundef nonnull %19) #23
  store ptr %19, ptr %4, align 4
  br label %24

24:                                               ; preds = %21, %12, %7
  %25 = phi ptr [ %19, %21 ], [ %5, %12 ], [ %5, %7 ]
  %26 = getelementptr inbounds %struct.cpufreq_governor, ptr %25, i32 0, i32 9
  %27 = load ptr, ptr %26, align 4
  %28 = tail call zeroext i1 @try_module_get(ptr noundef %27) #21
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.cpufreq_governor, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = tail call i32 %32(ptr noundef %0) #21
  %36 = icmp eq i32 %35, 0
  %37 = load ptr, ptr %4, align 4
  br i1 %36, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.cpufreq_governor, ptr %37, i32 0, i32 9
  %40 = load ptr, ptr %39, align 4
  tail call void @module_put(ptr noundef %40) #21
  br label %48

41:                                               ; preds = %34, %29
  %42 = phi ptr [ %30, %29 ], [ %37, %34 ]
  %43 = getelementptr inbounds %struct.cpufreq_governor, ptr %42, i32 0, i32 10
  %44 = load i8, ptr %43, align 4
  %45 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 28
  %46 = lshr i8 %44, 1
  %47 = and i8 %46, 1
  store i8 %47, ptr %45, align 2
  br label %48

48:                                               ; preds = %41, %38, %24, %18, %3, %1
  %49 = phi i32 [ %35, %38 ], [ 0, %41 ], [ 0, %1 ], [ -22, %3 ], [ -22, %24 ], [ -22, %18 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cpu_frequency_limits(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_frequency_table_cpuinfo(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_boost(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #17 {
  %4 = load ptr, ptr @cpufreq_driver, align 4
  %5 = getelementptr inbounds %struct.cpufreq_driver, ptr %4, i32 0, i32 22
  %6 = load i8, ptr %5, align 4, !range !12
  %7 = zext i8 %6 to i32
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_boost(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #3 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store i32 0, ptr %5, align 4, !annotation !13
  %6 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.28, ptr noundef nonnull %5)
  %7 = icmp ne i32 %6, 1
  %8 = load i32, ptr %5, align 4
  %9 = icmp slt i32 %8, 0
  %10 = select i1 %7, i1 true, i1 %9
  %11 = icmp sgt i32 %8, 1
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %4
  %14 = call i32 @cpufreq_boost_trigger_state(i32 noundef %8)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %5, align 4
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, ptr @.str.15, ptr @.str.14
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.store_boost, ptr noundef nonnull %19) #23
  br label %21

21:                                               ; preds = %16, %13, %4
  %22 = phi i32 [ -22, %16 ], [ -22, %4 ], [ %3, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret i32 %22
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpufreq_add_dev(ptr noundef %0, ptr nocapture noundef readnone %1) #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 28
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 5
  %6 = getelementptr i32, ptr @__cpu_online_mask, i32 %5
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %4, 31
  %9 = shl nuw i32 1, %8
  %10 = and i32 %9, %7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = tail call fastcc i32 @cpufreq_online(i32 noundef %4)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %12, %2
  %16 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, ptrtoint (ptr @cpufreq_cpu_data to i32)
  %19 = inttoptr i32 %18 to ptr
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = icmp eq ptr %0, null
  %23 = or i1 %22, %21
  br i1 %23, label %33, label %24, !prof !25

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.cpufreq_policy, ptr %20, i32 0, i32 2
  %26 = tail call i32 @_test_and_set_bit(i32 noundef %4, ptr noundef %25) #21
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.cpufreq_policy, ptr %20, i32 0, i32 23
  %30 = tail call i32 @sysfs_create_link(ptr noundef nonnull %0, ptr noundef %29, ptr noundef nonnull @.str.32) #21
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.72) #23
  br label %33

33:                                               ; preds = %32, %28, %24, %15, %12
  %34 = phi i32 [ %13, %12 ], [ 0, %15 ], [ 0, %24 ], [ 0, %28 ], [ 0, %32 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpufreq_remove_dev(ptr noundef %0, ptr nocapture noundef readnone %1) #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 28
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, ptrtoint (ptr @cpufreq_cpu_data to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %2
  %12 = lshr i32 %4, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %4, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  tail call fastcc void @cpufreq_offline(i32 noundef %4)
  br label %20

20:                                               ; preds = %19, %11
  %21 = getelementptr inbounds %struct.cpufreq_policy, ptr %9, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef %4, ptr noundef %21) #21
  tail call void @sysfs_remove_link(ptr noundef %0, ptr noundef nonnull @.str.32) #21
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load ptr, ptr @cpufreq_driver, align 4
  %27 = getelementptr inbounds %struct.cpufreq_driver, ptr %26, i32 0, i32 16
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.cpufreq_driver, ptr %26, i32 0, i32 17
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef nonnull %9) #21
  br label %34

34:                                               ; preds = %30, %25
  tail call fastcc void @cpufreq_policy_free(ptr noundef nonnull %9)
  br label %35

35:                                               ; preds = %34, %20, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpufreq_online(i32 noundef %0) unnamed_addr #3 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @cpufreq_cpu_data to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %91, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.cpufreq_policy, ptr %6, i32 0, i32 1
  %10 = lshr i32 %0, 5
  %11 = getelementptr i32, ptr %9, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %0, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18, !prof !11

17:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1331, i32 noundef 9, ptr noundef null) #21
  br label %18

18:                                               ; preds = %17, %8
  %19 = load i32, ptr %6, align 4
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %139, label %22

22:                                               ; preds = %18
  %23 = getelementptr i32, ptr %6, i32 %10
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, %14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %461

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.cpufreq_policy, ptr %6, i32 0, i32 25
  tail call void @down_write(ptr noundef %28) #21
  %29 = load ptr, ptr @cpufreq_driver, align 4
  %30 = getelementptr inbounds %struct.cpufreq_driver, ptr %29, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.cpufreq_driver, ptr %29, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %33, %27
  %38 = load i1, ptr @cpufreq_suspended, align 1
  br i1 %38, label %48, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.cpufreq_policy, ptr %6, i32 0, i32 13
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.cpufreq_governor, ptr %41, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void %45(ptr noundef nonnull %6) #21
  br label %48

48:                                               ; preds = %47, %43, %39, %37, %33
  tail call void @_set_bit(i32 noundef %0, ptr noundef nonnull %6) #21
  %49 = load ptr, ptr @cpufreq_driver, align 4
  %50 = getelementptr inbounds %struct.cpufreq_driver, ptr %49, i32 0, i32 7
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.cpufreq_driver, ptr %49, i32 0, i32 6
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %89, label %57

57:                                               ; preds = %53, %48
  %58 = load i1, ptr @cpufreq_suspended, align 1
  br i1 %58, label %89, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.cpufreq_policy, ptr %6, i32 0, i32 13
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %86, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.cpufreq_driver, ptr %49, i32 0, i32 12
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = tail call fastcc i32 @cpufreq_verify_current_freq(ptr noundef nonnull %6, i1 noundef zeroext false) #21
  %69 = load ptr, ptr %60, align 4
  br label %70

70:                                               ; preds = %67, %63
  %71 = phi ptr [ %69, %67 ], [ %61, %63 ]
  %72 = getelementptr inbounds %struct.cpufreq_governor, ptr %71, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = tail call i32 %73(ptr noundef nonnull %6) #21
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load ptr, ptr %60, align 4
  br label %80

80:                                               ; preds = %78, %70
  %81 = phi ptr [ %79, %78 ], [ %71, %70 ]
  %82 = getelementptr inbounds %struct.cpufreq_governor, ptr %81, i32 0, i32 5
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %80
  tail call void %83(ptr noundef nonnull %6) #21
  br label %89

86:                                               ; preds = %75, %59
  %87 = phi i32 [ -22, %59 ], [ %76, %75 ]
  %88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cpufreq_add_policy_cpu) #23
  br label %89

89:                                               ; preds = %86, %85, %80, %57, %53
  %90 = phi i32 [ %87, %86 ], [ 0, %53 ], [ 0, %57 ], [ 0, %85 ], [ 0, %80 ]
  tail call void @up_write(ptr noundef %28) #21
  br label %461

91:                                               ; preds = %1
  %92 = tail call ptr @get_cpu_device(i32 noundef %0) #21
  %93 = icmp eq ptr %92, null
  br i1 %93, label %461, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %96 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %95, i32 noundef 3520, i32 noundef 392) #25
  %97 = icmp eq ptr %96, null
  br i1 %97, label %461, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.cpufreq_policy, ptr %96, i32 0, i32 1
  store i32 0, ptr %99, align 4
  %100 = getelementptr inbounds %struct.cpufreq_policy, ptr %96, i32 0, i32 2
  store i32 0, ptr %100, align 8
  %101 = getelementptr inbounds %struct.cpufreq_policy, ptr %96, i32 0, i32 23
  %102 = load ptr, ptr @cpufreq_global_kobject, align 4
  %103 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %101, ptr noundef nonnull @ktype_cpufreq, ptr noundef %102, ptr noundef nonnull @.str.37, i32 noundef %0) #21
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %98
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %92, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.cpufreq_policy_alloc, i32 noundef %103) #23
  tail call void @kobject_put(ptr noundef %101) #21
  br label %123

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.cpufreq_policy, ptr %96, i32 0, i32 17
  tail call void @freq_constraints_init(ptr noundef %107) #21
  %108 = getelementptr inbounds %struct.cpufreq_policy, ptr %96, i32 0, i32 41
  store ptr @cpufreq_notifier_min, ptr %108, align 8
  %109 = getelementptr inbounds %struct.cpufreq_policy, ptr %96, i32 0, i32 42
  store ptr @cpufreq_notifier_max, ptr %109, align 4
  %110 = tail call i32 @freq_qos_add_notifier(ptr noundef %107, i32 noundef 1, ptr noundef %108) #21
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %106
  %113 = load i32, ptr @nr_cpu_ids, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %92, ptr noundef nonnull @.str.39, i32 noundef %110, i32 noundef %113, ptr noundef nonnull %96) #23
  br label %120

114:                                              ; preds = %106
  %115 = tail call i32 @freq_qos_add_notifier(ptr noundef %107, i32 noundef 2, ptr noundef %109) #21
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %114
  %118 = load i32, ptr @nr_cpu_ids, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %92, ptr noundef nonnull @.str.40, i32 noundef %115, i32 noundef %118, ptr noundef nonnull %96) #23
  %119 = tail call i32 @freq_qos_remove_notifier(ptr noundef %107, i32 noundef 1, ptr noundef %108) #21
  br label %120

120:                                              ; preds = %117, %112
  %121 = getelementptr inbounds %struct.cpufreq_policy, ptr %96, i32 0, i32 25
  tail call void @down_write(ptr noundef %121) #21
  tail call void @cpufreq_stats_free_table(ptr noundef nonnull %96) #21
  %122 = getelementptr inbounds %struct.cpufreq_policy, ptr %96, i32 0, i32 24
  tail call void @up_write(ptr noundef %121) #21
  tail call void @kobject_put(ptr noundef %101) #21
  tail call void @wait_for_completion(ptr noundef %122) #21
  br label %123

123:                                              ; preds = %120, %105
  tail call void @kfree(ptr noundef nonnull %96) #21
  br label %461

124:                                              ; preds = %114
  %125 = getelementptr inbounds %struct.cpufreq_policy, ptr %96, i32 0, i32 22
  store volatile ptr %125, ptr %125, align 4
  %126 = getelementptr inbounds %struct.cpufreq_policy, ptr %96, i32 0, i32 22, i32 1
  store ptr %125, ptr %126, align 8
  %127 = getelementptr inbounds %struct.cpufreq_policy, ptr %96, i32 0, i32 25
  tail call void @__init_rwsem(ptr noundef %127, ptr noundef nonnull @.str.41, ptr noundef nonnull @cpufreq_policy_alloc.__key) #21
  %128 = getelementptr inbounds %struct.cpufreq_policy, ptr %96, i32 0, i32 35
  store i32 0, ptr %128, align 8
  %129 = getelementptr inbounds %struct.cpufreq_policy, ptr %96, i32 0, i32 36
  tail call void @__init_waitqueue_head(ptr noundef %129, ptr noundef nonnull @.str.43, ptr noundef nonnull @cpufreq_policy_alloc.__key.42) #21
  %130 = getelementptr inbounds %struct.cpufreq_policy, ptr %96, i32 0, i32 24
  store i32 0, ptr %130, align 8
  %131 = getelementptr inbounds %struct.cpufreq_policy, ptr %96, i32 0, i32 24, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %131, ptr noundef nonnull @.str.67, ptr noundef nonnull @init_completion.__key) #21
  %132 = getelementptr inbounds %struct.cpufreq_policy, ptr %96, i32 0, i32 16
  store i32 -32, ptr %132, align 4
  %133 = getelementptr inbounds %struct.cpufreq_policy, ptr %96, i32 0, i32 16, i32 1
  store volatile ptr %133, ptr %133, align 8
  %134 = getelementptr inbounds %struct.cpufreq_policy, ptr %96, i32 0, i32 16, i32 1, i32 1
  store ptr %133, ptr %134, align 4
  %135 = getelementptr inbounds %struct.cpufreq_policy, ptr %96, i32 0, i32 16, i32 2
  store ptr @handle_update, ptr %135, align 8
  %136 = getelementptr inbounds %struct.cpufreq_policy, ptr %96, i32 0, i32 4
  store i32 %0, ptr %136, align 8
  %137 = and i32 %0, 31
  %138 = lshr i32 %0, 5
  br label %150

139:                                              ; preds = %18
  %140 = getelementptr inbounds %struct.cpufreq_policy, ptr %6, i32 0, i32 25
  tail call void @down_write(ptr noundef %140) #21
  %141 = getelementptr inbounds %struct.cpufreq_policy, ptr %6, i32 0, i32 4
  store i32 %0, ptr %141, align 4
  %142 = getelementptr inbounds %struct.cpufreq_policy, ptr %6, i32 0, i32 13
  store ptr null, ptr %142, align 4
  tail call void @up_write(ptr noundef %140) #21
  %143 = load ptr, ptr @cpufreq_driver, align 4
  %144 = getelementptr inbounds %struct.cpufreq_driver, ptr %143, i32 0, i32 15
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %139
  %148 = tail call i32 %145(ptr noundef nonnull %6) #21
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %169, label %449

150:                                              ; preds = %139, %124
  %151 = phi i32 [ %138, %124 ], [ %10, %139 ]
  %152 = phi i32 [ %137, %124 ], [ %13, %139 ]
  %153 = phi ptr [ %96, %124 ], [ %6, %139 ]
  %154 = add nuw nsw i32 %152, 1
  %155 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %154
  %156 = sub nsw i32 0, %151
  %157 = getelementptr i32, ptr %155, i32 %156
  %158 = load i32, ptr %157, align 4
  store i32 %158, ptr %153, align 4
  %159 = load ptr, ptr @cpufreq_driver, align 4
  %160 = getelementptr inbounds %struct.cpufreq_driver, ptr %159, i32 0, i32 3
  %161 = load ptr, ptr %160, align 4
  %162 = tail call i32 %161(ptr noundef nonnull %153) #21
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %458

164:                                              ; preds = %150
  %165 = tail call i32 @cpufreq_table_validate_and_sort(ptr noundef nonnull %153) #21
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %440

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.cpufreq_policy, ptr %153, i32 0, i32 1
  br label %169

169:                                              ; preds = %167, %147
  %170 = phi ptr [ %153, %167 ], [ %9, %147 ]
  %171 = phi ptr [ %168, %167 ], [ %6, %147 ]
  %172 = phi ptr [ %153, %167 ], [ %6, %147 ]
  %173 = load i32, ptr %170, align 4
  store i32 %173, ptr %171, align 4
  %174 = getelementptr inbounds %struct.cpufreq_policy, ptr %172, i32 0, i32 25
  tail call void @down_write(ptr noundef %174) #21
  %175 = load i32, ptr %172, align 4
  %176 = load i32, ptr @__cpu_online_mask, align 4
  %177 = and i32 %175, 65535
  %178 = and i32 %177, %176
  store i32 %178, ptr %172, align 4
  br i1 %7, label %179, label %225

179:                                              ; preds = %169
  %180 = getelementptr inbounds %struct.cpufreq_policy, ptr %172, i32 0, i32 1
  %181 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %180) #24
  %182 = load i32, ptr @nr_cpu_ids, align 4
  %183 = icmp ult i32 %181, %182
  br i1 %183, label %184, label %206

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.cpufreq_policy, ptr %172, i32 0, i32 2
  %186 = getelementptr inbounds %struct.cpufreq_policy, ptr %172, i32 0, i32 23
  br label %187

187:                                              ; preds = %202, %184
  %188 = phi i32 [ %181, %184 ], [ %203, %202 ]
  %189 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %188
  %190 = load i32, ptr %189, align 4
  %191 = add i32 %190, ptrtoint (ptr @cpufreq_cpu_data to i32)
  %192 = inttoptr i32 %191 to ptr
  store ptr %172, ptr %192, align 4
  %193 = tail call ptr @get_cpu_device(i32 noundef %188) #21
  %194 = icmp eq ptr %193, null
  br i1 %194, label %202, label %195, !prof !11

195:                                              ; preds = %187
  %196 = tail call i32 @_test_and_set_bit(i32 noundef %188, ptr noundef %185) #21
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = tail call i32 @sysfs_create_link(ptr noundef nonnull %193, ptr noundef %186, ptr noundef nonnull @.str.32) #21
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %198
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %193, ptr noundef nonnull @.str.72) #23
  br label %202

202:                                              ; preds = %201, %198, %195, %187
  %203 = tail call i32 @cpumask_next(i32 noundef %188, ptr noundef %180) #24
  %204 = load i32, ptr @nr_cpu_ids, align 4
  %205 = icmp ult i32 %203, %204
  br i1 %205, label %187, label %206

206:                                              ; preds = %202, %179
  %207 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %208 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %207, i32 noundef 3520, i32 noundef 56) #25
  %209 = getelementptr inbounds %struct.cpufreq_policy, ptr %172, i32 0, i32 18
  store ptr %208, ptr %209, align 4
  %210 = icmp eq ptr %208, null
  br i1 %210, label %427, label %211

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.cpufreq_policy, ptr %172, i32 0, i32 17
  %213 = tail call i32 @freq_qos_add_request(ptr noundef %212, ptr noundef nonnull %208, i32 noundef 1, i32 noundef 0) #21
  %214 = icmp slt i32 %213, 0
  %215 = load ptr, ptr %209, align 4
  br i1 %214, label %216, label %217

216:                                              ; preds = %211
  tail call void @kfree(ptr noundef %215) #21
  store ptr null, ptr %209, align 4
  br label %427

217:                                              ; preds = %211
  %218 = getelementptr %struct.freq_qos_request, ptr %215, i32 1
  %219 = getelementptr inbounds %struct.cpufreq_policy, ptr %172, i32 0, i32 19
  store ptr %218, ptr %219, align 4
  %220 = tail call i32 @freq_qos_add_request(ptr noundef %212, ptr noundef %218, i32 noundef 2, i32 noundef 2147483647) #21
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  store ptr null, ptr %219, align 4
  br label %427

223:                                              ; preds = %217
  %224 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @cpufreq_policy_notifier_list, i32 noundef 0, ptr noundef %172) #21
  br label %225

225:                                              ; preds = %223, %169
  %226 = load ptr, ptr @cpufreq_driver, align 4
  %227 = getelementptr inbounds %struct.cpufreq_driver, ptr %226, i32 0, i32 12
  %228 = load ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %248, label %230

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.cpufreq_driver, ptr %226, i32 0, i32 7
  %232 = load ptr, ptr %231, align 4
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %238

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.cpufreq_driver, ptr %226, i32 0, i32 6
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %248, label %238

238:                                              ; preds = %234, %230
  %239 = getelementptr inbounds %struct.cpufreq_policy, ptr %172, i32 0, i32 4
  %240 = load i32, ptr %239, align 4
  %241 = tail call i32 %228(i32 noundef %240) #21
  %242 = getelementptr inbounds %struct.cpufreq_policy, ptr %172, i32 0, i32 9
  store i32 %241, ptr %242, align 4
  %243 = icmp eq i32 %241, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %238
  %245 = load ptr, ptr @cpufreq_driver, align 4
  br label %248

246:                                              ; preds = %238
  %247 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.cpufreq_online) #23
  br label %427

248:                                              ; preds = %244, %234, %225
  %249 = phi ptr [ %245, %244 ], [ %226, %234 ], [ %226, %225 ]
  %250 = getelementptr inbounds %struct.cpufreq_driver, ptr %249, i32 0, i32 1
  %251 = load i16, ptr %250, align 4
  %252 = and i16 %251, 32
  %253 = icmp eq i16 %252, 0
  br i1 %253, label %277, label %254

254:                                              ; preds = %248
  %255 = getelementptr inbounds %struct.cpufreq_driver, ptr %249, i32 0, i32 7
  %256 = load ptr, ptr %255, align 4
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %262

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.cpufreq_driver, ptr %249, i32 0, i32 6
  %260 = load ptr, ptr %259, align 4
  %261 = icmp eq ptr %260, null
  br i1 %261, label %277, label %262

262:                                              ; preds = %258, %254
  %263 = getelementptr inbounds %struct.cpufreq_policy, ptr %172, i32 0, i32 9
  %264 = load i32, ptr %263, align 4
  %265 = tail call i32 @cpufreq_frequency_table_get_index(ptr noundef %172, i32 noundef %264) #21
  %266 = icmp eq i32 %265, -22
  br i1 %266, label %267, label %277

267:                                              ; preds = %262
  %268 = add i32 %264, -1
  %269 = tail call i32 @__cpufreq_driver_target(ptr noundef %172, i32 noundef %268, i32 noundef 0)
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %272, label %271, !prof !10

271:                                              ; preds = %267
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/cpufreq/cpufreq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1479, 0\0A.popsection", ""() #21, !srcloc !26
  unreachable

272:                                              ; preds = %267
  %273 = getelementptr inbounds %struct.cpufreq_policy, ptr %172, i32 0, i32 4
  %274 = load i32, ptr %273, align 4
  %275 = load i32, ptr %263, align 4
  %276 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.cpufreq_online, i32 noundef %274, i32 noundef %264, i32 noundef %275) #23
  br label %277

277:                                              ; preds = %272, %262, %258, %248
  br i1 %7, label %278, label %329

278:                                              ; preds = %277
  %279 = load ptr, ptr @cpufreq_driver, align 4
  %280 = getelementptr inbounds %struct.cpufreq_driver, ptr %279, i32 0, i32 21
  %281 = load ptr, ptr %280, align 4
  %282 = icmp eq ptr %281, null
  br i1 %282, label %297, label %283

283:                                              ; preds = %278
  %284 = getelementptr inbounds %struct.cpufreq_policy, ptr %172, i32 0, i32 23
  br label %288

285:                                              ; preds = %292
  %286 = getelementptr ptr, ptr %289, i32 1
  %287 = icmp eq ptr %286, null
  br i1 %287, label %295, label %288

288:                                              ; preds = %285, %283
  %289 = phi ptr [ %281, %283 ], [ %286, %285 ]
  %290 = load ptr, ptr %289, align 4
  %291 = icmp eq ptr %290, null
  br i1 %291, label %295, label %292

292:                                              ; preds = %288
  %293 = tail call i32 @sysfs_create_file_ns(ptr noundef %284, ptr noundef nonnull %290, ptr noundef null) #21
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %285, label %427

295:                                              ; preds = %288, %285
  %296 = load ptr, ptr @cpufreq_driver, align 4
  br label %297

297:                                              ; preds = %295, %278
  %298 = phi ptr [ %296, %295 ], [ %279, %278 ]
  %299 = getelementptr inbounds %struct.cpufreq_driver, ptr %298, i32 0, i32 12
  %300 = load ptr, ptr %299, align 4
  %301 = icmp eq ptr %300, null
  br i1 %301, label %306, label %302

302:                                              ; preds = %297
  %303 = getelementptr inbounds %struct.cpufreq_policy, ptr %172, i32 0, i32 23
  %304 = tail call i32 @sysfs_create_file_ns(ptr noundef %303, ptr noundef nonnull @cpuinfo_cur_freq, ptr noundef null) #21
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %427

306:                                              ; preds = %302, %297
  %307 = getelementptr inbounds %struct.cpufreq_policy, ptr %172, i32 0, i32 23
  %308 = tail call i32 @sysfs_create_file_ns(ptr noundef %307, ptr noundef nonnull @scaling_cur_freq, ptr noundef null) #21
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %427

310:                                              ; preds = %306
  %311 = load ptr, ptr @cpufreq_driver, align 4
  %312 = getelementptr inbounds %struct.cpufreq_driver, ptr %311, i32 0, i32 14
  %313 = load ptr, ptr %312, align 4
  %314 = icmp eq ptr %313, null
  br i1 %314, label %318, label %315

315:                                              ; preds = %310
  %316 = tail call i32 @sysfs_create_file_ns(ptr noundef %307, ptr noundef nonnull @bios_limit, ptr noundef null) #21
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %427

318:                                              ; preds = %315, %310
  tail call void @cpufreq_stats_create_table(ptr noundef %172) #21
  %319 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @cpufreq_driver_lock) #21
  %320 = getelementptr inbounds %struct.cpufreq_policy, ptr %172, i32 0, i32 22
  %321 = load ptr, ptr @cpufreq_policy_list, align 4
  %322 = getelementptr inbounds %struct.list_head, ptr %321, i32 0, i32 1
  store ptr %320, ptr %322, align 4
  store ptr %321, ptr %320, align 4
  %323 = getelementptr inbounds %struct.cpufreq_policy, ptr %172, i32 0, i32 22, i32 1
  store ptr @cpufreq_policy_list, ptr %323, align 4
  store volatile ptr %320, ptr @cpufreq_policy_list, align 4
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %319) #21
  %324 = load ptr, ptr @cpufreq_driver, align 4
  %325 = getelementptr inbounds %struct.cpufreq_driver, ptr %324, i32 0, i32 24
  %326 = load ptr, ptr %325, align 4
  %327 = icmp eq ptr %326, null
  br i1 %327, label %329, label %328

328:                                              ; preds = %318
  tail call void %326(ptr noundef %172) #21
  br label %329

329:                                              ; preds = %328, %318, %277
  %330 = load ptr, ptr @cpufreq_driver, align 4
  %331 = getelementptr inbounds %struct.cpufreq_driver, ptr %330, i32 0, i32 7
  %332 = load ptr, ptr %331, align 4
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %338

334:                                              ; preds = %329
  %335 = getelementptr inbounds %struct.cpufreq_driver, ptr %330, i32 0, i32 6
  %336 = load ptr, ptr %335, align 4
  %337 = icmp eq ptr %336, null
  br i1 %337, label %369, label %338

338:                                              ; preds = %334, %329
  %339 = getelementptr inbounds %struct.cpufreq_policy, ptr %172, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef nonnull @cpufreq_governor_mutex) #21
  br label %340

340:                                              ; preds = %344, %338
  %341 = phi ptr [ @cpufreq_governor_list, %338 ], [ %342, %344 ]
  %342 = load ptr, ptr %341, align 4
  %343 = icmp eq ptr %342, @cpufreq_governor_list
  br i1 %343, label %354, label %344

344:                                              ; preds = %340
  %345 = getelementptr i8, ptr %342, i32 -44
  %346 = tail call i32 @strncasecmp(ptr noundef %339, ptr noundef %345, i32 noundef 16) #21
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %340

348:                                              ; preds = %344
  %349 = icmp eq ptr %345, null
  br i1 %349, label %354, label %350

350:                                              ; preds = %348
  %351 = getelementptr i8, ptr %342, i32 8
  %352 = load ptr, ptr %351, align 4
  %353 = tail call zeroext i1 @try_module_get(ptr noundef %352) #21
  br i1 %353, label %389, label %354

354:                                              ; preds = %350, %348, %340
  tail call void @mutex_unlock(ptr noundef nonnull @cpufreq_governor_mutex) #21
  tail call void @mutex_lock(ptr noundef nonnull @cpufreq_governor_mutex) #21
  br label %355

355:                                              ; preds = %359, %354
  %356 = phi ptr [ @cpufreq_governor_list, %354 ], [ %357, %359 ]
  %357 = load ptr, ptr %356, align 4
  %358 = icmp eq ptr %357, @cpufreq_governor_list
  br i1 %358, label %392, label %359

359:                                              ; preds = %355
  %360 = getelementptr i8, ptr %357, i32 -44
  %361 = tail call i32 @strncasecmp(ptr noundef nonnull @default_governor, ptr noundef %360, i32 noundef 16) #21
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %355

363:                                              ; preds = %359
  %364 = icmp eq ptr %360, null
  br i1 %364, label %392, label %365

365:                                              ; preds = %363
  %366 = getelementptr i8, ptr %357, i32 8
  %367 = load ptr, ptr %366, align 4
  %368 = tail call zeroext i1 @try_module_get(ptr noundef %367) #21
  br i1 %368, label %389, label %392

369:                                              ; preds = %334
  %370 = getelementptr inbounds %struct.cpufreq_policy, ptr %172, i32 0, i32 12
  %371 = load i32, ptr %370, align 4
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %382

373:                                              ; preds = %369
  %374 = tail call i32 @strncasecmp(ptr noundef nonnull @default_governor, ptr noundef nonnull @.str.58, i32 noundef 16) #21
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %386, label %376

376:                                              ; preds = %373
  %377 = tail call i32 @strncasecmp(ptr noundef nonnull @default_governor, ptr noundef nonnull @.str.59, i32 noundef 16) #21
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %386, label %379

379:                                              ; preds = %376
  %380 = getelementptr inbounds %struct.cpufreq_policy, ptr %172, i32 0, i32 11
  %381 = load i32, ptr %380, align 4
  br label %382

382:                                              ; preds = %379, %369
  %383 = phi i32 [ %381, %379 ], [ %371, %369 ]
  %384 = add i32 %383, -3
  %385 = icmp ult i32 %384, -2
  br i1 %385, label %406, label %386

386:                                              ; preds = %382, %376, %373
  %387 = phi i32 [ %383, %382 ], [ 1, %376 ], [ 2, %373 ]
  %388 = tail call fastcc i32 @cpufreq_set_policy(ptr noundef %172, ptr noundef null, i32 noundef %387) #21
  br label %403

389:                                              ; preds = %365, %350
  %390 = phi ptr [ %345, %350 ], [ %360, %365 ]
  tail call void @mutex_unlock(ptr noundef nonnull @cpufreq_governor_mutex) #21
  %391 = tail call fastcc i32 @cpufreq_set_policy(ptr noundef %172, ptr noundef nonnull %390, i32 noundef 0) #21
  br label %398

392:                                              ; preds = %365, %363, %355
  tail call void @mutex_unlock(ptr noundef nonnull @cpufreq_governor_mutex) #21
  %393 = tail call ptr @cpufreq_default_governor() #21
  %394 = getelementptr inbounds %struct.cpufreq_governor, ptr %393, i32 0, i32 9
  %395 = load ptr, ptr %394, align 4
  tail call void @__module_get(ptr noundef %395) #21
  %396 = tail call fastcc i32 @cpufreq_set_policy(ptr noundef %172, ptr noundef %393, i32 noundef 0) #21
  %397 = icmp eq ptr %393, null
  br i1 %397, label %403, label %398

398:                                              ; preds = %392, %389
  %399 = phi i32 [ %391, %389 ], [ %396, %392 ]
  %400 = phi ptr [ %390, %389 ], [ %393, %392 ]
  %401 = getelementptr inbounds %struct.cpufreq_governor, ptr %400, i32 0, i32 9
  %402 = load ptr, ptr %401, align 4
  tail call void @module_put(ptr noundef %402) #21
  br label %403

403:                                              ; preds = %398, %392, %386
  %404 = phi i32 [ %399, %398 ], [ %396, %392 ], [ %388, %386 ]
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %409, label %406

406:                                              ; preds = %403, %382
  %407 = phi i32 [ %404, %403 ], [ -61, %382 ]
  %408 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.cpufreq_online, i32 noundef %0, i32 noundef %407) #23
  br label %427

409:                                              ; preds = %403
  tail call void @up_write(ptr noundef %174) #21
  %410 = getelementptr inbounds %struct.cpufreq_policy, ptr %172, i32 0, i32 23
  %411 = tail call i32 @kobject_uevent(ptr noundef %410, i32 noundef 0) #21
  %412 = load ptr, ptr @cpufreq_driver, align 4
  %413 = getelementptr inbounds %struct.cpufreq_driver, ptr %412, i32 0, i32 20
  %414 = load ptr, ptr %413, align 4
  %415 = icmp eq ptr %414, null
  br i1 %415, label %418, label %416

416:                                              ; preds = %409
  tail call void %414(ptr noundef %172) #21
  %417 = load ptr, ptr @cpufreq_driver, align 4
  br label %418

418:                                              ; preds = %416, %409
  %419 = phi ptr [ %417, %416 ], [ %412, %409 ]
  %420 = getelementptr inbounds %struct.cpufreq_driver, ptr %419, i32 0, i32 1
  %421 = load i16, ptr %420, align 4
  %422 = and i16 %421, 4
  %423 = icmp eq i16 %422, 0
  br i1 %423, label %461, label %424

424:                                              ; preds = %418
  %425 = tail call ptr @of_cpufreq_cooling_register(ptr noundef %172) #21
  %426 = getelementptr inbounds %struct.cpufreq_policy, ptr %172, i32 0, i32 40
  store ptr %425, ptr %426, align 4
  br label %461

427:                                              ; preds = %406, %315, %306, %302, %292, %246, %222, %216, %206
  %428 = phi i32 [ %213, %216 ], [ %220, %222 ], [ %407, %406 ], [ -5, %246 ], [ -12, %206 ], [ %316, %315 ], [ %308, %306 ], [ %304, %302 ], [ %293, %292 ]
  %429 = getelementptr inbounds %struct.cpufreq_policy, ptr %172, i32 0, i32 2
  %430 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %429) #24
  %431 = load i32, ptr @nr_cpu_ids, align 4
  %432 = icmp ult i32 %430, %431
  br i1 %432, label %433, label %439

433:                                              ; preds = %433, %427
  %434 = phi i32 [ %436, %433 ], [ %430, %427 ]
  %435 = tail call ptr @get_cpu_device(i32 noundef %434) #21
  tail call void @sysfs_remove_link(ptr noundef %435, ptr noundef nonnull @.str.32) #21
  %436 = tail call i32 @cpumask_next(i32 noundef %434, ptr noundef %429) #24
  %437 = load i32, ptr @nr_cpu_ids, align 4
  %438 = icmp ult i32 %436, %437
  br i1 %438, label %433, label %439

439:                                              ; preds = %433, %427
  tail call void @up_write(ptr noundef %174) #21
  br label %440

440:                                              ; preds = %439, %164
  %441 = phi ptr [ %153, %164 ], [ %172, %439 ]
  %442 = phi i32 [ %165, %164 ], [ %428, %439 ]
  %443 = load ptr, ptr @cpufreq_driver, align 4
  %444 = getelementptr inbounds %struct.cpufreq_driver, ptr %443, i32 0, i32 16
  %445 = load ptr, ptr %444, align 4
  %446 = icmp eq ptr %445, null
  br i1 %446, label %449, label %447

447:                                              ; preds = %440
  %448 = tail call i32 %445(ptr noundef %441) #21
  br label %449

449:                                              ; preds = %447, %440, %147
  %450 = phi ptr [ %441, %447 ], [ %441, %440 ], [ %6, %147 ]
  %451 = phi i32 [ %442, %447 ], [ %442, %440 ], [ %148, %147 ]
  %452 = load ptr, ptr @cpufreq_driver, align 4
  %453 = getelementptr inbounds %struct.cpufreq_driver, ptr %452, i32 0, i32 17
  %454 = load ptr, ptr %453, align 4
  %455 = icmp eq ptr %454, null
  br i1 %455, label %458, label %456

456:                                              ; preds = %449
  %457 = tail call i32 %454(ptr noundef %450) #21
  br label %458

458:                                              ; preds = %456, %449, %150
  %459 = phi ptr [ %450, %456 ], [ %450, %449 ], [ %153, %150 ]
  %460 = phi i32 [ %451, %456 ], [ %451, %449 ], [ %162, %150 ]
  tail call fastcc void @cpufreq_policy_free(ptr noundef %459)
  br label %461

461:                                              ; preds = %458, %424, %418, %123, %94, %91, %89, %22
  %462 = phi i32 [ %460, %458 ], [ 0, %424 ], [ 0, %418 ], [ %90, %89 ], [ 0, %22 ], [ -12, %123 ], [ -12, %91 ], [ -12, %94 ]
  ret i32 %462
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_table_validate_and_sort(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_add_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_frequency_table_get_index(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_stats_create_table(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_cpufreq_cooling_register(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpufreq_policy_free(ptr noundef %0) unnamed_addr #3 {
  %2 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @cpufreq_driver_lock) #21
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 22
  %4 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 22, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  store volatile ptr %6, ptr %5, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  %8 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 1
  %9 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %8) #24
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %12, %1
  %13 = phi i32 [ %18, %12 ], [ %9, %1 ]
  %14 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, ptrtoint (ptr @cpufreq_cpu_data to i32)
  %17 = inttoptr i32 %16 to ptr
  store ptr null, ptr %17, align 4
  %18 = tail call i32 @cpumask_next(i32 noundef %13, ptr noundef %8) #24
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %12, label %21

21:                                               ; preds = %12, %1
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @cpufreq_driver_lock, i32 noundef %2) #21
  %22 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 17
  %23 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 42
  %24 = tail call i32 @freq_qos_remove_notifier(ptr noundef %22, i32 noundef 2, ptr noundef %23) #21
  %25 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 41
  %26 = tail call i32 @freq_qos_remove_notifier(ptr noundef %22, i32 noundef 1, ptr noundef %25) #21
  %27 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 16
  %28 = tail call zeroext i1 @cancel_work_sync(ptr noundef %27) #21
  %29 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 19
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %21
  %33 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @cpufreq_policy_notifier_list, i32 noundef 1, ptr noundef %0) #21
  %34 = load ptr, ptr %29, align 4
  %35 = tail call i32 @freq_qos_remove_request(ptr noundef %34) #21
  br label %36

36:                                               ; preds = %32, %21
  %37 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 18
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @freq_qos_remove_request(ptr noundef %38) #21
  %40 = load ptr, ptr %37, align 4
  tail call void @kfree(ptr noundef %40) #21
  %41 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 25
  tail call void @down_write(ptr noundef %41) #21
  tail call void @cpufreq_stats_free_table(ptr noundef %0) #21
  %42 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 23
  %43 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 24
  tail call void @up_write(ptr noundef %41) #21
  tail call void @kobject_put(ptr noundef %42) #21
  tail call void @wait_for_completion(ptr noundef %43) #21
  tail call void @kfree(ptr noundef %0) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @freq_constraints_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpufreq_notifier_min(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -284
  %5 = load ptr, ptr @system_wq, align 4
  %6 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %5, ptr noundef %4) #21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpufreq_notifier_max(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -296
  %5 = load ptr, ptr @system_wq, align 4
  %6 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %5, ptr noundef %4) #21
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @handle_update(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -84
  %3 = getelementptr i8, ptr %0, i32 204
  tail call void @down_write(ptr noundef %3) #21
  %4 = load i32, ptr %2, align 4
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -24
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 -32
  %11 = load i32, ptr %10, align 4
  %12 = tail call fastcc i32 @cpufreq_set_policy(ptr noundef %2, ptr noundef %9, i32 noundef %11) #21
  br label %13

13:                                               ; preds = %7, %1
  tail call void @up_write(ptr noundef %3) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_remove_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpufreq_sysfs_release(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 36
  tail call void @complete(ptr noundef %2) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.freq_attr, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -236
  %9 = getelementptr i8, ptr %0, i32 52
  tail call void @down_read(ptr noundef %9) #21
  %10 = load ptr, ptr %4, align 4
  %11 = tail call i32 %10(ptr noundef %8, ptr noundef %2) #21
  tail call void @up_read(ptr noundef %9) #21
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %11, %7 ], [ -5, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = getelementptr i8, ptr %0, i32 -236
  %6 = getelementptr inbounds %struct.freq_attr, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @cpus_read_trylock() #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %0, i32 -220
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %12
  %23 = getelementptr i8, ptr %0, i32 52
  tail call void @down_write(ptr noundef %23) #21
  %24 = load ptr, ptr %6, align 4
  %25 = tail call i32 %24(ptr noundef %5, ptr noundef %2, i32 noundef %3) #21
  tail call void @up_write(ptr noundef %23) #21
  br label %26

26:                                               ; preds = %22, %12
  %27 = phi i32 [ %25, %22 ], [ -22, %12 ]
  tail call void @cpus_read_unlock() #21
  br label %28

28:                                               ; preds = %26, %9, %4
  %29 = phi i32 [ %27, %26 ], [ -5, %4 ], [ -16, %9 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpus_read_trylock() local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_cpuinfo_min_freq(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #17 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 6, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_cpuinfo_max_freq(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #17 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_cpuinfo_transition_latency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #17 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 6, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_scaling_min_freq(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #17 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_scaling_min_freq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store i32 0, ptr %4, align 4, !annotation !13
  %5 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.49, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 18
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %4, align 4
  %11 = call i32 @freq_qos_update_request(ptr noundef %9, i32 noundef %10) #21
  %12 = icmp slt i32 %11, 0
  %13 = select i1 %12, i32 %11, i32 %2
  br label %14

14:                                               ; preds = %7, %3
  %15 = phi i32 [ %13, %7 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  ret i32 %15
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_scaling_max_freq(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #17 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_scaling_max_freq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store i32 0, ptr %4, align 4, !annotation !13
  %5 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.49, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %4, align 4
  %11 = call i32 @freq_qos_update_request(ptr noundef %9, i32 noundef %10) #21
  %12 = icmp slt i32 %11, 0
  %13 = select i1 %12, i32 %11, i32 %2
  br label %14

14:                                               ; preds = %7, %3
  %15 = phi i32 [ %13, %7 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_affected_cpus(ptr noundef %0, ptr noundef %1) #3 {
  br label %3

3:                                                ; preds = %16, %2
  %4 = phi i32 [ 0, %2 ], [ %21, %16 ]
  %5 = phi i32 [ -1, %2 ], [ %6, %16 ]
  %6 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef %0) #24
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  %10 = icmp eq i32 %4, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = getelementptr i8, ptr %1, i32 %4
  %13 = sub i32 4094, %4
  %14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %12, i32 noundef %13, ptr noundef nonnull @.str.5) #21
  %15 = add i32 %14, %4
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi i32 [ %15, %11 ], [ 0, %9 ]
  %18 = getelementptr i8, ptr %1, i32 %17
  %19 = sub i32 4094, %17
  %20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %18, i32 noundef %19, ptr noundef nonnull @.str.6, i32 noundef %6) #21
  %21 = add i32 %20, %17
  %22 = icmp ugt i32 %21, 4090
  br i1 %22, label %23, label %3

23:                                               ; preds = %16, %3
  %24 = phi i32 [ %21, %16 ], [ %4, %3 ]
  %25 = getelementptr i8, ptr %1, i32 %24
  store i16 10, ptr %25, align 1
  %26 = add i32 %24, 1
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_related_cpus(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 1
  br label %4

4:                                                ; preds = %17, %2
  %5 = phi i32 [ 0, %2 ], [ %22, %17 ]
  %6 = phi i32 [ -1, %2 ], [ %7, %17 ]
  %7 = tail call i32 @cpumask_next(i32 noundef %6, ptr noundef %3) #24
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %4
  %11 = icmp eq i32 %5, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %10
  %13 = getelementptr i8, ptr %1, i32 %5
  %14 = sub i32 4094, %5
  %15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %13, i32 noundef %14, ptr noundef nonnull @.str.5) #21
  %16 = add i32 %15, %5
  br label %17

17:                                               ; preds = %12, %10
  %18 = phi i32 [ %16, %12 ], [ 0, %10 ]
  %19 = getelementptr i8, ptr %1, i32 %18
  %20 = sub i32 4094, %18
  %21 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %19, i32 noundef %20, ptr noundef nonnull @.str.6, i32 noundef %7) #21
  %22 = add i32 %21, %18
  %23 = icmp ugt i32 %22, 4090
  br i1 %23, label %24, label %4

24:                                               ; preds = %17, %4
  %25 = phi i32 [ %22, %17 ], [ %5, %4 ]
  %26 = getelementptr i8, ptr %1, i32 %25
  store i16 10, ptr %26, align 1
  %27 = add i32 %25, 1
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_scaling_governor(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 11
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %7 [
    i32 1, label %5
    i32 2, label %6
  ]

5:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(11) %1, ptr noundef nonnull align 1 dereferenceable(11) @.str.54, i32 11, i1 false)
  br label %13

6:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(13) %1, ptr noundef nonnull align 1 dereferenceable(13) @.str.55, i32 13, i1 false)
  br label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %1, i32 noundef 17, ptr noundef nonnull @.str.56, ptr noundef nonnull %9) #21
  br label %13

13:                                               ; preds = %11, %7, %6, %5
  %14 = phi i32 [ 10, %5 ], [ 12, %6 ], [ %12, %11 ], [ -22, %7 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_scaling_governor(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !13
  %5 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.57, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %64

7:                                                ; preds = %3
  %8 = load ptr, ptr @cpufreq_driver, align 4
  %9 = getelementptr inbounds %struct.cpufreq_driver, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %7
  %13 = call i32 @strncasecmp(ptr noundef nonnull %4, ptr noundef nonnull @.str.58, i32 noundef 16) #21
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = call i32 @strncasecmp(ptr noundef nonnull %4, ptr noundef nonnull @.str.59, i32 noundef 16) #21
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %64

18:                                               ; preds = %15, %12
  %19 = phi i32 [ 1, %15 ], [ 2, %12 ]
  %20 = call fastcc i32 @cpufreq_set_policy(ptr noundef %0, ptr noundef null, i32 noundef %19)
  br label %60

21:                                               ; preds = %7
  call void @mutex_lock(ptr noundef nonnull @cpufreq_governor_mutex) #21
  br label %22

22:                                               ; preds = %26, %21
  %23 = phi ptr [ @cpufreq_governor_list, %21 ], [ %24, %26 ]
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, @cpufreq_governor_list
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %24, i32 -44
  %28 = call i32 @strncasecmp(ptr noundef nonnull %4, ptr noundef %27, i32 noundef 16) #21
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %22

30:                                               ; preds = %26
  %31 = icmp eq ptr %27, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %30
  %33 = getelementptr i8, ptr %24, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = call zeroext i1 @try_module_get(ptr noundef %34) #21
  br i1 %35, label %55, label %36

36:                                               ; preds = %32, %30, %22
  call void @mutex_unlock(ptr noundef nonnull @cpufreq_governor_mutex) #21
  %37 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.60, ptr noundef nonnull %4) #21
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %36
  call void @mutex_lock(ptr noundef nonnull @cpufreq_governor_mutex) #21
  br label %40

40:                                               ; preds = %44, %39
  %41 = phi ptr [ @cpufreq_governor_list, %39 ], [ %42, %44 ]
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, @cpufreq_governor_list
  br i1 %43, label %54, label %44

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %42, i32 -44
  %46 = call i32 @strncasecmp(ptr noundef nonnull %4, ptr noundef %45, i32 noundef 16) #21
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %40

48:                                               ; preds = %44
  %49 = icmp eq ptr %45, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %48
  %51 = getelementptr i8, ptr %42, i32 8
  %52 = load ptr, ptr %51, align 4
  %53 = call zeroext i1 @try_module_get(ptr noundef %52) #21
  br i1 %53, label %55, label %54

54:                                               ; preds = %50, %48, %40
  call void @mutex_unlock(ptr noundef nonnull @cpufreq_governor_mutex) #21
  br label %64

55:                                               ; preds = %50, %32
  %56 = phi ptr [ %27, %32 ], [ %45, %50 ]
  call void @mutex_unlock(ptr noundef nonnull @cpufreq_governor_mutex) #21
  %57 = call fastcc i32 @cpufreq_set_policy(ptr noundef %0, ptr noundef nonnull %56, i32 noundef 0)
  %58 = getelementptr inbounds %struct.cpufreq_governor, ptr %56, i32 0, i32 9
  %59 = load ptr, ptr %58, align 4
  call void @module_put(ptr noundef %59) #21
  br label %60

60:                                               ; preds = %55, %18
  %61 = phi i32 [ %20, %18 ], [ %57, %55 ]
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, i32 %2, i32 %61
  br label %64

64:                                               ; preds = %60, %54, %36, %15, %3
  %65 = phi i32 [ %63, %60 ], [ -22, %3 ], [ -22, %15 ], [ -22, %54 ], [ -22, %36 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_scaling_driver(ptr nocapture noundef readnone %0, ptr noundef %1) #3 {
  %3 = load ptr, ptr @cpufreq_driver, align 4
  %4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %1, i32 noundef 17, ptr noundef nonnull @.str.56, ptr noundef %3) #21
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_scaling_available_governors(ptr nocapture noundef readnone %0, ptr noundef %1) #3 {
  %3 = load ptr, ptr @cpufreq_driver, align 4
  %4 = getelementptr inbounds %struct.cpufreq_driver, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cpufreq_driver, ptr %3, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(22) %1, ptr noundef nonnull align 1 dereferenceable(22) @.str.63, i32 22, i1 false)
  br label %28

12:                                               ; preds = %7, %2
  tail call void @mutex_lock(ptr noundef nonnull @cpufreq_governor_mutex) #21
  %13 = load ptr, ptr @cpufreq_governor_list, align 4
  %14 = icmp eq ptr %13, @cpufreq_governor_list
  br i1 %14, label %26, label %15

15:                                               ; preds = %15, %12
  %16 = phi ptr [ %22, %15 ], [ %13, %12 ]
  %17 = phi i32 [ %21, %15 ], [ 0, %12 ]
  %18 = getelementptr i8, ptr %16, i32 -44
  %19 = getelementptr i8, ptr %1, i32 %17
  %20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %19, i32 noundef 17, ptr noundef nonnull @.str.64, ptr noundef %18) #21
  %21 = add i32 %20, %17
  %22 = load ptr, ptr %16, align 4
  %23 = icmp eq ptr %22, @cpufreq_governor_list
  %24 = icmp sgt i32 %21, 4077
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %26, label %15

26:                                               ; preds = %15, %12
  %27 = phi i32 [ 0, %12 ], [ %21, %15 ]
  tail call void @mutex_unlock(ptr noundef nonnull @cpufreq_governor_mutex) #21
  br label %28

28:                                               ; preds = %26, %11
  %29 = phi i32 [ %27, %26 ], [ 21, %11 ]
  %30 = getelementptr i8, ptr %1, i32 %29
  store i16 10, ptr %30, align 1
  %31 = add i32 %29, 1
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_scaling_setspeed(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpufreq_governor, ptr %4, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(15) %1, ptr noundef nonnull align 1 dereferenceable(15) @.str.66, i32 15, i1 false)
  br label %13

11:                                               ; preds = %6
  %12 = tail call i32 %8(ptr noundef %0, ptr noundef %1) #21
  br label %13

13:                                               ; preds = %11, %10
  %14 = phi i32 [ %12, %11 ], [ 14, %10 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_scaling_setspeed(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cpufreq_governor, ptr %6, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %4)
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.cpufreq_governor, ptr %16, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %4, align 4
  %20 = call i32 %18(ptr noundef %0, i32 noundef %19) #21
  br label %21

21:                                               ; preds = %15, %12, %8, %3
  %22 = phi i32 [ %2, %15 ], [ -22, %8 ], [ -22, %3 ], [ -22, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_stats_free_table(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_cpuinfo_cur_freq(ptr noundef %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = load i32, ptr %0, align 4
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6, !prof !11

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @cpufreq_verify_current_freq(ptr noundef %0, i1 noundef zeroext true) #21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %7)
  br label %12

11:                                               ; preds = %6, %2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(11) %1, ptr noundef nonnull align 1 dereferenceable(11) @.str.69, i32 11, i1 false)
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i32 [ %10, %9 ], [ 10, %11 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_scaling_cur_freq(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 @arch_freq_get_on_cpu(i32 noundef %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = load ptr, ptr @cpufreq_driver, align 4
  %9 = getelementptr inbounds %struct.cpufreq_driver, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.cpufreq_driver, ptr %8, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr %3, align 4
  %18 = tail call i32 %14(i32 noundef %17) #21
  br label %22

19:                                               ; preds = %12, %7
  %20 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %16, %2
  %23 = phi i32 [ %18, %16 ], [ %21, %19 ], [ %5, %2 ]
  %24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %23)
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_bios_limit(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !annotation !13
  %4 = load ptr, ptr @cpufreq_driver, align 4
  %5 = getelementptr inbounds %struct.cpufreq_driver, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = call i32 %6(i32 noundef %8, ptr noundef nonnull %3) #21
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 6
  %12 = select i1 %10, ptr %3, ptr %11
  %13 = load i32, ptr %12, align 4
  %14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %13)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_default_governor() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_remove_request(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpufreq_offline(i32 noundef %0) unnamed_addr #3 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @cpufreq_cpu_data to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %160, label %8

8:                                                ; preds = %1
  %9 = lshr i32 %0, 5
  %10 = getelementptr i32, ptr %6, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %0, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %160, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.cpufreq_policy, ptr %6, i32 0, i32 25
  tail call void @down_write(ptr noundef %17) #21
  %18 = load ptr, ptr @cpufreq_driver, align 4
  %19 = getelementptr inbounds %struct.cpufreq_driver, ptr %18, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.cpufreq_driver, ptr %18, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %22, %16
  %27 = load i1, ptr @cpufreq_suspended, align 1
  br i1 %27, label %37, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.cpufreq_policy, ptr %6, i32 0, i32 13
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.cpufreq_governor, ptr %30, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void %34(ptr noundef nonnull %6) #21
  br label %37

37:                                               ; preds = %36, %32, %28, %26, %22
  tail call void @_clear_bit(i32 noundef %0, ptr noundef nonnull %6) #21
  %38 = load i32, ptr %6, align 4
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load ptr, ptr @cpufreq_driver, align 4
  %43 = getelementptr inbounds %struct.cpufreq_driver, ptr %42, i32 0, i32 7
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.cpufreq_driver, ptr %42, i32 0, i32 6
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %46, %41
  %51 = getelementptr inbounds %struct.cpufreq_policy, ptr %6, i32 0, i32 15
  %52 = getelementptr inbounds %struct.cpufreq_policy, ptr %6, i32 0, i32 13
  %53 = load ptr, ptr %52, align 4
  %54 = tail call ptr @strncpy(ptr noundef %51, ptr noundef %53, i32 noundef 16)
  br label %66

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.cpufreq_policy, ptr %6, i32 0, i32 11
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.cpufreq_policy, ptr %6, i32 0, i32 12
  store i32 %57, ptr %58, align 4
  br label %66

59:                                               ; preds = %37
  %60 = getelementptr inbounds %struct.cpufreq_policy, ptr %6, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, %0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = tail call i32 @_find_first_bit_le(ptr noundef nonnull %6, i32 noundef 16) #21
  store i32 %64, ptr %60, align 4
  %65 = load i32, ptr %6, align 4
  br label %66

66:                                               ; preds = %63, %59, %55, %50
  %67 = phi i32 [ %38, %59 ], [ %65, %63 ], [ %38, %50 ], [ %38, %55 ]
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 0
  %70 = load ptr, ptr @cpufreq_driver, align 4
  br i1 %69, label %110, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.cpufreq_driver, ptr %70, i32 0, i32 7
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.cpufreq_driver, ptr %70, i32 0, i32 6
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %159, label %79

79:                                               ; preds = %75, %71
  %80 = load i1, ptr @cpufreq_suspended, align 1
  br i1 %80, label %159, label %81

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.cpufreq_policy, ptr %6, i32 0, i32 13
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %108, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.cpufreq_driver, ptr %70, i32 0, i32 12
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = tail call fastcc i32 @cpufreq_verify_current_freq(ptr noundef nonnull %6, i1 noundef zeroext false) #21
  %91 = load ptr, ptr %82, align 4
  br label %92

92:                                               ; preds = %89, %85
  %93 = phi ptr [ %91, %89 ], [ %83, %85 ]
  %94 = getelementptr inbounds %struct.cpufreq_governor, ptr %93, i32 0, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = tail call i32 %95(ptr noundef nonnull %6) #21
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load ptr, ptr %82, align 4
  br label %102

102:                                              ; preds = %100, %92
  %103 = phi ptr [ %101, %100 ], [ %93, %92 ]
  %104 = getelementptr inbounds %struct.cpufreq_governor, ptr %103, i32 0, i32 5
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %159, label %107

107:                                              ; preds = %102
  tail call void %105(ptr noundef nonnull %6) #21
  br label %159

108:                                              ; preds = %97, %81
  %109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.cpufreq_offline) #23
  br label %159

110:                                              ; preds = %66
  %111 = getelementptr inbounds %struct.cpufreq_driver, ptr %70, i32 0, i32 1
  %112 = load i16, ptr %111, align 4
  %113 = and i16 %112, 4
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.cpufreq_policy, ptr %6, i32 0, i32 40
  %117 = load ptr, ptr %116, align 4
  tail call void @cpufreq_cooling_unregister(ptr noundef %117) #21
  store ptr null, ptr %116, align 4
  %118 = load ptr, ptr @cpufreq_driver, align 4
  br label %119

119:                                              ; preds = %115, %110
  %120 = phi ptr [ %118, %115 ], [ %70, %110 ]
  %121 = getelementptr inbounds %struct.cpufreq_driver, ptr %120, i32 0, i32 7
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.cpufreq_driver, ptr %120, i32 0, i32 6
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %145, label %128

128:                                              ; preds = %124, %119
  %129 = load i1, ptr @cpufreq_suspended, align 1
  br i1 %129, label %145, label %130

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.cpufreq_policy, ptr %6, i32 0, i32 13
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %145, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.cpufreq_governor, ptr %132, i32 0, i32 2
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  tail call void %136(ptr noundef nonnull %6) #21
  %139 = load ptr, ptr %131, align 4
  br label %140

140:                                              ; preds = %138, %134
  %141 = phi ptr [ %139, %138 ], [ %132, %134 ]
  %142 = getelementptr inbounds %struct.cpufreq_governor, ptr %141, i32 0, i32 9
  %143 = load ptr, ptr %142, align 4
  tail call void @module_put(ptr noundef %143) #21
  %144 = load ptr, ptr @cpufreq_driver, align 4
  br label %145

145:                                              ; preds = %140, %130, %128, %124
  %146 = phi ptr [ %144, %140 ], [ %120, %130 ], [ %120, %128 ], [ %120, %124 ]
  %147 = getelementptr inbounds %struct.cpufreq_driver, ptr %146, i32 0, i32 16
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %145
  %151 = tail call i32 %148(ptr noundef nonnull %6) #21
  br label %159

152:                                              ; preds = %145
  %153 = getelementptr inbounds %struct.cpufreq_driver, ptr %146, i32 0, i32 17
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %152
  %157 = tail call i32 %154(ptr noundef nonnull %6) #21
  %158 = getelementptr inbounds %struct.cpufreq_policy, ptr %6, i32 0, i32 20
  store ptr null, ptr %158, align 4
  br label %159

159:                                              ; preds = %156, %152, %150, %108, %107, %102, %79, %75
  tail call void @up_write(ptr noundef %17) #21
  br label %160

160:                                              ; preds = %159, %8, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_cooling_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state_cpuslocked(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state_cpuslocked(i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #20

attributes #0 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind willreturn }
attributes #14 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #17 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #21 = { nounwind }
attributes #22 = { nounwind readnone }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind readonly willreturn }
attributes #25 = { nounwind allocsize(2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{i64 1220543, i64 1220570, i64 1220592, i64 1220620}
!9 = !{i64 1220951, i64 1220978, i64 1221011, i64 1221032, i64 1221059, i64 1221085}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i8 0, i8 2}
!13 = !{!"auto-init"}
!14 = !{i64 2149297977}
!15 = !{i64 2149293801}
!16 = !{i64 2149293876, i64 2149293903, i64 2149293950, i64 2149293972, i64 2149294000, i64 2149294020}
!17 = !{i64 2149320980}
!18 = !{i64 692515}
!19 = !{i64 2154736384, i64 2154736874, i64 2154736421, i64 2154736477, i64 2154736511, i64 2154736535, i64 2154736576, i64 2154736597, i64 2154736625, i64 2154736659}
!20 = !{i64 2154371175}
!21 = !{i64 2154371347}
!22 = !{i64 2154387358}
!23 = !{i64 2154387522}
!24 = !{i64 2154949398, i64 2154949889, i64 2154949435, i64 2154949491, i64 2154949525, i64 2154949549, i64 2154949590, i64 2154949611, i64 2154949639, i64 2154949673}
!25 = !{!"branch_weights", i32 2002, i32 2000}
!26 = !{i64 2154840465, i64 2154840956, i64 2154840502, i64 2154840558, i64 2154840592, i64 2154840616, i64 2154840657, i64 2154840678, i64 2154840706, i64 2154840740}
