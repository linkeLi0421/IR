; ModuleID = '/llk/IR/drivers/devfreq/devfreq.c_pt.bc'
source_filename = "../drivers/devfreq/devfreq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_update_status:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_update_status\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_update_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_update_target:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_update_target\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_update_target:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_update_devfreq:\09\09\09\09\09"
module asm "\09.asciz \09\22update_devfreq\22\09\09\09\09\09"
module asm "__kstrtabns_update_devfreq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_monitor_start:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_monitor_start\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_monitor_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_monitor_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_monitor_stop\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_monitor_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_monitor_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_monitor_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_monitor_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_monitor_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_monitor_resume\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_monitor_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_update_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_update_interval\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_update_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_add_device\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_remove_device\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_devfreq_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_devfreq_add_device\22\09\09\09\09\09"
module asm "__kstrtabns_devm_devfreq_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_get_devfreq_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_get_devfreq_by_node\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_get_devfreq_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_get_devfreq_by_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_get_devfreq_by_phandle\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_get_devfreq_by_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_devfreq_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_devfreq_remove_device\22\09\09\09\09\09"
module asm "__kstrtabns_devm_devfreq_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_suspend_device:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_suspend_device\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_suspend_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_resume_device:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_resume_device\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_resume_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_add_governor:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_add_governor\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_add_governor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_devfreq_add_governor:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_devfreq_add_governor\22\09\09\09\09\09"
module asm "__kstrtabns_devm_devfreq_add_governor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_remove_governor:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_remove_governor\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_remove_governor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_recommended_opp:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_recommended_opp\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_recommended_opp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_register_opp_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_register_opp_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_register_opp_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_unregister_opp_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_unregister_opp_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_unregister_opp_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_devfreq_register_opp_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_devfreq_register_opp_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_devm_devfreq_register_opp_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_devfreq_unregister_opp_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_devfreq_unregister_opp_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_devm_devfreq_unregister_opp_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_devfreq_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_devfreq_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_devm_devfreq_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_devfreq_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_devfreq_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_devm_devfreq_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lock_class_key = type {}
%struct.cpumask = type { [1 x i32] }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.devfreq = type { %struct.list_head, %struct.mutex, %struct.device, ptr, ptr, ptr, %struct.notifier_block, %struct.delayed_work, i32, %struct.devfreq_dev_status, ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i32, i32, i8, i32, i32, %struct.atomic_t, %struct.devfreq_stats, %struct.srcu_notifier_head, ptr, %struct.notifier_block, %struct.notifier_block }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }
%struct.dev_pm_qos_request = type { i32, %union.anon.58, ptr }
%union.anon.58 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.devfreq_stats = type { i32, ptr, ptr, i64 }
%struct.srcu_notifier_head = type { %struct.mutex, %struct.srcu_struct, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.trace_event_raw_devfreq_frequency = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_devfreq_monitor = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.devfreq_governor = type { %struct.list_head, [16 x i8], i64, i64, ptr, ptr }
%struct.devfreq_freqs = type { i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.devfreq_notifier_devres = type { ptr, ptr, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.60 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.62 = type { ptr }

@__tpstrtab_devfreq_frequency = internal constant [18 x i8] c"devfreq_frequency\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_devfreq_frequency = dso_local global %struct.static_call_key { ptr @__traceiter_devfreq_frequency }, align 4
@__tracepoint_devfreq_frequency = dso_local global %struct.tracepoint { ptr @__tpstrtab_devfreq_frequency, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_devfreq_frequency, ptr null, ptr @__traceiter_devfreq_frequency, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_devfreq_frequency = internal constant ptr @__tracepoint_devfreq_frequency, section "__tracepoints_ptrs", align 4
@__tpstrtab_devfreq_monitor = internal constant [16 x i8] c"devfreq_monitor\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_devfreq_monitor = dso_local global %struct.static_call_key { ptr @__traceiter_devfreq_monitor }, align 4
@__tracepoint_devfreq_monitor = dso_local global %struct.tracepoint { ptr @__tpstrtab_devfreq_monitor, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_devfreq_monitor, ptr null, ptr @__traceiter_devfreq_monitor, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_devfreq_monitor = internal constant ptr @__tracepoint_devfreq_monitor, section "__tracepoints_ptrs", align 4
@trace_event_fields_devfreq_frequency = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.21, %union.anon.90 { %struct.anon.91 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.90 { %struct.anon.91 { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.90 { %struct.anon.91 { ptr @.str.25, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.90 { %struct.anon.91 { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.90 { %struct.anon.91 { ptr @.str.27, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_devfreq_frequency = internal global %struct.trace_event_class { ptr @.str.55, ptr @trace_event_raw_event_devfreq_frequency, ptr @perf_trace_devfreq_frequency, ptr @trace_event_reg, ptr @trace_event_fields_devfreq_frequency, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_devfreq_frequency, i64 24), ptr getelementptr (i8, ptr @event_class_devfreq_frequency, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_devfreq_frequency = internal global %struct.trace_event_functions { ptr @trace_raw_output_devfreq_frequency, ptr null, ptr null, ptr null }, align 4
@print_fmt_devfreq_frequency = internal global [174 x i8] c"\22dev_name=%-30s freq=%-12lu prev_freq=%-12lu load=%-2lu\22, __get_str(dev_name), REC->freq, REC->prev_freq, REC->total_time == 0 ? 0 : (100 * REC->busy_time) / REC->total_time\00", align 1
@event_devfreq_frequency = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_devfreq_frequency, %union.anon.92 { ptr @__tracepoint_devfreq_frequency }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_devfreq_frequency }, ptr @print_fmt_devfreq_frequency, ptr null, %union.anon.93 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_devfreq_frequency = internal global ptr @event_devfreq_frequency, section "_ftrace_events", align 4
@trace_event_fields_devfreq_monitor = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.23, %union.anon.90 { %struct.anon.91 { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.90 { %struct.anon.91 { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.90 { %struct.anon.91 { ptr @.str.27, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.90 { %struct.anon.91 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.90 { %struct.anon.91 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_devfreq_monitor = internal global %struct.trace_event_class { ptr @.str.55, ptr @trace_event_raw_event_devfreq_monitor, ptr @perf_trace_devfreq_monitor, ptr @trace_event_reg, ptr @trace_event_fields_devfreq_monitor, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_devfreq_monitor, i64 24), ptr getelementptr (i8, ptr @event_class_devfreq_monitor, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_devfreq_monitor = internal global %struct.trace_event_functions { ptr @trace_raw_output_devfreq_monitor, ptr null, ptr null, ptr null }, align 4
@print_fmt_devfreq_monitor = internal global [174 x i8] c"\22dev_name=%-30s freq=%-12lu polling_ms=%-3u load=%-2lu\22, __get_str(dev_name), REC->freq, REC->polling_ms, REC->total_time == 0 ? 0 : (100 * REC->busy_time) / REC->total_time\00", align 1
@event_devfreq_monitor = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_devfreq_monitor, %union.anon.92 { ptr @__tracepoint_devfreq_monitor }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_devfreq_monitor }, ptr @print_fmt_devfreq_monitor, ptr null, %union.anon.93 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_devfreq_monitor = internal global ptr @event_devfreq_monitor, section "_ftrace_events", align 4
@__kstrtab_devfreq_update_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_update_status = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_update_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_update_status to i32), ptr @__kstrtab_devfreq_update_status, ptr @__kstrtabns_devfreq_update_status }, section "___ksymtab+devfreq_update_status", align 4
@__kstrtab_devfreq_update_target = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_update_target = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_update_target = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_update_target to i32), ptr @__kstrtab_devfreq_update_target, ptr @__kstrtabns_devfreq_update_target }, section "___ksymtab+devfreq_update_target", align 4
@__kstrtab_update_devfreq = external dso_local constant [0 x i8], align 1
@__kstrtabns_update_devfreq = external dso_local constant [0 x i8], align 1
@__ksymtab_update_devfreq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @update_devfreq to i32), ptr @__kstrtab_update_devfreq, ptr @__kstrtabns_update_devfreq }, section "___ksymtab+update_devfreq", align 4
@devfreq_wq = internal unnamed_addr global ptr null, align 4
@__kstrtab_devfreq_monitor_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_monitor_start = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_monitor_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_monitor_start to i32), ptr @__kstrtab_devfreq_monitor_start, ptr @__kstrtabns_devfreq_monitor_start }, section "___ksymtab+devfreq_monitor_start", align 4
@__kstrtab_devfreq_monitor_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_monitor_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_monitor_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_monitor_stop to i32), ptr @__kstrtab_devfreq_monitor_stop, ptr @__kstrtabns_devfreq_monitor_stop }, section "___ksymtab+devfreq_monitor_stop", align 4
@__kstrtab_devfreq_monitor_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_monitor_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_monitor_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_monitor_suspend to i32), ptr @__kstrtab_devfreq_monitor_suspend, ptr @__kstrtabns_devfreq_monitor_suspend }, section "___ksymtab+devfreq_monitor_suspend", align 4
@__kstrtab_devfreq_monitor_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_monitor_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_monitor_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_monitor_resume to i32), ptr @__kstrtab_devfreq_monitor_resume, ptr @__kstrtabns_devfreq_monitor_resume }, section "___ksymtab+devfreq_monitor_resume", align 4
@__kstrtab_devfreq_update_interval = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_update_interval = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_update_interval = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_update_interval to i32), ptr @__kstrtab_devfreq_update_interval, ptr @__kstrtabns_devfreq_update_interval }, section "___ksymtab+devfreq_update_interval", align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: Invalid parameters.\0A\00", align 1
@__func__.devfreq_add_device = private unnamed_addr constant [19 x i8] c"devfreq_add_device\00", align 1
@devfreq_list_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @devfreq_list_lock, i64 12), ptr getelementptr (i8, ptr @devfreq_list_lock, i64 12) } }, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: devfreq device already exists!\0A\00", align 1
@devfreq_add_device.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"&devfreq->lock\00", align 1
@devfreq_class = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"%s: Unable to find governor for the device\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"%s: Unable to start governor for the device\0A\00", align 1
@devfreq_list = internal global %struct.list_head { ptr @devfreq_list, ptr @devfreq_list }, align 4
@__kstrtab_devfreq_add_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_add_device = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_add_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_add_device to i32), ptr @__kstrtab_devfreq_add_device, ptr @__kstrtabns_devfreq_add_device }, section "___ksymtab+devfreq_add_device", align 4
@__kstrtab_devfreq_remove_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_remove_device = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_remove_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_remove_device to i32), ptr @__kstrtab_devfreq_remove_device, ptr @__kstrtabns_devfreq_remove_device }, section "___ksymtab+devfreq_remove_device", align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"devm_devfreq_dev_release\00", align 1
@__kstrtab_devm_devfreq_add_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_devfreq_add_device = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_devfreq_add_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_devfreq_add_device to i32), ptr @__kstrtab_devm_devfreq_add_device, ptr @__kstrtabns_devm_devfreq_add_device }, section "___ksymtab+devm_devfreq_add_device", align 4
@__kstrtab_devfreq_get_devfreq_by_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_get_devfreq_by_node = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_get_devfreq_by_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_get_devfreq_by_node to i32), ptr @__kstrtab_devfreq_get_devfreq_by_node, ptr @__kstrtabns_devfreq_get_devfreq_by_node }, section "___ksymtab_gpl+devfreq_get_devfreq_by_node", align 4
@__kstrtab_devfreq_get_devfreq_by_phandle = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_get_devfreq_by_phandle = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_get_devfreq_by_phandle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_get_devfreq_by_phandle to i32), ptr @__kstrtab_devfreq_get_devfreq_by_phandle, ptr @__kstrtabns_devfreq_get_devfreq_by_phandle }, section "___ksymtab_gpl+devfreq_get_devfreq_by_phandle", align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"drivers/devfreq/devfreq.c\00", align 1
@__kstrtab_devm_devfreq_remove_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_devfreq_remove_device = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_devfreq_remove_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_devfreq_remove_device to i32), ptr @__kstrtab_devm_devfreq_remove_device, ptr @__kstrtabns_devm_devfreq_remove_device }, section "___ksymtab+devm_devfreq_remove_device", align 4
@__kstrtab_devfreq_suspend_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_suspend_device = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_suspend_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_suspend_device to i32), ptr @__kstrtab_devfreq_suspend_device, ptr @__kstrtabns_devfreq_suspend_device }, section "___ksymtab+devfreq_suspend_device", align 4
@__kstrtab_devfreq_resume_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_resume_device = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_resume_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_resume_device to i32), ptr @__kstrtab_devfreq_resume_device, ptr @__kstrtabns_devfreq_resume_device }, section "___ksymtab+devfreq_resume_device", align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"failed to suspend devfreq device\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"failed to resume devfreq device\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"\013%s: Invalid parameters.\0A\00", align 1
@__func__.devfreq_add_governor = private unnamed_addr constant [21 x i8] c"devfreq_add_governor\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"\013%s: governor %s already registered\0A\00", align 1
@devfreq_governor_list = internal global %struct.list_head { ptr @devfreq_governor_list, ptr @devfreq_governor_list }, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"%s: Governor %s already present\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"%s: Governor %s stop = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"%s: Governor %s start=%d\0A\00", align 1
@__kstrtab_devfreq_add_governor = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_add_governor = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_add_governor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_add_governor to i32), ptr @__kstrtab_devfreq_add_governor, ptr @__kstrtabns_devfreq_add_governor }, section "___ksymtab+devfreq_add_governor", align 4
@__kstrtab_devm_devfreq_add_governor = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_devfreq_add_governor = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_devfreq_add_governor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_devfreq_add_governor to i32), ptr @__kstrtab_devm_devfreq_add_governor, ptr @__kstrtabns_devm_devfreq_add_governor }, section "___ksymtab+devm_devfreq_add_governor", align 4
@__func__.devfreq_remove_governor = private unnamed_addr constant [24 x i8] c"devfreq_remove_governor\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"\013%s: governor %s not registered\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"%s: Governor %s NOT present\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"%s: Governor %s stop=%d\0A\00", align 1
@__kstrtab_devfreq_remove_governor = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_remove_governor = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_remove_governor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_remove_governor to i32), ptr @__kstrtab_devfreq_remove_governor, ptr @__kstrtabns_devfreq_remove_governor }, section "___ksymtab+devfreq_remove_governor", align 4
@__initcall__kmod_devfreq__257_2008_devfreq_init4 = internal global ptr @devfreq_init, section ".initcall4.init", align 4
@__kstrtab_devfreq_recommended_opp = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_recommended_opp = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_recommended_opp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_recommended_opp to i32), ptr @__kstrtab_devfreq_recommended_opp, ptr @__kstrtabns_devfreq_recommended_opp }, section "___ksymtab+devfreq_recommended_opp", align 4
@__kstrtab_devfreq_register_opp_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_register_opp_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_register_opp_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_register_opp_notifier to i32), ptr @__kstrtab_devfreq_register_opp_notifier, ptr @__kstrtabns_devfreq_register_opp_notifier }, section "___ksymtab+devfreq_register_opp_notifier", align 4
@__kstrtab_devfreq_unregister_opp_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_unregister_opp_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_unregister_opp_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_unregister_opp_notifier to i32), ptr @__kstrtab_devfreq_unregister_opp_notifier, ptr @__kstrtabns_devfreq_unregister_opp_notifier }, section "___ksymtab+devfreq_unregister_opp_notifier", align 4
@.str.18 = private unnamed_addr constant [25 x i8] c"devm_devfreq_opp_release\00", align 1
@__kstrtab_devm_devfreq_register_opp_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_devfreq_register_opp_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_devfreq_register_opp_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_devfreq_register_opp_notifier to i32), ptr @__kstrtab_devm_devfreq_register_opp_notifier, ptr @__kstrtabns_devm_devfreq_register_opp_notifier }, section "___ksymtab+devm_devfreq_register_opp_notifier", align 4
@__kstrtab_devm_devfreq_unregister_opp_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_devfreq_unregister_opp_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_devfreq_unregister_opp_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_devfreq_unregister_opp_notifier to i32), ptr @__kstrtab_devm_devfreq_unregister_opp_notifier, ptr @__kstrtabns_devm_devfreq_unregister_opp_notifier }, section "___ksymtab+devm_devfreq_unregister_opp_notifier", align 4
@__kstrtab_devfreq_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_register_notifier to i32), ptr @__kstrtab_devfreq_register_notifier, ptr @__kstrtabns_devfreq_register_notifier }, section "___ksymtab+devfreq_register_notifier", align 4
@__kstrtab_devfreq_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_unregister_notifier to i32), ptr @__kstrtab_devfreq_unregister_notifier, ptr @__kstrtabns_devfreq_unregister_notifier }, section "___ksymtab+devfreq_unregister_notifier", align 4
@.str.19 = private unnamed_addr constant [30 x i8] c"devm_devfreq_notifier_release\00", align 1
@__kstrtab_devm_devfreq_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_devfreq_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_devfreq_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_devfreq_register_notifier to i32), ptr @__kstrtab_devm_devfreq_register_notifier, ptr @__kstrtabns_devm_devfreq_register_notifier }, section "___ksymtab+devm_devfreq_register_notifier", align 4
@__kstrtab_devm_devfreq_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_devfreq_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_devfreq_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_devfreq_unregister_notifier to i32), ptr @__kstrtab_devm_devfreq_unregister_notifier, ptr @__kstrtabns_devm_devfreq_unregister_notifier }, section "___ksymtab+devm_devfreq_unregister_notifier", align 4
@.str.20 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"dev_name\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"prev_freq\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"busy_time\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"total_time\00", align 1
@.str.28 = private unnamed_addr constant [56 x i8] c"dev_name=%-30s freq=%-12lu prev_freq=%-12lu load=%-2lu\0A\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"polling_ms\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"dev_name=%-30s freq=%-12lu polling_ms=%-3u load=%-2lu\0A\00", align 1
@.str.32 = private unnamed_addr constant [51 x i8] c"Couldn't update frequency transition information.\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.34 = private unnamed_addr constant [29 x i8] c"dvfs failed with (%d) error\0A\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"\013DEVFREQ: %s: Invalid parameters\0A\00", align 1
@__func__.find_device_devfreq = private unnamed_addr constant [20 x i8] c"find_device_devfreq\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.36 = private unnamed_addr constant [40 x i8] c"Failed to remove max_freq notifier: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"Failed to remove min_freq notifier: %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"Failed to remove max_freq request: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"Failed to remove min_freq request: %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"failed to update frequency from OPP notifier (%d)\0A\00", align 1
@.str.41 = private unnamed_addr constant [45 x i8] c"failed to update frequency from PM QoS (%d)\0A\00", align 1
@__func__.try_then_request_governor = private unnamed_addr constant [26 x i8] c"try_then_request_governor\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"simple_ondemand\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"governor_%s\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"simpleondemand\00", align 1
@__func__.find_devfreq_governor = private unnamed_addr constant [22 x i8] c"find_devfreq_governor\00", align 1
@dev_attr_polling_interval = internal global %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420 }, ptr @polling_interval_show, ptr @polling_interval_store }, align 4
@.str.45 = private unnamed_addr constant [27 x i8] c"Unable to create attr(%s)\0A\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"##name\00", align 1
@dev_attr_timer = internal global %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420 }, ptr @timer_show, ptr @timer_store }, align 4
@.str.47 = private unnamed_addr constant [17 x i8] c"polling_interval\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@timer_name = internal constant [2 x [16 x i8]] [[16 x i8] c"deferrable\00\00\00\00\00\00", [16 x i8] c"delayed\00\00\00\00\00\00\00\00\00"], align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"%16s\00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c"%s: Governor %s not stopped(%d)\0A\00", align 1
@__func__.timer_store = private unnamed_addr constant [12 x i8] c"timer_store\00", align 1
@.str.54 = private unnamed_addr constant [33 x i8] c"%s: Governor %s not started(%d)\0A\00", align 1
@devfreq_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.55 = private constant [8 x i8] c"devfreq\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"\013%s: couldn't create class\0A\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"devfreq_wq\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"\013%s: couldn't create workqueue\0A\00", align 1
@devfreq_groups = internal global [2 x ptr] [ptr @devfreq_group, ptr null], align 4
@devfreq_debugfs = internal unnamed_addr global ptr null, align 4
@.str.59 = private unnamed_addr constant [16 x i8] c"devfreq_summary\00", align 1
@devfreq_summary_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @devfreq_summary_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@devfreq_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @devfreq_attrs, ptr null }, align 4
@devfreq_attrs = internal global [10 x ptr] [ptr @dev_attr_name, ptr @dev_attr_governor, ptr @dev_attr_available_governors, ptr @dev_attr_cur_freq, ptr @dev_attr_available_frequencies, ptr @dev_attr_target_freq, ptr @dev_attr_min_freq, ptr @dev_attr_max_freq, ptr @dev_attr_trans_stat, ptr null], align 4
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292 }, ptr @name_show, ptr null }, align 4
@dev_attr_governor = internal global %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420 }, ptr @governor_show, ptr @governor_store }, align 4
@dev_attr_available_governors = internal global %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292 }, ptr @available_governors_show, ptr null }, align 4
@dev_attr_cur_freq = internal global %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292 }, ptr @cur_freq_show, ptr null }, align 4
@dev_attr_available_frequencies = internal global %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292 }, ptr @available_frequencies_show, ptr null }, align 4
@dev_attr_target_freq = internal global %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292 }, ptr @target_freq_show, ptr null }, align 4
@dev_attr_min_freq = internal global %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 420 }, ptr @min_freq_show, ptr @min_freq_store }, align 4
@dev_attr_max_freq = internal global %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420 }, ptr @max_freq_show, ptr @max_freq_store }, align 4
@dev_attr_trans_stat = internal global %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 420 }, ptr @trans_stat_show, ptr @trans_stat_store }, align 4
@.str.60 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"governor\00", align 1
@__func__.governor_store = private unnamed_addr constant [15 x i8] c"governor_store\00", align 1
@.str.62 = private unnamed_addr constant [42 x i8] c"%s: reverting to Governor %s failed (%d)\0A\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"available_governors\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"cur_freq\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"available_frequencies\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"%lu \00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"target_freq\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"min_freq\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"max_freq\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"trans_stat\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"Not Supported.\0A\00", align 1
@.str.76 = private unnamed_addr constant [19 x i8] c"     From  :   To\0A\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"           :\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"%10lu\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"   time(ms)\0A\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"%10lu:\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"%10u\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"%10llu\0A\00", align 1
@.str.85 = private unnamed_addr constant [23 x i8] c"Total transition : %u\0A\00", align 1
@.str.86 = private unnamed_addr constant [45 x i8] c"%-30s %-30s %-15s %-10s %10s %12s %12s %12s\0A\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"parent_dev\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"cur_freq_Hz\00", align 1
@.str.90 = private unnamed_addr constant [12 x i8] c"min_freq_Hz\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"max_freq_Hz\00", align 1
@.str.92 = private unnamed_addr constant [41 x i8] c"%30s %30s %15s %10s %10s %12s %12s %12s\0A\00", align 1
@.str.93 = private unnamed_addr constant [31 x i8] c"------------------------------\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"---------------\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"----------\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"------------\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@.str.98 = private unnamed_addr constant [48 x i8] c"%-30s %-30s %-15s %-10s %10d %12ld %12ld %12ld\0A\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@llvm.compiler.used = appending global [39 x ptr] [ptr @__event_devfreq_frequency, ptr @__event_devfreq_monitor, ptr @__initcall__kmod_devfreq__257_2008_devfreq_init4, ptr @__ksymtab_devfreq_add_device, ptr @__ksymtab_devfreq_add_governor, ptr @__ksymtab_devfreq_get_devfreq_by_node, ptr @__ksymtab_devfreq_get_devfreq_by_phandle, ptr @__ksymtab_devfreq_monitor_resume, ptr @__ksymtab_devfreq_monitor_start, ptr @__ksymtab_devfreq_monitor_stop, ptr @__ksymtab_devfreq_monitor_suspend, ptr @__ksymtab_devfreq_recommended_opp, ptr @__ksymtab_devfreq_register_notifier, ptr @__ksymtab_devfreq_register_opp_notifier, ptr @__ksymtab_devfreq_remove_device, ptr @__ksymtab_devfreq_remove_governor, ptr @__ksymtab_devfreq_resume_device, ptr @__ksymtab_devfreq_suspend_device, ptr @__ksymtab_devfreq_unregister_notifier, ptr @__ksymtab_devfreq_unregister_opp_notifier, ptr @__ksymtab_devfreq_update_interval, ptr @__ksymtab_devfreq_update_status, ptr @__ksymtab_devfreq_update_target, ptr @__ksymtab_devm_devfreq_add_device, ptr @__ksymtab_devm_devfreq_add_governor, ptr @__ksymtab_devm_devfreq_register_notifier, ptr @__ksymtab_devm_devfreq_register_opp_notifier, ptr @__ksymtab_devm_devfreq_remove_device, ptr @__ksymtab_devm_devfreq_unregister_notifier, ptr @__ksymtab_devm_devfreq_unregister_opp_notifier, ptr @__ksymtab_update_devfreq, ptr @__tracepoint_devfreq_frequency, ptr @__tracepoint_devfreq_monitor, ptr @__tracepoint_ptr_devfreq_frequency, ptr @__tracepoint_ptr_devfreq_monitor, ptr @event_class_devfreq_frequency, ptr @event_class_devfreq_monitor, ptr @event_devfreq_frequency, ptr @event_devfreq_monitor], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_devfreq_frequency(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devfreq_frequency, i32 0, i32 7), align 4
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_devfreq_monitor(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devfreq_monitor, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #15
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_devfreq_frequency(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
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
  br i1 %14, label %53, label %15

15:                                               ; preds = %13, %10, %4
  %16 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 2, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  %23 = select i1 %22, ptr @.str.20, ptr %21
  br label %24

24:                                               ; preds = %19, %15
  %25 = phi ptr [ %17, %15 ], [ %23, %19 ]
  %26 = tail call i32 @strlen(ptr noundef nonnull %25) #15
  %27 = add i32 %26, 29
  %28 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %27) #15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %53, label %30

30:                                               ; preds = %24
  %31 = shl i32 %26, 16
  %32 = add i32 %31, 65564
  %33 = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %28, i32 0, i32 1
  store i32 %32, ptr %33, align 4
  %34 = getelementptr i8, ptr %28, i32 28
  %35 = load ptr, ptr %16, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  %41 = select i1 %40, ptr @.str.20, ptr %39
  br label %42

42:                                               ; preds = %37, %30
  %43 = phi ptr [ %35, %30 ], [ %41, %37 ]
  %44 = call ptr @strcpy(ptr noundef %34, ptr noundef nonnull %43)
  %45 = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %28, i32 0, i32 2
  store i32 %2, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %28, i32 0, i32 3
  store i32 %3, ptr %46, align 4
  %47 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 9
  %48 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 9, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %28, i32 0, i32 4
  store i32 %49, ptr %50, align 4
  %51 = load i32, ptr %47, align 8
  %52 = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %28, i32 0, i32 5
  store i32 %51, ptr %52, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #15
  br label %53

53:                                               ; preds = %42, %24, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_devfreq_frequency(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 2, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr @.str.20, ptr %12
  br label %15

15:                                               ; preds = %10, %4
  %16 = phi ptr [ %8, %4 ], [ %14, %10 ]
  %17 = tail call i32 @strlen(ptr noundef nonnull %16) #15
  %18 = shl i32 %17, 16
  %19 = add i32 %18, 65564
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %24 = inttoptr i32 %23 to ptr
  %25 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %24) #8, !srcloc !12
  %26 = add i32 %25, %22
  %27 = inttoptr i32 %26 to ptr
  %28 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %15
  %32 = load volatile ptr, ptr %27, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %73, label %34

34:                                               ; preds = %31, %15
  %35 = add i32 %17, 40
  %36 = and i32 %35, -8
  %37 = add i32 %36, -4
  %38 = call ptr @perf_trace_buf_alloc(i32 noundef %37, ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %39 = icmp eq ptr %38, null
  br i1 %39, label %73, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %5, align 4
  %42 = call ptr @llvm.returnaddress(i32 0) #15
  %43 = ptrtoint ptr %42 to i32
  %44 = getelementptr [18 x i32], ptr %41, i32 0, i32 15
  store i32 %43, ptr %44, align 4
  %45 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %46 = ptrtoint ptr %45 to i32
  %47 = getelementptr [18 x i32], ptr %41, i32 0, i32 11
  store i32 %46, ptr %47, align 4
  %48 = call i32 @llvm.read_register.i32(metadata !0) #15
  %49 = getelementptr [18 x i32], ptr %41, i32 0, i32 13
  store i32 %48, ptr %49, align 4
  %50 = getelementptr [18 x i32], ptr %41, i32 0, i32 16
  store i32 19, ptr %50, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %38, i32 0, i32 1
  store i32 %19, ptr %51, align 4
  %52 = getelementptr i8, ptr %38, i32 28
  %53 = load ptr, ptr %7, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %40
  %56 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  %59 = select i1 %58, ptr @.str.20, ptr %57
  br label %60

60:                                               ; preds = %55, %40
  %61 = phi ptr [ %53, %40 ], [ %59, %55 ]
  %62 = call ptr @strcpy(ptr noundef %52, ptr noundef nonnull %61)
  %63 = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %38, i32 0, i32 2
  store i32 %2, ptr %63, align 4
  %64 = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %38, i32 0, i32 3
  store i32 %3, ptr %64, align 4
  %65 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 9
  %66 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 9, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %38, i32 0, i32 4
  store i32 %67, ptr %68, align 4
  %69 = load i32, ptr %65, align 8
  %70 = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %38, i32 0, i32 5
  store i32 %69, ptr %70, align 4
  %71 = load i32, ptr %6, align 4
  %72 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %38, i32 noundef %37, i32 noundef %71, ptr noundef %0, i64 noundef 1, ptr noundef %72, ptr noundef %27, ptr noundef null) #15
  br label %73

73:                                               ; preds = %60, %34, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_devfreq_monitor(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #15
  br i1 %12, label %57, label %13

13:                                               ; preds = %11, %8, %2
  %14 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 2, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr @.str.20, ptr %19
  br label %22

22:                                               ; preds = %17, %13
  %23 = phi ptr [ %15, %13 ], [ %21, %17 ]
  %24 = tail call i32 @strlen(ptr noundef nonnull %23) #15
  %25 = add i32 %24, 29
  %26 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %25) #15
  %27 = icmp eq ptr %26, null
  br i1 %27, label %57, label %28

28:                                               ; preds = %22
  %29 = shl i32 %24, 16
  %30 = add i32 %29, 65564
  %31 = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %26, i32 0, i32 5
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %26, i32 0, i32 1
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 9
  %36 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 9, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %26, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  %39 = load i32, ptr %35, align 8
  %40 = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %26, i32 0, i32 3
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %42, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %26, i32 0, i32 4
  store i32 %44, ptr %45, align 4
  %46 = getelementptr i8, ptr %26, i32 28
  %47 = load ptr, ptr %14, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %28
  %50 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  %53 = select i1 %52, ptr @.str.20, ptr %51
  br label %54

54:                                               ; preds = %49, %28
  %55 = phi ptr [ %47, %28 ], [ %53, %49 ]
  %56 = call ptr @strcpy(ptr noundef %46, ptr noundef nonnull %55)
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #15
  br label %57

57:                                               ; preds = %54, %22, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_devfreq_monitor(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 2, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr @.str.20, ptr %10
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi ptr [ %6, %2 ], [ %12, %8 ]
  %15 = tail call i32 @strlen(ptr noundef nonnull %14) #15
  %16 = shl i32 %15, 16
  %17 = add i32 %16, 65564
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %22 = inttoptr i32 %21 to ptr
  %23 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %22) #8, !srcloc !12
  %24 = add i32 %23, %20
  %25 = inttoptr i32 %24 to ptr
  %26 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %13
  %30 = load volatile ptr, ptr %25, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %77, label %32

32:                                               ; preds = %29, %13
  %33 = add i32 %15, 40
  %34 = and i32 %33, -8
  %35 = add i32 %34, -4
  %36 = call ptr @perf_trace_buf_alloc(i32 noundef %35, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %37 = icmp eq ptr %36, null
  br i1 %37, label %77, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %3, align 4
  %40 = call ptr @llvm.returnaddress(i32 0) #15
  %41 = ptrtoint ptr %40 to i32
  %42 = getelementptr [18 x i32], ptr %39, i32 0, i32 15
  store i32 %41, ptr %42, align 4
  %43 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %44 = ptrtoint ptr %43 to i32
  %45 = getelementptr [18 x i32], ptr %39, i32 0, i32 11
  store i32 %44, ptr %45, align 4
  %46 = call i32 @llvm.read_register.i32(metadata !0) #15
  %47 = getelementptr [18 x i32], ptr %39, i32 0, i32 13
  store i32 %46, ptr %47, align 4
  %48 = getelementptr [18 x i32], ptr %39, i32 0, i32 16
  store i32 19, ptr %48, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %36, i32 0, i32 5
  store i32 %17, ptr %49, align 4
  %50 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %36, i32 0, i32 1
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 9
  %54 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 9, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %36, i32 0, i32 2
  store i32 %55, ptr %56, align 4
  %57 = load i32, ptr %53, align 8
  %58 = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %36, i32 0, i32 3
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 3
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %60, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %36, i32 0, i32 4
  store i32 %62, ptr %63, align 4
  %64 = getelementptr i8, ptr %36, i32 28
  %65 = load ptr, ptr %5, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %38
  %68 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  %71 = select i1 %70, ptr @.str.20, ptr %69
  br label %72

72:                                               ; preds = %67, %38
  %73 = phi ptr [ %65, %38 ], [ %71, %67 ]
  %74 = call ptr @strcpy(ptr noundef %64, ptr noundef nonnull %73)
  %75 = load i32, ptr %4, align 4
  %76 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %36, i32 noundef %35, i32 noundef %75, ptr noundef %0, i64 noundef 1, ptr noundef %76, ptr noundef %25, ptr noundef null) #15
  br label %77

77:                                               ; preds = %72, %32, %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devfreq_update_status(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = tail call i64 @get_jiffies_64() #15
  %4 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %65, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %9, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %65, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %9, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %21, %13
  %17 = phi i32 [ 0, %13 ], [ %22, %21 ]
  %18 = getelementptr i32, ptr %15, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %5
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = add nuw i32 %17, 1
  %23 = icmp eq i32 %22, %11
  br i1 %23, label %65, label %16

24:                                               ; preds = %16
  %25 = icmp slt i32 %17, 0
  br i1 %25, label %65, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 19
  %28 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 19, i32 3
  %29 = load i64, ptr %28, align 8
  %30 = sub i64 %3, %29
  %31 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 19, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr i64, ptr %32, i32 %17
  %34 = load i64, ptr %33, align 8
  %35 = add i64 %30, %34
  store i64 %35, ptr %33, align 8
  %36 = load ptr, ptr %8, align 8
  %37 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %36, i32 0, i32 9
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %65, label %40

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %36, i32 0, i32 8
  %42 = load ptr, ptr %41, align 4
  br label %43

43:                                               ; preds = %48, %40
  %44 = phi i32 [ 0, %40 ], [ %49, %48 ]
  %45 = getelementptr i32, ptr %42, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, %1
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = add nuw i32 %44, 1
  %50 = icmp eq i32 %49, %38
  br i1 %50, label %65, label %43

51:                                               ; preds = %43
  %52 = icmp slt i32 %44, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %51
  %54 = icmp eq i32 %44, %17
  br i1 %54, label %65, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 19, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = mul i32 %38, %17
  %59 = add i32 %44, %58
  %60 = getelementptr i32, ptr %57, i32 %59
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 4
  %63 = load i32, ptr %27, align 8
  %64 = add i32 %63, 1
  store i32 %64, ptr %27, align 8
  br label %65

65:                                               ; preds = %55, %53, %51, %48, %26, %24, %21, %7, %2
  %66 = phi i32 [ 0, %55 ], [ 0, %53 ], [ 0, %2 ], [ %17, %24 ], [ %44, %51 ], [ -22, %7 ], [ -22, %26 ], [ -22, %48 ], [ -22, %21 ]
  %67 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 19, i32 3
  store i64 %3, ptr %67, align 8
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devfreq_update_target(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %53, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.devfreq_governor, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 %9(ptr noundef %0, ptr noundef nonnull %3) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %14, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %14, i32 0, i32 9
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  %21 = getelementptr i32, ptr %16, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = call i32 @llvm.umin.i32(i32 %17, i32 %22)
  %24 = call i32 @llvm.umax.i32(i32 %17, i32 %22)
  %25 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 2, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 @dev_pm_qos_read_value(ptr noundef %26, i32 noundef 3) #15
  %28 = load ptr, ptr %25, align 4
  %29 = call i32 @dev_pm_qos_read_value(ptr noundef %28, i32 noundef 4) #15
  %30 = mul i32 %27, 1000
  %31 = call i32 @llvm.umax.i32(i32 %23, i32 %30) #15
  %32 = icmp eq i32 %29, 2147483647
  %33 = mul i32 %29, 1000
  %34 = call i32 @llvm.umin.i32(i32 %24, i32 %33) #15
  %35 = select i1 %32, i32 %24, i32 %34
  %36 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 13
  %37 = load i32, ptr %36, align 4
  %38 = call i32 @llvm.umax.i32(i32 %31, i32 %37) #15
  %39 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 14
  %40 = load i32, ptr %39, align 8
  %41 = call i32 @llvm.umin.i32(i32 %35, i32 %40) #15
  %42 = call i32 @llvm.umin.i32(i32 %38, i32 %41)
  %43 = load i32, ptr %3, align 4
  %44 = icmp ult i32 %43, %42
  br i1 %44, label %45, label %46

45:                                               ; preds = %12
  store i32 %42, ptr %3, align 4
  br label %49

46:                                               ; preds = %12
  %47 = icmp ugt i32 %43, %41
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  store i32 %41, ptr %3, align 4
  br label %49

49:                                               ; preds = %48, %46, %45
  %50 = phi i32 [ %41, %48 ], [ %43, %46 ], [ %42, %45 ]
  %51 = phi i32 [ 1, %48 ], [ 0, %46 ], [ 0, %45 ]
  %52 = call fastcc i32 @devfreq_set_target(ptr noundef %0, i32 noundef %50, i32 noundef %51)
  br label %53

53:                                               ; preds = %49, %7, %2
  %54 = phi i32 [ %52, %49 ], [ -22, %2 ], [ %10, %7 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @devfreq_set_target(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devfreq_freqs, align 8
  %6 = alloca i32, align 4
  store i32 %1, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 2, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 %10(ptr noundef %14, ptr noundef nonnull %6) #15
  %16 = load i32, ptr %6, align 4
  br label %20

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 8
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %6, align 4
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i32 [ %19, %17 ], [ %16, %12 ]
  store i32 %21, ptr %5, align 8
  %22 = getelementptr inbounds %struct.devfreq_freqs, ptr %5, i32 0, i32 1
  store i32 %1, ptr %22, align 4
  %23 = icmp eq ptr %0, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 20
  %26 = call i32 @srcu_notifier_call_chain(ptr noundef %25, i32 noundef 0, ptr noundef nonnull %5) #15
  br label %27

27:                                               ; preds = %24, %20
  %28 = load ptr, ptr %7, align 8
  %29 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %28, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 2
  %32 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 2, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = call i32 %30(ptr noundef %33, ptr noundef nonnull %4, i32 noundef %2) #15
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %27
  %37 = load i32, ptr %6, align 4
  store i32 %37, ptr %22, align 4
  br i1 %23, label %93, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 20
  %40 = call i32 @srcu_notifier_call_chain(ptr noundef %39, i32 noundef 1, ptr noundef nonnull %5) #15
  br label %93

41:                                               ; preds = %27
  %42 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devfreq_frequency, i32 0, i32 1), align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %41
  %45 = load i32, ptr %4, align 4
  %46 = load i32, ptr %6, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %74, label %48

48:                                               ; preds = %44
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devfreq_frequency, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %48
  %52 = tail call ptr @llvm.thread.pointer() #15
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = lshr i32 %54, 5
  %56 = getelementptr i32, ptr @__cpu_online_mask, i32 %55
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %54, 31
  %59 = shl nuw i32 1, %58
  %60 = and i32 %59, %57
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %51
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  %63 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devfreq_frequency, i32 0, i32 7), align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %65, %62
  %66 = phi ptr [ %70, %65 ], [ %63, %62 ]
  %67 = load volatile ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.tracepoint_func, ptr %66, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  call void %67(ptr noundef %69, ptr noundef %0, i32 noundef %45, i32 noundef %46) #15
  %70 = getelementptr %struct.tracepoint_func, ptr %66, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %65

73:                                               ; preds = %65, %62
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  br label %74

74:                                               ; preds = %73, %51, %48, %44, %41
  %75 = load i32, ptr %4, align 4
  store i32 %75, ptr %22, align 4
  br i1 %23, label %80, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 20
  %78 = call i32 @srcu_notifier_call_chain(ptr noundef %77, i32 noundef 1, ptr noundef nonnull %5) #15
  %79 = load i32, ptr %4, align 4
  br label %80

80:                                               ; preds = %76, %74
  %81 = phi i32 [ %75, %74 ], [ %79, %76 ]
  %82 = call i32 @devfreq_update_status(ptr noundef %0, i32 noundef %81)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.32) #16
  br label %85

85:                                               ; preds = %84, %80
  %86 = load i32, ptr %4, align 4
  %87 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 8
  store i32 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 16
  %89 = load i32, ptr %88, align 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 17
  store i32 %86, ptr %92, align 4
  br label %93

93:                                               ; preds = %91, %85, %38, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @update_devfreq(ptr noundef %0) #0 {
  %2 = tail call i32 @devfreq_update_target(ptr noundef %0, i32 noundef 0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devfreq_monitor_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.devfreq_governor, ptr %3, i32 0, i32 3
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 2
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %34 [
    i32 0, label %13
    i32 1, label %16
  ]

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 7
  store i32 -32, ptr %14, align 8
  %15 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 7, i32 0, i32 1
  store volatile ptr %15, ptr %15, align 4
  br label %19

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 7
  store i32 -32, ptr %17, align 8
  %18 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 7, i32 0, i32 1
  store volatile ptr %18, ptr %18, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ %18, %16 ], [ %15, %13 ]
  %21 = phi i32 [ 2097152, %16 ], [ 2621440, %13 ]
  %22 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 7, i32 0, i32 1, i32 1
  store ptr %20, ptr %22, align 4
  %23 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 7, i32 0, i32 2
  store ptr @devfreq_monitor, ptr %23, align 4
  %24 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %24, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef %21, ptr noundef null, ptr noundef null) #15
  %25 = load ptr, ptr %9, align 8
  %26 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %19
  %30 = load ptr, ptr @devfreq_wq, align 4
  %31 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 7
  %32 = tail call i32 @__msecs_to_jiffies(i32 noundef %27) #15
  %33 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %30, ptr noundef %31, i32 noundef %32) #15
  br label %34

34:                                               ; preds = %29, %19, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devfreq_monitor(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -528
  %3 = getelementptr i8, ptr %0, i32 -520
  tail call void @mutex_lock(ptr noundef %3) #15
  %4 = tail call i32 @devfreq_update_target(ptr noundef %2, i32 noundef 0) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -496
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.34, i32 noundef %4) #16
  br label %8

8:                                                ; preds = %6, %1
  %9 = load ptr, ptr @devfreq_wq, align 4
  %10 = getelementptr i8, ptr %0, i32 -24
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @__msecs_to_jiffies(i32 noundef %13) #15
  %15 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %9, ptr noundef %0, i32 noundef %14) #15
  tail call void @mutex_unlock(ptr noundef %3) #15
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devfreq_monitor, i32 0, i32 1), align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %8
  %19 = tail call ptr @llvm.thread.pointer() #15
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %21, 5
  %23 = getelementptr i32, ptr @__cpu_online_mask, i32 %22
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %21, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_devfreq_monitor, i32 0, i32 7), align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %32, %29
  %33 = phi ptr [ %37, %32 ], [ %30, %29 ]
  %34 = load volatile ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.tracepoint_func, ptr %33, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  tail call void %34(ptr noundef %36, ptr noundef %2) #15
  %37 = getelementptr %struct.tracepoint_func, ptr %33, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %32

40:                                               ; preds = %32, %29
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  br label %41

41:                                               ; preds = %40, %18, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devfreq_monitor_stop(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.devfreq_governor, ptr %3, i32 0, i32 3
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 2
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 7
  %10 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %9) #15
  br label %11

11:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devfreq_monitor_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %2) #15
  %3 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 15
  %4 = load i8, ptr %3, align 4, !range !17
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef %2) #15
  br label %20

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @devfreq_update_status(ptr noundef %0, i32 noundef %9)
  store i8 1, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef %2) #15
  %11 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.devfreq_governor, ptr %12, i32 0, i32 3
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 2
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 7
  %19 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %18) #15
  br label %20

20:                                               ; preds = %17, %7, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devfreq_monitor_resume(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.devfreq_governor, ptr %5, i32 0, i32 3
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 2
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 15
  %12 = load i8, ptr %11, align 4, !range !17
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %46, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 7
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr @devfreq_wq, align 4
  %27 = tail call i32 @__msecs_to_jiffies(i32 noundef %23) #15
  %28 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %26, ptr noundef %15, i32 noundef %27) #15
  br label %29

29:                                               ; preds = %25, %19, %14, %1
  %30 = tail call i64 @get_jiffies_64() #15
  %31 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 19, i32 3
  store i64 %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 15
  store i8 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 3
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %34, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 2, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = call i32 %36(ptr noundef %40, ptr noundef nonnull %2) #15
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, ptr %2, align 4
  %45 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 8
  store i32 %44, ptr %45, align 4
  br label %46

46:                                               ; preds = %43, %38, %29, %10
  call void @mutex_unlock(ptr noundef %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devfreq_update_interval(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %9, i32 0, i32 1
  store i32 %7, ptr %10, align 4
  %11 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.devfreq_governor, ptr %12, i32 0, i32 3
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 2
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 15
  %19 = load i8, ptr %18, align 4, !range !17
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %17
  %22 = icmp eq i32 %7, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  tail call void @mutex_unlock(ptr noundef %8) #15
  %24 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 7
  %25 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %24) #15
  br label %51

26:                                               ; preds = %21
  %27 = icmp eq i32 %6, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %26
  %29 = load ptr, ptr @devfreq_wq, align 4
  %30 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 7
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @__msecs_to_jiffies(i32 noundef %33) #15
  %35 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %29, ptr noundef %30, i32 noundef %34) #15
  br label %50

36:                                               ; preds = %26
  %37 = icmp ugt i32 %6, %7
  br i1 %37, label %38, label %50

38:                                               ; preds = %36
  tail call void @mutex_unlock(ptr noundef %8) #15
  %39 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 7
  %40 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %39) #15
  tail call void @mutex_lock(ptr noundef %8) #15
  %41 = load i8, ptr %18, align 4, !range !17
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load ptr, ptr @devfreq_wq, align 4
  %45 = load ptr, ptr %3, align 8
  %46 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 @__msecs_to_jiffies(i32 noundef %47) #15
  %49 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %44, ptr noundef %39, i32 noundef %48) #15
  br label %50

50:                                               ; preds = %43, %38, %36, %28, %17, %2
  tail call void @mutex_unlock(ptr noundef %8) #15
  br label %51

51:                                               ; preds = %50, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devfreq_add_device(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = icmp ne ptr %0, null
  %9 = icmp ne ptr %1, null
  %10 = and i1 %8, %9
  %11 = icmp ne ptr %2, null
  %12 = and i1 %10, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.devfreq_add_device) #16
  br label %255

14:                                               ; preds = %4
  tail call void @mutex_lock(ptr noundef nonnull @devfreq_list_lock) #15
  %15 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.find_device_devfreq) #16
  br label %26

18:                                               ; preds = %22, %14
  %19 = phi ptr [ %20, %22 ], [ @devfreq_list, %14 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, @devfreq_list
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.devfreq, ptr %20, i32 0, i32 2, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %27, label %18

26:                                               ; preds = %18, %16
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  br label %30

27:                                               ; preds = %22
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  %28 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %30, label %29

29:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.devfreq_add_device) #16
  br label %252

30:                                               ; preds = %27, %26
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 992) #17
  %33 = icmp eq ptr %32, null
  br i1 %33, label %252, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %35, ptr noundef nonnull @.str.2, ptr noundef nonnull @devfreq_add_device.__key) #15
  tail call void @mutex_lock(ptr noundef %35) #15
  %36 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 2
  %37 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 2, i32 1
  store ptr %0, ptr %37, align 4
  %38 = load ptr, ptr @devfreq_class, align 4
  %39 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 2, i32 31
  store ptr %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 2, i32 33
  store ptr @devfreq_dev_release, ptr %40, align 4
  store volatile ptr %32, ptr %32, align 8
  %41 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %32, ptr %41, align 4
  %42 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 3
  store ptr %1, ptr %42, align 8
  %43 = load i32, ptr %1, align 4
  %44 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 8
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 9, i32 2
  store i32 %43, ptr %45, align 8
  %46 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 10
  store ptr %3, ptr %46, align 8
  %47 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 6
  store ptr @devfreq_notifier_call, ptr %47, align 4
  %48 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %1, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = icmp ugt i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  tail call void @mutex_unlock(ptr noundef %35) #15
  br label %249

52:                                               ; preds = %34
  %53 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %1, i32 0, i32 9
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %1, i32 0, i32 8
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %105

60:                                               ; preds = %56, %52
  tail call void @mutex_unlock(ptr noundef %35) #15
  %61 = load ptr, ptr %42, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  %62 = load ptr, ptr %37, align 4
  %63 = tail call i32 @dev_pm_opp_get_opp_count(ptr noundef %62) #15
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %95, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %61, i32 0, i32 9
  store i32 %63, ptr %66, align 4
  %67 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %63, i32 4) #15
  %68 = extractvalue { i32, i1 } %67, 1
  br i1 %68, label %69, label %71, !prof !11

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %61, i32 0, i32 8
  store ptr null, ptr %70, align 4
  br label %80

71:                                               ; preds = %65
  %72 = load ptr, ptr %37, align 4
  %73 = extractvalue { i32, i1 } %67, 0
  %74 = tail call noalias ptr @devm_kmalloc(ptr noundef %72, i32 noundef %73, i32 noundef 3520) #15
  %75 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %61, i32 0, i32 8
  store ptr %74, ptr %75, align 4
  %76 = icmp eq ptr %74, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  store i32 0, ptr %7, align 4
  %78 = load i32, ptr %66, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %97, label %81

80:                                               ; preds = %71, %69
  store i32 0, ptr %66, align 4
  br label %95

81:                                               ; preds = %86, %77
  %82 = phi i32 [ %90, %86 ], [ 0, %77 ]
  %83 = load ptr, ptr %37, align 4
  %84 = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %83, ptr noundef nonnull %7) #15
  %85 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %98, label %86

86:                                               ; preds = %81
  call void @dev_pm_opp_put(ptr noundef %84) #15
  %87 = load i32, ptr %7, align 4
  %88 = load ptr, ptr %75, align 4
  %89 = getelementptr i32, ptr %88, i32 %82
  store i32 %87, ptr %89, align 4
  %90 = add nuw i32 %82, 1
  %91 = load i32, ptr %7, align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr %7, align 4
  %93 = load i32, ptr %66, align 4
  %94 = icmp ult i32 %90, %93
  br i1 %94, label %81, label %97

95:                                               ; preds = %80, %60
  %96 = phi i32 [ -22, %60 ], [ -12, %80 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  br label %249

97:                                               ; preds = %86, %77
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  br label %103

98:                                               ; preds = %81
  %99 = load ptr, ptr %37, align 4
  %100 = load ptr, ptr %75, align 4
  call void @devm_kfree(ptr noundef %99, ptr noundef %100) #15
  store i32 0, ptr %66, align 4
  %101 = ptrtoint ptr %84 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  %102 = icmp slt ptr %84, null
  br i1 %102, label %249, label %103

103:                                              ; preds = %98, %97
  call void @mutex_lock(ptr noundef %35) #15
  %104 = load ptr, ptr %37, align 4
  br label %105

105:                                              ; preds = %103, %56
  %106 = phi ptr [ %104, %103 ], [ %0, %56 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4
  %107 = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %106, ptr noundef nonnull %6) #15
  %108 = icmp ugt ptr %107, inttoptr (i32 -4096 to ptr)
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  %110 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 13
  store i32 0, ptr %110, align 4
  br label %115

111:                                              ; preds = %105
  call void @dev_pm_opp_put(ptr noundef %107) #15
  %112 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  %113 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 13
  store i32 %112, ptr %113, align 4
  %114 = icmp eq i32 %112, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111, %109
  call void @mutex_unlock(ptr noundef %35) #15
  br label %249

116:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 -1, ptr %5, align 4
  %117 = load ptr, ptr %37, align 4
  %118 = call ptr @dev_pm_opp_find_freq_floor(ptr noundef %117, ptr noundef nonnull %5) #15
  %119 = icmp ugt ptr %118, inttoptr (i32 -4096 to ptr)
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  %121 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 14
  store i32 0, ptr %121, align 8
  br label %126

122:                                              ; preds = %116
  call void @dev_pm_opp_put(ptr noundef %118) #15
  %123 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  %124 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 14
  store i32 %123, ptr %124, align 8
  %125 = icmp eq i32 %123, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122, %120
  call void @mutex_unlock(ptr noundef %35) #15
  br label %249

127:                                              ; preds = %122
  %128 = call i32 @dev_pm_opp_get_suspend_opp_freq(ptr noundef nonnull %0) #15
  %129 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 16
  store i32 %128, ptr %129, align 8
  %130 = call ptr @dev_pm_opp_get_opp_table(ptr noundef nonnull %0) #15
  %131 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 5
  %132 = icmp ugt ptr %130, inttoptr (i32 -4096 to ptr)
  %133 = select i1 %132, ptr null, ptr %130
  store ptr %133, ptr %131, align 8
  %134 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 18
  store volatile i32 0, ptr %134, align 8
  %135 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %127
  %139 = load ptr, ptr %0, align 4
  br label %140

140:                                              ; preds = %138, %127
  %141 = phi ptr [ %139, %138 ], [ %136, %127 ]
  %142 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef %141) #15
  %143 = call i32 @device_register(ptr noundef %36) #15
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %140
  call void @mutex_unlock(ptr noundef %35) #15
  call void @put_device(ptr noundef %36) #15
  br label %252

146:                                              ; preds = %140
  %147 = load ptr, ptr %42, align 8
  %148 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %147, i32 0, i32 9
  %149 = load i32, ptr %148, align 4
  %150 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %149, i32 4) #15
  %151 = extractvalue { i32, i1 } %150, 1
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = extractvalue { i32, i1 } %150, 0
  %154 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %153, i32 %149) #15
  %155 = extractvalue { i32, i1 } %154, 1
  %156 = extractvalue { i32, i1 } %154, 0
  %157 = select i1 %155, i32 -1, i32 %156
  br label %158

158:                                              ; preds = %152, %146
  %159 = phi i32 [ -1, %146 ], [ %157, %152 ]
  %160 = call noalias ptr @devm_kmalloc(ptr noundef %36, i32 noundef %159, i32 noundef 3520) #15
  %161 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 19
  %162 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 19, i32 1
  store ptr %160, ptr %162, align 4
  %163 = icmp eq ptr %160, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  call void @mutex_unlock(ptr noundef %35) #15
  br label %225

165:                                              ; preds = %158
  %166 = load ptr, ptr %42, align 8
  %167 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %166, i32 0, i32 9
  %168 = load i32, ptr %167, align 4
  %169 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %168, i32 8) #15
  %170 = extractvalue { i32, i1 } %169, 1
  br i1 %170, label %171, label %173, !prof !11

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 19, i32 2
  store ptr null, ptr %172, align 8
  br label %178

173:                                              ; preds = %165
  %174 = extractvalue { i32, i1 } %169, 0
  %175 = call noalias ptr @devm_kmalloc(ptr noundef %36, i32 noundef %174, i32 noundef 3520) #15
  %176 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 19, i32 2
  store ptr %175, ptr %176, align 8
  %177 = icmp eq ptr %175, null
  br i1 %177, label %178, label %179

178:                                              ; preds = %173, %171
  call void @mutex_unlock(ptr noundef %35) #15
  br label %225

179:                                              ; preds = %173
  store i32 0, ptr %161, align 8
  %180 = call i64 @get_jiffies_64() #15
  %181 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 19, i32 3
  store i64 %180, ptr %181, align 8
  %182 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 20
  call void @srcu_init_notifier_head(ptr noundef %182) #15
  call void @mutex_unlock(ptr noundef %35) #15
  %183 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 11
  %184 = call i32 @dev_pm_qos_add_request(ptr noundef nonnull %0, ptr noundef %183, i32 noundef 3, i32 noundef 0) #15
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %225, label %186

186:                                              ; preds = %179
  %187 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 12
  %188 = call i32 @dev_pm_qos_add_request(ptr noundef nonnull %0, ptr noundef %187, i32 noundef 4, i32 noundef 2147483647) #15
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %225, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 22
  store ptr @qos_min_notifier_call, ptr %191, align 4
  %192 = call i32 @dev_pm_qos_add_notifier(ptr noundef nonnull %0, ptr noundef %191, i32 noundef 3) #15
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %225

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 23
  store ptr @qos_max_notifier_call, ptr %195, align 8
  %196 = call i32 @dev_pm_qos_add_notifier(ptr noundef nonnull %0, ptr noundef %195, i32 noundef 4) #15
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %225

198:                                              ; preds = %194
  call void @mutex_lock(ptr noundef nonnull @devfreq_list_lock) #15
  %199 = call fastcc ptr @try_then_request_governor(ptr noundef nonnull %2)
  %200 = icmp ugt ptr %199, inttoptr (i32 -4096 to ptr)
  br i1 %200, label %201, label %203

201:                                              ; preds = %198
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.devfreq_add_device) #16
  %202 = ptrtoint ptr %199 to i32
  br label %223

203:                                              ; preds = %198
  %204 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 4
  store ptr %199, ptr %204, align 4
  %205 = getelementptr inbounds %struct.devfreq_governor, ptr %199, i32 0, i32 5
  %206 = load ptr, ptr %205, align 4
  %207 = call i32 %206(ptr noundef nonnull %32, i32 noundef 1, ptr noundef null) #15
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %203
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.devfreq_add_device) #16
  br label %223

210:                                              ; preds = %203
  %211 = load ptr, ptr %204, align 4
  call fastcc void @create_sysfs_files(ptr noundef nonnull %32, ptr noundef %211)
  %212 = load ptr, ptr @devfreq_list, align 4
  %213 = getelementptr inbounds %struct.list_head, ptr %212, i32 0, i32 1
  store ptr %32, ptr %213, align 4
  store ptr %212, ptr %32, align 8
  store ptr @devfreq_list, ptr %41, align 4
  store volatile ptr %32, ptr @devfreq_list, align 4
  call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  %214 = load ptr, ptr %42, align 8
  %215 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %214, i32 0, i32 3
  %216 = load i8, ptr %215, align 4, !range !17
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %255, label %218

218:                                              ; preds = %210
  %219 = call ptr @devfreq_cooling_em_register(ptr noundef nonnull %32, ptr noundef null) #15
  %220 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 21
  %221 = icmp ugt ptr %219, inttoptr (i32 -4096 to ptr)
  %222 = select i1 %221, ptr null, ptr %219
  store ptr %222, ptr %220, align 8
  br label %255

223:                                              ; preds = %209, %201
  %224 = phi i32 [ %202, %201 ], [ %207, %209 ]
  call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  br label %225

225:                                              ; preds = %223, %194, %190, %186, %179, %178, %164
  %226 = phi i32 [ %184, %179 ], [ %188, %186 ], [ %192, %190 ], [ %196, %194 ], [ %224, %223 ], [ -12, %178 ], [ -12, %164 ]
  %227 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 21
  %228 = load ptr, ptr %227, align 8
  call void @devfreq_cooling_unregister(ptr noundef %228) #15
  %229 = getelementptr inbounds %struct.devfreq, ptr %32, i32 0, i32 4
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %248, label %232

232:                                              ; preds = %225
  %233 = getelementptr inbounds %struct.devfreq_governor, ptr %230, i32 0, i32 5
  %234 = load ptr, ptr %233, align 4
  %235 = call i32 %234(ptr noundef nonnull %32, i32 noundef 2, ptr noundef null) #15
  %236 = load ptr, ptr %229, align 4
  %237 = getelementptr inbounds %struct.devfreq_governor, ptr %236, i32 0, i32 2
  %238 = load i64, ptr %237, align 8
  %239 = and i64 %238, 1
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %232
  call void @sysfs_remove_file_ns(ptr noundef %36, ptr noundef nonnull @dev_attr_polling_interval, ptr noundef null) #15
  %242 = load i64, ptr %237, align 8
  br label %243

243:                                              ; preds = %241, %232
  %244 = phi i64 [ %238, %232 ], [ %242, %241 ]
  %245 = and i64 %244, 2
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %243
  call void @sysfs_remove_file_ns(ptr noundef %36, ptr noundef nonnull @dev_attr_timer, ptr noundef null) #15
  br label %248

248:                                              ; preds = %247, %243, %225
  call void @device_unregister(ptr noundef %36) #15
  br label %249

249:                                              ; preds = %248, %126, %115, %98, %95, %51
  %250 = phi ptr [ %32, %51 ], [ null, %248 ], [ %32, %126 ], [ %32, %115 ], [ %32, %98 ], [ %32, %95 ]
  %251 = phi i32 [ -22, %51 ], [ %226, %248 ], [ -22, %126 ], [ -22, %115 ], [ %101, %98 ], [ %96, %95 ]
  call void @kfree(ptr noundef %250) #15
  br label %252

252:                                              ; preds = %249, %145, %30, %29
  %253 = phi i32 [ %251, %249 ], [ %143, %145 ], [ -22, %29 ], [ -12, %30 ]
  %254 = inttoptr i32 %253 to ptr
  br label %255

255:                                              ; preds = %252, %218, %210, %13
  %256 = phi ptr [ %254, %252 ], [ inttoptr (i32 -22 to ptr), %13 ], [ %32, %210 ], [ %32, %218 ]
  ret ptr %256
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devfreq_dev_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -32
  tail call void @mutex_lock(ptr noundef nonnull @devfreq_list_lock) #15
  %3 = getelementptr i8, ptr %0, i32 -28
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 944
  %10 = tail call i32 @dev_pm_qos_remove_notifier(ptr noundef %8, ptr noundef %9, i32 noundef 4) #15
  switch i32 %10, label %11 [
    i32 -2, label %13
    i32 0, label %13
  ]

11:                                               ; preds = %1
  %12 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.36, i32 noundef %10) #16
  br label %13

13:                                               ; preds = %11, %1, %1
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %0, i32 932
  %16 = tail call i32 @dev_pm_qos_remove_notifier(ptr noundef %14, ptr noundef %15, i32 noundef 3) #15
  switch i32 %16, label %17 [
    i32 -2, label %19
    i32 0, label %19
  ]

17:                                               ; preds = %13
  %18 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.37, i32 noundef %16) #16
  br label %19

19:                                               ; preds = %17, %13, %13
  %20 = getelementptr i8, ptr %0, i32 632
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %0, i32 600
  %25 = tail call i32 @dev_pm_qos_remove_request(ptr noundef %24) #15
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.38, i32 noundef %25) #16
  br label %29

29:                                               ; preds = %27, %23, %19
  %30 = getelementptr i8, ptr %0, i32 596
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %0, i32 564
  %35 = tail call i32 @dev_pm_qos_remove_request(ptr noundef %34) #15
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.39, i32 noundef %35) #16
  br label %39

39:                                               ; preds = %37, %33, %29
  %40 = getelementptr i8, ptr %0, i32 472
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %41, i32 0, i32 7
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = load ptr, ptr %7, align 4
  tail call void %43(ptr noundef %46) #15
  br label %47

47:                                               ; preds = %45, %39
  %48 = getelementptr i8, ptr %0, i32 480
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call void @dev_pm_opp_put_opp_table(ptr noundef nonnull %49) #15
  br label %52

52:                                               ; preds = %51, %47
  tail call void @kfree(ptr noundef %2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devfreq_notifier_call(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -516
  %7 = getelementptr i8, ptr %0, i32 -508
  tail call void @mutex_lock(ptr noundef %7) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4
  %8 = getelementptr i8, ptr %0, i32 -448
  %9 = load ptr, ptr %8, align 4
  %10 = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %9, ptr noundef nonnull %5) #15
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  %13 = getelementptr i8, ptr %0, i32 152
  store i32 0, ptr %13, align 4
  br label %30

14:                                               ; preds = %3
  call void @dev_pm_opp_put(ptr noundef %10) #15
  %15 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  %16 = getelementptr i8, ptr %0, i32 152
  store i32 %15, ptr %16, align 4
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 -1, ptr %4, align 4
  %19 = load ptr, ptr %8, align 4
  %20 = call ptr @dev_pm_opp_find_freq_floor(ptr noundef %19, ptr noundef nonnull %4) #15
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  %23 = getelementptr i8, ptr %0, i32 156
  br label %28

24:                                               ; preds = %18
  call void @dev_pm_opp_put(ptr noundef %20) #15
  %25 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  %26 = getelementptr i8, ptr %0, i32 156
  store i32 %25, ptr %26, align 8
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %22
  %29 = phi ptr [ %23, %22 ], [ %26, %24 ]
  store i32 -1, ptr %29, align 8
  br label %30

30:                                               ; preds = %28, %14, %12
  call void @mutex_unlock(ptr noundef %7) #15
  br label %34

31:                                               ; preds = %24
  %32 = call i32 @devfreq_update_target(ptr noundef %6, i32 noundef 0) #15
  call void @mutex_unlock(ptr noundef %7) #15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31, %30
  %35 = phi i32 [ -22, %30 ], [ %32, %31 ]
  %36 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.40, i32 noundef %35) #16
  br label %37

37:                                               ; preds = %34, %31
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_suspend_opp_freq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_get_opp_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @srcu_init_notifier_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_add_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qos_min_notifier_call(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -964
  %5 = getelementptr i8, ptr %0, i32 -956
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = tail call i32 @devfreq_update_target(ptr noundef %4, i32 noundef 0) #15
  tail call void @mutex_unlock(ptr noundef %5) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -896
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.41, i32 noundef %6) #16
  br label %11

11:                                               ; preds = %8, %3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_add_notifier(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qos_max_notifier_call(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -976
  %5 = getelementptr i8, ptr %0, i32 -968
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = tail call i32 @devfreq_update_target(ptr noundef %4, i32 noundef 0) #15
  tail call void @mutex_unlock(ptr noundef %5) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -908
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.41, i32 noundef %6) #16
  br label %11

11:                                               ; preds = %8, %3
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @try_then_request_governor(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.try_then_request_governor) #16
  br label %39

7:                                                ; preds = %11, %1
  %8 = phi ptr [ %9, %11 ], [ @devfreq_governor_list, %1 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @devfreq_governor_list
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.devfreq_governor, ptr %9, i32 0, i32 1
  %13 = tail call i32 @strncmp(ptr noundef %12, ptr noundef %0, i32 noundef 16) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %7

15:                                               ; preds = %11
  %16 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %39

17:                                               ; preds = %15, %7
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  %18 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(16) @.str.42, i32 noundef 16)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #15
  br label %24

22:                                               ; preds = %17
  %23 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.43, ptr noundef %0) #15
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %23, %22 ], [ %21, %20 ]
  tail call void @mutex_lock(ptr noundef nonnull @devfreq_list_lock) #15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = icmp slt i32 %25, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %27
  %30 = inttoptr i32 %25 to ptr
  br label %39

31:                                               ; preds = %35, %24
  %32 = phi ptr [ %33, %35 ], [ @devfreq_governor_list, %24 ]
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, @devfreq_governor_list
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.devfreq_governor, ptr %33, i32 0, i32 1
  %37 = tail call i32 @strncmp(ptr noundef %36, ptr noundef %0, i32 noundef 16) #15
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %31

39:                                               ; preds = %35, %31, %29, %27, %15, %5
  %40 = phi ptr [ inttoptr (i32 -22 to ptr), %5 ], [ %30, %29 ], [ %9, %15 ], [ inttoptr (i32 -22 to ptr), %27 ], [ %33, %35 ], [ inttoptr (i32 -19 to ptr), %31 ]
  ret ptr %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @create_sysfs_files(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.devfreq_governor, ptr %1, i32 0, i32 2
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 2
  %9 = tail call i32 @sysfs_create_file_ns(ptr noundef %8, ptr noundef nonnull @dev_attr_polling_interval, ptr noundef null) #15
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46) #16
  br label %12

12:                                               ; preds = %11, %7, %2
  %13 = load i64, ptr %3, align 8
  %14 = and i64 %13, 2
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 2
  %18 = tail call i32 @sysfs_create_file_ns(ptr noundef %17, ptr noundef nonnull @dev_attr_timer, ptr noundef null) #15
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46) #16
  br label %21

21:                                               ; preds = %20, %16, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_cooling_em_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devfreq_remove_device(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %29, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 21
  %5 = load ptr, ptr %4, align 8
  tail call void @devfreq_cooling_unregister(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.devfreq_governor, ptr %7, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef nonnull %0, i32 noundef 2, ptr noundef null) #15
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.devfreq_governor, ptr %13, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 1
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 2
  tail call void @sysfs_remove_file_ns(ptr noundef %19, ptr noundef nonnull @dev_attr_polling_interval, ptr noundef null) #15
  %20 = load i64, ptr %14, align 8
  br label %21

21:                                               ; preds = %18, %9
  %22 = phi i64 [ %15, %9 ], [ %20, %18 ]
  %23 = and i64 %22, 2
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 2
  tail call void @sysfs_remove_file_ns(ptr noundef %26, ptr noundef nonnull @dev_attr_timer, ptr noundef null) #15
  br label %27

27:                                               ; preds = %25, %21, %3
  %28 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 2
  tail call void @device_unregister(ptr noundef %28) #15
  br label %29

29:                                               ; preds = %27, %1
  %30 = phi i32 [ 0, %27 ], [ -22, %1 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_cooling_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_devfreq_add_device(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_devfreq_dev_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.6) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @devfreq_add_device(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @devres_free(ptr noundef nonnull %5) #15
  br label %12

11:                                               ; preds = %7
  store ptr %8, ptr %5, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %5) #15
  br label %12

12:                                               ; preds = %11, %10, %4
  %13 = phi ptr [ %8, %10 ], [ %8, %11 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_devfreq_dev_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 @devfreq_remove_device(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devfreq_get_devfreq_by_node(ptr noundef readnone %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @devfreq_list_lock) #15
  %4 = load ptr, ptr @devfreq_list, align 4
  %5 = icmp eq ptr %4, @devfreq_list
  br i1 %5, label %18, label %6

6:                                                ; preds = %15, %3
  %7 = phi ptr [ %16, %15 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.devfreq, ptr %7, i32 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11, %6
  %16 = load ptr, ptr %7, align 4
  %17 = icmp eq ptr %16, @devfreq_list
  br i1 %17, label %18, label %6

18:                                               ; preds = %15, %11, %3
  %19 = phi ptr [ inttoptr (i32 -19 to ptr), %3 ], [ %7, %11 ], [ inttoptr (i32 -19 to ptr), %15 ]
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ inttoptr (i32 -22 to ptr), %1 ], [ %19, %18 ]
  ret ptr %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devfreq_get_devfreq_by_phandle(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %35

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #15, !annotation !9
  %13 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %10, ptr noundef nonnull %1, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #15
  %14 = icmp ne i32 %13, 0
  %15 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #15
  %16 = icmp eq ptr %15, null
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %35, label %18

18:                                               ; preds = %12
  call void @mutex_lock(ptr noundef nonnull @devfreq_list_lock) #15
  %19 = load ptr, ptr @devfreq_list, align 4
  %20 = icmp eq ptr %19, @devfreq_list
  br i1 %20, label %33, label %21

21:                                               ; preds = %30, %18
  %22 = phi ptr [ %31, %30 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.devfreq, ptr %22, i32 0, i32 2, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 25
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, %15
  br i1 %29, label %33, label %30

30:                                               ; preds = %26, %21
  %31 = load ptr, ptr %22, align 4
  %32 = icmp eq ptr %31, @devfreq_list
  br i1 %32, label %33, label %21

33:                                               ; preds = %30, %26, %18
  %34 = phi ptr [ inttoptr (i32 -19 to ptr), %18 ], [ inttoptr (i32 -19 to ptr), %30 ], [ %22, %26 ]
  call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  call void @of_node_put(ptr noundef nonnull %15) #15
  br label %35

35:                                               ; preds = %33, %12, %8, %3
  %36 = phi ptr [ %34, %33 ], [ inttoptr (i32 -22 to ptr), %3 ], [ inttoptr (i32 -22 to ptr), %8 ], [ inttoptr (i32 -19 to ptr), %12 ]
  ret ptr %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_devfreq_remove_device(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_devfreq_dev_release, ptr noundef nonnull @devm_devfreq_dev_match, ptr noundef %1) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !10

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1117, i32 noundef 9, ptr noundef null) #15
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devm_devfreq_dev_match(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef readnone %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %5, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 990, i32 noundef 9, ptr noundef null) #15
  br label %12

9:                                                ; preds = %5
  %10 = icmp eq ptr %6, %2
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %9, %8
  %13 = phi i32 [ 0, %8 ], [ %11, %9 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devfreq_suspend_device(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #15, !srcloc !19
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #15, !srcloc !20
  %6 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %27, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.devfreq_governor, ptr %10, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef nonnull %0, i32 noundef 4, ptr noundef null) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12, %8
  %18 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 16
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %22) #15
  %23 = load i32, ptr %18, align 8
  %24 = tail call fastcc i32 @devfreq_set_target(ptr noundef nonnull %0, i32 noundef %23, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef %22) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %17
  br label %27

27:                                               ; preds = %26, %21, %12, %3, %1
  %28 = phi i32 [ 0, %26 ], [ -22, %1 ], [ 0, %3 ], [ %15, %12 ], [ %24, %21 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devfreq_resume_device(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #15, !srcloc !19
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #15, !srcloc !23
  %6 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 17
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %13) #15
  %14 = load i32, ptr %9, align 4
  %15 = tail call fastcc i32 @devfreq_set_target(ptr noundef nonnull %0, i32 noundef %14, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef %13) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12, %8
  %18 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.devfreq_governor, ptr %19, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef nonnull %0, i32 noundef 5, ptr noundef null) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %17
  br label %27

27:                                               ; preds = %26, %21, %12, %3, %1
  %28 = phi i32 [ 0, %26 ], [ -22, %1 ], [ 0, %3 ], [ %15, %12 ], [ %24, %21 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devfreq_suspend() local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @devfreq_list_lock) #15
  %1 = load ptr, ptr @devfreq_list, align 4
  %2 = icmp eq ptr %1, @devfreq_list
  br i1 %2, label %12, label %3

3:                                                ; preds = %9, %0
  %4 = phi ptr [ %10, %9 ], [ %1, %0 ]
  %5 = tail call i32 @devfreq_suspend_device(ptr noundef %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.devfreq, ptr %4, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.8) #16
  br label %9

9:                                                ; preds = %7, %3
  %10 = load ptr, ptr %4, align 4
  %11 = icmp eq ptr %10, @devfreq_list
  br i1 %11, label %12, label %3

12:                                               ; preds = %9, %0
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devfreq_resume() local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @devfreq_list_lock) #15
  %1 = load ptr, ptr @devfreq_list, align 4
  %2 = icmp eq ptr %1, @devfreq_list
  br i1 %2, label %12, label %3

3:                                                ; preds = %9, %0
  %4 = phi ptr [ %10, %9 ], [ %1, %0 ]
  %5 = tail call i32 @devfreq_resume_device(ptr noundef %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.devfreq, ptr %4, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.9) #16
  br label %9

9:                                                ; preds = %7, %3
  %10 = load ptr, ptr %4, align 4
  %11 = icmp eq ptr %10, @devfreq_list
  br i1 %11, label %12, label %3

12:                                               ; preds = %9, %0
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devfreq_add_governor(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.devfreq_add_governor) #16
  br label %64

5:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @devfreq_list_lock) #15
  %6 = getelementptr inbounds %struct.devfreq_governor, ptr %0, i32 0, i32 1
  %7 = icmp eq ptr %6, null
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.find_devfreq_governor) #16
  br label %24

12:                                               ; preds = %16, %5
  %13 = phi ptr [ %14, %16 ], [ @devfreq_governor_list, %5 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, @devfreq_governor_list
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.devfreq_governor, ptr %14, i32 0, i32 1
  %18 = tail call i32 @strncmp(ptr noundef %17, ptr noundef %6, i32 noundef 16) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %12

20:                                               ; preds = %16
  %21 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.devfreq_add_governor, ptr noundef %17) #16
  br label %62

24:                                               ; preds = %20, %12, %10
  %25 = load ptr, ptr @devfreq_governor_list, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %0, ptr %26, align 4
  store ptr %25, ptr %0, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr @devfreq_governor_list, ptr %27, align 4
  store volatile ptr %0, ptr @devfreq_governor_list, align 4
  %28 = load ptr, ptr @devfreq_list, align 4
  %29 = icmp eq ptr %28, @devfreq_list
  br i1 %29, label %62, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.devfreq_governor, ptr %0, i32 0, i32 5
  br label %32

32:                                               ; preds = %59, %30
  %33 = phi ptr [ %28, %30 ], [ %60, %59 ]
  %34 = getelementptr inbounds %struct.devfreq, ptr %33, i32 0, i32 2, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.devfreq, ptr %33, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.devfreq_governor, ptr %37, i32 0, i32 1
  %39 = tail call i32 @strncmp(ptr noundef %38, ptr noundef %6, i32 noundef 16)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %32
  %42 = icmp eq ptr %37, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.devfreq_add_governor, ptr noundef %38) #16
  %44 = load ptr, ptr %36, align 4
  %45 = getelementptr inbounds %struct.devfreq_governor, ptr %44, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 %46(ptr noundef %33, i32 noundef 2, ptr noundef null) #15
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load ptr, ptr %36, align 4
  %51 = getelementptr inbounds %struct.devfreq_governor, ptr %50, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.devfreq_add_governor, ptr noundef %51, i32 noundef %47) #16
  br label %52

52:                                               ; preds = %49, %43, %41
  store ptr %0, ptr %36, align 4
  %53 = load ptr, ptr %31, align 4
  %54 = tail call i32 %53(ptr noundef %33, i32 noundef 1, ptr noundef null) #15
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %36, align 4
  %58 = getelementptr inbounds %struct.devfreq_governor, ptr %57, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.devfreq_add_governor, ptr noundef %58, i32 noundef %54) #16
  br label %59

59:                                               ; preds = %56, %52, %32
  %60 = load ptr, ptr %33, align 4
  %61 = icmp eq ptr %60, @devfreq_list
  br i1 %61, label %62, label %32

62:                                               ; preds = %59, %24, %22
  %63 = phi i32 [ -22, %22 ], [ 0, %24 ], [ 0, %59 ]
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  br label %64

64:                                               ; preds = %62, %3
  %65 = phi i32 [ %63, %62 ], [ -22, %3 ]
  ret i32 %65
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_devfreq_add_governor(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devfreq_add_governor(ptr noundef %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_devfreq_remove_governor, ptr noundef %1) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @devfreq_remove_governor(ptr noundef %1) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !10

11:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1306, i32 noundef 9, ptr noundef null) #15
  br label %12

12:                                               ; preds = %11, %8, %5, %2
  %13 = phi i32 [ %3, %2 ], [ 0, %5 ], [ %6, %8 ], [ %6, %11 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_devfreq_remove_governor(ptr noundef %0) #0 {
  %2 = tail call i32 @devfreq_remove_governor(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4, !prof !10

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1306, i32 noundef 9, ptr noundef null) #15
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devfreq_remove_governor(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.devfreq_remove_governor) #16
  br label %60

5:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @devfreq_list_lock) #15
  %6 = getelementptr inbounds %struct.devfreq_governor, ptr %0, i32 0, i32 1
  %7 = icmp eq ptr %6, null
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.find_devfreq_governor) #16
  br label %25

12:                                               ; preds = %16, %5
  %13 = phi ptr [ %14, %16 ], [ @devfreq_governor_list, %5 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, @devfreq_governor_list
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.devfreq_governor, ptr %14, i32 0, i32 1
  %18 = tail call i32 @strncmp(ptr noundef %17, ptr noundef %6, i32 noundef 16) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %12

20:                                               ; preds = %16
  %21 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr @devfreq_list, align 4
  %24 = icmp eq ptr %23, @devfreq_list
  br i1 %24, label %53, label %29

25:                                               ; preds = %20, %12, %10
  %26 = phi ptr [ %14, %20 ], [ inttoptr (i32 -22 to ptr), %10 ], [ inttoptr (i32 -19 to ptr), %12 ]
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.devfreq_remove_governor, ptr noundef %6) #16
  %28 = ptrtoint ptr %26 to i32
  br label %58

29:                                               ; preds = %50, %22
  %30 = phi ptr [ %51, %50 ], [ %23, %22 ]
  %31 = getelementptr inbounds %struct.devfreq, ptr %30, i32 0, i32 2, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.devfreq, ptr %30, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.devfreq_governor, ptr %34, i32 0, i32 1
  %36 = tail call i32 @strncmp(ptr noundef %35, ptr noundef %6, i32 noundef 16)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %29
  %39 = icmp eq ptr %34, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.devfreq_remove_governor, ptr noundef %6) #16
  br label %50

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.devfreq_governor, ptr %34, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 %43(ptr noundef %30, i32 noundef 2, ptr noundef null) #15
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %33, align 4
  %48 = getelementptr inbounds %struct.devfreq_governor, ptr %47, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.devfreq_remove_governor, ptr noundef %48, i32 noundef %44) #16
  br label %49

49:                                               ; preds = %46, %41
  store ptr null, ptr %33, align 4
  br label %50

50:                                               ; preds = %49, %40, %29
  %51 = load ptr, ptr %30, align 4
  %52 = icmp eq ptr %51, @devfreq_list
  br i1 %52, label %53, label %29

53:                                               ; preds = %50, %22
  %54 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %0, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %55, ptr %57, align 4
  store volatile ptr %56, ptr %55, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %54, align 4
  br label %58

58:                                               ; preds = %53, %25
  %59 = phi i32 [ %28, %25 ], [ 0, %53 ]
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  br label %60

60:                                               ; preds = %58, %3
  %61 = phi i32 [ %59, %58 ], [ -22, %3 ]
  ret i32 %61
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @devfreq_init() #5 section ".init.text" {
  %1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.55, ptr noundef nonnull @devfreq_init.__key) #15
  store ptr %1, ptr @devfreq_class, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.7) #16
  %5 = load ptr, ptr @devfreq_class, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %17

7:                                                ; preds = %0
  %8 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.3, i32 noundef 262158, i32 noundef 1, ptr noundef nonnull @.str.57) #15
  store ptr %8, ptr @devfreq_wq, align 4
  %9 = icmp eq ptr %8, null
  %10 = load ptr, ptr @devfreq_class, align 4
  br i1 %9, label %11, label %13

11:                                               ; preds = %7
  tail call void @class_destroy(ptr noundef %10) #15
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.7) #16
  br label %17

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.class, ptr %10, i32 0, i32 3
  store ptr @devfreq_groups, ptr %14, align 4
  %15 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.55, ptr noundef null) #15
  store ptr %15, ptr @devfreq_debugfs, align 4
  %16 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.59, i16 noundef zeroext 292, ptr noundef %15, ptr noundef null, ptr noundef nonnull @devfreq_summary_fops) #15
  br label %17

17:                                               ; preds = %13, %11, %3
  %18 = phi i32 [ %6, %3 ], [ 0, %13 ], [ -12, %11 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devfreq_recommended_opp(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @dev_pm_opp_find_freq_floor(ptr noundef %0, ptr noundef %1) #15
  %8 = icmp eq ptr %7, inttoptr (i32 -34 to ptr)
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = tail call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %0, ptr noundef %1) #15
  br label %16

11:                                               ; preds = %3
  %12 = tail call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %0, ptr noundef %1) #15
  %13 = icmp eq ptr %12, inttoptr (i32 -34 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call ptr @dev_pm_opp_find_freq_floor(ptr noundef %0, ptr noundef %1) #15
  br label %16

16:                                               ; preds = %14, %11, %9, %6
  %17 = phi ptr [ %10, %9 ], [ %7, %6 ], [ %15, %14 ], [ %12, %11 ]
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_floor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_ceil(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devfreq_register_opp_notifier(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 6
  %4 = tail call i32 @dev_pm_opp_register_notifier(ptr noundef %0, ptr noundef %3) #15
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devfreq_unregister_opp_notifier(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 6
  %4 = tail call i32 @dev_pm_opp_unregister_notifier(ptr noundef %0, ptr noundef %3) #15
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_devfreq_register_opp_notifier(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_devfreq_opp_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.18) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 6
  %7 = tail call i32 @dev_pm_opp_register_notifier(ptr noundef %0, ptr noundef %6) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @devres_free(ptr noundef nonnull %3) #15
  br label %11

10:                                               ; preds = %5
  store ptr %1, ptr %3, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #15
  br label %11

11:                                               ; preds = %10, %9, %2
  %12 = phi i32 [ %7, %9 ], [ 0, %10 ], [ -12, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_devfreq_opp_release(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.devfreq, ptr %3, i32 0, i32 6
  %5 = tail call i32 @dev_pm_opp_unregister_notifier(ptr noundef %0, ptr noundef %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_devfreq_unregister_opp_notifier(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_devfreq_opp_release, ptr noundef nonnull @devm_devfreq_dev_match, ptr noundef %1) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !10

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 2124, i32 noundef 9, ptr noundef null) #15
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devfreq_register_notifier(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp eq i32 %2, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 20
  %9 = tail call i32 @srcu_notifier_chain_register(ptr noundef %8, ptr noundef %1) #15
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ -22, %3 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcu_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devfreq_unregister_notifier(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp eq i32 %2, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 20
  %9 = tail call i32 @srcu_notifier_chain_unregister(ptr noundef %8, ptr noundef %1) #15
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ -22, %3 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcu_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_devfreq_register_notifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_devfreq_notifier_release, i32 noundef 12, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.19) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %4
  %8 = icmp ne ptr %1, null
  %9 = icmp eq i32 %3, 0
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 20
  %13 = tail call i32 @srcu_notifier_chain_register(ptr noundef %12, ptr noundef %2) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11, %7
  %16 = phi i32 [ %13, %11 ], [ -22, %7 ]
  tail call void @devres_free(ptr noundef nonnull %5) #15
  br label %20

17:                                               ; preds = %11
  store ptr %1, ptr %5, align 4
  %18 = getelementptr inbounds %struct.devfreq_notifier_devres, ptr %5, i32 0, i32 1
  store ptr %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.devfreq_notifier_devres, ptr %5, i32 0, i32 2
  store i32 0, ptr %19, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %5) #15
  br label %20

20:                                               ; preds = %17, %15, %4
  %21 = phi i32 [ %16, %15 ], [ 0, %17 ], [ -12, %4 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_devfreq_notifier_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.devfreq_notifier_devres, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp ne ptr %3, null
  %7 = icmp eq i32 %5, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.devfreq_notifier_devres, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.devfreq, ptr %3, i32 0, i32 20
  %13 = tail call i32 @srcu_notifier_chain_unregister(ptr noundef %12, ptr noundef %11) #15
  br label %14

14:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_devfreq_unregister_notifier(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, i32 %3) #0 {
  %5 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_devfreq_notifier_release, ptr noundef nonnull @devm_devfreq_dev_match, ptr noundef %1) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !10

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 2247, i32 noundef 9, ptr noundef null) #15
  br label %8

8:                                                ; preds = %7, %4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_devfreq_frequency(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #15
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %29

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %6, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %6, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %6, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %6, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %6, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.trace_event_raw_devfreq_frequency, ptr %6, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %23, 100
  %25 = udiv i32 %24, %19
  br label %26

26:                                               ; preds = %21, %9
  %27 = phi i32 [ %25, %21 ], [ 0, %9 ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %27) #15
  %28 = tail call i32 @trace_handle_return(ptr noundef %4) #15
  br label %29

29:                                               ; preds = %26, %3
  %30 = phi i32 [ %28, %26 ], [ %7, %3 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_devfreq_monitor(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #15
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %29

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %6, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %6, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %6, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %6, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %6, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.trace_event_raw_devfreq_monitor, ptr %6, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %23, 100
  %25 = udiv i32 %24, %19
  br label %26

26:                                               ; preds = %21, %9
  %27 = phi i32 [ %25, %21 ], [ 0, %9 ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %27) #15
  %28 = tail call i32 @trace_handle_return(ptr noundef %4) #15
  br label %29

29:                                               ; preds = %26, %3
  %30 = phi i32 [ %28, %26 ], [ %7, %3 ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_read_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcu_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_remove_notifier(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_remove_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put_opp_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @polling_interval_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 472
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.48, i32 noundef %9)
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -22, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @polling_interval_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !9
  %7 = getelementptr i8, ptr %0, i32 476
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %4
  %11 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.49, ptr noundef nonnull %5)
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr inbounds %struct.devfreq_governor, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 %16(ptr noundef %6, i32 noundef 3, ptr noundef nonnull %5) #15
  br label %18

18:                                               ; preds = %13, %10, %4
  %19 = phi i32 [ %3, %13 ], [ -22, %4 ], [ -22, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %19
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @timer_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 472
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %5, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [2 x [16 x i8]], ptr @timer_name, i32 0, i32 %9
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.51, ptr noundef %10)
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %11, %7 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @timer_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca [17 x i8], align 1
  %6 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(17) %5, i8 0, i32 17, i1 false), !annotation !9
  %7 = getelementptr i8, ptr %0, i32 476
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %49, label %10

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %0, i32 472
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %49, label %14

14:                                               ; preds = %10
  %15 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.52, ptr noundef nonnull %5)
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %49

17:                                               ; preds = %14
  %18 = call i32 @strncmp(ptr noundef nonnull @timer_name, ptr noundef nonnull %5, i32 noundef 16)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = call i32 @strncmp(ptr noundef getelementptr inbounds ([2 x [16 x i8]], ptr @timer_name, i32 0, i32 1), ptr noundef nonnull %5, i32 noundef 16)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %20, %17
  %24 = phi i32 [ 0, %17 ], [ 1, %20 ]
  %25 = load ptr, ptr %11, align 8
  %26 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %24
  br i1 %28, label %49, label %29

29:                                               ; preds = %23
  %30 = getelementptr i8, ptr %0, i32 -24
  call void @mutex_lock(ptr noundef %30) #15
  %31 = load ptr, ptr %11, align 8
  %32 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %31, i32 0, i32 2
  store i32 %24, ptr %32, align 4
  call void @mutex_unlock(ptr noundef %30) #15
  %33 = load ptr, ptr %7, align 4
  %34 = getelementptr inbounds %struct.devfreq_governor, ptr %33, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 %35(ptr noundef %6, i32 noundef 2, ptr noundef null) #15
  %37 = icmp eq i32 %36, 0
  %38 = load ptr, ptr %7, align 4
  br i1 %37, label %41, label %39

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.devfreq_governor, ptr %38, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.timer_store, ptr noundef %40, i32 noundef %36) #16
  br label %49

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.devfreq_governor, ptr %38, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 %43(ptr noundef %6, i32 noundef 1, ptr noundef null) #15
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %7, align 4
  %48 = getelementptr inbounds %struct.devfreq_governor, ptr %47, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.timer_store, ptr noundef %48, i32 noundef %44) #16
  br label %49

49:                                               ; preds = %46, %41, %39, %23, %20, %14, %10, %4
  %50 = phi i32 [ -22, %10 ], [ -22, %4 ], [ -22, %14 ], [ %3, %41 ], [ %3, %23 ], [ %44, %46 ], [ %36, %39 ], [ -22, %20 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %5) #15
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 4
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi ptr [ %10, %9 ], [ %7, %3 ]
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.51, ptr noundef %12)
  ret i32 %13
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @governor_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 476
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.devfreq_governor, ptr %5, i32 0, i32 1
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.51, ptr noundef %8)
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %9, %7 ], [ -22, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @governor_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca [17 x i8], align 1
  %6 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(17) %5, i8 0, i32 17, i1 false), !annotation !9
  %7 = getelementptr i8, ptr %0, i32 476
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %86, label %10

10:                                               ; preds = %4
  %11 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.52, ptr noundef nonnull %5)
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %86

13:                                               ; preds = %10
  call void @mutex_lock(ptr noundef nonnull @devfreq_list_lock) #15
  %14 = call fastcc ptr @try_then_request_governor(ptr noundef nonnull %5)
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %82, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %7, align 4
  %18 = icmp eq ptr %17, %14
  br i1 %18, label %84, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.devfreq_governor, ptr %17, i32 0, i32 3
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 1
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %84

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.devfreq_governor, ptr %14, i32 0, i32 3
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 1
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %84

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.devfreq_governor, ptr %17, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = call i32 %31(ptr noundef %6, i32 noundef 2, ptr noundef null) #15
  %33 = icmp eq i32 %32, 0
  %34 = load ptr, ptr %7, align 4
  br i1 %33, label %37, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.devfreq_governor, ptr %34, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.governor_store, ptr noundef %36, i32 noundef %32) #16
  br label %84

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.devfreq_governor, ptr %34, i32 0, i32 2
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 1
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  call void @sysfs_remove_file_ns(ptr noundef %0, ptr noundef nonnull @dev_attr_polling_interval, ptr noundef null) #15
  %43 = load i64, ptr %38, align 8
  br label %44

44:                                               ; preds = %42, %37
  %45 = phi i64 [ %39, %37 ], [ %43, %42 ]
  %46 = and i64 %45, 2
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  call void @sysfs_remove_file_ns(ptr noundef %0, ptr noundef nonnull @dev_attr_timer, ptr noundef null) #15
  br label %49

49:                                               ; preds = %48, %44
  %50 = load ptr, ptr %7, align 4
  store ptr %14, ptr %7, align 4
  %51 = getelementptr inbounds %struct.devfreq_governor, ptr %14, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = call i32 %52(ptr noundef %6, i32 noundef 1, ptr noundef null) #15
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %49
  %56 = load ptr, ptr %7, align 4
  %57 = getelementptr inbounds %struct.devfreq_governor, ptr %56, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.governor_store, ptr noundef %57, i32 noundef %53) #16
  store ptr %50, ptr %7, align 4
  %58 = getelementptr inbounds %struct.devfreq_governor, ptr %50, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = call i32 %59(ptr noundef %6, i32 noundef 1, ptr noundef null) #15
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.devfreq_governor, ptr %50, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.governor_store, ptr noundef %63, i32 noundef %60) #16
  store ptr null, ptr %7, align 4
  br label %84

64:                                               ; preds = %55, %49
  %65 = load ptr, ptr %7, align 4
  %66 = getelementptr inbounds %struct.devfreq_governor, ptr %65, i32 0, i32 2
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 1
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %64
  %71 = call i32 @sysfs_create_file_ns(ptr noundef %0, ptr noundef nonnull @dev_attr_polling_interval, ptr noundef null) #15
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46) #16
  br label %74

74:                                               ; preds = %73, %70, %64
  %75 = load i64, ptr %66, align 8
  %76 = and i64 %75, 2
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %74
  %79 = call i32 @sysfs_create_file_ns(ptr noundef %0, ptr noundef nonnull @dev_attr_timer, ptr noundef null) #15
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46) #16
  br label %84

82:                                               ; preds = %13
  %83 = ptrtoint ptr %14 to i32
  br label %84

84:                                               ; preds = %82, %81, %78, %74, %62, %35, %24, %19, %16
  %85 = phi i32 [ %83, %82 ], [ %3, %16 ], [ %3, %74 ], [ %3, %78 ], [ %3, %81 ], [ -22, %19 ], [ -22, %24 ], [ %60, %62 ], [ %32, %35 ]
  call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  br label %86

86:                                               ; preds = %84, %10, %4
  %87 = phi i32 [ -22, %4 ], [ -22, %10 ], [ %85, %84 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %5) #15
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @available_governors_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 476
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %3
  tail call void @mutex_lock(ptr noundef nonnull @devfreq_list_lock) #15
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.devfreq_governor, ptr %8, i32 0, i32 3
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 1
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load ptr, ptr @devfreq_governor_list, align 4
  %15 = icmp eq ptr %14, @devfreq_governor_list
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  br label %41

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.devfreq_governor, ptr %8, i32 0, i32 1
  %19 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 16, ptr noundef nonnull @.str.64, ptr noundef %18) #15
  br label %37

20:                                               ; preds = %33, %13
  %21 = phi ptr [ %35, %33 ], [ %14, %13 ]
  %22 = phi i32 [ %34, %33 ], [ 0, %13 ]
  %23 = getelementptr inbounds %struct.devfreq_governor, ptr %21, i32 0, i32 3
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 1
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = getelementptr i8, ptr %2, i32 %22
  %29 = sub i32 4094, %22
  %30 = getelementptr inbounds %struct.devfreq_governor, ptr %21, i32 0, i32 1
  %31 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %28, i32 noundef %29, ptr noundef nonnull @.str.64, ptr noundef %30) #15
  %32 = add i32 %31, %22
  br label %33

33:                                               ; preds = %27, %20
  %34 = phi i32 [ %22, %20 ], [ %32, %27 ]
  %35 = load ptr, ptr %21, align 4
  %36 = icmp eq ptr %35, @devfreq_governor_list
  br i1 %36, label %37, label %20

37:                                               ; preds = %33, %17
  %38 = phi i32 [ %19, %17 ], [ %34, %33 ]
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  %39 = icmp eq i32 %38, 0
  %40 = add i32 %38, -1
  br i1 %39, label %41, label %42

41:                                               ; preds = %37, %16
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i32 [ 0, %41 ], [ %40, %37 ]
  %44 = getelementptr i8, ptr %2, i32 %43
  store i16 10, ptr %44, align 1
  %45 = add nuw i32 %43, 1
  br label %46

46:                                               ; preds = %42, %3
  %47 = phi i32 [ %45, %42 ], [ -22, %3 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cur_freq_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr i8, ptr %0, i32 472
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %6, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 %10(ptr noundef %14, ptr noundef nonnull %4) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12, %8
  %18 = getelementptr i8, ptr %0, i32 540
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ %18, %17 ], [ %4, %12 ]
  %21 = load i32, ptr %20, align 4
  %22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %21)
  br label %23

23:                                               ; preds = %19, %3
  %24 = phi i32 [ -22, %3 ], [ %22, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @available_frequencies_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 472
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -24
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %9, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  tail call void @mutex_unlock(ptr noundef %8) #15
  br label %34

14:                                               ; preds = %14, %7
  %15 = phi ptr [ %27, %14 ], [ %9, %7 ]
  %16 = phi i32 [ %26, %14 ], [ 0, %7 ]
  %17 = phi i32 [ %25, %14 ], [ 0, %7 ]
  %18 = getelementptr i8, ptr %2, i32 %17
  %19 = sub i32 4094, %17
  %20 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %15, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i32, ptr %21, i32 %16
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %18, i32 noundef %19, ptr noundef nonnull @.str.69, i32 noundef %23) #15
  %25 = add i32 %24, %17
  %26 = add nuw i32 %16, 1
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %27, i32 0, i32 9
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %14, label %31

31:                                               ; preds = %14
  tail call void @mutex_unlock(ptr noundef %8) #15
  %32 = icmp eq i32 %25, 0
  %33 = add i32 %25, -1
  br i1 %32, label %34, label %35

34:                                               ; preds = %31, %13
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32 [ 0, %34 ], [ %33, %31 ]
  %37 = getelementptr i8, ptr %2, i32 %36
  store i16 10, ptr %37, align 1
  %38 = add nuw i32 %36, 1
  br label %39

39:                                               ; preds = %35, %3
  %40 = phi i32 [ %38, %35 ], [ -22, %3 ]
  ret i32 %40
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @target_freq_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 540
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @min_freq_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -24
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr i8, ptr %0, i32 472
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %6, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  %13 = getelementptr i32, ptr %8, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %9, i32 %14)
  %16 = call i32 @llvm.umax.i32(i32 %9, i32 %14)
  %17 = getelementptr i8, ptr %0, i32 36
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @dev_pm_qos_read_value(ptr noundef %18, i32 noundef 3) #15
  %20 = load ptr, ptr %17, align 4
  %21 = tail call i32 @dev_pm_qos_read_value(ptr noundef %20, i32 noundef 4) #15
  %22 = mul i32 %19, 1000
  %23 = tail call i32 @llvm.umax.i32(i32 %15, i32 %22) #15
  %24 = icmp eq i32 %21, 2147483647
  %25 = mul i32 %21, 1000
  %26 = tail call i32 @llvm.umin.i32(i32 %16, i32 %25) #15
  %27 = select i1 %24, i32 %16, i32 %26
  %28 = getelementptr i8, ptr %0, i32 636
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @llvm.umax.i32(i32 %23, i32 %29) #15
  %31 = getelementptr i8, ptr %0, i32 640
  %32 = load i32, ptr %31, align 8
  %33 = tail call i32 @llvm.umin.i32(i32 %27, i32 %32) #15
  %34 = tail call i32 @llvm.umin.i32(i32 %30, i32 %33)
  tail call void @mutex_unlock(ptr noundef %4) #15
  %35 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %34)
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @min_freq_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr i8, ptr %0, i32 564
  %7 = getelementptr i8, ptr %0, i32 596
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %4
  %11 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.72, ptr noundef nonnull %5)
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32, ptr %5, align 4
  %15 = udiv i32 %14, 1000
  %16 = call i32 @dev_pm_qos_update_request(ptr noundef %6, i32 noundef %15) #15
  %17 = icmp slt i32 %16, 0
  %18 = select i1 %17, i32 %16, i32 %3
  br label %19

19:                                               ; preds = %13, %10, %4
  %20 = phi i32 [ -11, %4 ], [ -22, %10 ], [ %18, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_freq_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -24
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr i8, ptr %0, i32 472
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %6, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  %13 = getelementptr i32, ptr %8, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = call i32 @llvm.umax.i32(i32 %9, i32 %14)
  %16 = getelementptr i8, ptr %0, i32 36
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @dev_pm_qos_read_value(ptr noundef %17, i32 noundef 3) #15
  %19 = load ptr, ptr %16, align 4
  %20 = tail call i32 @dev_pm_qos_read_value(ptr noundef %19, i32 noundef 4) #15
  %21 = icmp eq i32 %20, 2147483647
  %22 = mul i32 %20, 1000
  %23 = tail call i32 @llvm.umin.i32(i32 %15, i32 %22) #15
  %24 = select i1 %21, i32 %15, i32 %23
  %25 = getelementptr i8, ptr %0, i32 640
  %26 = load i32, ptr %25, align 8
  %27 = tail call i32 @llvm.umin.i32(i32 %24, i32 %26) #15
  tail call void @mutex_unlock(ptr noundef %4) #15
  %28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, i32 noundef %27)
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_freq_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr i8, ptr %0, i32 600
  %7 = getelementptr i8, ptr %0, i32 632
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %4
  %11 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.72, ptr noundef nonnull %5)
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load i32, ptr %5, align 4
  %15 = icmp eq i32 %14, 0
  %16 = add i32 %14, 999
  %17 = udiv i32 %16, 1000
  %18 = select i1 %15, i32 2147483647, i32 %17
  store i32 %18, ptr %5, align 4
  %19 = call i32 @dev_pm_qos_update_request(ptr noundef %6, i32 noundef %18) #15
  %20 = icmp slt i32 %19, 0
  %21 = select i1 %20, i32 %19, i32 %3
  br label %22

22:                                               ; preds = %13, %10, %4
  %23 = phi i32 [ -22, %4 ], [ -22, %10 ], [ %21, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trans_stat_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = getelementptr i8, ptr %0, i32 472
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %96, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %6, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(16) @.str.75, i32 16, i1 false)
  br label %96

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %0, i32 -24
  tail call void @mutex_lock(ptr noundef %14) #15
  %15 = getelementptr i8, ptr %0, i32 644
  %16 = load i8, ptr %15, align 4, !range !17
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %0, i32 540
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @devfreq_update_status(ptr noundef %4, i32 noundef %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call void @mutex_unlock(ptr noundef %14) #15
  br label %96

24:                                               ; preds = %18, %13
  tail call void @mutex_unlock(ptr noundef %14) #15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(19) %2, ptr noundef nonnull align 1 dereferenceable(19) @.str.76, i32 18, i1 false)
  %25 = getelementptr i8, ptr %2, i32 18
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(13) %25, ptr noundef nonnull align 1 dereferenceable(13) @.str.77, i32 13, i1 false)
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi i32 [ %37, %26 ], [ 0, %24 ]
  %28 = phi i32 [ %36, %26 ], [ 30, %24 ]
  %29 = getelementptr i8, ptr %2, i32 %28
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %30, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i32, ptr %32, i32 %27
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %29, ptr noundef nonnull @.str.78, i32 noundef %34)
  %36 = add i32 %35, %28
  %37 = add nuw i32 %27, 1
  %38 = icmp eq i32 %37, %10
  br i1 %38, label %39, label %26

39:                                               ; preds = %26
  %40 = getelementptr i8, ptr %2, i32 %36
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(13) %40, ptr noundef nonnull align 1 dereferenceable(13) @.str.79, i32 13, i1 false)
  %41 = getelementptr i8, ptr %0, i32 540
  %42 = add i32 %36, 12
  %43 = getelementptr i8, ptr %0, i32 668
  %44 = getelementptr i8, ptr %0, i32 672
  %45 = call i32 @llvm.umax.i32(i32 %10, i32 1)
  br label %46

46:                                               ; preds = %80, %39
  %47 = phi i32 [ 0, %39 ], [ %88, %80 ]
  %48 = phi i32 [ %42, %39 ], [ %87, %80 ]
  %49 = load ptr, ptr %5, align 8
  %50 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %49, i32 0, i32 8
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i32, ptr %51, i32 %47
  %53 = load i32, ptr %52, align 4
  %54 = load i32, ptr %41, align 4
  %55 = icmp eq i32 %53, %54
  %56 = select i1 %55, i16 42, i16 32
  %57 = getelementptr i8, ptr %2, i32 %48
  store i16 %56, ptr %57, align 1
  %58 = add i32 %48, 1
  %59 = getelementptr i8, ptr %2, i32 %58
  %60 = load ptr, ptr %5, align 8
  %61 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %60, i32 0, i32 8
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i32, ptr %62, i32 %47
  %64 = load i32, ptr %63, align 4
  %65 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %59, ptr noundef nonnull @.str.82, i32 noundef %64)
  %66 = add i32 %65, %58
  %67 = mul i32 %47, %10
  br label %68

68:                                               ; preds = %68, %46
  %69 = phi i32 [ 0, %46 ], [ %78, %68 ]
  %70 = phi i32 [ %66, %46 ], [ %77, %68 ]
  %71 = getelementptr i8, ptr %2, i32 %70
  %72 = load ptr, ptr %43, align 4
  %73 = add i32 %69, %67
  %74 = getelementptr i32, ptr %72, i32 %73
  %75 = load i32, ptr %74, align 4
  %76 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %71, ptr noundef nonnull @.str.83, i32 noundef %75)
  %77 = add i32 %76, %70
  %78 = add nuw i32 %69, 1
  %79 = icmp eq i32 %78, %45
  br i1 %79, label %80, label %68

80:                                               ; preds = %68
  %81 = getelementptr i8, ptr %2, i32 %77
  %82 = load ptr, ptr %44, align 8
  %83 = getelementptr i64, ptr %82, i32 %47
  %84 = load i64, ptr %83, align 8
  %85 = tail call i64 @jiffies64_to_msecs(i64 noundef %84) #15
  %86 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %81, ptr noundef nonnull @.str.84, i64 noundef %85)
  %87 = add i32 %86, %77
  %88 = add nuw i32 %47, 1
  %89 = icmp eq i32 %88, %45
  br i1 %89, label %90, label %46

90:                                               ; preds = %80
  %91 = getelementptr i8, ptr %2, i32 %87
  %92 = getelementptr i8, ptr %0, i32 664
  %93 = load i32, ptr %92, align 8
  %94 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %91, ptr noundef nonnull @.str.85, i32 noundef %93)
  %95 = add i32 %94, %87
  br label %96

96:                                               ; preds = %90, %23, %12, %3
  %97 = phi i32 [ 15, %12 ], [ %95, %90 ], [ 0, %23 ], [ -22, %3 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trans_stat_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr i8, ptr %0, i32 472
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %45, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %7, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %45, label %13

13:                                               ; preds = %9
  %14 = call i32 @kstrtoint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #15
  %15 = icmp ne i32 %14, 0
  %16 = load i32, ptr %5, align 4
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %45, label %19

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %0, i32 -24
  call void @mutex_lock(ptr noundef %20) #15
  %21 = getelementptr i8, ptr %0, i32 664
  %22 = getelementptr i8, ptr %0, i32 672
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %24, i32 0, i32 9
  %26 = load i32, ptr %25, align 4
  %27 = shl i32 %26, 3
  call void @llvm.memset.p0.i32(ptr align 8 %23, i8 0, i32 %27, i1 false)
  %28 = getelementptr i8, ptr %0, i32 668
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %6, align 8
  %31 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %30, i32 0, i32 9
  %32 = load i32, ptr %31, align 4
  %33 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %32, i32 4) #15
  %34 = extractvalue { i32, i1 } %33, 1
  br i1 %34, label %41, label %35

35:                                               ; preds = %19
  %36 = extractvalue { i32, i1 } %33, 0
  %37 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %36, i32 %32) #15
  %38 = extractvalue { i32, i1 } %37, 1
  %39 = extractvalue { i32, i1 } %37, 0
  %40 = select i1 %38, i32 -1, i32 %39
  br label %41

41:                                               ; preds = %35, %19
  %42 = phi i32 [ -1, %19 ], [ %40, %35 ]
  call void @llvm.memset.p0.i32(ptr align 4 %29, i8 0, i32 %42, i1 false)
  store i32 0, ptr %21, align 8
  %43 = call i64 @get_jiffies_64() #15
  %44 = getelementptr i8, ptr %0, i32 680
  store i64 %43, ptr %44, align 8
  call void @mutex_unlock(ptr noundef %20) #15
  br label %45

45:                                               ; preds = %41, %13, %9, %4
  %46 = phi i32 [ %3, %41 ], [ -22, %4 ], [ %3, %9 ], [ -22, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @jiffies64_to_msecs(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devfreq_summary_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @devfreq_summary_show, ptr noundef %4) #15
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devfreq_summary_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.96) #15
  tail call void @mutex_lock(ptr noundef nonnull @devfreq_list_lock) #15
  %3 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @devfreq_list, i32 0, i32 1), align 4
  %4 = icmp eq ptr %3, @devfreq_list
  br i1 %4, label %93, label %5

5:                                                ; preds = %83, %2
  %6 = phi ptr [ %91, %83 ], [ %3, %2 ]
  %7 = phi ptr [ %20, %83 ], [ null, %2 ]
  %8 = getelementptr inbounds %struct.devfreq, ptr %6, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.devfreq_governor, ptr %9, i32 0, i32 1
  %11 = tail call i32 @strncmp(ptr noundef %10, ptr noundef nonnull dereferenceable(8) @.str.97, i32 noundef 16)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.devfreq, ptr %6, i32 0, i32 10
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 4
  br label %19

19:                                               ; preds = %17, %13, %5
  %20 = phi ptr [ %18, %17 ], [ %7, %13 ], [ null, %5 ]
  %21 = getelementptr inbounds %struct.devfreq, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %21) #15
  %22 = getelementptr inbounds %struct.devfreq, ptr %6, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.devfreq, ptr %6, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %25, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %25, i32 0, i32 9
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, -1
  %32 = getelementptr i32, ptr %27, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.umin.i32(i32 %28, i32 %33)
  %35 = call i32 @llvm.umax.i32(i32 %28, i32 %33)
  %36 = getelementptr inbounds %struct.devfreq, ptr %6, i32 0, i32 2, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @dev_pm_qos_read_value(ptr noundef %37, i32 noundef 3) #15
  %39 = load ptr, ptr %36, align 4
  %40 = tail call i32 @dev_pm_qos_read_value(ptr noundef %39, i32 noundef 4) #15
  %41 = mul i32 %38, 1000
  %42 = tail call i32 @llvm.umax.i32(i32 %34, i32 %41) #15
  %43 = icmp eq i32 %40, 2147483647
  %44 = mul i32 %40, 1000
  %45 = tail call i32 @llvm.umin.i32(i32 %35, i32 %44) #15
  %46 = select i1 %43, i32 %35, i32 %45
  %47 = getelementptr inbounds %struct.devfreq, ptr %6, i32 0, i32 13
  %48 = load i32, ptr %47, align 4
  %49 = tail call i32 @llvm.umax.i32(i32 %42, i32 %48) #15
  %50 = getelementptr inbounds %struct.devfreq, ptr %6, i32 0, i32 14
  %51 = load i32, ptr %50, align 8
  %52 = tail call i32 @llvm.umin.i32(i32 %46, i32 %51) #15
  %53 = tail call i32 @llvm.umin.i32(i32 %49, i32 %52)
  %54 = load ptr, ptr %24, align 8
  %55 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = load ptr, ptr %8, align 4
  %58 = getelementptr inbounds %struct.devfreq_governor, ptr %57, i32 0, i32 2
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 1
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %19
  %63 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %54, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  br label %65

65:                                               ; preds = %62, %19
  %66 = phi i32 [ %64, %62 ], [ 0, %19 ]
  tail call void @mutex_unlock(ptr noundef %21) #15
  %67 = getelementptr inbounds %struct.devfreq, ptr %6, i32 0, i32 2, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.devfreq, ptr %6, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  br label %73

73:                                               ; preds = %70, %65
  %74 = phi ptr [ %72, %70 ], [ %68, %65 ]
  %75 = icmp eq ptr %20, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.devfreq, ptr %20, i32 0, i32 2, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.devfreq, ptr %20, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  br label %83

83:                                               ; preds = %80, %76, %73
  %84 = phi ptr [ @.str.99, %73 ], [ %82, %80 ], [ %78, %76 ]
  %85 = load ptr, ptr %8, align 4
  %86 = getelementptr inbounds %struct.devfreq_governor, ptr %85, i32 0, i32 1
  %87 = icmp eq i32 %66, 0
  %88 = getelementptr [2 x [16 x i8]], ptr @timer_name, i32 0, i32 %56
  %89 = select i1 %87, ptr @.str.99, ptr %88
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef %74, ptr noundef %84, ptr noundef %86, ptr noundef %89, i32 noundef %66, i32 noundef %23, i32 noundef %53, i32 noundef %52) #15
  %90 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, @devfreq_list
  br i1 %92, label %93, label %5

93:                                               ; preds = %83, %2
  tail call void @mutex_unlock(ptr noundef nonnull @devfreq_list_lock) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #14

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind willreturn }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

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
!12 = !{i64 380167}
!13 = !{i64 2152263739}
!14 = !{i64 2152263933}
!15 = !{i64 2152279987}
!16 = !{i64 2152280143}
!17 = !{i8 0, i8 2}
!18 = !{i64 2148066233}
!19 = !{i64 466228, i64 2147956199, i64 2147956225, i64 2147956272, i64 2147956294, i64 2147956322, i64 2147956342}
!20 = !{i64 2147969095, i64 2147969127, i64 2147969156, i64 2147969190, i64 2147969221, i64 2147969244}
!21 = !{i64 2148066436}
!22 = !{i64 2148069066}
!23 = !{i64 2147971452, i64 2147971484, i64 2147971513, i64 2147971547, i64 2147971578, i64 2147971601}
!24 = !{i64 2148069269}
