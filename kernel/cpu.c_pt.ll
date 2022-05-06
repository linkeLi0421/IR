; ModuleID = '/llk/IR/kernel/cpu.c_pt.bc'
source_filename = "../kernel/cpu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpuhp_tasks_frozen:\09\09\09\09\09"
module asm "\09.asciz \09\22cpuhp_tasks_frozen\22\09\09\09\09\09"
module asm "__kstrtabns_cpuhp_tasks_frozen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpus_read_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22cpus_read_lock\22\09\09\09\09\09"
module asm "__kstrtabns_cpus_read_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpus_read_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22cpus_read_trylock\22\09\09\09\09\09"
module asm "__kstrtabns_cpus_read_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpus_read_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22cpus_read_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_cpus_read_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_hotplug_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_hotplug_disable\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_hotplug_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_hotplug_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_hotplug_enable\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_hotplug_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_remove_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22remove_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_remove_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22add_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_add_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cpuhp_state_add_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22__cpuhp_state_add_instance\22\09\09\09\09\09"
module asm "__kstrtabns___cpuhp_state_add_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cpuhp_setup_state_cpuslocked:\09\09\09\09\09"
module asm "\09.asciz \09\22__cpuhp_setup_state_cpuslocked\22\09\09\09\09\09"
module asm "__kstrtabns___cpuhp_setup_state_cpuslocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cpuhp_setup_state:\09\09\09\09\09"
module asm "\09.asciz \09\22__cpuhp_setup_state\22\09\09\09\09\09"
module asm "__kstrtabns___cpuhp_setup_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cpuhp_state_remove_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22__cpuhp_state_remove_instance\22\09\09\09\09\09"
module asm "__kstrtabns___cpuhp_state_remove_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cpuhp_remove_state_cpuslocked:\09\09\09\09\09"
module asm "\09.asciz \09\22__cpuhp_remove_state_cpuslocked\22\09\09\09\09\09"
module asm "__kstrtabns___cpuhp_remove_state_cpuslocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cpuhp_remove_state:\09\09\09\09\09"
module asm "\09.asciz \09\22__cpuhp_remove_state\22\09\09\09\09\09"
module asm "__kstrtabns___cpuhp_remove_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_bit_bitmap:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_bit_bitmap\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_bit_bitmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_all_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_all_bits\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_all_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cpu_possible_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22__cpu_possible_mask\22\09\09\09\09\09"
module asm "__kstrtabns___cpu_possible_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cpu_online_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22__cpu_online_mask\22\09\09\09\09\09"
module asm "__kstrtabns___cpu_online_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cpu_present_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22__cpu_present_mask\22\09\09\09\09\09"
module asm "__kstrtabns___cpu_present_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cpu_active_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22__cpu_active_mask\22\09\09\09\09\09"
module asm "__kstrtabns___cpu_active_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cpu_dying_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22__cpu_dying_mask\22\09\09\09\09\09"
module asm "__kstrtabns___cpu_dying_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___num_online_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22__num_online_cpus\22\09\09\09\09\09"
module asm "__kstrtabns___num_online_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_mitigations_off:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_mitigations_off\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_mitigations_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_mitigations_auto_nosmt:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_mitigations_auto_nosmt\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_mitigations_auto_nosmt:\09\09\09\09\09"
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.smp_hotplug_thread = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr }
%struct.cpuhp_cpu_state = type { i32, i32, i32, ptr, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, %struct.completion, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.23 }
%struct.llist_node = type { ptr }
%union.anon.23 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.static_key_false = type { %struct.static_key }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpuhp_step = type { ptr, %union.anon.96, %union.anon.97, %struct.hlist_head, i8, i8 }
%union.anon.96 = type { ptr }
%union.anon.97 = type { ptr }
%struct.hlist_head = type { ptr }
%struct.mm_struct = type { %struct.anon.12, [0 x i32] }
%struct.anon.12 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_cpuhp_enter = type { %struct.trace_entry, i32, i32, i32, ptr, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_cpuhp_multi_enter = type { %struct.trace_entry, i32, i32, i32, ptr, [0 x i8] }
%struct.trace_event_raw_cpuhp_exit = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_cpuhp_enter = internal constant [12 x i8] c"cpuhp_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cpuhp_enter = dso_local global %struct.static_call_key { ptr @__traceiter_cpuhp_enter }, align 4
@__tracepoint_cpuhp_enter = dso_local global %struct.tracepoint { ptr @__tpstrtab_cpuhp_enter, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cpuhp_enter, ptr null, ptr @__traceiter_cpuhp_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cpuhp_enter = internal constant ptr @__tracepoint_cpuhp_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_cpuhp_multi_enter = internal constant [18 x i8] c"cpuhp_multi_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cpuhp_multi_enter = dso_local global %struct.static_call_key { ptr @__traceiter_cpuhp_multi_enter }, align 4
@__tracepoint_cpuhp_multi_enter = dso_local global %struct.tracepoint { ptr @__tpstrtab_cpuhp_multi_enter, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cpuhp_multi_enter, ptr null, ptr @__traceiter_cpuhp_multi_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cpuhp_multi_enter = internal constant ptr @__tracepoint_cpuhp_multi_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_cpuhp_exit = internal constant [11 x i8] c"cpuhp_exit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cpuhp_exit = dso_local global %struct.static_call_key { ptr @__traceiter_cpuhp_exit }, align 4
@__tracepoint_cpuhp_exit = dso_local global %struct.tracepoint { ptr @__tpstrtab_cpuhp_exit, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cpuhp_exit, ptr null, ptr @__traceiter_cpuhp_exit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cpuhp_exit = internal constant ptr @__tracepoint_cpuhp_exit, section "__tracepoints_ptrs", align 4
@str__cpuhp__trace_system_name = internal constant [6 x i8] c"cpuhp\00", align 1
@trace_event_fields_cpuhp_enter = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon { %struct.anon { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon { %struct.anon { ptr @.str.19, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon { %struct.anon { ptr @.str.20, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon { %struct.anon { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_cpuhp_enter = internal global %struct.trace_event_class { ptr @str__cpuhp__trace_system_name, ptr @trace_event_raw_event_cpuhp_enter, ptr @perf_trace_cpuhp_enter, ptr @trace_event_reg, ptr @trace_event_fields_cpuhp_enter, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cpuhp_enter, i64 24), ptr getelementptr (i8, ptr @event_class_cpuhp_enter, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cpuhp_enter = internal global %struct.trace_event_functions { ptr @trace_raw_output_cpuhp_enter, ptr null, ptr null, ptr null }, align 4
@print_fmt_cpuhp_enter = internal global [83 x i8] c"\22cpu: %04u target: %3d step: %3d (%ps)\22, REC->cpu, REC->target, REC->idx, REC->fun\00", align 1
@event_cpuhp_enter = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cpuhp_enter, %union.anon.0 { ptr @__tracepoint_cpuhp_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cpuhp_enter }, ptr @print_fmt_cpuhp_enter, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cpuhp_enter = internal global ptr @event_cpuhp_enter, section "_ftrace_events", align 4
@trace_event_fields_cpuhp_multi_enter = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon { %struct.anon { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon { %struct.anon { ptr @.str.19, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon { %struct.anon { ptr @.str.20, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon { %struct.anon { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_cpuhp_multi_enter = internal global %struct.trace_event_class { ptr @str__cpuhp__trace_system_name, ptr @trace_event_raw_event_cpuhp_multi_enter, ptr @perf_trace_cpuhp_multi_enter, ptr @trace_event_reg, ptr @trace_event_fields_cpuhp_multi_enter, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cpuhp_multi_enter, i64 24), ptr getelementptr (i8, ptr @event_class_cpuhp_multi_enter, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cpuhp_multi_enter = internal global %struct.trace_event_functions { ptr @trace_raw_output_cpuhp_multi_enter, ptr null, ptr null, ptr null }, align 4
@print_fmt_cpuhp_multi_enter = internal global [83 x i8] c"\22cpu: %04u target: %3d step: %3d (%ps)\22, REC->cpu, REC->target, REC->idx, REC->fun\00", align 1
@event_cpuhp_multi_enter = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cpuhp_multi_enter, %union.anon.0 { ptr @__tracepoint_cpuhp_multi_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cpuhp_multi_enter }, ptr @print_fmt_cpuhp_multi_enter, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cpuhp_multi_enter = internal global ptr @event_cpuhp_multi_enter, section "_ftrace_events", align 4
@trace_event_fields_cpuhp_exit = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon { %struct.anon { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon { %struct.anon { ptr @.str.24, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon { %struct.anon { ptr @.str.20, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon { %struct.anon { ptr @.str.25, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_cpuhp_exit = internal global %struct.trace_event_class { ptr @str__cpuhp__trace_system_name, ptr @trace_event_raw_event_cpuhp_exit, ptr @perf_trace_cpuhp_exit, ptr @trace_event_reg, ptr @trace_event_fields_cpuhp_exit, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cpuhp_exit, i64 24), ptr getelementptr (i8, ptr @event_class_cpuhp_exit, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cpuhp_exit = internal global %struct.trace_event_functions { ptr @trace_raw_output_cpuhp_exit, ptr null, ptr null, ptr null }, align 4
@print_fmt_cpuhp_exit = internal global [85 x i8] c"\22 cpu: %04u  state: %3d step: %3d ret: %d\22, REC->cpu, REC->state, REC->idx, REC->ret\00", align 1
@event_cpuhp_exit = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cpuhp_exit, %union.anon.0 { ptr @__tracepoint_cpuhp_exit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cpuhp_exit }, ptr @print_fmt_cpuhp_exit, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cpuhp_exit = internal global ptr @event_cpuhp_exit, section "_ftrace_events", align 4
@cpuhp_tasks_frozen = dso_local global i8 0, align 1
@__kstrtab_cpuhp_tasks_frozen = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpuhp_tasks_frozen = external dso_local constant [0 x i8], align 1
@__ksymtab_cpuhp_tasks_frozen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpuhp_tasks_frozen to i32), ptr @__kstrtab_cpuhp_tasks_frozen, ptr @__kstrtabns_cpuhp_tasks_frozen }, section "___ksymtab_gpl+cpuhp_tasks_frozen", align 4
@cpu_add_remove_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cpu_add_remove_lock, i64 12), ptr getelementptr (i8, ptr @cpu_add_remove_lock, i64 12) } }, align 4
@cpu_hotplug_lock = internal global %struct.percpu_rw_semaphore { %struct.rcu_sync { i32 0, i32 0, %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cpu_hotplug_lock, i64 12), ptr getelementptr (i8, ptr @cpu_hotplug_lock, i64 12) } }, %struct.callback_head zeroinitializer }, ptr @__percpu_rwsem_rc_cpu_hotplug_lock, %struct.rcuwait zeroinitializer, %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cpu_hotplug_lock, i64 40), ptr getelementptr (i8, ptr @cpu_hotplug_lock, i64 40) } }, %struct.atomic_t zeroinitializer }, align 4
@__kstrtab_cpus_read_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpus_read_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_cpus_read_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpus_read_lock to i32), ptr @__kstrtab_cpus_read_lock, ptr @__kstrtabns_cpus_read_lock }, section "___ksymtab_gpl+cpus_read_lock", align 4
@__kstrtab_cpus_read_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpus_read_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab_cpus_read_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpus_read_trylock to i32), ptr @__kstrtab_cpus_read_trylock, ptr @__kstrtabns_cpus_read_trylock }, section "___ksymtab_gpl+cpus_read_trylock", align 4
@__kstrtab_cpus_read_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpus_read_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_cpus_read_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpus_read_unlock to i32), ptr @__kstrtab_cpus_read_unlock, ptr @__kstrtabns_cpus_read_unlock }, section "___ksymtab_gpl+cpus_read_unlock", align 4
@cpu_hotplug_disabled = internal unnamed_addr global i32 0, align 4
@__kstrtab_cpu_hotplug_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_hotplug_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_hotplug_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_hotplug_disable to i32), ptr @__kstrtab_cpu_hotplug_disable, ptr @__kstrtabns_cpu_hotplug_disable }, section "___ksymtab_gpl+cpu_hotplug_disable", align 4
@__kstrtab_cpu_hotplug_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_hotplug_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_hotplug_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_hotplug_enable to i32), ptr @__kstrtab_cpu_hotplug_enable, ptr @__kstrtabns_cpu_hotplug_enable }, section "___ksymtab_gpl+cpu_hotplug_enable", align 4
@cpuhp_threads = internal global %struct.smp_hotplug_thread { ptr getelementptr (i8, ptr @cpuhp_state, i64 12), %struct.list_head zeroinitializer, ptr @cpuhp_should_run, ptr @cpuhp_thread_fun, ptr @cpuhp_create, ptr null, ptr null, ptr null, ptr null, i8 1, ptr @.str.28 }, align 4
@cpuhp_state = internal global %struct.cpuhp_cpu_state { i32 0, i32 0, i32 -1, ptr null, i8 0, i8 0, i8 0, i8 0, i32 0, ptr null, ptr null, i32 0, i32 0, %struct.completion zeroinitializer, %struct.completion zeroinitializer }, section ".data..percpu", align 4
@.str = private unnamed_addr constant [13 x i8] c"kernel/cpu.c\00", align 1
@init_task = external dso_local global %struct.task_struct, align 64
@__cpu_online_mask = dso_local global %struct.cpumask zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_remove_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_remove_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_remove_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @remove_cpu to i32), ptr @__kstrtab_remove_cpu, ptr @__kstrtabns_remove_cpu }, section "___ksymtab_gpl+remove_cpu", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"\013Failed to offline CPU%d - error=%d\00", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@cpus_booted_once_mask = dso_local global %struct.cpumask zeroinitializer, align 4
@notify_cpu_starting.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_add_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_add_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_cpu to i32), ptr @__kstrtab_add_cpu, ptr @__kstrtabns_add_cpu }, section "___ksymtab_gpl+add_cpu", align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"\016Hibernated on a CPU that is offline! Bringing CPU up.\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"\013Failed to bring hibernate-CPU up!\0A\00", align 1
@__cpu_present_mask = dso_local global %struct.cpumask zeroinitializer, section ".data..read_mostly", align 4
@frozen_cpus = internal global [1 x %struct.cpumask] zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"\016Disabling non-boot CPUs ...\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"\016Wakeup pending. Abort CPU freeze\0A\00", align 1
@freeze_secondary_cpus.___tp_str = internal global ptr @.str.6, section "__tracepoint_str", align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"CPU_OFF\00", align 1
@freeze_secondary_cpus.___tp_str.7 = internal global ptr @.str.6, section "__tracepoint_str", align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"\013Error taking CPU%d down: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"\013Non-boot CPUs are not disabled\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"\016Enabling non-boot CPUs ...\0A\00", align 1
@thaw_secondary_cpus.___tp_str = internal global ptr @.str.11, section "__tracepoint_str", align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"CPU_ON\00", align 1
@thaw_secondary_cpus.___tp_str.12 = internal global ptr @.str.11, section "__tracepoint_str", align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"\016CPU%d is up\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"\014Error taking CPU%d up: %d\0A\00", align 1
@__initcall__kmod_cpu__344_1588_alloc_frozen_cpus1 = internal global ptr @alloc_frozen_cpus, section ".initcall1.init", align 4
@__initcall__kmod_cpu__345_1635_cpu_hotplug_pm_sync_init1 = internal global ptr @cpu_hotplug_pm_sync_init, section ".initcall1.init", align 4
@cpuhp_state_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cpuhp_state_mutex, i64 12), ptr getelementptr (i8, ptr @cpuhp_state_mutex, i64 12) } }, align 4
@__kstrtab___cpuhp_state_add_instance = external dso_local constant [0 x i8], align 1
@__kstrtabns___cpuhp_state_add_instance = external dso_local constant [0 x i8], align 1
@__ksymtab___cpuhp_state_add_instance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cpuhp_state_add_instance to i32), ptr @__kstrtab___cpuhp_state_add_instance, ptr @__kstrtabns___cpuhp_state_add_instance }, section "___ksymtab_gpl+__cpuhp_state_add_instance", align 4
@__kstrtab___cpuhp_setup_state_cpuslocked = external dso_local constant [0 x i8], align 1
@__kstrtabns___cpuhp_setup_state_cpuslocked = external dso_local constant [0 x i8], align 1
@__ksymtab___cpuhp_setup_state_cpuslocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cpuhp_setup_state_cpuslocked to i32), ptr @__kstrtab___cpuhp_setup_state_cpuslocked, ptr @__kstrtabns___cpuhp_setup_state_cpuslocked }, section "___ksymtab+__cpuhp_setup_state_cpuslocked", align 4
@__kstrtab___cpuhp_setup_state = external dso_local constant [0 x i8], align 1
@__kstrtabns___cpuhp_setup_state = external dso_local constant [0 x i8], align 1
@__ksymtab___cpuhp_setup_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cpuhp_setup_state to i32), ptr @__kstrtab___cpuhp_setup_state, ptr @__kstrtabns___cpuhp_setup_state }, section "___ksymtab+__cpuhp_setup_state", align 4
@__kstrtab___cpuhp_state_remove_instance = external dso_local constant [0 x i8], align 1
@__kstrtabns___cpuhp_state_remove_instance = external dso_local constant [0 x i8], align 1
@__ksymtab___cpuhp_state_remove_instance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cpuhp_state_remove_instance to i32), ptr @__kstrtab___cpuhp_state_remove_instance, ptr @__kstrtabns___cpuhp_state_remove_instance }, section "___ksymtab_gpl+__cpuhp_state_remove_instance", align 4
@.str.15 = private unnamed_addr constant [52 x i8] c"Error: Removing state %d which has instances left.\0A\00", align 1
@__kstrtab___cpuhp_remove_state_cpuslocked = external dso_local constant [0 x i8], align 1
@__kstrtabns___cpuhp_remove_state_cpuslocked = external dso_local constant [0 x i8], align 1
@__ksymtab___cpuhp_remove_state_cpuslocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cpuhp_remove_state_cpuslocked to i32), ptr @__kstrtab___cpuhp_remove_state_cpuslocked, ptr @__kstrtabns___cpuhp_remove_state_cpuslocked }, section "___ksymtab+__cpuhp_remove_state_cpuslocked", align 4
@__kstrtab___cpuhp_remove_state = external dso_local constant [0 x i8], align 1
@__kstrtabns___cpuhp_remove_state = external dso_local constant [0 x i8], align 1
@__ksymtab___cpuhp_remove_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cpuhp_remove_state to i32), ptr @__kstrtab___cpuhp_remove_state, ptr @__kstrtabns___cpuhp_remove_state }, section "___ksymtab+__cpuhp_remove_state", align 4
@__initcall__kmod_cpu__346_2552_cpuhp_sysfs_init6 = internal global ptr @cpuhp_sysfs_init, section ".initcall6.init", align 4
@cpu_bit_bitmap = dso_local constant [33 x [1 x i32]] [[1 x i32] zeroinitializer, [1 x i32] [i32 1], [1 x i32] [i32 2], [1 x i32] [i32 4], [1 x i32] [i32 8], [1 x i32] [i32 16], [1 x i32] [i32 32], [1 x i32] [i32 64], [1 x i32] [i32 128], [1 x i32] [i32 256], [1 x i32] [i32 512], [1 x i32] [i32 1024], [1 x i32] [i32 2048], [1 x i32] [i32 4096], [1 x i32] [i32 8192], [1 x i32] [i32 16384], [1 x i32] [i32 32768], [1 x i32] [i32 65536], [1 x i32] [i32 131072], [1 x i32] [i32 262144], [1 x i32] [i32 524288], [1 x i32] [i32 1048576], [1 x i32] [i32 2097152], [1 x i32] [i32 4194304], [1 x i32] [i32 8388608], [1 x i32] [i32 16777216], [1 x i32] [i32 33554432], [1 x i32] [i32 67108864], [1 x i32] [i32 134217728], [1 x i32] [i32 268435456], [1 x i32] [i32 536870912], [1 x i32] [i32 1073741824], [1 x i32] [i32 -2147483648]], align 4
@__kstrtab_cpu_bit_bitmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_bit_bitmap = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_bit_bitmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_bit_bitmap to i32), ptr @__kstrtab_cpu_bit_bitmap, ptr @__kstrtabns_cpu_bit_bitmap }, section "___ksymtab_gpl+cpu_bit_bitmap", align 4
@cpu_all_bits = dso_local constant [1 x i32] [i32 65535], align 4
@__kstrtab_cpu_all_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_all_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_all_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_all_bits to i32), ptr @__kstrtab_cpu_all_bits, ptr @__kstrtabns_cpu_all_bits }, section "___ksymtab+cpu_all_bits", align 4
@__cpu_possible_mask = dso_local global %struct.cpumask zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab___cpu_possible_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns___cpu_possible_mask = external dso_local constant [0 x i8], align 1
@__ksymtab___cpu_possible_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cpu_possible_mask to i32), ptr @__kstrtab___cpu_possible_mask, ptr @__kstrtabns___cpu_possible_mask }, section "___ksymtab+__cpu_possible_mask", align 4
@__kstrtab___cpu_online_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns___cpu_online_mask = external dso_local constant [0 x i8], align 1
@__ksymtab___cpu_online_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cpu_online_mask to i32), ptr @__kstrtab___cpu_online_mask, ptr @__kstrtabns___cpu_online_mask }, section "___ksymtab+__cpu_online_mask", align 4
@__kstrtab___cpu_present_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns___cpu_present_mask = external dso_local constant [0 x i8], align 1
@__ksymtab___cpu_present_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cpu_present_mask to i32), ptr @__kstrtab___cpu_present_mask, ptr @__kstrtabns___cpu_present_mask }, section "___ksymtab+__cpu_present_mask", align 4
@__cpu_active_mask = dso_local global %struct.cpumask zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab___cpu_active_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns___cpu_active_mask = external dso_local constant [0 x i8], align 1
@__ksymtab___cpu_active_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cpu_active_mask to i32), ptr @__kstrtab___cpu_active_mask, ptr @__kstrtabns___cpu_active_mask }, section "___ksymtab+__cpu_active_mask", align 4
@__cpu_dying_mask = dso_local global %struct.cpumask zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab___cpu_dying_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns___cpu_dying_mask = external dso_local constant [0 x i8], align 1
@__ksymtab___cpu_dying_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cpu_dying_mask to i32), ptr @__kstrtab___cpu_dying_mask, ptr @__kstrtabns___cpu_dying_mask }, section "___ksymtab+__cpu_dying_mask", align 4
@__num_online_cpus = dso_local global %struct.atomic_t zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab___num_online_cpus = external dso_local constant [0 x i8], align 1
@__kstrtabns___num_online_cpus = external dso_local constant [0 x i8], align 1
@__ksymtab___num_online_cpus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__num_online_cpus to i32), ptr @__kstrtab___num_online_cpus, ptr @__kstrtabns___num_online_cpus }, section "___ksymtab+__num_online_cpus", align 4
@__boot_cpu_id = dso_local local_unnamed_addr global i32 0, align 4
@__setup_str_mitigations_parse_cmdline = internal constant [12 x i8] c"mitigations\00", section ".init.rodata", align 1
@__setup_mitigations_parse_cmdline = internal global %struct.obs_kernel_param { ptr @__setup_str_mitigations_parse_cmdline, ptr @mitigations_parse_cmdline, i32 1 }, section ".init.setup", align 4
@cpu_mitigations = internal unnamed_addr global i32 1, section ".data..ro_after_init", align 4
@__kstrtab_cpu_mitigations_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_mitigations_off = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_mitigations_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_mitigations_off to i32), ptr @__kstrtab_cpu_mitigations_off, ptr @__kstrtabns_cpu_mitigations_off }, section "___ksymtab_gpl+cpu_mitigations_off", align 4
@__kstrtab_cpu_mitigations_auto_nosmt = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_mitigations_auto_nosmt = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_mitigations_auto_nosmt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_mitigations_auto_nosmt to i32), ptr @__kstrtab_cpu_mitigations_auto_nosmt, ptr @__kstrtabns_cpu_mitigations_auto_nosmt }, section "___ksymtab_gpl+cpu_mitigations_auto_nosmt", align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"void *\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"fun\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"cpu: %04u target: %3d step: %3d (%ps)\0A\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c" cpu: %04u  state: %3d step: %3d ret: %d\0A\00", align 1
@__percpu_rwsem_rc_cpu_hotplug_lock = internal global i32 0, section ".data..percpu", align 4
@__cpu_hotplug_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Unbalanced cpu hotplug enable\0A\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"cpuhp/%u\00", align 1
@cpuhp_thread_fun.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpuhp_thread_fun.__already_done.29 = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpuhp_thread_fun.__already_done.30 = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpuhp_thread_fun.__already_done.31 = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpuhp_invoke_callback.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpuhp_invoke_callback.__already_done.32 = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpuhp_invoke_callback.__already_done.33 = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpuhp_invoke_callback.__already_done.34 = internal unnamed_addr global i1 false, section ".data.once", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.37 = private unnamed_addr constant [79 x i8] c"\013can't online cpu %d because it is not configured as may-hotadd at boot time\0A\00", align 1
@housekeeping_overridden = external dso_local global %struct.static_key_false, align 4
@__tracepoint_suspend_resume = external dso_local global %struct.tracepoint, align 4
@.str.39 = private unnamed_addr constant [30 x i8] c"DEAD callback error for CPU%d\00", align 1
@cpu_hotplug_pm_sync_init.cpu_hotplug_pm_callback_nb = internal global %struct.notifier_block { ptr @cpu_hotplug_pm_callback, ptr null, i32 0 }, align 4
@cpuhp_hp_states = internal global [230 x %struct.cpuhp_step] [%struct.cpuhp_step { ptr @.str.41, %union.anon.96 zeroinitializer, %union.anon.97 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { ptr @.str.42, %union.anon.96 { ptr @smpboot_create_threads }, %union.anon.97 zeroinitializer, %struct.hlist_head zeroinitializer, i8 1, i8 0 }, %struct.cpuhp_step { ptr @.str.43, %union.anon.96 { ptr @perf_event_init_cpu }, %union.anon.97 { ptr @perf_event_exit_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.44, %union.anon.96 { ptr @workqueue_prepare_cpu }, %union.anon.97 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.45, %union.anon.96 { ptr @hrtimers_prepare_cpu }, %union.anon.97 { ptr @hrtimers_dead_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.46, %union.anon.96 { ptr @smpcfd_prepare_cpu }, %union.anon.97 { ptr @smpcfd_dead_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { ptr @.str.47, %union.anon.96 zeroinitializer, %union.anon.97 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { ptr @.str.48, %union.anon.96 zeroinitializer, %union.anon.97 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.49, %union.anon.96 { ptr @rcutree_prepare_cpu }, %union.anon.97 { ptr @rcutree_dead_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.50, %union.anon.96 { ptr @timers_prepare_cpu }, %union.anon.97 { ptr @timers_dead_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.51, %union.anon.96 { ptr @bringup_cpu }, %union.anon.97 { ptr @finish_cpu }, %struct.hlist_head zeroinitializer, i8 1, i8 0 }, %struct.cpuhp_step { ptr @.str.52, %union.anon.96 zeroinitializer, %union.anon.97 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { ptr @.str.53, %union.anon.96 zeroinitializer, %union.anon.97 zeroinitializer, %struct.hlist_head zeroinitializer, i8 1, i8 0 }, %struct.cpuhp_step { ptr @.str.54, %union.anon.96 { ptr @sched_cpu_starting }, %union.anon.97 { ptr @sched_cpu_dying }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { ptr @.str.55, %union.anon.96 zeroinitializer, %union.anon.97 { ptr @rcutree_dying_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.56, %union.anon.96 zeroinitializer, %union.anon.97 { ptr @smpcfd_dying_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.57, %union.anon.96 zeroinitializer, %union.anon.97 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { ptr @.str.58, %union.anon.96 zeroinitializer, %union.anon.97 { ptr @takedown_cpu }, %struct.hlist_head zeroinitializer, i8 1, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.59, %union.anon.96 zeroinitializer, %union.anon.97 { ptr @sched_cpu_wait_empty }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { ptr @.str.60, %union.anon.96 { ptr @smpboot_unpark_threads }, %union.anon.97 { ptr @smpboot_park_threads }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.61, %union.anon.96 { ptr @irq_affinity_online_cpu }, %union.anon.97 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.62, %union.anon.96 { ptr @perf_event_init_cpu }, %union.anon.97 { ptr @perf_event_exit_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.63, %union.anon.96 zeroinitializer, %union.anon.97 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { ptr @.str.64, %union.anon.96 { ptr @workqueue_online_cpu }, %union.anon.97 { ptr @workqueue_offline_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { ptr @.str.65, %union.anon.96 { ptr @rcutree_online_cpu }, %union.anon.97 { ptr @rcutree_offline_cpu }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step zeroinitializer, %struct.cpuhp_step { ptr @.str.66, %union.anon.96 { ptr @sched_cpu_activate }, %union.anon.97 { ptr @sched_cpu_deactivate }, %struct.hlist_head zeroinitializer, i8 0, i8 0 }, %struct.cpuhp_step { ptr @.str.67, %union.anon.96 zeroinitializer, %union.anon.97 zeroinitializer, %struct.hlist_head zeroinitializer, i8 0, i8 0 }], align 4
@.str.41 = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"threads:prepare\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"perf:prepare\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"workqueue:prepare\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"hrtimers:prepare\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"smpcfd:prepare\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"relay:prepare\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"slab:prepare\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"RCU/tree:prepare\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"timers:prepare\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"cpu:bringup\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"idle:dead\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"ap:offline\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"sched:starting\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"RCU/tree:dying\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"smpcfd:dying\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"ap:online\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"cpu:teardown\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"sched:waitempty\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"smpboot/threads:online\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"irq/affinity:online\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"perf:online\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"lockup_detector:online\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"workqueue:online\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"RCU/tree:online\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"sched:active\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"online\00", align 1
@bringup_wait_for_ap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@init_mm = external dso_local global %struct.mm_struct, align 8
@take_cpu_down.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.68 = private unnamed_addr constant [50 x i8] c"No more dynamic states available for CPU hotplug\0A\00", align 1
@cpu_subsys = external dso_local local_unnamed_addr global %struct.bus_type, align 4
@cpuhp_cpu_root_attr_group = internal constant %struct.attribute_group { ptr @.str.79, ptr null, ptr null, ptr @cpuhp_cpu_root_attrs, ptr null }, align 4
@cpuhp_cpu_attr_group = internal constant %struct.attribute_group { ptr @.str.79, ptr null, ptr null, ptr @cpuhp_cpu_attrs, ptr null }, align 4
@cpuhp_smt_attr_group = internal constant %struct.attribute_group { ptr @.str.69, ptr null, ptr null, ptr @cpuhp_smt_attrs, ptr null }, align 4
@.str.69 = private unnamed_addr constant [4 x i8] c"smt\00", align 1
@cpuhp_smt_attrs = internal global [3 x ptr] [ptr @dev_attr_control, ptr @dev_attr_active, ptr null], align 4
@dev_attr_control = internal global %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 420 }, ptr @control_show, ptr @control_store }, align 4
@dev_attr_active = internal global %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292 }, ptr @active_show, ptr null }, align 4
@.str.70 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"notimplemented\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"hotplug\00", align 1
@cpuhp_cpu_root_attrs = internal global [2 x ptr] [ptr @dev_attr_states, ptr null], align 4
@dev_attr_states = internal global %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 292 }, ptr @states_show, ptr null }, align 4
@.str.80 = private unnamed_addr constant [7 x i8] c"states\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"%3d: %s\0A\00", align 1
@cpuhp_cpu_attrs = internal global [4 x ptr] [ptr @dev_attr_state, ptr @dev_attr_target, ptr @dev_attr_fail, ptr null], align 4
@dev_attr_state = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @state_show, ptr null }, align 4
@dev_attr_target = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420 }, ptr @target_show, ptr @target_store }, align 4
@dev_attr_fail = internal global %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 420 }, ptr @fail_show, ptr @fail_store }, align 4
@.str.82 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"auto,nosmt\00", align 1
@.str.85 = private unnamed_addr constant [62 x i8] c"\012Unsupported mitigations=%s, system may still be vulnerable\0A\00", align 1
@llvm.compiler.used = appending global [47 x ptr] [ptr @__event_cpuhp_enter, ptr @__event_cpuhp_exit, ptr @__event_cpuhp_multi_enter, ptr @__initcall__kmod_cpu__344_1588_alloc_frozen_cpus1, ptr @__initcall__kmod_cpu__345_1635_cpu_hotplug_pm_sync_init1, ptr @__initcall__kmod_cpu__346_2552_cpuhp_sysfs_init6, ptr @__ksymtab___cpu_active_mask, ptr @__ksymtab___cpu_dying_mask, ptr @__ksymtab___cpu_online_mask, ptr @__ksymtab___cpu_possible_mask, ptr @__ksymtab___cpu_present_mask, ptr @__ksymtab___cpuhp_remove_state, ptr @__ksymtab___cpuhp_remove_state_cpuslocked, ptr @__ksymtab___cpuhp_setup_state, ptr @__ksymtab___cpuhp_setup_state_cpuslocked, ptr @__ksymtab___cpuhp_state_add_instance, ptr @__ksymtab___cpuhp_state_remove_instance, ptr @__ksymtab___num_online_cpus, ptr @__ksymtab_add_cpu, ptr @__ksymtab_cpu_all_bits, ptr @__ksymtab_cpu_bit_bitmap, ptr @__ksymtab_cpu_hotplug_disable, ptr @__ksymtab_cpu_hotplug_enable, ptr @__ksymtab_cpu_mitigations_auto_nosmt, ptr @__ksymtab_cpu_mitigations_off, ptr @__ksymtab_cpuhp_tasks_frozen, ptr @__ksymtab_cpus_read_lock, ptr @__ksymtab_cpus_read_trylock, ptr @__ksymtab_cpus_read_unlock, ptr @__ksymtab_remove_cpu, ptr @__setup_mitigations_parse_cmdline, ptr @__tracepoint_cpuhp_enter, ptr @__tracepoint_cpuhp_exit, ptr @__tracepoint_cpuhp_multi_enter, ptr @__tracepoint_ptr_cpuhp_enter, ptr @__tracepoint_ptr_cpuhp_exit, ptr @__tracepoint_ptr_cpuhp_multi_enter, ptr @event_class_cpuhp_enter, ptr @event_class_cpuhp_exit, ptr @event_class_cpuhp_multi_enter, ptr @event_cpuhp_enter, ptr @event_cpuhp_exit, ptr @event_cpuhp_multi_enter, ptr @freeze_secondary_cpus.___tp_str, ptr @freeze_secondary_cpus.___tp_str.7, ptr @thaw_secondary_cpus.___tp_str, ptr @thaw_secondary_cpus.___tp_str.12], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cpuhp_enter(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpuhp_enter, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #19
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
define dso_local i32 @__traceiter_cpuhp_multi_enter(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpuhp_multi_enter, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #19
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cpuhp_exit(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpuhp_exit, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #19
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cpuhp_enter(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
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
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #19
  br i1 %15, label %24, label %16

16:                                               ; preds = %14, %11, %5
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 24) #19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %17, i32 0, i32 1
  store i32 %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %17, i32 0, i32 2
  store i32 %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %17, i32 0, i32 3
  store i32 %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %17, i32 0, i32 4
  store ptr %4, ptr %23, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #19
  br label %24

24:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_cpuhp_enter(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #13, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load volatile ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %19, %5
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #19
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #19
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #19
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %23, i32 0, i32 1
  store i32 %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %23, i32 0, i32 2
  store i32 %2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %23, i32 0, i32 3
  store i32 %3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %23, i32 0, i32 4
  store ptr %4, ptr %39, align 4
  %40 = load i32, ptr %7, align 4
  %41 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 28, i32 noundef %40, ptr noundef %0, i64 noundef 1, ptr noundef %41, ptr noundef %15, ptr noundef null) #19
  br label %42

42:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cpuhp_multi_enter(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readnone %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #19
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
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #19
  br i1 %16, label %25, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 24) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %18, i32 0, i32 1
  store i32 %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %18, i32 0, i32 2
  store i32 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %18, i32 0, i32 3
  store i32 %3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %18, i32 0, i32 4
  store ptr %4, ptr %24, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #19
  br label %25

25:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_cpuhp_multi_enter(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readnone %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #19
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #13, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %20, %6
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %7, ptr noundef nonnull %8) #19
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #19
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #19
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #19
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %24, i32 0, i32 1
  store i32 %1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %24, i32 0, i32 2
  store i32 %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %24, i32 0, i32 3
  store i32 %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %24, i32 0, i32 4
  store ptr %4, ptr %40, align 4
  %41 = load i32, ptr %8, align 4
  %42 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 28, i32 noundef %41, ptr noundef %0, i64 noundef 1, ptr noundef %42, ptr noundef %16, ptr noundef null) #19
  br label %43

43:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cpuhp_exit(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
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
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #19
  br i1 %15, label %24, label %16

16:                                               ; preds = %14, %11, %5
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 24) #19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %17, i32 0, i32 1
  store i32 %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %17, i32 0, i32 2
  store i32 %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %17, i32 0, i32 3
  store i32 %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %17, i32 0, i32 4
  store i32 %4, ptr %23, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #19
  br label %24

24:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_cpuhp_exit(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #13, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load volatile ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %19, %5
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #19
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #19
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #19
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %23, i32 0, i32 1
  store i32 %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %23, i32 0, i32 2
  store i32 %2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %23, i32 0, i32 3
  store i32 %3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %23, i32 0, i32 4
  store i32 %4, ptr %39, align 4
  %40 = load i32, ptr %7, align 4
  %41 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 28, i32 noundef %40, ptr noundef %0, i64 noundef 1, ptr noundef %41, ptr noundef %15, ptr noundef null) #19
  br label %42

42:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpu_maps_update_begin() local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @cpu_add_remove_lock) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpu_maps_update_done() local_unnamed_addr #0 {
  tail call void @mutex_unlock(ptr noundef nonnull @cpu_add_remove_lock) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpus_read_lock() #0 {
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !13
  %1 = load volatile i32, ptr @cpu_hotplug_lock, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %14, !prof !10

3:                                                ; preds = %0
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !14
  %5 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 1), align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #13, !srcloc !12
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #19, !srcloc !15
  br label %16

14:                                               ; preds = %0
  %15 = tail call zeroext i1 @__percpu_down_read(ptr noundef nonnull @cpu_hotplug_lock, i1 noundef zeroext false) #19
  br label %16

16:                                               ; preds = %14, %3
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpus_read_trylock() #0 {
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !17
  %1 = load volatile i32, ptr @cpu_hotplug_lock, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %14, !prof !10

3:                                                ; preds = %0
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !14
  %5 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 1), align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #13, !srcloc !12
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #19, !srcloc !15
  br label %17

14:                                               ; preds = %0
  %15 = tail call zeroext i1 @__percpu_down_read(ptr noundef nonnull @cpu_hotplug_lock, i1 noundef zeroext true) #19
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi i32 [ 1, %3 ], [ %16, %14 ]
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !18
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpus_read_unlock() #0 {
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !19
  %1 = load volatile i32, ptr @cpu_hotplug_lock, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %14, !prof !10

3:                                                ; preds = %0
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !14
  %5 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 1), align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #13, !srcloc !12
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  store i32 %13, ptr %11, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #19, !srcloc !15
  br label %26

14:                                               ; preds = %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !20
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !14
  %16 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 1), align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #13, !srcloc !12
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, -1
  store i32 %24, ptr %22, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #19, !srcloc !15
  %25 = tail call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 2)) #19
  br label %26

26:                                               ; preds = %14, %3
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpus_write_lock() local_unnamed_addr #0 {
  tail call void @percpu_down_write(ptr noundef nonnull @cpu_hotplug_lock) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpus_write_unlock() local_unnamed_addr #0 {
  tail call void @percpu_up_write(ptr noundef nonnull @cpu_hotplug_lock) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @lockdep_assert_cpus_held() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpu_hotplug_disable() #0 {
  tail call void @mutex_lock(ptr noundef nonnull @cpu_add_remove_lock) #19
  %1 = load i32, ptr @cpu_hotplug_disabled, align 4
  %2 = add i32 %1, 1
  store i32 %2, ptr @cpu_hotplug_disabled, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @cpu_add_remove_lock) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpu_hotplug_enable() #0 {
  tail call void @mutex_lock(ptr noundef nonnull @cpu_add_remove_lock) #19
  %1 = load i32, ptr @cpu_hotplug_disabled, align 4
  %2 = icmp eq i32 %1, 0
  %3 = load i1, ptr @__cpu_hotplug_enable.__already_done, align 1
  %4 = xor i1 %3, true
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7, !prof !11

6:                                                ; preds = %0
  store i1 true, ptr @__cpu_hotplug_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 383, i32 noundef 9, ptr noundef nonnull @.str.27) #19
  br label %7

7:                                                ; preds = %6, %0
  br i1 %2, label %11, label %8

8:                                                ; preds = %7
  %9 = load i32, ptr @cpu_hotplug_disabled, align 4
  %10 = add i32 %9, -1
  store i32 %10, ptr @cpu_hotplug_disabled, align 4
  br label %11

11:                                               ; preds = %8, %7
  tail call void @mutex_unlock(ptr noundef nonnull @cpu_add_remove_lock) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @arch_smt_update() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cpuhp_threads_init() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @smpboot_register_percpu_thread(ptr noundef nonnull @cpuhp_threads) #19
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3, !prof !10

3:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 894, 0\0A.popsection", ""() #19, !srcloc !22
  unreachable

4:                                                ; preds = %0
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !23
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %6) #13, !srcloc !12
  %8 = add i32 %7, ptrtoint (ptr getelementptr inbounds (%struct.cpuhp_cpu_state, ptr @cpuhp_state, i32 0, i32 3) to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = load volatile ptr, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !24
  tail call void @kthread_unpark(ptr noundef %10) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpboot_register_percpu_thread(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_unpark(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clear_tasks_mm_cpumask(i32 noundef %0) local_unnamed_addr #0 {
  %2 = lshr i32 %0, 5
  %3 = getelementptr i32, ptr @__cpu_online_mask, i32 %2
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %0, 31
  %6 = shl nuw i32 1, %5
  %7 = and i32 %4, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !10

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 972, i32 noundef 9, ptr noundef null) #19
  br label %10

10:                                               ; preds = %9, %1
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !25
  %11 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %12 = getelementptr i8, ptr %11, i32 -1116
  %13 = icmp eq ptr %12, @init_task
  br i1 %13, label %30, label %14

14:                                               ; preds = %25, %10
  %15 = phi ptr [ %28, %25 ], [ %12, %10 ]
  %16 = tail call ptr @find_lock_task_mm(ptr noundef %15) #19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 37
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mm_struct, ptr %20, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef %0, ptr noundef %21) #19
  %22 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 107
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !26
  %23 = load i16, ptr %22, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !27
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !29
  br label %25

25:                                               ; preds = %18, %14
  %26 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 34
  %27 = load volatile ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 -1116
  %29 = icmp eq ptr %28, @init_task
  br i1 %29, label %30, label %14

30:                                               ; preds = %25, %10
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_lock_task_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpuhp_report_idle_dead() local_unnamed_addr #0 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #13, !srcloc !12
  %4 = add i32 %3, ptrtoint (ptr @cpuhp_state to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 93
  br i1 %7, label %9, label %8, !prof !10

8:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1086, 0\0A.popsection", ""() #19, !srcloc !31
  unreachable

9:                                                ; preds = %0
  %10 = tail call ptr @llvm.thread.pointer() #19
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  tail call void @rcu_report_dead(i32 noundef %12) #19
  store i32 92, ptr %5, align 4
  %13 = tail call i32 @_find_first_bit_le(ptr noundef nonnull @__cpu_online_mask, i32 noundef 16) #19
  %14 = tail call i32 @smp_call_function_single(i32 noundef %13, ptr noundef nonnull @cpuhp_complete_idle_dead, ptr noundef %5, i32 noundef 0) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_report_dead(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpuhp_complete_idle_dead(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %0, i32 0, i32 14
  tail call void @complete(ptr noundef %2) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpu_device_down(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 28
  %3 = load i32, ptr %2, align 4
  tail call void @mutex_lock(ptr noundef nonnull @cpu_add_remove_lock) #19
  %4 = load i32, ptr @cpu_hotplug_disabled, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @_cpu_down(i32 noundef %3, i32 noundef 0, i32 noundef 0) #19
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ -16, %1 ]
  tail call void @mutex_unlock(ptr noundef nonnull @cpu_add_remove_lock) #19
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @remove_cpu(i32 noundef %0) #0 {
  tail call void @lock_device_hotplug() #19
  %2 = tail call ptr @get_cpu_device(i32 noundef %0) #19
  %3 = tail call i32 @device_offline(ptr noundef %2) #19
  tail call void @unlock_device_hotplug() #19
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_device_hotplug() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_offline(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_device_hotplug() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @smp_shutdown_nonboot_cpus(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @cpu_add_remove_lock) #19
  %2 = lshr i32 %0, 5
  %3 = getelementptr i32, ptr @__cpu_online_mask, i32 %2
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %0, 31
  %6 = shl nuw i32 1, %5
  %7 = and i32 %4, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = tail call i32 @_find_first_bit_le(ptr noundef nonnull @__cpu_online_mask, i32 noundef 16) #19
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i32 [ %0, %1 ], [ %10, %9 ]
  %13 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #20
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %20, %11
  %17 = phi i32 [ %21, %20 ], [ %14, %11 ]
  %18 = phi i32 [ %22, %20 ], [ %13, %11 ]
  %19 = icmp eq i32 %18, %12
  br i1 %19, label %20, label %24

20:                                               ; preds = %30, %16
  %21 = phi i32 [ %31, %30 ], [ %17, %16 ]
  %22 = tail call i32 @cpumask_next(i32 noundef %18, ptr noundef nonnull @__cpu_online_mask) #20
  %23 = icmp ult i32 %22, %21
  br i1 %23, label %16, label %35

24:                                               ; preds = %16
  %25 = load i32, ptr @cpu_hotplug_disabled, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = tail call fastcc i32 @_cpu_down(i32 noundef %18, i32 noundef 0, i32 noundef 0) #19
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, ptr @nr_cpu_ids, align 4
  br label %20

32:                                               ; preds = %27, %24
  %33 = phi i32 [ %28, %27 ], [ -16, %24 ]
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %18, i32 noundef %33) #21
  br label %35

35:                                               ; preds = %32, %20, %11
  %36 = load volatile i32, ptr @__num_online_cpus, align 4
  %37 = icmp ugt i32 %36, 1
  br i1 %37, label %38, label %39, !prof !11

38:                                               ; preds = %35
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1260, 0\0A.popsection", ""() #19, !srcloc !32
  unreachable

39:                                               ; preds = %35
  %40 = load i32, ptr @cpu_hotplug_disabled, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr @cpu_hotplug_disabled, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @cpu_add_remove_lock) #19
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @notify_cpu_starting(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @cpuhp_state to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 149)
  tail call void @rcu_cpu_starting(i32 noundef %0) #19
  tail call void @_set_bit(i32 noundef %0, ptr noundef nonnull @cpus_booted_once_mask) #19
  br label %9

9:                                                ; preds = %20, %1
  %10 = load i32, ptr %5, align 4
  %11 = call i32 @llvm.smax.i32(i32 %10, i32 %8)
  br label %12

12:                                               ; preds = %15, %9
  %13 = phi i32 [ %16, %15 ], [ %10, %9 ]
  %14 = icmp eq i32 %13, %11
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  %16 = add i32 %13, 1
  store i32 %16, ptr %5, align 4
  %17 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %16, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %12, label %20

20:                                               ; preds = %15
  %21 = tail call fastcc i32 @cpuhp_invoke_callback(i32 noundef %0, i32 noundef %16, i1 noundef zeroext true, ptr noundef null, ptr noundef null) #19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %9, label %23

23:                                               ; preds = %20
  %24 = load i1, ptr @notify_cpu_starting.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !10

25:                                               ; preds = %23
  store i1 true, ptr @notify_cpu_starting.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1296, i32 noundef 9, ptr noundef null) #19
  br label %26

26:                                               ; preds = %25, %23, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_cpu_starting(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpuhp_online_idle(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #13, !srcloc !12
  %5 = icmp eq i32 %0, 151
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = add i32 %4, ptrtoint (ptr @cpuhp_state to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call ptr @llvm.thread.pointer() #19
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  tail call void @stop_machine_unpark(i32 noundef %11) #19
  store i32 151, ptr %8, align 4
  %12 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %8, i32 0, i32 13
  tail call void @complete(ptr noundef %12) #19
  br label %13

13:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stop_machine_unpark(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpu_device_up(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 28
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 5
  %5 = getelementptr i32, ptr @__cpu_possible_mask, i32 %4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %3, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %8, %6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %3) #21
  br label %20

13:                                               ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @cpu_add_remove_lock) #19
  %14 = load i32, ptr @cpu_hotplug_disabled, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @_cpu_up(i32 noundef %3, i32 noundef 0, i32 noundef 229) #19
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32 [ %17, %16 ], [ -16, %13 ]
  tail call void @mutex_unlock(ptr noundef nonnull @cpu_add_remove_lock) #19
  br label %20

20:                                               ; preds = %18, %11
  %21 = phi i32 [ %19, %18 ], [ -22, %11 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @add_cpu(i32 noundef %0) #0 {
  tail call void @lock_device_hotplug() #19
  %2 = tail call ptr @get_cpu_device(i32 noundef %0) #19
  %3 = tail call i32 @device_online(ptr noundef %2) #19
  tail call void @unlock_device_hotplug() #19
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_online(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bringup_hibernate_cpu(i32 noundef %0) local_unnamed_addr #0 {
  %2 = lshr i32 %0, 5
  %3 = getelementptr i32, ptr @__cpu_online_mask, i32 %2
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %0, 31
  %6 = shl nuw i32 1, %5
  %7 = and i32 %4, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #21
  %11 = getelementptr i32, ptr @__cpu_possible_mask, i32 %2
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, %6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %0) #21
  br label %24

17:                                               ; preds = %9
  tail call void @mutex_lock(ptr noundef nonnull @cpu_add_remove_lock) #19
  %18 = load i32, ptr @cpu_hotplug_disabled, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @mutex_unlock(ptr noundef nonnull @cpu_add_remove_lock) #19
  br label %24

21:                                               ; preds = %17
  %22 = tail call fastcc i32 @_cpu_up(i32 noundef %0, i32 noundef 0, i32 noundef 229) #19
  tail call void @mutex_unlock(ptr noundef nonnull @cpu_add_remove_lock) #19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %20, %15
  %25 = phi i32 [ -22, %15 ], [ %22, %21 ], [ -16, %20 ]
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #21
  br label %27

27:                                               ; preds = %24, %21, %1
  %28 = phi i32 [ %25, %24 ], [ 0, %21 ], [ 0, %1 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bringup_nonboot_cpus(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #20
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %5, label %34

5:                                                ; preds = %30, %1
  %6 = phi i32 [ %31, %30 ], [ %2, %1 ]
  %7 = load volatile i32, ptr @__num_online_cpus, align 4
  %8 = icmp ult i32 %7, %0
  br i1 %8, label %9, label %34

9:                                                ; preds = %5
  %10 = lshr i32 %6, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %6, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %9
  %18 = getelementptr i32, ptr @__cpu_possible_mask, i32 %10
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, %14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %6) #21
  br label %30

24:                                               ; preds = %17
  tail call void @mutex_lock(ptr noundef nonnull @cpu_add_remove_lock) #19
  %25 = load i32, ptr @cpu_hotplug_disabled, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = tail call fastcc i32 @_cpu_up(i32 noundef %6, i32 noundef 0, i32 noundef 229) #19
  br label %29

29:                                               ; preds = %27, %24
  tail call void @mutex_unlock(ptr noundef nonnull @cpu_add_remove_lock) #19
  br label %30

30:                                               ; preds = %29, %22, %9
  %31 = tail call i32 @cpumask_next(i32 noundef %6, ptr noundef nonnull @__cpu_present_mask) #20
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %5, label %34

34:                                               ; preds = %30, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @freeze_secondary_cpus(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @cpu_add_remove_lock) #19
  %2 = icmp eq i32 %0, -1
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  %4 = tail call i32 @_find_first_bit_le(ptr noundef nonnull @__cpu_online_mask, i32 noundef 16) #19
  %5 = load volatile i32, ptr @housekeeping_overridden, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %21, !prof !11

7:                                                ; preds = %3
  %8 = tail call zeroext i1 @housekeeping_test_cpu(i32 noundef %4, i32 noundef 1) #19
  br i1 %8, label %21, label %9

9:                                                ; preds = %7
  %10 = tail call i32 @housekeeping_any_cpu(i32 noundef 1) #19
  br label %21

11:                                               ; preds = %1
  %12 = lshr i32 %0, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %0, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = tail call i32 @_find_first_bit_le(ptr noundef nonnull @__cpu_online_mask, i32 noundef 16) #19
  br label %21

21:                                               ; preds = %19, %11, %9, %7, %3
  %22 = phi i32 [ %4, %7 ], [ %10, %9 ], [ %0, %11 ], [ %20, %19 ], [ %4, %3 ]
  store i32 0, ptr @frozen_cpus, align 4
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #21
  %24 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #20
  %25 = load i32, ptr @nr_cpu_ids, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %80

27:                                               ; preds = %74, %21
  %28 = phi i32 [ %75, %74 ], [ %25, %21 ]
  %29 = phi i32 [ %76, %74 ], [ %24, %21 ]
  %30 = icmp eq i32 %29, %22
  br i1 %30, label %74, label %31

31:                                               ; preds = %27
  %32 = tail call zeroext i1 @pm_wakeup_pending() #19
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #21
  br label %84

35:                                               ; preds = %31
  %36 = load ptr, ptr @freeze_secondary_cpus.___tp_str, align 4
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = tail call ptr @llvm.thread.pointer() #19
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 5
  %44 = getelementptr i32, ptr @__cpu_online_mask, i32 %43
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %42, 31
  %47 = shl nuw i32 1, %46
  %48 = and i32 %47, %45
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %39
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !33
  %51 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %36, i32 noundef %29, i1 noundef zeroext true) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !34
  br label %52

52:                                               ; preds = %50, %39, %35
  %53 = tail call fastcc i32 @_cpu_down(i32 noundef %29, i32 noundef 1, i32 noundef 0)
  %54 = load ptr, ptr @freeze_secondary_cpus.___tp_str.7, align 4
  %55 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = tail call ptr @llvm.thread.pointer() #19
  %59 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %60 = load i32, ptr %59, align 8
  %61 = lshr i32 %60, 5
  %62 = getelementptr i32, ptr @__cpu_online_mask, i32 %61
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %60, 31
  %65 = shl nuw i32 1, %64
  %66 = and i32 %65, %63
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %57
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !33
  %69 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %54, i32 noundef %29, i1 noundef zeroext false) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !34
  br label %70

70:                                               ; preds = %68, %57, %52
  %71 = icmp eq i32 %53, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %70
  tail call void @_set_bit(i32 noundef %29, ptr noundef nonnull @frozen_cpus) #19
  %73 = load i32, ptr @nr_cpu_ids, align 4
  br label %74

74:                                               ; preds = %72, %27
  %75 = phi i32 [ %73, %72 ], [ %28, %27 ]
  %76 = tail call i32 @cpumask_next(i32 noundef %29, ptr noundef nonnull @__cpu_online_mask) #20
  %77 = icmp ult i32 %76, %75
  br i1 %77, label %27, label %80

78:                                               ; preds = %70
  %79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %29, i32 noundef %53) #21
  br label %84

80:                                               ; preds = %74, %21
  %81 = load volatile i32, ptr @__num_online_cpus, align 4
  %82 = icmp ugt i32 %81, 1
  br i1 %82, label %83, label %87, !prof !11

83:                                               ; preds = %80
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1527, 0\0A.popsection", ""() #19, !srcloc !35
  unreachable

84:                                               ; preds = %78, %33
  %85 = phi i32 [ %53, %78 ], [ -16, %33 ]
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #21
  br label %87

87:                                               ; preds = %84, %80
  %88 = phi i32 [ 0, %80 ], [ %85, %84 ]
  %89 = load i32, ptr @cpu_hotplug_disabled, align 4
  %90 = add i32 %89, 1
  store i32 %90, ptr @cpu_hotplug_disabled, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @cpu_add_remove_lock) #19
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @housekeeping_any_cpu(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pm_wakeup_pending() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_cpu_down(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 section ".ref.text" {
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, ptrtoint (ptr @cpuhp_state to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load volatile i32, ptr @__num_online_cpus, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %169, label %10

10:                                               ; preds = %3
  %11 = lshr i32 %0, 5
  %12 = getelementptr i32, ptr @__cpu_present_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %0, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %169, label %18

18:                                               ; preds = %10
  tail call void @percpu_down_write(ptr noundef nonnull @cpu_hotplug_lock) #19
  %19 = icmp ne i32 %1, 0
  %20 = zext i1 %19 to i8
  store i8 %20, ptr @cpuhp_tasks_frozen, align 1
  %21 = load i32, ptr %7, align 4
  %22 = icmp slt i32 %21, %2
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %7, i32 0, i32 5
  store i8 0, ptr %24, align 1
  %25 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %7, i32 0, i32 10
  store ptr null, ptr %25, align 4
  %26 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %7, i32 0, i32 1
  store i32 %2, ptr %26, align 4
  %27 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %7, i32 0, i32 6
  store i8 0, ptr %27, align 2
  %28 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %7, i32 0, i32 7
  store i8 %23, ptr %28, align 1
  %29 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %7, i32 0, i32 8
  %30 = load i32, ptr %29, align 4
  %31 = lshr i32 %30, 5
  %32 = getelementptr i32, ptr @__cpu_dying_mask, i32 %31
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %30, 31
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, %33
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %22, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %18
  br i1 %22, label %41, label %40

40:                                               ; preds = %39
  tail call void @_set_bit(i32 noundef %30, ptr noundef nonnull @__cpu_dying_mask) #19
  br label %42

41:                                               ; preds = %39
  tail call void @_clear_bit(i32 noundef %30, ptr noundef nonnull @__cpu_dying_mask) #19
  br label %42

42:                                               ; preds = %41, %40, %18
  %43 = load i32, ptr %7, align 4
  %44 = icmp sgt i32 %43, 150
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = tail call i32 @llvm.smax.i32(i32 %2, i32 150)
  store i32 %46, ptr %26, align 4
  %47 = tail call i32 @cpuhp_kick_ap_work(i32 noundef %0)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %167

49:                                               ; preds = %45
  %50 = load i32, ptr %7, align 4
  %51 = icmp sgt i32 %50, 150
  br i1 %51, label %167, label %52

52:                                               ; preds = %49
  store i32 %2, ptr %26, align 4
  br label %53

53:                                               ; preds = %52, %42
  %54 = phi i32 [ %50, %52 ], [ %43, %42 ]
  br label %55

55:                                               ; preds = %63, %53
  %56 = phi i32 [ %54, %53 ], [ %64, %63 ]
  %57 = icmp sgt i32 %56, %2
  br i1 %57, label %58, label %167

58:                                               ; preds = %55
  %59 = add nsw i32 %56, -1
  store i32 %59, ptr %7, align 4
  %60 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %56, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %68, %58
  %64 = phi i32 [ %59, %58 ], [ %69, %68 ]
  br label %55

65:                                               ; preds = %58
  %66 = tail call fastcc i32 @cpuhp_invoke_callback(i32 noundef %0, i32 noundef %56, i1 noundef zeroext false, ptr noundef null, ptr noundef null) #19
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, ptr %7, align 4
  br label %63

70:                                               ; preds = %65
  %71 = load i8, ptr %28, align 1, !range !36
  %72 = icmp eq i8 %71, 0
  %73 = xor i8 %71, 1
  store i32 %54, ptr %26, align 4
  %74 = load i8, ptr %24, align 1, !range !36
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %70
  store i8 1, ptr %24, align 1
  %77 = load ptr, ptr %25, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, ptr %7, align 4
  %81 = select i1 %72, i32 1, i32 -1
  %82 = add i32 %80, %81
  store i32 %82, ptr %7, align 4
  br label %83

83:                                               ; preds = %79, %76
  store i8 %73, ptr %28, align 1
  %84 = load i32, ptr %29, align 4
  %85 = lshr i32 %84, 5
  %86 = getelementptr i32, ptr @__cpu_dying_mask, i32 %85
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %84, 31
  %89 = shl nuw i32 1, %88
  %90 = and i32 %89, %87
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i8
  %93 = icmp eq i8 %71, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %83
  br i1 %72, label %96, label %95

95:                                               ; preds = %94
  tail call void @_set_bit(i32 noundef %84, ptr noundef nonnull @__cpu_dying_mask) #19
  br label %97

96:                                               ; preds = %94
  tail call void @_clear_bit(i32 noundef %84, ptr noundef nonnull @__cpu_dying_mask) #19
  br label %97

97:                                               ; preds = %96, %95, %83, %70
  %98 = load i32, ptr %7, align 4
  %99 = icmp slt i32 %98, %54
  br i1 %99, label %100, label %118

100:                                              ; preds = %114, %97
  %101 = phi i32 [ %115, %114 ], [ %98, %97 ]
  %102 = tail call i32 @llvm.smax.i32(i32 %101, i32 %54) #19
  br label %103

103:                                              ; preds = %106, %100
  %104 = phi i32 [ %107, %106 ], [ %101, %100 ]
  %105 = icmp eq i32 %104, %102
  br i1 %105, label %118, label %106

106:                                              ; preds = %103
  %107 = add i32 %104, 1
  store i32 %107, ptr %7, align 4
  %108 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %107, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %103, label %111

111:                                              ; preds = %106
  %112 = tail call fastcc i32 @cpuhp_invoke_callback(i32 noundef %0, i32 noundef %107, i1 noundef zeroext true, ptr noundef null, ptr noundef null) #19
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, ptr %7, align 4
  br label %100

116:                                              ; preds = %111
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1113, i32 noundef 9, ptr noundef null) #19
  %117 = load i32, ptr %7, align 4
  br label %118

118:                                              ; preds = %116, %103, %97
  %119 = phi i32 [ %98, %97 ], [ %117, %116 ], [ %102, %103 ]
  %120 = icmp slt i32 %119, %21
  br i1 %120, label %121, label %167

121:                                              ; preds = %118
  %122 = icmp eq i32 %119, 150
  br i1 %122, label %123, label %166

123:                                              ; preds = %121
  %124 = load i8, ptr %28, align 1, !range !36
  %125 = icmp eq i8 %124, 0
  %126 = xor i8 %124, 1
  store i32 %21, ptr %26, align 4
  %127 = load i8, ptr %24, align 1, !range !36
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %148

129:                                              ; preds = %123
  store i8 1, ptr %24, align 1
  %130 = load ptr, ptr %25, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = select i1 %125, i32 151, i32 149
  store i32 %133, ptr %7, align 4
  br label %134

134:                                              ; preds = %132, %129
  store i8 %126, ptr %28, align 1
  %135 = load i32, ptr %29, align 4
  %136 = lshr i32 %135, 5
  %137 = getelementptr i32, ptr @__cpu_dying_mask, i32 %136
  %138 = load volatile i32, ptr %137, align 4
  %139 = and i32 %135, 31
  %140 = shl nuw i32 1, %139
  %141 = and i32 %140, %138
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i8
  %144 = icmp eq i8 %124, %143
  br i1 %144, label %148, label %145

145:                                              ; preds = %134
  br i1 %125, label %147, label %146

146:                                              ; preds = %145
  tail call void @_set_bit(i32 noundef %135, ptr noundef nonnull @__cpu_dying_mask) #19
  br label %148

147:                                              ; preds = %145
  tail call void @_clear_bit(i32 noundef %135, ptr noundef nonnull @__cpu_dying_mask) #19
  br label %148

148:                                              ; preds = %147, %146, %134, %123
  %149 = load i8, ptr %27, align 2, !range !36
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i32, ptr %7, align 4
  %153 = load i32, ptr %26, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %167, label %155

155:                                              ; preds = %151, %148
  %156 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %7, i32 0, i32 12
  store i32 0, ptr %156, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !37
  %157 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %7, i32 0, i32 4
  store i8 1, ptr %157, align 4
  %158 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %7, i32 0, i32 3
  %159 = load ptr, ptr %158, align 4
  %160 = tail call i32 @wake_up_process(ptr noundef %159) #19
  %161 = load i8, ptr %28, align 1, !range !36
  %162 = icmp eq i8 %161, 0
  %163 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %7, i32 0, i32 13
  %164 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %7, i32 0, i32 14
  %165 = select i1 %162, ptr %164, ptr %163
  tail call void @wait_for_completion(ptr noundef %165) #19
  br label %167

166:                                              ; preds = %121
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1170, i32 noundef 9, ptr noundef nonnull @.str.39, i32 noundef %0) #19
  br label %167

167:                                              ; preds = %166, %155, %151, %118, %55, %49, %45
  %168 = phi i32 [ %47, %45 ], [ 0, %49 ], [ %66, %166 ], [ %66, %118 ], [ %66, %151 ], [ %66, %155 ], [ 0, %55 ]
  tail call void @percpu_up_write(ptr noundef nonnull @cpu_hotplug_lock) #19
  tail call void @arch_smt_update()
  br label %169

169:                                              ; preds = %167, %10, %3
  %170 = phi i32 [ %168, %167 ], [ -16, %3 ], [ -22, %10 ]
  ret i32 %170
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @arch_thaw_secondary_cpus_begin() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @arch_thaw_secondary_cpus_end() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @thaw_secondary_cpus() local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @cpu_add_remove_lock) #19
  %1 = load i32, ptr @cpu_hotplug_disabled, align 4
  %2 = icmp eq i32 %1, 0
  %3 = load i1, ptr @__cpu_hotplug_enable.__already_done, align 1
  %4 = xor i1 %3, true
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7, !prof !11

6:                                                ; preds = %0
  store i1 true, ptr @__cpu_hotplug_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 383, i32 noundef 9, ptr noundef nonnull @.str.27) #19
  br label %7

7:                                                ; preds = %6, %0
  br i1 %2, label %11, label %8

8:                                                ; preds = %7
  %9 = load i32, ptr @cpu_hotplug_disabled, align 4
  %10 = add i32 %9, -1
  store i32 %10, ptr @cpu_hotplug_disabled, align 4
  br label %11

11:                                               ; preds = %8, %7
  %12 = load i32, ptr @frozen_cpus, align 4
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %67, label %15

15:                                               ; preds = %11
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #21
  tail call void @arch_thaw_secondary_cpus_begin()
  %17 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @frozen_cpus) #20
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %60, %15
  %21 = phi i32 [ %61, %60 ], [ %17, %15 ]
  %22 = load ptr, ptr @thaw_secondary_cpus.___tp_str, align 4
  %23 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = tail call ptr @llvm.thread.pointer() #19
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 5
  %30 = getelementptr i32, ptr @__cpu_online_mask, i32 %29
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %28, 31
  %33 = shl nuw i32 1, %32
  %34 = and i32 %33, %31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %25
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !33
  %37 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %22, i32 noundef %21, i1 noundef zeroext true) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !34
  br label %38

38:                                               ; preds = %36, %25, %20
  %39 = tail call fastcc i32 @_cpu_up(i32 noundef %21, i32 noundef 1, i32 noundef 229)
  %40 = load ptr, ptr @thaw_secondary_cpus.___tp_str.12, align 4
  %41 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = tail call ptr @llvm.thread.pointer() #19
  %45 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = lshr i32 %46, 5
  %48 = getelementptr i32, ptr @__cpu_online_mask, i32 %47
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %46, 31
  %51 = shl nuw i32 1, %50
  %52 = and i32 %51, %49
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %43
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !33
  %55 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %40, i32 noundef %21, i1 noundef zeroext false) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !34
  br label %56

56:                                               ; preds = %54, %43, %38
  %57 = icmp eq i32 %39, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %56
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %21) #21
  br label %60

60:                                               ; preds = %64, %58
  %61 = tail call i32 @cpumask_next(i32 noundef %21, ptr noundef nonnull @frozen_cpus) #20
  %62 = load i32, ptr @nr_cpu_ids, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %20, label %66

64:                                               ; preds = %56
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %21, i32 noundef %39) #21
  br label %60

66:                                               ; preds = %60, %15
  tail call void @arch_thaw_secondary_cpus_end()
  store i32 0, ptr @frozen_cpus, align 4
  br label %67

67:                                               ; preds = %66, %11
  tail call void @mutex_unlock(ptr noundef nonnull @cpu_add_remove_lock) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_cpu_up(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, ptrtoint (ptr @cpuhp_state to i32)
  %7 = inttoptr i32 %6 to ptr
  tail call void @percpu_down_write(ptr noundef nonnull @cpu_hotplug_lock) #19
  %8 = lshr i32 %0, 5
  %9 = getelementptr i32, ptr @__cpu_present_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %0, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %120, label %15

15:                                               ; preds = %3
  %16 = load i32, ptr %7, align 4
  %17 = icmp slt i32 %16, %2
  br i1 %17, label %18, label %120

18:                                               ; preds = %15
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %18
  %21 = tail call ptr @idle_thread_get(i32 noundef %0) #19
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %7, align 4
  br label %27

25:                                               ; preds = %20
  %26 = ptrtoint ptr %21 to i32
  br label %120

27:                                               ; preds = %23, %18
  %28 = phi i32 [ %24, %23 ], [ %16, %18 ]
  %29 = icmp ne i32 %1, 0
  %30 = zext i1 %29 to i8
  store i8 %30, ptr @cpuhp_tasks_frozen, align 1
  %31 = icmp slt i32 %28, %2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %7, i32 0, i32 5
  store i8 0, ptr %33, align 1
  %34 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %7, i32 0, i32 10
  store ptr null, ptr %34, align 4
  %35 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %7, i32 0, i32 1
  store i32 %2, ptr %35, align 4
  %36 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %7, i32 0, i32 6
  store i8 0, ptr %36, align 2
  %37 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %7, i32 0, i32 7
  store i8 %32, ptr %37, align 1
  %38 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %7, i32 0, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 5
  %41 = getelementptr i32, ptr @__cpu_dying_mask, i32 %40
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %39, 31
  %44 = shl nuw i32 1, %43
  %45 = and i32 %44, %42
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %31, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %27
  br i1 %31, label %50, label %49

49:                                               ; preds = %48
  tail call void @_set_bit(i32 noundef %39, ptr noundef nonnull @__cpu_dying_mask) #19
  br label %51

50:                                               ; preds = %48
  tail call void @_clear_bit(i32 noundef %39, ptr noundef nonnull @__cpu_dying_mask) #19
  br label %51

51:                                               ; preds = %50, %49, %27
  %52 = load i32, ptr %7, align 4
  %53 = icmp sgt i32 %52, 91
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = tail call i32 @cpuhp_kick_ap_work(i32 noundef %0)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %120

57:                                               ; preds = %54
  %58 = load i32, ptr %7, align 4
  br label %59

59:                                               ; preds = %57, %51
  %60 = phi i32 [ %58, %57 ], [ %52, %51 ]
  %61 = tail call i32 @llvm.smin.i32(i32 %2, i32 91)
  br label %62

62:                                               ; preds = %76, %59
  %63 = phi i32 [ %77, %76 ], [ %60, %59 ]
  %64 = tail call i32 @llvm.smax.i32(i32 %63, i32 %61) #19
  br label %65

65:                                               ; preds = %68, %62
  %66 = phi i32 [ %69, %68 ], [ %63, %62 ]
  %67 = icmp eq i32 %66, %64
  br i1 %67, label %120, label %68

68:                                               ; preds = %65
  %69 = add i32 %66, 1
  store i32 %69, ptr %7, align 4
  %70 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %69, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %65, label %73

73:                                               ; preds = %68
  %74 = tail call fastcc i32 @cpuhp_invoke_callback(i32 noundef %0, i32 noundef %69, i1 noundef zeroext true, ptr noundef null, ptr noundef null) #19
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, ptr %7, align 4
  br label %62

78:                                               ; preds = %73
  %79 = load i8, ptr %37, align 1, !range !36
  %80 = icmp eq i8 %79, 0
  %81 = xor i8 %79, 1
  store i32 %60, ptr %35, align 4
  %82 = load i8, ptr %33, align 1, !range !36
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %105

84:                                               ; preds = %78
  store i8 1, ptr %33, align 1
  %85 = load ptr, ptr %34, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, ptr %7, align 4
  %89 = select i1 %80, i32 1, i32 -1
  %90 = add i32 %88, %89
  store i32 %90, ptr %7, align 4
  br label %91

91:                                               ; preds = %87, %84
  store i8 %81, ptr %37, align 1
  %92 = load i32, ptr %38, align 4
  %93 = lshr i32 %92, 5
  %94 = getelementptr i32, ptr @__cpu_dying_mask, i32 %93
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %92, 31
  %97 = shl nuw i32 1, %96
  %98 = and i32 %97, %95
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i8
  %101 = icmp eq i8 %79, %100
  br i1 %101, label %105, label %102

102:                                              ; preds = %91
  br i1 %80, label %104, label %103

103:                                              ; preds = %102
  tail call void @_set_bit(i32 noundef %92, ptr noundef nonnull @__cpu_dying_mask) #19
  br label %105

104:                                              ; preds = %102
  tail call void @_clear_bit(i32 noundef %92, ptr noundef nonnull @__cpu_dying_mask) #19
  br label %105

105:                                              ; preds = %104, %103, %91, %78
  br label %106

106:                                              ; preds = %116, %105
  %107 = load i32, ptr %7, align 4
  br label %108

108:                                              ; preds = %111, %106
  %109 = phi i32 [ %112, %111 ], [ %107, %106 ]
  %110 = icmp sgt i32 %109, %60
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = add nsw i32 %109, -1
  store i32 %112, ptr %7, align 4
  %113 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %109, i32 2
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %108, label %116

116:                                              ; preds = %111
  %117 = tail call fastcc i32 @cpuhp_invoke_callback(i32 noundef %0, i32 noundef %109, i1 noundef zeroext false, ptr noundef null, ptr noundef null) #19
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %106, label %119

119:                                              ; preds = %116
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 709, i32 noundef 9, ptr noundef null) #19
  br label %120

120:                                              ; preds = %119, %108, %65, %54, %25, %15, %3
  %121 = phi i32 [ 0, %15 ], [ %26, %25 ], [ %55, %54 ], [ -22, %3 ], [ %74, %119 ], [ %74, %108 ], [ 0, %65 ]
  tail call void @percpu_up_write(ptr noundef nonnull @cpu_hotplug_lock) #19
  tail call void @arch_smt_update()
  ret i32 %121
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define internal i32 @alloc_frozen_cpus() #8 section ".init.text" {
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cpu_hotplug_pm_sync_init() #4 section ".init.text" {
  %1 = tail call i32 @register_pm_notifier(ptr noundef nonnull @cpu_hotplug_pm_sync_init.cpu_hotplug_pm_callback_nb) #19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__cpuhp_state_add_instance_cpuslocked(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %0, i32 5
  %5 = load i8, ptr %4, align 1, !range !36
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %72, label %7

7:                                                ; preds = %3
  tail call void @mutex_lock(ptr noundef nonnull @cpuhp_state_mutex) #19
  br i1 %2, label %8, label %62

8:                                                ; preds = %7
  %9 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %62, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #20
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %62

16:                                               ; preds = %58, %12
  %17 = phi i32 [ %59, %58 ], [ %14, %12 ]
  %18 = phi i32 [ %60, %58 ], [ %13, %12 ]
  %19 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, ptrtoint (ptr @cpuhp_state to i32)
  %22 = inttoptr i32 %21 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = icmp slt i32 %23, %0
  br i1 %24, label %58, label %25

25:                                               ; preds = %16
  %26 = tail call fastcc i32 @cpuhp_issue_call(i32 noundef %18, i32 noundef %0, i1 noundef zeroext true, ptr noundef %1)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, ptr @nr_cpu_ids, align 4
  br label %58

30:                                               ; preds = %25
  %31 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %70, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #20
  %36 = load i32, ptr @nr_cpu_ids, align 4
  %37 = icmp ult i32 %35, %36
  %38 = icmp slt i32 %35, %18
  %39 = and i1 %38, %37
  br i1 %39, label %40, label %70

40:                                               ; preds = %52, %34
  %41 = phi i32 [ %53, %52 ], [ %36, %34 ]
  %42 = phi i32 [ %54, %52 ], [ %35, %34 ]
  %43 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, ptrtoint (ptr @cpuhp_state to i32)
  %46 = inttoptr i32 %45 to ptr
  %47 = load i32, ptr %46, align 4
  %48 = icmp slt i32 %47, %0
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = tail call fastcc i32 @cpuhp_issue_call(i32 noundef %42, i32 noundef %0, i1 noundef zeroext false, ptr noundef %1) #19
  %51 = load i32, ptr @nr_cpu_ids, align 4
  br label %52

52:                                               ; preds = %49, %40
  %53 = phi i32 [ %41, %40 ], [ %51, %49 ]
  %54 = tail call i32 @cpumask_next(i32 noundef %42, ptr noundef nonnull @__cpu_present_mask) #20
  %55 = icmp ult i32 %54, %53
  %56 = icmp slt i32 %54, %18
  %57 = and i1 %56, %55
  br i1 %57, label %40, label %70

58:                                               ; preds = %28, %16
  %59 = phi i32 [ %29, %28 ], [ %17, %16 ]
  %60 = tail call i32 @cpumask_next(i32 noundef %18, ptr noundef nonnull @__cpu_present_mask) #20
  %61 = icmp ult i32 %60, %59
  br i1 %61, label %16, label %62

62:                                               ; preds = %58, %12, %8, %7
  %63 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %0, i32 3
  %64 = load ptr, ptr %63, align 4
  store volatile ptr %64, ptr %1, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.hlist_node, ptr %64, i32 0, i32 1
  store volatile ptr %1, ptr %67, align 4
  br label %68

68:                                               ; preds = %66, %62
  store volatile ptr %1, ptr %63, align 4
  %69 = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  store volatile ptr %63, ptr %69, align 4
  br label %70

70:                                               ; preds = %68, %52, %34, %30
  %71 = phi i32 [ 0, %68 ], [ %26, %30 ], [ %26, %34 ], [ %26, %52 ]
  tail call void @mutex_unlock(ptr noundef nonnull @cpuhp_state_mutex) #19
  br label %72

72:                                               ; preds = %70, %3
  %73 = phi i32 [ %71, %70 ], [ -22, %3 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpuhp_issue_call(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %1, i32 1
  %6 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %1, i32 2
  %7 = select i1 %2, ptr %5, ptr %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %78, label %10

10:                                               ; preds = %4
  %11 = icmp sgt i32 %1, 91
  %12 = icmp ne i32 %1, 150
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %71

14:                                               ; preds = %10
  %15 = zext i1 %2 to i8
  %16 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, ptrtoint (ptr @cpuhp_state to i32)
  %19 = inttoptr i32 %18 to ptr
  %20 = lshr i32 %0, 5
  %21 = getelementptr i32, ptr @__cpu_online_mask, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %0, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %78, label %27

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %19, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = tail call fastcc i32 @cpuhp_invoke_callback(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef null) #19
  br label %73

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %19, i32 0, i32 5
  store i8 0, ptr %34, align 1
  %35 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %19, i32 0, i32 10
  store ptr null, ptr %35, align 4
  %36 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %19, i32 0, i32 9
  store ptr %3, ptr %36, align 4
  %37 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %19, i32 0, i32 7
  store i8 %15, ptr %37, align 1
  %38 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %19, i32 0, i32 11
  store i32 %1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %19, i32 0, i32 6
  store i8 1, ptr %39, align 2
  %40 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %19, i32 0, i32 12
  store i32 0, ptr %40, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !37
  %41 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %19, i32 0, i32 4
  store i8 1, ptr %41, align 4
  %42 = load ptr, ptr %28, align 4
  %43 = tail call i32 @wake_up_process(ptr noundef %42) #19
  %44 = load i8, ptr %37, align 1, !range !36
  %45 = icmp eq i8 %44, 0
  %46 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %19, i32 0, i32 13
  %47 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %19, i32 0, i32 14
  %48 = select i1 %45, ptr %47, ptr %46
  tail call void @wait_for_completion(ptr noundef %48) #19
  %49 = load i32, ptr %40, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %70, label %51

51:                                               ; preds = %33
  %52 = load ptr, ptr %35, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %70, label %54

54:                                               ; preds = %51
  store i8 1, ptr %34, align 1
  %55 = xor i1 %2, true
  %56 = zext i1 %55 to i8
  store i8 %56, ptr %37, align 1
  %57 = load i8, ptr %39, align 2, !range !36
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, ptr %19, align 4
  %61 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %19, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %59, %54
  store i32 0, ptr %40, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !37
  store i8 1, ptr %41, align 4
  %65 = load ptr, ptr %28, align 4
  %66 = tail call i32 @wake_up_process(ptr noundef %65) #19
  %67 = load i8, ptr %37, align 1, !range !36
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %68, ptr %47, ptr %46
  tail call void @wait_for_completion(ptr noundef %69) #19
  br label %70

70:                                               ; preds = %64, %59, %51, %33
  store ptr null, ptr %35, align 4
  store ptr null, ptr %36, align 4
  br label %73

71:                                               ; preds = %10
  %72 = tail call fastcc i32 @cpuhp_invoke_callback(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef null)
  br label %73

73:                                               ; preds = %71, %70, %31
  %74 = phi i32 [ %72, %71 ], [ %49, %70 ], [ %32, %31 ]
  %75 = icmp eq i32 %74, 0
  %76 = or i1 %75, %2
  br i1 %76, label %78, label %77, !prof !10

77:                                               ; preds = %73
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1921, 0\0A.popsection", ""() #19, !srcloc !38
  unreachable

78:                                               ; preds = %73, %14, %4
  %79 = phi i32 [ 0, %4 ], [ %74, %73 ], [ 0, %14 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__cpuhp_state_add_instance(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !13
  %4 = load volatile i32, ptr @cpu_hotplug_lock, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17, !prof !10

6:                                                ; preds = %3
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !14
  %8 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #13, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #19, !srcloc !15
  br label %19

17:                                               ; preds = %3
  %18 = tail call zeroext i1 @__percpu_down_read(ptr noundef nonnull @cpu_hotplug_lock, i1 noundef zeroext false) #19
  br label %19

19:                                               ; preds = %17, %6
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %20 = tail call i32 @__cpuhp_state_add_instance_cpuslocked(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2)
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !19
  %21 = load volatile i32, ptr @cpu_hotplug_lock, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34, !prof !10

23:                                               ; preds = %19
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !14
  %25 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 1), align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %28 = inttoptr i32 %27 to ptr
  %29 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %28) #13, !srcloc !12
  %30 = add i32 %29, %26
  %31 = inttoptr i32 %30 to ptr
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, -1
  store i32 %33, ptr %31, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %24) #19, !srcloc !15
  br label %46

34:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !20
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !14
  %36 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 1), align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %39 = inttoptr i32 %38 to ptr
  %40 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %39) #13, !srcloc !12
  %41 = add i32 %40, %37
  %42 = inttoptr i32 %41 to ptr
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, -1
  store i32 %44, ptr %42, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #19, !srcloc !15
  %45 = tail call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 2)) #19
  br label %46

46:                                               ; preds = %34, %23
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !21
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__cpuhp_setup_state_cpuslocked(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) #0 {
  %7 = add i32 %0, -1
  %8 = icmp ult i32 %7, 228
  %9 = icmp ne ptr %1, null
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %110

11:                                               ; preds = %6
  tail call void @mutex_lock(ptr noundef nonnull @cpuhp_state_mutex) #19
  %12 = zext i1 %5 to i8
  switch i32 %0, label %32 [
    i32 194, label %14
    i32 70, label %13
  ]

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i32 [ 90, %13 ], [ 224, %11 ]
  %16 = phi ptr [ getelementptr inbounds ([230 x %struct.cpuhp_step], ptr @cpuhp_hp_states, i32 0, i32 70), %13 ], [ getelementptr inbounds ([230 x %struct.cpuhp_step], ptr @cpuhp_hp_states, i32 0, i32 194), %11 ]
  %17 = icmp ult i32 %15, %0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = or i32 %15, 1
  br label %20

20:                                               ; preds = %25, %18
  %21 = phi ptr [ %27, %25 ], [ %16, %18 ]
  %22 = phi i32 [ %26, %25 ], [ %0, %18 ]
  %23 = load ptr, ptr %21, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = add nsw i32 %22, 1
  %27 = getelementptr %struct.cpuhp_step, ptr %21, i32 1
  %28 = icmp eq i32 %26, %19
  br i1 %28, label %29, label %20

29:                                               ; preds = %25, %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1847, i32 noundef 9, ptr noundef nonnull @.str.68) #19
  br label %43

30:                                               ; preds = %20
  %31 = icmp slt i32 %22, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %30, %11
  %33 = phi i32 [ %0, %11 ], [ %22, %30 ]
  %34 = phi i32 [ 0, %11 ], [ %22, %30 ]
  %35 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %33
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %33, i32 1
  store ptr %3, ptr %39, align 4
  %40 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %33, i32 2
  store ptr %4, ptr %40, align 4
  store ptr %1, ptr %35, align 4
  %41 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %33, i32 5
  store i8 %12, ptr %41, align 1
  %42 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %33, i32 3
  store ptr null, ptr %42, align 4
  br label %43

43:                                               ; preds = %38, %32, %30, %29
  %44 = phi i32 [ %34, %38 ], [ %22, %30 ], [ -16, %32 ], [ -28, %29 ]
  %45 = icmp eq i32 %0, 194
  %46 = icmp sgt i32 %44, 0
  %47 = and i1 %45, %46
  %48 = select i1 %47, i32 0, i32 %44
  %49 = select i1 %47, i32 %44, i32 %0
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %51, label %105

51:                                               ; preds = %43
  %52 = icmp ne ptr %3, null
  %53 = and i1 %52, %2
  br i1 %53, label %54, label %105

54:                                               ; preds = %51
  %55 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #20
  %56 = load i32, ptr @nr_cpu_ids, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %105

58:                                               ; preds = %101, %54
  %59 = phi i32 [ %102, %101 ], [ %56, %54 ]
  %60 = phi i32 [ %103, %101 ], [ %55, %54 ]
  %61 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, ptrtoint (ptr @cpuhp_state to i32)
  %64 = inttoptr i32 %63 to ptr
  %65 = load i32, ptr %64, align 4
  %66 = icmp slt i32 %65, %49
  br i1 %66, label %101, label %67

67:                                               ; preds = %58
  %68 = tail call fastcc i32 @cpuhp_issue_call(i32 noundef %60, i32 noundef %49, i1 noundef zeroext true, ptr noundef null)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, ptr @nr_cpu_ids, align 4
  br label %101

72:                                               ; preds = %67
  %73 = icmp eq ptr %4, null
  br i1 %73, label %98, label %74

74:                                               ; preds = %72
  %75 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #20
  %76 = load i32, ptr @nr_cpu_ids, align 4
  %77 = icmp ult i32 %75, %76
  %78 = icmp slt i32 %75, %60
  %79 = and i1 %78, %77
  br i1 %79, label %80, label %98

80:                                               ; preds = %92, %74
  %81 = phi i32 [ %93, %92 ], [ %76, %74 ]
  %82 = phi i32 [ %94, %92 ], [ %75, %74 ]
  %83 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %82
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, ptrtoint (ptr @cpuhp_state to i32)
  %86 = inttoptr i32 %85 to ptr
  %87 = load i32, ptr %86, align 4
  %88 = icmp slt i32 %87, %49
  br i1 %88, label %92, label %89

89:                                               ; preds = %80
  %90 = tail call fastcc i32 @cpuhp_issue_call(i32 noundef %82, i32 noundef %49, i1 noundef zeroext false, ptr noundef null) #19
  %91 = load i32, ptr @nr_cpu_ids, align 4
  br label %92

92:                                               ; preds = %89, %80
  %93 = phi i32 [ %81, %80 ], [ %91, %89 ]
  %94 = tail call i32 @cpumask_next(i32 noundef %82, ptr noundef nonnull @__cpu_present_mask) #20
  %95 = icmp ult i32 %94, %93
  %96 = icmp slt i32 %94, %60
  %97 = and i1 %96, %95
  br i1 %97, label %80, label %98

98:                                               ; preds = %92, %74, %72
  %99 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %49
  %100 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %49, i32 5
  store i8 0, ptr %100, align 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %99, i8 0, i64 16, i1 false)
  br label %105

101:                                              ; preds = %70, %58
  %102 = phi i32 [ %71, %70 ], [ %59, %58 ]
  %103 = tail call i32 @cpumask_next(i32 noundef %60, ptr noundef nonnull @__cpu_present_mask) #20
  %104 = icmp ult i32 %103, %102
  br i1 %104, label %58, label %105

105:                                              ; preds = %101, %98, %54, %51, %43
  %106 = phi i32 [ %48, %43 ], [ 0, %51 ], [ %68, %98 ], [ 0, %54 ], [ 0, %101 ]
  tail call void @mutex_unlock(ptr noundef nonnull @cpuhp_state_mutex) #19
  %107 = icmp eq i32 %106, 0
  %108 = and i1 %45, %107
  %109 = select i1 %108, i32 %49, i32 %106
  br label %110

110:                                              ; preds = %105, %6
  %111 = phi i32 [ -22, %6 ], [ %109, %105 ]
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__cpuhp_setup_state(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) #0 {
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !13
  %7 = load volatile i32, ptr @cpu_hotplug_lock, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20, !prof !10

9:                                                ; preds = %6
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !14
  %11 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 1), align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #13, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #19, !srcloc !15
  br label %22

20:                                               ; preds = %6
  %21 = tail call zeroext i1 @__percpu_down_read(ptr noundef nonnull @cpu_hotplug_lock, i1 noundef zeroext false) #19
  br label %22

22:                                               ; preds = %20, %9
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %23 = tail call i32 @__cpuhp_setup_state_cpuslocked(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5)
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !19
  %24 = load volatile i32, ptr @cpu_hotplug_lock, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37, !prof !10

26:                                               ; preds = %22
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !14
  %28 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 1), align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %31 = inttoptr i32 %30 to ptr
  %32 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %31) #13, !srcloc !12
  %33 = add i32 %32, %29
  %34 = inttoptr i32 %33 to ptr
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr %34, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #19, !srcloc !15
  br label %49

37:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !20
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !14
  %39 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 1), align 4
  %40 = ptrtoint ptr %39 to i32
  %41 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %42 = inttoptr i32 %41 to ptr
  %43 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %42) #13, !srcloc !12
  %44 = add i32 %43, %40
  %45 = inttoptr i32 %44 to ptr
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, -1
  store i32 %47, ptr %45, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %38) #19, !srcloc !15
  %48 = tail call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 2)) #19
  br label %49

49:                                               ; preds = %37, %26
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !21
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__cpuhp_state_remove_instance(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = add i32 %0, -1
  %5 = icmp ult i32 %4, 228
  br i1 %5, label %7, label %6, !prof !10

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2105, 0\0A.popsection", ""() #19, !srcloc !39
  unreachable

7:                                                ; preds = %3
  %8 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %0, i32 5
  %9 = load i8, ptr %8, align 1, !range !36
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %86, label %11

11:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !13
  %12 = load volatile i32, ptr @cpu_hotplug_lock, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %25, !prof !10

14:                                               ; preds = %11
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !14
  %16 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 1), align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #13, !srcloc !12
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #19, !srcloc !15
  br label %27

25:                                               ; preds = %11
  %26 = tail call zeroext i1 @__percpu_down_read(ptr noundef nonnull @cpu_hotplug_lock, i1 noundef zeroext false) #19
  br label %27

27:                                               ; preds = %25, %14
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  tail call void @mutex_lock(ptr noundef nonnull @cpuhp_state_mutex) #19
  br i1 %2, label %28, label %52

28:                                               ; preds = %27
  %29 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %52, label %32

32:                                               ; preds = %28
  %33 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #20
  %34 = load i32, ptr @nr_cpu_ids, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %48, %32
  %37 = phi i32 [ %49, %48 ], [ %34, %32 ]
  %38 = phi i32 [ %50, %48 ], [ %33, %32 ]
  %39 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, ptrtoint (ptr @cpuhp_state to i32)
  %42 = inttoptr i32 %41 to ptr
  %43 = load i32, ptr %42, align 4
  %44 = icmp slt i32 %43, %0
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = tail call fastcc i32 @cpuhp_issue_call(i32 noundef %38, i32 noundef %0, i1 noundef zeroext false, ptr noundef %1)
  %47 = load i32, ptr @nr_cpu_ids, align 4
  br label %48

48:                                               ; preds = %45, %36
  %49 = phi i32 [ %47, %45 ], [ %37, %36 ]
  %50 = tail call i32 @cpumask_next(i32 noundef %38, ptr noundef nonnull @__cpu_present_mask) #20
  %51 = icmp ult i32 %50, %49
  br i1 %51, label %36, label %52

52:                                               ; preds = %48, %32, %28, %27
  %53 = load ptr, ptr %1, align 4
  %54 = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  store volatile ptr %53, ptr %55, align 4
  %56 = icmp eq ptr %53, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.hlist_node, ptr %53, i32 0, i32 1
  store volatile ptr %55, ptr %58, align 4
  br label %59

59:                                               ; preds = %57, %52
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %54, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @cpuhp_state_mutex) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !19
  %60 = load volatile i32, ptr @cpu_hotplug_lock, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %73, !prof !10

62:                                               ; preds = %59
  %63 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !14
  %64 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 1), align 4
  %65 = ptrtoint ptr %64 to i32
  %66 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %67 = inttoptr i32 %66 to ptr
  %68 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %67) #13, !srcloc !12
  %69 = add i32 %68, %65
  %70 = inttoptr i32 %69 to ptr
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, -1
  store i32 %72, ptr %70, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %63) #19, !srcloc !15
  br label %85

73:                                               ; preds = %59
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !20
  %74 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !14
  %75 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 1), align 4
  %76 = ptrtoint ptr %75 to i32
  %77 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %78 = inttoptr i32 %77 to ptr
  %79 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %78) #13, !srcloc !12
  %80 = add i32 %79, %76
  %81 = inttoptr i32 %80 to ptr
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, -1
  store i32 %83, ptr %81, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %74) #19, !srcloc !15
  %84 = tail call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 2)) #19
  br label %85

85:                                               ; preds = %73, %62
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !21
  br label %86

86:                                               ; preds = %85, %7
  %87 = phi i32 [ 0, %85 ], [ -22, %7 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__cpuhp_remove_state_cpuslocked(i32 noundef %0, i1 noundef zeroext %1) #0 {
  %3 = add i32 %0, -1
  %4 = icmp ult i32 %3, 228
  br i1 %4, label %6, label %5, !prof !10

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2152, 0\0A.popsection", ""() #19, !srcloc !40
  unreachable

6:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @cpuhp_state_mutex) #19
  %7 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %0, i32 5
  %8 = load i8, ptr %7, align 1, !range !36
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %0, i32 3
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %40, label %14, !prof !10

14:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2160, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %0) #19
  br label %40

15:                                               ; preds = %6
  br i1 %1, label %16, label %40

16:                                               ; preds = %15
  %17 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #20
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %36, %20
  %25 = phi i32 [ %37, %36 ], [ %22, %20 ]
  %26 = phi i32 [ %38, %36 ], [ %21, %20 ]
  %27 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, ptrtoint (ptr @cpuhp_state to i32)
  %30 = inttoptr i32 %29 to ptr
  %31 = load i32, ptr %30, align 4
  %32 = icmp slt i32 %31, %0
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = tail call fastcc i32 @cpuhp_issue_call(i32 noundef %26, i32 noundef %0, i1 noundef zeroext false, ptr noundef null)
  %35 = load i32, ptr @nr_cpu_ids, align 4
  br label %36

36:                                               ; preds = %33, %24
  %37 = phi i32 [ %35, %33 ], [ %25, %24 ]
  %38 = tail call i32 @cpumask_next(i32 noundef %26, ptr noundef nonnull @__cpu_present_mask) #20
  %39 = icmp ult i32 %38, %37
  br i1 %39, label %24, label %40

40:                                               ; preds = %36, %20, %16, %15, %14, %10
  %41 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %0
  store i8 0, ptr %7, align 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  tail call void @mutex_unlock(ptr noundef nonnull @cpuhp_state_mutex) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__cpuhp_remove_state(i32 noundef %0, i1 noundef zeroext %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !13
  %3 = load volatile i32, ptr @cpu_hotplug_lock, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %16, !prof !10

5:                                                ; preds = %2
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !14
  %7 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 1), align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #13, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #19, !srcloc !15
  br label %18

16:                                               ; preds = %2
  %17 = tail call zeroext i1 @__percpu_down_read(ptr noundef nonnull @cpu_hotplug_lock, i1 noundef zeroext false) #19
  br label %18

18:                                               ; preds = %16, %5
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  tail call void @__cpuhp_remove_state_cpuslocked(i32 noundef %0, i1 noundef zeroext %1)
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !19
  %19 = load volatile i32, ptr @cpu_hotplug_lock, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %32, !prof !10

21:                                               ; preds = %18
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !14
  %23 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 1), align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %26 = inttoptr i32 %25 to ptr
  %27 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %26) #13, !srcloc !12
  %28 = add i32 %27, %24
  %29 = inttoptr i32 %28 to ptr
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, -1
  store i32 %31, ptr %29, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #19, !srcloc !15
  br label %44

32:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !20
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !14
  %34 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 1), align 4
  %35 = ptrtoint ptr %34 to i32
  %36 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %37 = inttoptr i32 %36 to ptr
  %38 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %37) #13, !srcloc !12
  %39 = add i32 %38, %35
  %40 = inttoptr i32 %39 to ptr
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, -1
  store i32 %42, ptr %40, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %33) #19, !srcloc !15
  %43 = tail call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cpu_hotplug_lock, i32 0, i32 2)) #19
  br label %44

44:                                               ; preds = %32, %21
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !21
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cpuhp_sysfs_init() #4 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds (%struct.bus_type, ptr @cpu_subsys, i32 0, i32 2), align 4
  %2 = tail call i32 @sysfs_create_group(ptr noundef %1, ptr noundef nonnull @cpuhp_smt_attr_group) #19
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %23

4:                                                ; preds = %0
  %5 = load ptr, ptr getelementptr inbounds (%struct.bus_type, ptr @cpu_subsys, i32 0, i32 2), align 4
  %6 = tail call i32 @sysfs_create_group(ptr noundef %5, ptr noundef nonnull @cpuhp_cpu_root_attr_group) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %19, %8
  %13 = phi i32 [ %20, %19 ], [ %9, %8 ]
  %14 = tail call ptr @get_cpu_device(i32 noundef %13) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @sysfs_create_group(ptr noundef nonnull %14, ptr noundef nonnull @cpuhp_cpu_attr_group) #19
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16, %12
  %20 = tail call i32 @cpumask_next(i32 noundef %13, ptr noundef nonnull @__cpu_possible_mask) #20
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %12, label %23

23:                                               ; preds = %19, %16, %8, %4, %0
  %24 = phi i32 [ %2, %0 ], [ %6, %4 ], [ 0, %8 ], [ 0, %19 ], [ %17, %16 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @init_cpu_present(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load i32, ptr %0, align 4
  store i32 %2, ptr @__cpu_present_mask, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @init_cpu_possible(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load i32, ptr %0, align 4
  store i32 %2, ptr @__cpu_possible_mask, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @init_cpu_online(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load i32, ptr %0, align 4
  store i32 %2, ptr @__cpu_online_mask, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_cpu_online(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  br i1 %1, label %3, label %8

3:                                                ; preds = %2
  %4 = tail call i32 @_test_and_set_bit(i32 noundef %0, ptr noundef nonnull @__cpu_online_mask) #19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @__num_online_cpus) #19, !srcloc !41
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @__num_online_cpus, ptr nonnull @__num_online_cpus, i32 1, ptr nonnull elementtype(i32) @__num_online_cpus) #19, !srcloc !42
  br label %13

8:                                                ; preds = %2
  %9 = tail call i32 @_test_and_clear_bit(i32 noundef %0, ptr noundef nonnull @__cpu_online_mask) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @__num_online_cpus) #19, !srcloc !41
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @__num_online_cpus, ptr nonnull @__num_online_cpus, i32 1, ptr nonnull elementtype(i32) @__num_online_cpus) #19, !srcloc !43
  br label %13

13:                                               ; preds = %11, %8, %6, %3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @boot_cpu_init() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call ptr @llvm.thread.pointer() #19
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = tail call i32 @_test_and_set_bit(i32 noundef %3, ptr noundef nonnull @__cpu_online_mask) #19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @__num_online_cpus) #19, !srcloc !41
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @__num_online_cpus, ptr nonnull @__num_online_cpus, i32 1, ptr nonnull elementtype(i32) @__num_online_cpus) #19, !srcloc !42
  br label %8

8:                                                ; preds = %6, %0
  tail call void @_set_bit(i32 noundef %3, ptr noundef nonnull @__cpu_active_mask) #19
  tail call void @_set_bit(i32 noundef %3, ptr noundef nonnull @__cpu_present_mask) #19
  tail call void @_set_bit(i32 noundef %3, ptr noundef nonnull @__cpu_possible_mask) #19
  store i32 %3, ptr @__boot_cpu_id, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @boot_cpu_hotplug_init() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call ptr @llvm.thread.pointer() #19
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  tail call void @_set_bit(i32 noundef %3, ptr noundef nonnull @cpus_booted_once_mask) #19
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !14
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %6) #13, !srcloc !12
  %8 = add i32 %7, ptrtoint (ptr @cpuhp_state to i32)
  %9 = inttoptr i32 %8 to ptr
  store i32 229, ptr %9, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #19, !srcloc !15
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mitigations_parse_cmdline(ptr noundef %0) #4 section ".init.text" {
  %2 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(4) @.str.73)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i32 0, ptr @cpu_mitigations, align 4
  br label %15

5:                                                ; preds = %1
  %6 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(5) @.str.83)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i32 1, ptr @cpu_mitigations, align 4
  br label %15

9:                                                ; preds = %5
  %10 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(11) @.str.84)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 2, ptr @cpu_mitigations, align 4
  br label %15

13:                                               ; preds = %9
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %0) #21
  br label %15

15:                                               ; preds = %13, %12, %8, %4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cpu_mitigations_off() #10 {
  %1 = load i32, ptr @cpu_mitigations, align 4
  %2 = icmp eq i32 %1, 0
  ret i1 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cpu_mitigations_auto_nosmt() #10 {
  %1 = load i32, ptr @cpu_mitigations, align 4
  %2 = icmp eq i32 %1, 2
  ret i1 %2
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cpuhp_enter(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #19
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_cpuhp_enter, ptr %5, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %11, i32 noundef %13, i32 noundef %15, ptr noundef %17) #19
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #19
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
define internal i32 @trace_raw_output_cpuhp_multi_enter(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #19
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_cpuhp_multi_enter, ptr %5, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %11, i32 noundef %13, i32 noundef %15, ptr noundef %17) #19
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #19
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cpuhp_exit(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #19
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_cpuhp_exit, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #19
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #19
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #12

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @cpuhp_should_run(i32 noundef %0) #14 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #13, !srcloc !12
  %5 = add i32 %4, ptrtoint (ptr @cpuhp_state to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 4
  %8 = load i8, ptr %7, align 4, !range !36
  %9 = zext i8 %8 to i32
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpuhp_thread_fun(i32 noundef %0) #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #13, !srcloc !12
  %5 = add i32 %4, ptrtoint (ptr @cpuhp_state to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 7
  %8 = load i8, ptr %7, align 1, !range !36
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 4
  %11 = load i8, ptr %10, align 4, !range !36
  %12 = icmp eq i8 %11, 0
  %13 = load i1, ptr @cpuhp_thread_fun.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !11

16:                                               ; preds = %1
  store i1 true, ptr @cpuhp_thread_fun.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 753, i32 noundef 9, ptr noundef null) #19
  br label %17

17:                                               ; preds = %16, %1
  br i1 %12, label %97, label %18

18:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !44
  %19 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 6
  %20 = load i8, ptr %19, align 2, !range !36
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  br label %47

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %6, align 4
  br label %29

29:                                               ; preds = %39, %25
  %30 = phi i32 [ %40, %39 ], [ %28, %25 ]
  br i1 %9, label %31, label %35

31:                                               ; preds = %29
  %32 = icmp slt i32 %30, %27
  br i1 %32, label %33, label %92

33:                                               ; preds = %31
  %34 = add nsw i32 %30, 1
  br label %39

35:                                               ; preds = %29
  %36 = icmp sgt i32 %30, %27
  br i1 %36, label %37, label %92

37:                                               ; preds = %35
  %38 = add nsw i32 %30, -1
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i32 [ %38, %37 ], [ %34, %33 ]
  %41 = phi i32 [ %30, %37 ], [ %34, %33 ]
  store i32 %40, ptr %6, align 4
  %42 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %41, i32 1
  %43 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %41, i32 2
  %44 = select i1 %9, ptr %42, ptr %43
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %29, label %47

47:                                               ; preds = %39, %22
  %48 = phi i8 [ 0, %22 ], [ 1, %39 ]
  %49 = phi i32 [ %24, %22 ], [ %41, %39 ]
  store i8 %48, ptr %10, align 4
  %50 = icmp sgt i32 %49, 91
  %51 = icmp ne i32 %49, 150
  %52 = and i1 %50, %51
  %53 = load i1, ptr @cpuhp_thread_fun.__already_done.29, align 1
  %54 = select i1 %52, i1 true, i1 %53
  br i1 %54, label %56, label %55, !prof !10

55:                                               ; preds = %47
  store i1 true, ptr @cpuhp_thread_fun.__already_done.29, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 779, i32 noundef 9, ptr noundef null) #19
  br label %56

56:                                               ; preds = %55, %47
  %57 = add i32 %49, -92
  %58 = icmp ult i32 %57, 57
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #19, !srcloc !45
  %60 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 9
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 10
  %63 = tail call fastcc i32 @cpuhp_invoke_callback(i32 noundef %0, i32 noundef %49, i1 noundef zeroext %9, ptr noundef %61, ptr noundef %62)
  %64 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 12
  store i32 %63, ptr %64, align 4
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #19, !srcloc !46
  %65 = load i32, ptr %64, align 4
  %66 = icmp ne i32 %65, 0
  %67 = load i1, ptr @cpuhp_thread_fun.__already_done.30, align 1
  %68 = xor i1 %67, true
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %70, label %78, !prof !11

70:                                               ; preds = %59
  store i1 true, ptr @cpuhp_thread_fun.__already_done.30, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 789, i32 noundef 9, ptr noundef null) #19
  %71 = load i32, ptr %64, align 4
  br label %78

72:                                               ; preds = %56
  %73 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 9
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 10
  %76 = tail call fastcc i32 @cpuhp_invoke_callback(i32 noundef %0, i32 noundef %49, i1 noundef zeroext %9, ptr noundef %74, ptr noundef %75)
  %77 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 12
  store i32 %76, ptr %77, align 4
  br label %78

78:                                               ; preds = %72, %70, %59
  %79 = phi i32 [ %65, %59 ], [ %71, %70 ], [ %76, %72 ]
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 5
  %83 = load i8, ptr %82, align 1, !range !36
  %84 = icmp ne i8 %83, 0
  %85 = load i1, ptr @cpuhp_thread_fun.__already_done.31, align 1
  %86 = xor i1 %85, true
  %87 = select i1 %84, i1 %86, i1 false
  br i1 %87, label %88, label %92, !prof !11

88:                                               ; preds = %81
  store i1 true, ptr @cpuhp_thread_fun.__already_done.31, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 800, i32 noundef 9, ptr noundef null) #19
  br label %92

89:                                               ; preds = %78
  %90 = load i8, ptr %10, align 4
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %93, label %97

92:                                               ; preds = %88, %81, %35, %31
  store i8 0, ptr %10, align 4
  br label %93

93:                                               ; preds = %92, %89
  %94 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 13
  %95 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 14
  %96 = select i1 %9, ptr %94, ptr %95
  tail call void @complete(ptr noundef %96) #19
  br label %97

97:                                               ; preds = %93, %89, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpuhp_create(i32 noundef %0) #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @cpuhp_state to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %5, i32 0, i32 13
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %5, i32 0, i32 13, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %7, ptr noundef nonnull @.str.36, ptr noundef nonnull @init_completion.__key) #19
  %8 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %5, i32 0, i32 14
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %5, i32 0, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %9, ptr noundef nonnull @.str.36, ptr noundef nonnull @init_completion.__key) #19
  %10 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %5, i32 0, i32 8
  store i32 %0, ptr %10, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpuhp_invoke_callback(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @cpuhp_state to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  store i32 -1, ptr %10, align 4
  br label %318

14:                                               ; preds = %5
  %15 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %1, i32 1
  %16 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %1, i32 2
  %17 = select i1 %2, ptr %15, ptr %16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i1, ptr @cpuhp_invoke_callback.__already_done, align 1
  br i1 %21, label %318, label %22, !prof !10

22:                                               ; preds = %20
  store i1 true, ptr @cpuhp_invoke_callback.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 182, i32 noundef 9, ptr noundef null) #19
  br label %318

23:                                               ; preds = %14
  %24 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %1, i32 5
  %25 = load i8, ptr %24, align 1, !range !36
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %94

27:                                               ; preds = %23
  %28 = icmp eq ptr %4, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr %4, align 4
  %31 = icmp ne ptr %30, null
  %32 = load i1, ptr @cpuhp_invoke_callback.__already_done.32, align 1
  %33 = xor i1 %32, true
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %37, !prof !11

35:                                               ; preds = %29
  store i1 true, ptr @cpuhp_invoke_callback.__already_done.32, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 187, i32 noundef 9, ptr noundef null) #19
  %36 = load ptr, ptr %17, align 4
  br label %37

37:                                               ; preds = %35, %29, %27
  %38 = phi ptr [ %18, %27 ], [ %36, %35 ], [ %18, %29 ]
  %39 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %9, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpuhp_enter, i32 0, i32 1), align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %37
  %44 = tail call ptr @llvm.thread.pointer() #19
  %45 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = lshr i32 %46, 5
  %48 = getelementptr i32, ptr @__cpu_online_mask, i32 %47
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %46, 31
  %51 = shl nuw i32 1, %50
  %52 = and i32 %51, %49
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %43
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !47
  %55 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpuhp_enter, i32 0, i32 7), align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %57, %54
  %58 = phi ptr [ %62, %57 ], [ %55, %54 ]
  %59 = load volatile ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.tracepoint_func, ptr %58, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  tail call void %59(ptr noundef %61, i32 noundef %0, i32 noundef %40, i32 noundef %1, ptr noundef %38) #19
  %62 = getelementptr %struct.tracepoint_func, ptr %58, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %57

65:                                               ; preds = %57, %54
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !48
  br label %66

66:                                               ; preds = %65, %43, %37
  %67 = tail call i32 %38(i32 noundef %0) #19
  %68 = load i32, ptr %9, align 4
  %69 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpuhp_exit, i32 0, i32 1), align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %318

71:                                               ; preds = %66
  %72 = tail call ptr @llvm.thread.pointer() #19
  %73 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = lshr i32 %74, 5
  %76 = getelementptr i32, ptr @__cpu_online_mask, i32 %75
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %74, 31
  %79 = shl nuw i32 1, %78
  %80 = and i32 %79, %77
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %318, label %82

82:                                               ; preds = %71
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !49
  %83 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpuhp_exit, i32 0, i32 7), align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %85, %82
  %86 = phi ptr [ %90, %85 ], [ %83, %82 ]
  %87 = load volatile ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.tracepoint_func, ptr %86, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  tail call void %87(ptr noundef %89, i32 noundef %0, i32 noundef %68, i32 noundef %1, i32 noundef %67) #19
  %90 = getelementptr %struct.tracepoint_func, ptr %86, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %85

93:                                               ; preds = %85, %82
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !50
  br label %318

94:                                               ; preds = %23
  %95 = icmp eq ptr %3, null
  br i1 %95, label %161, label %96

96:                                               ; preds = %94
  %97 = icmp eq ptr %4, null
  br i1 %97, label %105, label %98

98:                                               ; preds = %96
  %99 = load ptr, ptr %4, align 4
  %100 = icmp ne ptr %99, null
  %101 = load i1, ptr @cpuhp_invoke_callback.__already_done.33, align 1
  %102 = xor i1 %101, true
  %103 = select i1 %100, i1 %102, i1 false
  br i1 %103, label %104, label %105, !prof !11

104:                                              ; preds = %98
  store i1 true, ptr @cpuhp_invoke_callback.__already_done.33, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 199, i32 noundef 9, ptr noundef null) #19
  br label %105

105:                                              ; preds = %104, %98, %96
  %106 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %9, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpuhp_multi_enter, i32 0, i32 1), align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %133

110:                                              ; preds = %105
  %111 = tail call ptr @llvm.thread.pointer() #19
  %112 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 2
  %113 = load i32, ptr %112, align 8
  %114 = lshr i32 %113, 5
  %115 = getelementptr i32, ptr @__cpu_online_mask, i32 %114
  %116 = load volatile i32, ptr %115, align 4
  %117 = and i32 %113, 31
  %118 = shl nuw i32 1, %117
  %119 = and i32 %118, %116
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %133, label %121

121:                                              ; preds = %110
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !51
  %122 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpuhp_multi_enter, i32 0, i32 7), align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %132, label %124

124:                                              ; preds = %124, %121
  %125 = phi ptr [ %129, %124 ], [ %122, %121 ]
  %126 = load volatile ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.tracepoint_func, ptr %125, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  tail call void %126(ptr noundef %128, i32 noundef %0, i32 noundef %107, i32 noundef %1, ptr noundef nonnull %18, ptr noundef nonnull %3) #19
  %129 = getelementptr %struct.tracepoint_func, ptr %125, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %124

132:                                              ; preds = %124, %121
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !52
  br label %133

133:                                              ; preds = %132, %110, %105
  %134 = tail call i32 %18(i32 noundef %0, ptr noundef nonnull %3) #19
  %135 = load i32, ptr %9, align 4
  %136 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpuhp_exit, i32 0, i32 1), align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %318

138:                                              ; preds = %133
  %139 = tail call ptr @llvm.thread.pointer() #19
  %140 = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 2
  %141 = load i32, ptr %140, align 8
  %142 = lshr i32 %141, 5
  %143 = getelementptr i32, ptr @__cpu_online_mask, i32 %142
  %144 = load volatile i32, ptr %143, align 4
  %145 = and i32 %141, 31
  %146 = shl nuw i32 1, %145
  %147 = and i32 %146, %144
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %318, label %149

149:                                              ; preds = %138
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !49
  %150 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpuhp_exit, i32 0, i32 7), align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %160, label %152

152:                                              ; preds = %152, %149
  %153 = phi ptr [ %157, %152 ], [ %150, %149 ]
  %154 = load volatile ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.tracepoint_func, ptr %153, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  tail call void %154(ptr noundef %156, i32 noundef %0, i32 noundef %135, i32 noundef %1, i32 noundef %134) #19
  %157 = getelementptr %struct.tracepoint_func, ptr %153, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %152

160:                                              ; preds = %152, %149
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !50
  br label %318

161:                                              ; preds = %94
  %162 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %1, i32 3
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %237, label %165

165:                                              ; preds = %161
  %166 = icmp eq ptr %4, null
  %167 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %9, i32 0, i32 1
  br label %168

168:                                              ; preds = %233, %165
  %169 = phi ptr [ %163, %165 ], [ %235, %233 ]
  %170 = phi i32 [ 0, %165 ], [ %234, %233 ]
  br i1 %166, label %174, label %171

171:                                              ; preds = %168
  %172 = load ptr, ptr %4, align 4
  %173 = icmp eq ptr %169, %172
  br i1 %173, label %239, label %174

174:                                              ; preds = %171, %168
  %175 = load i32, ptr %167, align 4
  %176 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpuhp_multi_enter, i32 0, i32 1), align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %201

178:                                              ; preds = %174
  %179 = tail call ptr @llvm.thread.pointer() #19
  %180 = getelementptr inbounds %struct.thread_info, ptr %179, i32 0, i32 2
  %181 = load i32, ptr %180, align 8
  %182 = lshr i32 %181, 5
  %183 = getelementptr i32, ptr @__cpu_online_mask, i32 %182
  %184 = load volatile i32, ptr %183, align 4
  %185 = and i32 %181, 31
  %186 = shl nuw i32 1, %185
  %187 = and i32 %186, %184
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %201, label %189

189:                                              ; preds = %178
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !51
  %190 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpuhp_multi_enter, i32 0, i32 7), align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %200, label %192

192:                                              ; preds = %192, %189
  %193 = phi ptr [ %197, %192 ], [ %190, %189 ]
  %194 = load volatile ptr, ptr %193, align 4
  %195 = getelementptr inbounds %struct.tracepoint_func, ptr %193, i32 0, i32 1
  %196 = load ptr, ptr %195, align 4
  tail call void %194(ptr noundef %196, i32 noundef %0, i32 noundef %175, i32 noundef %1, ptr noundef nonnull %18, ptr noundef nonnull %169) #19
  %197 = getelementptr %struct.tracepoint_func, ptr %193, i32 1
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %192

200:                                              ; preds = %192, %189
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !52
  br label %201

201:                                              ; preds = %200, %178, %174
  %202 = tail call i32 %18(i32 noundef %0, ptr noundef nonnull %169) #19
  %203 = load i32, ptr %9, align 4
  %204 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpuhp_exit, i32 0, i32 1), align 4
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %229

206:                                              ; preds = %201
  %207 = tail call ptr @llvm.thread.pointer() #19
  %208 = getelementptr inbounds %struct.thread_info, ptr %207, i32 0, i32 2
  %209 = load i32, ptr %208, align 8
  %210 = lshr i32 %209, 5
  %211 = getelementptr i32, ptr @__cpu_online_mask, i32 %210
  %212 = load volatile i32, ptr %211, align 4
  %213 = and i32 %209, 31
  %214 = shl nuw i32 1, %213
  %215 = and i32 %214, %212
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %229, label %217

217:                                              ; preds = %206
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !49
  %218 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpuhp_exit, i32 0, i32 7), align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %228, label %220

220:                                              ; preds = %220, %217
  %221 = phi ptr [ %225, %220 ], [ %218, %217 ]
  %222 = load volatile ptr, ptr %221, align 4
  %223 = getelementptr inbounds %struct.tracepoint_func, ptr %221, i32 0, i32 1
  %224 = load ptr, ptr %223, align 4
  tail call void %222(ptr noundef %224, i32 noundef %0, i32 noundef %203, i32 noundef %1, i32 noundef %202) #19
  %225 = getelementptr %struct.tracepoint_func, ptr %221, i32 1
  %226 = load ptr, ptr %225, align 4
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %220

228:                                              ; preds = %220, %217
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !50
  br label %229

229:                                              ; preds = %228, %206, %201
  %230 = icmp eq i32 %202, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %229
  br i1 %166, label %240, label %232

232:                                              ; preds = %231
  store ptr %169, ptr %4, align 4
  br label %318

233:                                              ; preds = %229
  %234 = add i32 %170, 1
  %235 = load ptr, ptr %169, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %168

237:                                              ; preds = %233, %161
  %238 = icmp eq ptr %4, null
  br i1 %238, label %318, label %239

239:                                              ; preds = %237, %171
  store ptr null, ptr %4, align 4
  br label %318

240:                                              ; preds = %231
  %241 = select i1 %2, ptr %16, ptr %15
  %242 = load ptr, ptr %241, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %318, label %244

244:                                              ; preds = %240
  %245 = load ptr, ptr %162, align 4
  %246 = icmp eq ptr %245, null
  %247 = icmp eq i32 %170, 0
  %248 = select i1 %246, i1 true, i1 %247
  br i1 %248, label %318, label %249

249:                                              ; preds = %313, %244
  %250 = phi i32 [ %252, %313 ], [ %170, %244 ]
  %251 = phi ptr [ %314, %313 ], [ %245, %244 ]
  %252 = add i32 %250, -1
  %253 = load i32, ptr %167, align 4
  %254 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpuhp_multi_enter, i32 0, i32 1), align 4
  %255 = icmp sgt i32 %254, 0
  br i1 %255, label %256, label %279

256:                                              ; preds = %249
  %257 = tail call ptr @llvm.thread.pointer() #19
  %258 = getelementptr inbounds %struct.thread_info, ptr %257, i32 0, i32 2
  %259 = load i32, ptr %258, align 8
  %260 = lshr i32 %259, 5
  %261 = getelementptr i32, ptr @__cpu_online_mask, i32 %260
  %262 = load volatile i32, ptr %261, align 4
  %263 = and i32 %259, 31
  %264 = shl nuw i32 1, %263
  %265 = and i32 %264, %262
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %279, label %267

267:                                              ; preds = %256
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !51
  %268 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpuhp_multi_enter, i32 0, i32 7), align 4
  %269 = icmp eq ptr %268, null
  br i1 %269, label %278, label %270

270:                                              ; preds = %270, %267
  %271 = phi ptr [ %275, %270 ], [ %268, %267 ]
  %272 = load volatile ptr, ptr %271, align 4
  %273 = getelementptr inbounds %struct.tracepoint_func, ptr %271, i32 0, i32 1
  %274 = load ptr, ptr %273, align 4
  tail call void %272(ptr noundef %274, i32 noundef %0, i32 noundef %253, i32 noundef %1, ptr noundef nonnull %242, ptr noundef nonnull %251) #19
  %275 = getelementptr %struct.tracepoint_func, ptr %271, i32 1
  %276 = load ptr, ptr %275, align 4
  %277 = icmp eq ptr %276, null
  br i1 %277, label %278, label %270

278:                                              ; preds = %270, %267
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !52
  br label %279

279:                                              ; preds = %278, %256, %249
  %280 = tail call i32 %242(i32 noundef %0, ptr noundef nonnull %251) #19
  %281 = load i32, ptr %9, align 4
  %282 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpuhp_exit, i32 0, i32 1), align 4
  %283 = icmp sgt i32 %282, 0
  br i1 %283, label %284, label %307

284:                                              ; preds = %279
  %285 = tail call ptr @llvm.thread.pointer() #19
  %286 = getelementptr inbounds %struct.thread_info, ptr %285, i32 0, i32 2
  %287 = load i32, ptr %286, align 8
  %288 = lshr i32 %287, 5
  %289 = getelementptr i32, ptr @__cpu_online_mask, i32 %288
  %290 = load volatile i32, ptr %289, align 4
  %291 = and i32 %287, 31
  %292 = shl nuw i32 1, %291
  %293 = and i32 %292, %290
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %307, label %295

295:                                              ; preds = %284
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !49
  %296 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpuhp_exit, i32 0, i32 7), align 4
  %297 = icmp eq ptr %296, null
  br i1 %297, label %306, label %298

298:                                              ; preds = %298, %295
  %299 = phi ptr [ %303, %298 ], [ %296, %295 ]
  %300 = load volatile ptr, ptr %299, align 4
  %301 = getelementptr inbounds %struct.tracepoint_func, ptr %299, i32 0, i32 1
  %302 = load ptr, ptr %301, align 4
  tail call void %300(ptr noundef %302, i32 noundef %0, i32 noundef %281, i32 noundef %1, i32 noundef %280) #19
  %303 = getelementptr %struct.tracepoint_func, ptr %299, i32 1
  %304 = load ptr, ptr %303, align 4
  %305 = icmp eq ptr %304, null
  br i1 %305, label %306, label %298

306:                                              ; preds = %298, %295
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !50
  br label %307

307:                                              ; preds = %306, %284, %279
  %308 = icmp ne i32 %280, 0
  %309 = load i1, ptr @cpuhp_invoke_callback.__already_done.34, align 1
  %310 = xor i1 %309, true
  %311 = select i1 %308, i1 %310, i1 false
  br i1 %311, label %312, label %313, !prof !11

312:                                              ; preds = %307
  store i1 true, ptr @cpuhp_invoke_callback.__already_done.34, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef null) #19
  br label %313

313:                                              ; preds = %312, %307
  %314 = load ptr, ptr %251, align 4
  %315 = icmp eq ptr %314, null
  %316 = icmp eq i32 %252, 0
  %317 = select i1 %315, i1 true, i1 %316
  br i1 %317, label %318, label %249

318:                                              ; preds = %313, %244, %240, %239, %237, %232, %160, %138, %133, %93, %71, %66, %22, %20, %13
  %319 = phi i32 [ -11, %13 ], [ %202, %232 ], [ 0, %22 ], [ 0, %20 ], [ 0, %239 ], [ 0, %237 ], [ %202, %240 ], [ %67, %66 ], [ %67, %71 ], [ %67, %93 ], [ %134, %133 ], [ %134, %138 ], [ %134, %160 ], [ %202, %244 ], [ %280, %313 ]
  ret i32 %319
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @housekeeping_test_cpu(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_suspend_resume(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpuhp_kick_ap_work(i32 noundef %0) #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @cpuhp_state to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %5, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpuhp_enter, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  %12 = tail call ptr @llvm.thread.pointer() #19
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !47
  %23 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpuhp_enter, i32 0, i32 7), align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %25, %22
  %26 = phi ptr [ %30, %25 ], [ %23, %22 ]
  %27 = load volatile ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.tracepoint_func, ptr %26, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  tail call void %27(ptr noundef %29, i32 noundef %0, i32 noundef %8, i32 noundef %6, ptr noundef nonnull @cpuhp_kick_ap_work) #19
  %30 = getelementptr %struct.tracepoint_func, ptr %26, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %25

33:                                               ; preds = %25, %22
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !48
  %34 = load i32, ptr %7, align 4
  br label %35

35:                                               ; preds = %33, %11, %1
  %36 = phi i32 [ %8, %1 ], [ %8, %11 ], [ %34, %33 ]
  %37 = tail call fastcc i32 @cpuhp_kick_ap(ptr noundef %5, i32 noundef %36)
  %38 = load i32, ptr %5, align 4
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpuhp_exit, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %35
  %42 = tail call ptr @llvm.thread.pointer() #19
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = lshr i32 %44, 5
  %46 = getelementptr i32, ptr @__cpu_online_mask, i32 %45
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %44, 31
  %49 = shl nuw i32 1, %48
  %50 = and i32 %49, %47
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %41
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !49
  %53 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpuhp_exit, i32 0, i32 7), align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %55, %52
  %56 = phi ptr [ %60, %55 ], [ %53, %52 ]
  %57 = load volatile ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.tracepoint_func, ptr %56, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  tail call void %57(ptr noundef %59, i32 noundef %0, i32 noundef %38, i32 noundef %6, i32 noundef %37) #19
  %60 = getelementptr %struct.tracepoint_func, ptr %56, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %55

63:                                               ; preds = %55, %52
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !50
  br label %64

64:                                               ; preds = %63, %41, %35
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpuhp_kick_ap(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp slt i32 %3, %1
  %5 = zext i1 %4 to i8
  %6 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %0, i32 0, i32 5
  store i8 0, ptr %6, align 1
  %7 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %0, i32 0, i32 10
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %0, i32 0, i32 1
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %0, i32 0, i32 6
  store i8 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %0, i32 0, i32 7
  store i8 %5, ptr %10, align 1
  %11 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %0, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_dying_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %4, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  br i1 %4, label %23, label %22

22:                                               ; preds = %21
  tail call void @_set_bit(i32 noundef %12, ptr noundef nonnull @__cpu_dying_mask) #19
  br label %24

23:                                               ; preds = %21
  tail call void @_clear_bit(i32 noundef %12, ptr noundef nonnull @__cpu_dying_mask) #19
  br label %24

24:                                               ; preds = %23, %22, %2
  %25 = load i8, ptr %9, align 2, !range !36
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, ptr %0, align 4
  %29 = load i32, ptr %8, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %42, label %31

31:                                               ; preds = %27, %24
  %32 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %0, i32 0, i32 12
  store i32 0, ptr %32, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !37
  %33 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %0, i32 0, i32 4
  store i8 1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @wake_up_process(ptr noundef %35) #19
  %37 = load i8, ptr %10, align 1, !range !36
  %38 = icmp eq i8 %37, 0
  %39 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %0, i32 0, i32 13
  %40 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %0, i32 0, i32 14
  %41 = select i1 %38, ptr %40, ptr %39
  tail call void @wait_for_completion(ptr noundef %41) #19
  br label %42

42:                                               ; preds = %31, %27
  %43 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %0, i32 0, i32 12
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %90, label %46

46:                                               ; preds = %42
  %47 = load i8, ptr %10, align 1, !range !36
  %48 = icmp eq i8 %47, 0
  %49 = xor i8 %47, 1
  store i32 %3, ptr %8, align 4
  %50 = load i8, ptr %6, align 1, !range !36
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %46
  store i8 1, ptr %6, align 1
  %53 = load ptr, ptr %7, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, ptr %0, align 4
  %57 = select i1 %48, i32 1, i32 -1
  %58 = add i32 %56, %57
  store i32 %58, ptr %0, align 4
  br label %59

59:                                               ; preds = %55, %52
  store i8 %49, ptr %10, align 1
  %60 = load i32, ptr %11, align 4
  %61 = lshr i32 %60, 5
  %62 = getelementptr i32, ptr @__cpu_dying_mask, i32 %61
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %60, 31
  %65 = shl nuw i32 1, %64
  %66 = and i32 %65, %63
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i8
  %69 = icmp eq i8 %47, %68
  br i1 %69, label %73, label %70

70:                                               ; preds = %59
  br i1 %48, label %72, label %71

71:                                               ; preds = %70
  tail call void @_set_bit(i32 noundef %60, ptr noundef nonnull @__cpu_dying_mask) #19
  br label %73

72:                                               ; preds = %70
  tail call void @_clear_bit(i32 noundef %60, ptr noundef nonnull @__cpu_dying_mask) #19
  br label %73

73:                                               ; preds = %72, %71, %59, %46
  %74 = load i8, ptr %9, align 2, !range !36
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, ptr %0, align 4
  %78 = load i32, ptr %8, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %90, label %80

80:                                               ; preds = %76, %73
  store i32 0, ptr %43, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !37
  %81 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %0, i32 0, i32 4
  store i8 1, ptr %81, align 4
  %82 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %0, i32 0, i32 3
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 @wake_up_process(ptr noundef %83) #19
  %85 = load i8, ptr %10, align 1, !range !36
  %86 = icmp eq i8 %85, 0
  %87 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %0, i32 0, i32 13
  %88 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %0, i32 0, i32 14
  %89 = select i1 %86, ptr %88, ptr %87
  tail call void @wait_for_completion(ptr noundef %89) #19
  br label %90

90:                                               ; preds = %80, %76, %42
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idle_thread_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_hotplug_pm_callback(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  switch i32 %1, label %18 [
    i32 3, label %4
    i32 1, label %4
    i32 4, label %5
    i32 2, label %5
  ]

4:                                                ; preds = %3, %3
  tail call void @mutex_lock(ptr noundef nonnull @cpu_add_remove_lock) #19
  br label %13

5:                                                ; preds = %3, %3
  tail call void @mutex_lock(ptr noundef nonnull @cpu_add_remove_lock) #19
  %6 = load i32, ptr @cpu_hotplug_disabled, align 4
  %7 = icmp eq i32 %6, 0
  %8 = load i1, ptr @__cpu_hotplug_enable.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !11

11:                                               ; preds = %5
  store i1 true, ptr @__cpu_hotplug_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 383, i32 noundef 9, ptr noundef nonnull @.str.27) #19
  br label %12

12:                                               ; preds = %11, %5
  br i1 %7, label %17, label %13

13:                                               ; preds = %12, %4
  %14 = phi i32 [ 1, %4 ], [ -1, %12 ]
  %15 = load i32, ptr @cpu_hotplug_disabled, align 4
  %16 = add i32 %15, %14
  store i32 %16, ptr @cpu_hotplug_disabled, align 4
  br label %17

17:                                               ; preds = %13, %12
  tail call void @mutex_unlock(ptr noundef nonnull @cpu_add_remove_lock) #19
  br label %18

18:                                               ; preds = %17, %3
  %19 = phi i32 [ 0, %3 ], [ 1, %17 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pm_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpboot_create_threads(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_event_init_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_event_exit_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @workqueue_prepare_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimers_prepare_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimers_dead_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpcfd_prepare_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpcfd_dead_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcutree_prepare_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcutree_dead_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timers_prepare_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timers_dead_cpu(i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bringup_cpu(i32 noundef %0) #0 {
  %2 = tail call ptr @idle_thread_get(i32 noundef %0) #19
  tail call void @irq_lock_sparse() #19
  %3 = tail call i32 @__cpu_up(i32 noundef %0, ptr noundef %2) #19
  tail call void @irq_unlock_sparse() #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @cpuhp_state to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %9, i32 0, i32 13
  tail call void @wait_for_completion(ptr noundef %10) #19
  %11 = lshr i32 %0, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %0, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  %18 = load i1, ptr @bringup_wait_for_ap.__already_done, align 1
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %21, label %20, !prof !10

20:                                               ; preds = %5
  store i1 true, ptr @bringup_wait_for_ap.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 564, i32 noundef 9, ptr noundef null) #19
  br label %21

21:                                               ; preds = %20, %5
  br i1 %17, label %22, label %30

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %9, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  tail call void @kthread_unpark(ptr noundef %24) #19
  %25 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %9, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp slt i32 %26, 152
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = tail call fastcc i32 @cpuhp_kick_ap(ptr noundef %9, i32 noundef %26) #19
  br label %30

30:                                               ; preds = %28, %22, %21, %1
  %31 = phi i32 [ %3, %1 ], [ %29, %28 ], [ -125, %21 ], [ 0, %22 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @finish_cpu(i32 noundef %0) #0 {
  %2 = tail call ptr @idle_thread_get(i32 noundef %0) #19
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 38
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @init_mm
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store ptr @init_mm, ptr %3, align 8
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.anon.12, ptr %4, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !53
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #19, !srcloc !41
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #19, !srcloc !54
  %10 = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !55
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13, !prof !11

12:                                               ; preds = %7
  tail call void @__mmdrop(ptr noundef %4) #19
  br label %13

13:                                               ; preds = %12, %7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_cpu_starting(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_cpu_dying(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcutree_dying_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpcfd_dying_cpu(i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @takedown_cpu(i32 noundef %0) #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @cpuhp_state to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @kthread_park(ptr noundef %7) #19
  tail call void @irq_lock_sparse() #19
  %9 = and i32 %0, 31
  %10 = add nuw nsw i32 %9, 1
  %11 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %10
  %12 = lshr i32 %0, 5
  %13 = sub nsw i32 0, %12
  %14 = getelementptr i32, ptr %11, i32 %13
  %15 = tail call i32 @stop_machine_cpuslocked(ptr noundef nonnull @take_cpu_down, ptr noundef null, ptr noundef %14) #19
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  tail call void @irq_unlock_sparse() #19
  %18 = load ptr, ptr %6, align 4
  tail call void @kthread_unpark(ptr noundef %18) #19
  br label %32

19:                                               ; preds = %1
  %20 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %21 = load volatile i32, ptr %20, align 4
  %22 = shl nuw i32 1, %9
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25, !prof !10

25:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1051, 0\0A.popsection", ""() #19, !srcloc !56
  unreachable

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %5, i32 0, i32 14
  tail call void @wait_for_completion(ptr noundef %27) #19
  %28 = load i32, ptr %5, align 4
  %29 = icmp eq i32 %28, 92
  br i1 %29, label %31, label %30, !prof !10

30:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1061, 0\0A.popsection", ""() #19, !srcloc !57
  unreachable

31:                                               ; preds = %26
  tail call void @irq_unlock_sparse() #19
  tail call void @hotplug_cpu__broadcast_tick_pull(i32 noundef %0) #19
  tail call void @__cpu_die(i32 noundef %0) #19
  tail call void @tick_cleanup_dead_cpu(i32 noundef %0) #19
  tail call void @rcutree_migrate_callbacks(i32 noundef %0) #19
  br label %32

32:                                               ; preds = %31, %17
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_cpu_wait_empty(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpboot_unpark_threads(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpboot_park_threads(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_affinity_online_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @workqueue_online_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @workqueue_offline_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcutree_online_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcutree_offline_cpu(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_cpu_activate(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_cpu_deactivate(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_lock_sparse() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpu_up(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_unlock_sparse() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_park(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stop_machine_cpuslocked(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @take_cpu_down(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #13, !srcloc !12
  %5 = add i32 %4, ptrtoint (ptr @cpuhp_state to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 93)
  %10 = tail call ptr @llvm.thread.pointer() #19
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 @__cpu_disable() #19
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %1
  %16 = load i32, ptr %6, align 4
  %17 = icmp eq i32 %16, 149
  br i1 %17, label %19, label %18, !prof !10

18:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1007, i32 noundef 9, ptr noundef null) #19
  br label %19

19:                                               ; preds = %18, %15
  br label %20

20:                                               ; preds = %30, %19
  %21 = load i32, ptr %6, align 4
  br label %22

22:                                               ; preds = %25, %20
  %23 = phi i32 [ %26, %25 ], [ %21, %20 ]
  %24 = icmp sgt i32 %23, %9
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = add nsw i32 %23, -1
  store i32 %26, ptr %6, align 4
  %27 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %23, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %22, label %30

30:                                               ; preds = %25
  %31 = tail call fastcc i32 @cpuhp_invoke_callback(i32 noundef %12, i32 noundef %23, i1 noundef zeroext false, ptr noundef null, ptr noundef null) #19
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %20, label %33

33:                                               ; preds = %30
  %34 = load i1, ptr @take_cpu_down.__already_done, align 1
  br i1 %34, label %36, label %35, !prof !10

35:                                               ; preds = %33
  store i1 true, ptr @take_cpu_down.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1015, i32 noundef 9, ptr noundef null) #19
  br label %36

36:                                               ; preds = %35, %33, %22
  tail call void @tick_handover_do_timer() #19
  tail call void @tick_offline_cpu(i32 noundef %12) #19
  tail call void @stop_machine_park(i32 noundef %12) #19
  br label %37

37:                                               ; preds = %36, %1
  %38 = phi i32 [ 0, %36 ], [ %13, %1 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hotplug_cpu__broadcast_tick_pull(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpu_die(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_cleanup_dead_cpu(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcutree_migrate_callbacks(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpu_disable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_handover_do_timer() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_offline_cpu(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @stop_machine_park(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @control_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #15 {
  %4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4094, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.76)
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @control_store(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3) #3 {
  ret i32 -19
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @active_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #15 {
  %4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4094, ptr noundef nonnull @.str.78, i32 noundef 0)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @states_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @cpuhp_state_mutex) #19
  br label %4

4:                                                ; preds = %15, %3
  %5 = phi i32 [ 0, %3 ], [ %18, %15 ]
  %6 = phi i32 [ 0, %3 ], [ %17, %15 ]
  %7 = phi ptr [ %2, %3 ], [ %16, %15 ]
  %8 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %7, ptr noundef nonnull @.str.81, i32 noundef %5, ptr noundef nonnull %9)
  %13 = getelementptr i8, ptr %7, i32 %12
  %14 = add i32 %12, %6
  br label %15

15:                                               ; preds = %11, %4
  %16 = phi ptr [ %13, %11 ], [ %7, %4 ]
  %17 = phi i32 [ %14, %11 ], [ %6, %4 ]
  %18 = add nuw nsw i32 %5, 1
  %19 = icmp eq i32 %18, 230
  br i1 %19, label %20, label %4

20:                                               ; preds = %15
  tail call void @mutex_unlock(ptr noundef nonnull @cpuhp_state_mutex) #19
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @state_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #15 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 28
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @cpuhp_state to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.78, i32 noundef %10)
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @target_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #15 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 28
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @cpuhp_state to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.78, i32 noundef %11)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @target_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 28
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, ptrtoint (ptr @cpuhp_state to i32)
  %11 = inttoptr i32 %10 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !annotation !9
  %12 = call i32 @kstrtoint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #19
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %59

14:                                               ; preds = %4
  %15 = load i32, ptr %5, align 4
  switch i32 %15, label %59 [
    i32 229, label %16
    i32 0, label %16
  ]

16:                                               ; preds = %14, %14
  %17 = call i32 @lock_device_hotplug_sysfs() #19
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %16
  call void @mutex_lock(ptr noundef nonnull @cpuhp_state_mutex) #19
  %20 = load i32, ptr %5, align 4
  %21 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %20, i32 4
  %26 = load i8, ptr %25, align 4, !range !36
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %19
  call void @mutex_unlock(ptr noundef nonnull @cpuhp_state_mutex) #19
  br label %54

29:                                               ; preds = %24
  call void @mutex_unlock(ptr noundef nonnull @cpuhp_state_mutex) #19
  %30 = load i32, ptr %11, align 4
  %31 = load i32, ptr %5, align 4
  %32 = icmp slt i32 %30, %31
  %33 = load i32, ptr %6, align 4
  br i1 %32, label %34, label %49

34:                                               ; preds = %29
  %35 = lshr i32 %33, 5
  %36 = getelementptr i32, ptr @__cpu_possible_mask, i32 %35
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %33, 31
  %39 = shl nuw i32 1, %38
  %40 = and i32 %39, %37
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %33) #21
  br label %54

44:                                               ; preds = %34
  call void @mutex_lock(ptr noundef nonnull @cpu_add_remove_lock) #19
  %45 = load i32, ptr @cpu_hotplug_disabled, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = call fastcc i32 @_cpu_up(i32 noundef %33, i32 noundef 0, i32 noundef %31) #19
  br label %55

49:                                               ; preds = %29
  call void @mutex_lock(ptr noundef nonnull @cpu_add_remove_lock) #19
  %50 = load i32, ptr @cpu_hotplug_disabled, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = call fastcc i32 @_cpu_down(i32 noundef %33, i32 noundef 0, i32 noundef %31) #19
  br label %55

54:                                               ; preds = %42, %28
  call void @unlock_device_hotplug() #19
  br label %59

55:                                               ; preds = %52, %49, %47, %44
  %56 = phi i32 [ %48, %47 ], [ -16, %44 ], [ %53, %52 ], [ -16, %49 ]
  call void @mutex_unlock(ptr noundef nonnull @cpu_add_remove_lock) #19
  call void @unlock_device_hotplug() #19
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 %3, i32 %56
  br label %59

59:                                               ; preds = %55, %54, %16, %14, %4
  %60 = phi i32 [ %12, %4 ], [ -22, %14 ], [ %17, %16 ], [ -22, %54 ], [ %58, %55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_device_hotplug_sysfs() local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fail_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #15 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 28
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @cpuhp_state to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.78, i32 noundef %11)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fail_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 28
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, ptrtoint (ptr @cpuhp_state to i32)
  %11 = inttoptr i32 %10 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !annotation !9
  %12 = call i32 @kstrtoint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #19
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %4
  %15 = load i32, ptr %5, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %39, label %17

17:                                               ; preds = %14
  %18 = icmp ugt i32 %15, 229
  %19 = add nsw i32 %15, -92
  %20 = icmp ult i32 %19, 57
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %42, label %22

22:                                               ; preds = %17
  %23 = icmp ult i32 %15, 92
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i32, ptr %11, align 4
  %26 = icmp sgt i32 %25, 91
  br i1 %26, label %42, label %27

27:                                               ; preds = %24, %22
  call void @mutex_lock(ptr noundef nonnull @cpuhp_state_mutex) #19
  %28 = load i32, ptr %5, align 4
  %29 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %28, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  call void @mutex_unlock(ptr noundef nonnull @cpuhp_state_mutex) #19
  br label %37

33:                                               ; preds = %27
  %34 = getelementptr %struct.cpuhp_step, ptr @cpuhp_hp_states, i32 %28, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  call void @mutex_unlock(ptr noundef nonnull @cpuhp_state_mutex) #19
  br i1 %36, label %42, label %37

37:                                               ; preds = %33, %32
  %38 = load i32, ptr %5, align 4
  br label %39

39:                                               ; preds = %37, %14
  %40 = phi i32 [ %38, %37 ], [ -1, %14 ]
  %41 = getelementptr inbounds %struct.cpuhp_cpu_state, ptr %11, i32 0, i32 2
  store i32 %40, ptr %41, align 4
  br label %42

42:                                               ; preds = %39, %33, %24, %17, %4
  %43 = phi i32 [ %12, %4 ], [ -22, %17 ], [ -22, %24 ], [ -22, %33 ], [ %3, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nounwind readonly }
attributes #14 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nounwind }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { cold nounwind }

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
!12 = !{i64 401963}
!13 = !{i64 2151227598}
!14 = !{i64 383263, i64 383324}
!15 = !{i64 386280}
!16 = !{i64 2151235215}
!17 = !{i64 2151235432}
!18 = !{i64 2151243049}
!19 = !{i64 2151243680}
!20 = !{i64 2151251991}
!21 = !{i64 2151260209}
!22 = !{i64 2155254222, i64 2155254699, i64 2155254259, i64 2155254315, i64 2155254349, i64 2155254373, i64 2155254414, i64 2155254435, i64 2155254463, i64 2155254497}
!23 = !{i64 2155293447}
!24 = !{i64 2155309401}
!25 = !{i64 2149016445}
!26 = !{i64 2149242644}
!27 = !{i64 2149238468}
!28 = !{i64 2149238543, i64 2149238570, i64 2149238617, i64 2149238639, i64 2149238667, i64 2149238687}
!29 = !{i64 2149265647}
!30 = !{i64 2149016662}
!31 = !{i64 2155353084, i64 2155353562, i64 2155353121, i64 2155353177, i64 2155353211, i64 2155353235, i64 2155353276, i64 2155353297, i64 2155353325, i64 2155353359}
!32 = !{i64 2155360483, i64 2155360961, i64 2155360520, i64 2155360576, i64 2155360610, i64 2155360634, i64 2155360675, i64 2155360696, i64 2155360724, i64 2155360758}
!33 = !{i64 2154504965}
!34 = !{i64 2154505141}
!35 = !{i64 2155377160, i64 2155377638, i64 2155377197, i64 2155377253, i64 2155377287, i64 2155377311, i64 2155377352, i64 2155377373, i64 2155377401, i64 2155377435}
!36 = !{i8 0, i8 2}
!37 = !{i64 2155241896}
!38 = !{i64 2155387152, i64 2155387630, i64 2155387189, i64 2155387245, i64 2155387279, i64 2155387303, i64 2155387344, i64 2155387365, i64 2155387393, i64 2155387427}
!39 = !{i64 2155395446, i64 2155395924, i64 2155395483, i64 2155395539, i64 2155395573, i64 2155395597, i64 2155395638, i64 2155395659, i64 2155395687, i64 2155395721}
!40 = !{i64 2155398973, i64 2155399451, i64 2155399010, i64 2155399066, i64 2155399100, i64 2155399124, i64 2155399165, i64 2155399186, i64 2155399214, i64 2155399248}
!41 = !{i64 488024, i64 2147977995, i64 2147978021, i64 2147978068, i64 2147978090, i64 2147978118, i64 2147978138}
!42 = !{i64 2147990207, i64 2147990233, i64 2147990262, i64 2147990296, i64 2147990327, i64 2147990350}
!43 = !{i64 2147992564, i64 2147992590, i64 2147992619, i64 2147992653, i64 2147992684, i64 2147992707}
!44 = !{i64 2155249030}
!45 = !{i64 383698}
!46 = !{i64 383508}
!47 = !{i64 2154798377}
!48 = !{i64 2154798553}
!49 = !{i64 2154832632}
!50 = !{i64 2154832804}
!51 = !{i64 2154815903}
!52 = !{i64 2154816103}
!53 = !{i64 2148090862}
!54 = !{i64 2147993248, i64 2147993280, i64 2147993309, i64 2147993343, i64 2147993374, i64 2147993397}
!55 = !{i64 2148091065}
!56 = !{i64 2155350297, i64 2155350775, i64 2155350334, i64 2155350390, i64 2155350424, i64 2155350448, i64 2155350489, i64 2155350510, i64 2155350538, i64 2155350572}
!57 = !{i64 2155351333, i64 2155351811, i64 2155351370, i64 2155351426, i64 2155351460, i64 2155351484, i64 2155351525, i64 2155351546, i64 2155351574, i64 2155351608}
