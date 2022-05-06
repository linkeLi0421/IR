; ModuleID = '/llk/IR/kernel/cgroup/cgroup.c_pt.bc'
source_filename = "../kernel/cgroup/cgroup.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cgrp_dfl_root:\09\09\09\09\09"
module asm "\09.asciz \09\22cgrp_dfl_root\22\09\09\09\09\09"
module asm "__kstrtabns_cgrp_dfl_root:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cgroup_get_e_css:\09\09\09\09\09"
module asm "\09.asciz \09\22cgroup_get_e_css\22\09\09\09\09\09"
module asm "__kstrtabns_cgroup_get_e_css:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_css:\09\09\09\09\09"
module asm "\09.asciz \09\22of_css\22\09\09\09\09\09"
module asm "__kstrtabns_of_css:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cgroup_path_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22cgroup_path_ns\22\09\09\09\09\09"
module asm "__kstrtabns_cgroup_path_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_task_cgroup_path:\09\09\09\09\09"
module asm "\09.asciz \09\22task_cgroup_path\22\09\09\09\09\09"
module asm "__kstrtabns_task_cgroup_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_css_next_descendant_pre:\09\09\09\09\09"
module asm "\09.asciz \09\22css_next_descendant_pre\22\09\09\09\09\09"
module asm "__kstrtabns_css_next_descendant_pre:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cgroup_get_from_id:\09\09\09\09\09"
module asm "\09.asciz \09\22cgroup_get_from_id\22\09\09\09\09\09"
module asm "__kstrtabns_cgroup_get_from_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cgroup_get_from_path:\09\09\09\09\09"
module asm "\09.asciz \09\22cgroup_get_from_path\22\09\09\09\09\09"
module asm "__kstrtabns_cgroup_get_from_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cgroup_get_from_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22cgroup_get_from_fd\22\09\09\09\09\09"
module asm "__kstrtabns_cgroup_get_from_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.191 }
%union.anon.191 = type { %struct.anon.192 }
%struct.anon.192 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.193, %struct.trace_event, ptr, ptr, %union.anon.194, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.193 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.194 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cgroup_rstat_cpu = type { %struct.u64_stats_sync, %struct.cgroup_base_stat, %struct.cgroup_base_stat, ptr, ptr }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.cgroup_root = type { ptr, i32, i32, %struct.cgroup, i64, %struct.atomic_t, %struct.list_head, i32, [4096 x i8], [64 x i8] }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [0 x ptr], ptr, %struct.list_head, [0 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.psi_group = type {}
%struct.cgroup_bpf = type {}
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.proc_ns_operations = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.2 }
%union.anon.2 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.100, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.100 = type { %struct.anon.101 }
%struct.anon.101 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.css_set = type { [0 x ptr], %struct.refcount_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, [0 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i8, %struct.callback_head }
%struct.cgroup_namespace = type { %struct.ns_common, ptr, ptr, ptr }
%struct.kernfs_syscall_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.lock_class_key = type {}
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cgroup_fs_context = type { %struct.kernfs_fs_context, ptr, ptr, i32, i8, i8, i8, i16, ptr, ptr }
%struct.kernfs_fs_context = type { ptr, ptr, i32, i8 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.96, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4 }
%struct.llist_node = type { ptr }
%union.anon.4 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.96 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cftype = type { [64 x i8], i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernfs_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_cgroup_root = type { %struct.trace_entry, i32, i16, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_cgroup = type { %struct.trace_entry, i32, i32, i64, i32, [0 x i8] }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon, ptr, i64, i16, i16, ptr }
%union.anon = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.trace_event_raw_cgroup_migrate = type { %struct.trace_entry, i32, i32, i64, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_cgroup_event = type { %struct.trace_entry, i32, i32, i64, i32, i32, [0 x i8] }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cgrp_cset_link = type { ptr, ptr, %struct.list_head, %struct.list_head }
%struct.cgroup_subsys = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, %struct.idr, %struct.list_head, ptr, ptr, i32 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.167, %struct.list_head, %struct.list_head, %union.anon.168 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.1, ptr }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.165 }
%union.anon.165 = type { i64 }
%union.anon.167 = type { %struct.list_head }
%union.anon.168 = type { %struct.hlist_node }
%struct.cgroup_taskset = type { %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, ptr }
%struct.cgroup_mgctx = type { %struct.list_head, %struct.list_head, %struct.cgroup_taskset, i16 }
%struct.css_task_iter = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.66 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.66 = type { %struct.callback_head }
%struct.kernel_clone_args = type { i64, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.fs_parse_result = type { i8, %union.anon.157 }
%union.anon.157 = type { i64 }
%struct.kernfs_open_file = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, %struct.list_head, ptr, i32, i8, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.cgroup_file_ctx = type { ptr, %struct.anon.195, %struct.anon.196, %struct.anon.197 }
%struct.anon.195 = type { ptr }
%struct.anon.196 = type { i8, %struct.css_task_iter }
%struct.anon.197 = type { ptr }

@__tpstrtab_cgroup_setup_root = internal constant [18 x i8] c"cgroup_setup_root\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cgroup_setup_root = dso_local global %struct.static_call_key { ptr @__traceiter_cgroup_setup_root }, align 4
@__tracepoint_cgroup_setup_root = dso_local global %struct.tracepoint { ptr @__tpstrtab_cgroup_setup_root, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cgroup_setup_root, ptr null, ptr @__traceiter_cgroup_setup_root, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cgroup_setup_root = internal constant ptr @__tracepoint_cgroup_setup_root, section "__tracepoints_ptrs", align 4
@__tpstrtab_cgroup_destroy_root = internal constant [20 x i8] c"cgroup_destroy_root\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cgroup_destroy_root = dso_local global %struct.static_call_key { ptr @__traceiter_cgroup_destroy_root }, align 4
@__tracepoint_cgroup_destroy_root = dso_local global %struct.tracepoint { ptr @__tpstrtab_cgroup_destroy_root, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cgroup_destroy_root, ptr null, ptr @__traceiter_cgroup_destroy_root, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cgroup_destroy_root = internal constant ptr @__tracepoint_cgroup_destroy_root, section "__tracepoints_ptrs", align 4
@__tpstrtab_cgroup_remount = internal constant [15 x i8] c"cgroup_remount\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cgroup_remount = dso_local global %struct.static_call_key { ptr @__traceiter_cgroup_remount }, align 4
@__tracepoint_cgroup_remount = dso_local global %struct.tracepoint { ptr @__tpstrtab_cgroup_remount, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cgroup_remount, ptr null, ptr @__traceiter_cgroup_remount, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cgroup_remount = internal constant ptr @__tracepoint_cgroup_remount, section "__tracepoints_ptrs", align 4
@__tpstrtab_cgroup_mkdir = internal constant [13 x i8] c"cgroup_mkdir\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cgroup_mkdir = dso_local global %struct.static_call_key { ptr @__traceiter_cgroup_mkdir }, align 4
@__tracepoint_cgroup_mkdir = dso_local global %struct.tracepoint { ptr @__tpstrtab_cgroup_mkdir, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cgroup_mkdir, ptr null, ptr @__traceiter_cgroup_mkdir, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cgroup_mkdir = internal constant ptr @__tracepoint_cgroup_mkdir, section "__tracepoints_ptrs", align 4
@__tpstrtab_cgroup_rmdir = internal constant [13 x i8] c"cgroup_rmdir\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cgroup_rmdir = dso_local global %struct.static_call_key { ptr @__traceiter_cgroup_rmdir }, align 4
@__tracepoint_cgroup_rmdir = dso_local global %struct.tracepoint { ptr @__tpstrtab_cgroup_rmdir, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cgroup_rmdir, ptr null, ptr @__traceiter_cgroup_rmdir, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cgroup_rmdir = internal constant ptr @__tracepoint_cgroup_rmdir, section "__tracepoints_ptrs", align 4
@__tpstrtab_cgroup_release = internal constant [15 x i8] c"cgroup_release\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cgroup_release = dso_local global %struct.static_call_key { ptr @__traceiter_cgroup_release }, align 4
@__tracepoint_cgroup_release = dso_local global %struct.tracepoint { ptr @__tpstrtab_cgroup_release, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cgroup_release, ptr null, ptr @__traceiter_cgroup_release, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cgroup_release = internal constant ptr @__tracepoint_cgroup_release, section "__tracepoints_ptrs", align 4
@__tpstrtab_cgroup_rename = internal constant [14 x i8] c"cgroup_rename\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cgroup_rename = dso_local global %struct.static_call_key { ptr @__traceiter_cgroup_rename }, align 4
@__tracepoint_cgroup_rename = dso_local global %struct.tracepoint { ptr @__tpstrtab_cgroup_rename, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cgroup_rename, ptr null, ptr @__traceiter_cgroup_rename, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cgroup_rename = internal constant ptr @__tracepoint_cgroup_rename, section "__tracepoints_ptrs", align 4
@__tpstrtab_cgroup_freeze = internal constant [14 x i8] c"cgroup_freeze\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cgroup_freeze = dso_local global %struct.static_call_key { ptr @__traceiter_cgroup_freeze }, align 4
@__tracepoint_cgroup_freeze = dso_local global %struct.tracepoint { ptr @__tpstrtab_cgroup_freeze, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cgroup_freeze, ptr null, ptr @__traceiter_cgroup_freeze, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cgroup_freeze = internal constant ptr @__tracepoint_cgroup_freeze, section "__tracepoints_ptrs", align 4
@__tpstrtab_cgroup_unfreeze = internal constant [16 x i8] c"cgroup_unfreeze\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cgroup_unfreeze = dso_local global %struct.static_call_key { ptr @__traceiter_cgroup_unfreeze }, align 4
@__tracepoint_cgroup_unfreeze = dso_local global %struct.tracepoint { ptr @__tpstrtab_cgroup_unfreeze, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cgroup_unfreeze, ptr null, ptr @__traceiter_cgroup_unfreeze, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cgroup_unfreeze = internal constant ptr @__tracepoint_cgroup_unfreeze, section "__tracepoints_ptrs", align 4
@__tpstrtab_cgroup_attach_task = internal constant [19 x i8] c"cgroup_attach_task\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cgroup_attach_task = dso_local global %struct.static_call_key { ptr @__traceiter_cgroup_attach_task }, align 4
@__tracepoint_cgroup_attach_task = dso_local global %struct.tracepoint { ptr @__tpstrtab_cgroup_attach_task, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cgroup_attach_task, ptr null, ptr @__traceiter_cgroup_attach_task, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cgroup_attach_task = internal constant ptr @__tracepoint_cgroup_attach_task, section "__tracepoints_ptrs", align 4
@__tpstrtab_cgroup_transfer_tasks = internal constant [22 x i8] c"cgroup_transfer_tasks\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cgroup_transfer_tasks = dso_local global %struct.static_call_key { ptr @__traceiter_cgroup_transfer_tasks }, align 4
@__tracepoint_cgroup_transfer_tasks = dso_local global %struct.tracepoint { ptr @__tpstrtab_cgroup_transfer_tasks, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cgroup_transfer_tasks, ptr null, ptr @__traceiter_cgroup_transfer_tasks, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cgroup_transfer_tasks = internal constant ptr @__tracepoint_cgroup_transfer_tasks, section "__tracepoints_ptrs", align 4
@__tpstrtab_cgroup_notify_populated = internal constant [24 x i8] c"cgroup_notify_populated\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cgroup_notify_populated = dso_local global %struct.static_call_key { ptr @__traceiter_cgroup_notify_populated }, align 4
@__tracepoint_cgroup_notify_populated = dso_local global %struct.tracepoint { ptr @__tpstrtab_cgroup_notify_populated, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cgroup_notify_populated, ptr null, ptr @__traceiter_cgroup_notify_populated, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cgroup_notify_populated = internal constant ptr @__tracepoint_cgroup_notify_populated, section "__tracepoints_ptrs", align 4
@__tpstrtab_cgroup_notify_frozen = internal constant [21 x i8] c"cgroup_notify_frozen\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cgroup_notify_frozen = dso_local global %struct.static_call_key { ptr @__traceiter_cgroup_notify_frozen }, align 4
@__tracepoint_cgroup_notify_frozen = dso_local global %struct.tracepoint { ptr @__tpstrtab_cgroup_notify_frozen, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_cgroup_notify_frozen, ptr null, ptr @__traceiter_cgroup_notify_frozen, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cgroup_notify_frozen = internal constant ptr @__tracepoint_cgroup_notify_frozen, section "__tracepoints_ptrs", align 4
@trace_event_fields_cgroup_root = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.19, %union.anon.191 { %struct.anon.192 { ptr @.str.20, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.191 { %struct.anon.192 { ptr @.str.22, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.191 { %struct.anon.192 { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_cgroup_root = internal global %struct.trace_event_class { ptr @.str.3, ptr @trace_event_raw_event_cgroup_root, ptr @perf_trace_cgroup_root, ptr @trace_event_reg, ptr @trace_event_fields_cgroup_root, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cgroup_root, i64 24), ptr getelementptr (i8, ptr @event_class_cgroup_root, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cgroup_root = internal global %struct.trace_event_functions { ptr @trace_raw_output_cgroup_root, ptr null, ptr null, ptr null }, align 4
@print_fmt_cgroup_root = internal global [72 x i8] c"\22root=%d ss_mask=%#x name=%s\22, REC->root, REC->ss_mask, __get_str(name)\00", align 1
@event_cgroup_setup_root = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cgroup_root, %union.anon.193 { ptr @__tracepoint_cgroup_setup_root }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cgroup_root }, ptr @print_fmt_cgroup_root, ptr null, %union.anon.194 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cgroup_setup_root = internal global ptr @event_cgroup_setup_root, section "_ftrace_events", align 4
@event_cgroup_destroy_root = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cgroup_root, %union.anon.193 { ptr @__tracepoint_cgroup_destroy_root }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cgroup_root }, ptr @print_fmt_cgroup_root, ptr null, %union.anon.194 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cgroup_destroy_root = internal global ptr @event_cgroup_destroy_root, section "_ftrace_events", align 4
@event_cgroup_remount = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cgroup_root, %union.anon.193 { ptr @__tracepoint_cgroup_remount }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cgroup_root }, ptr @print_fmt_cgroup_root, ptr null, %union.anon.194 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cgroup_remount = internal global ptr @event_cgroup_remount, section "_ftrace_events", align 4
@trace_event_fields_cgroup = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.19, %union.anon.191 { %struct.anon.192 { ptr @.str.20, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.191 { %struct.anon.192 { ptr @.str.26, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.27, %union.anon.191 { %struct.anon.192 { ptr @.str.28, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.191 { %struct.anon.192 { ptr @.str.29, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_cgroup = internal global %struct.trace_event_class { ptr @.str.3, ptr @trace_event_raw_event_cgroup, ptr @perf_trace_cgroup, ptr @trace_event_reg, ptr @trace_event_fields_cgroup, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cgroup, i64 24), ptr getelementptr (i8, ptr @event_class_cgroup, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cgroup = internal global %struct.trace_event_functions { ptr @trace_raw_output_cgroup, ptr null, ptr null, ptr null }, align 4
@print_fmt_cgroup = internal global [84 x i8] c"\22root=%d id=%llu level=%d path=%s\22, REC->root, REC->id, REC->level, __get_str(path)\00", align 1
@event_cgroup_mkdir = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cgroup, %union.anon.193 { ptr @__tracepoint_cgroup_mkdir }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cgroup }, ptr @print_fmt_cgroup, ptr null, %union.anon.194 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cgroup_mkdir = internal global ptr @event_cgroup_mkdir, section "_ftrace_events", align 4
@event_cgroup_rmdir = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cgroup, %union.anon.193 { ptr @__tracepoint_cgroup_rmdir }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cgroup }, ptr @print_fmt_cgroup, ptr null, %union.anon.194 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cgroup_rmdir = internal global ptr @event_cgroup_rmdir, section "_ftrace_events", align 4
@event_cgroup_release = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cgroup, %union.anon.193 { ptr @__tracepoint_cgroup_release }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cgroup }, ptr @print_fmt_cgroup, ptr null, %union.anon.194 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cgroup_release = internal global ptr @event_cgroup_release, section "_ftrace_events", align 4
@event_cgroup_rename = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cgroup, %union.anon.193 { ptr @__tracepoint_cgroup_rename }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cgroup }, ptr @print_fmt_cgroup, ptr null, %union.anon.194 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cgroup_rename = internal global ptr @event_cgroup_rename, section "_ftrace_events", align 4
@event_cgroup_freeze = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cgroup, %union.anon.193 { ptr @__tracepoint_cgroup_freeze }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cgroup }, ptr @print_fmt_cgroup, ptr null, %union.anon.194 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cgroup_freeze = internal global ptr @event_cgroup_freeze, section "_ftrace_events", align 4
@event_cgroup_unfreeze = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cgroup, %union.anon.193 { ptr @__tracepoint_cgroup_unfreeze }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cgroup }, ptr @print_fmt_cgroup, ptr null, %union.anon.194 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cgroup_unfreeze = internal global ptr @event_cgroup_unfreeze, section "_ftrace_events", align 4
@trace_event_fields_cgroup_migrate = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.19, %union.anon.191 { %struct.anon.192 { ptr @.str.31, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.191 { %struct.anon.192 { ptr @.str.32, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.27, %union.anon.191 { %struct.anon.192 { ptr @.str.33, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.191 { %struct.anon.192 { ptr @.str.34, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.191 { %struct.anon.192 { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.191 { %struct.anon.192 { ptr @.str.36, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_cgroup_migrate = internal global %struct.trace_event_class { ptr @.str.3, ptr @trace_event_raw_event_cgroup_migrate, ptr @perf_trace_cgroup_migrate, ptr @trace_event_reg, ptr @trace_event_fields_cgroup_migrate, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cgroup_migrate, i64 24), ptr getelementptr (i8, ptr @event_class_cgroup_migrate, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cgroup_migrate = internal global %struct.trace_event_functions { ptr @trace_raw_output_cgroup_migrate, ptr null, ptr null, ptr null }, align 4
@print_fmt_cgroup_migrate = internal global [158 x i8] c"\22dst_root=%d dst_id=%llu dst_level=%d dst_path=%s pid=%d comm=%s\22, REC->dst_root, REC->dst_id, REC->dst_level, __get_str(dst_path), REC->pid, __get_str(comm)\00", align 1
@event_cgroup_attach_task = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cgroup_migrate, %union.anon.193 { ptr @__tracepoint_cgroup_attach_task }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cgroup_migrate }, ptr @print_fmt_cgroup_migrate, ptr null, %union.anon.194 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cgroup_attach_task = internal global ptr @event_cgroup_attach_task, section "_ftrace_events", align 4
@event_cgroup_transfer_tasks = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cgroup_migrate, %union.anon.193 { ptr @__tracepoint_cgroup_transfer_tasks }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cgroup_migrate }, ptr @print_fmt_cgroup_migrate, ptr null, %union.anon.194 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cgroup_transfer_tasks = internal global ptr @event_cgroup_transfer_tasks, section "_ftrace_events", align 4
@trace_event_fields_cgroup_event = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.19, %union.anon.191 { %struct.anon.192 { ptr @.str.20, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.191 { %struct.anon.192 { ptr @.str.26, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.27, %union.anon.191 { %struct.anon.192 { ptr @.str.28, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.191 { %struct.anon.192 { ptr @.str.29, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.191 { %struct.anon.192 { ptr @.str.38, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_cgroup_event = internal global %struct.trace_event_class { ptr @.str.3, ptr @trace_event_raw_event_cgroup_event, ptr @perf_trace_cgroup_event, ptr @trace_event_reg, ptr @trace_event_fields_cgroup_event, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cgroup_event, i64 24), ptr getelementptr (i8, ptr @event_class_cgroup_event, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cgroup_event = internal global %struct.trace_event_functions { ptr @trace_raw_output_cgroup_event, ptr null, ptr null, ptr null }, align 4
@print_fmt_cgroup_event = internal global [101 x i8] c"\22root=%d id=%llu level=%d path=%s val=%d\22, REC->root, REC->id, REC->level, __get_str(path), REC->val\00", align 1
@event_cgroup_notify_populated = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cgroup_event, %union.anon.193 { ptr @__tracepoint_cgroup_notify_populated }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cgroup_event }, ptr @print_fmt_cgroup_event, ptr null, %union.anon.194 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cgroup_notify_populated = internal global ptr @event_cgroup_notify_populated, section "_ftrace_events", align 4
@event_cgroup_notify_frozen = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cgroup_event, %union.anon.193 { ptr @__tracepoint_cgroup_notify_frozen }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cgroup_event }, ptr @print_fmt_cgroup_event, ptr null, %union.anon.194 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_cgroup_notify_frozen = internal global ptr @event_cgroup_notify_frozen, section "_ftrace_events", align 4
@cgroup_mutex = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cgroup_mutex, i64 12), ptr getelementptr (i8, ptr @cgroup_mutex, i64 12) } }, align 4
@css_set_lock = dso_local global %struct.spinlock zeroinitializer, align 4
@trace_cgroup_path_lock = dso_local global %struct.spinlock zeroinitializer, align 4
@cgroup_threadgroup_rwsem = dso_local global %struct.percpu_rw_semaphore { %struct.rcu_sync { i32 0, i32 0, %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cgroup_threadgroup_rwsem, i64 12), ptr getelementptr (i8, ptr @cgroup_threadgroup_rwsem, i64 12) } }, %struct.callback_head zeroinitializer }, ptr @__percpu_rwsem_rc_cgroup_threadgroup_rwsem, %struct.rcuwait zeroinitializer, %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cgroup_threadgroup_rwsem, i64 40), ptr getelementptr (i8, ptr @cgroup_threadgroup_rwsem, i64 40) } }, %struct.atomic_t zeroinitializer }, align 4
@__percpu_rwsem_rc_cgroup_threadgroup_rwsem = internal global i32 0, section ".data..percpu", align 4
@cgroup_subsys = dso_local local_unnamed_addr global [0 x ptr] zeroinitializer, align 4
@cgrp_dfl_root_rstat_cpu = internal global %struct.cgroup_rstat_cpu zeroinitializer, section ".data..percpu", align 8
@cgrp_dfl_root = dso_local global %struct.cgroup_root { ptr null, i32 0, i32 0, %struct.cgroup { %struct.cgroup_subsys_state zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, %struct.cgroup_file zeroinitializer, %struct.cgroup_file zeroinitializer, i16 0, i16 0, i16 0, i16 0, [0 x ptr] zeroinitializer, ptr null, %struct.list_head zeroinitializer, [0 x %struct.list_head] zeroinitializer, ptr null, ptr null, ptr @cgrp_dfl_root_rstat_cpu, %struct.list_head zeroinitializer, %struct.cgroup_base_stat zeroinitializer, %struct.cgroup_base_stat zeroinitializer, %struct.prev_cputime zeroinitializer, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer, %struct.wait_queue_head zeroinitializer, %struct.work_struct zeroinitializer, %struct.psi_group zeroinitializer, %struct.cgroup_bpf zeroinitializer, %struct.atomic_t zeroinitializer, %struct.cgroup_freezer_state zeroinitializer, [0 x i64] zeroinitializer }, i64 0, %struct.atomic_t zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4096 x i8] zeroinitializer, [64 x i8] zeroinitializer }, align 8
@__kstrtab_cgrp_dfl_root = external dso_local constant [0 x i8], align 1
@__kstrtabns_cgrp_dfl_root = external dso_local constant [0 x i8], align 1
@__ksymtab_cgrp_dfl_root = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cgrp_dfl_root to i32), ptr @__kstrtab_cgrp_dfl_root, ptr @__kstrtabns_cgrp_dfl_root }, section "___ksymtab_gpl+cgrp_dfl_root", align 4
@cgroup_roots = dso_local global %struct.list_head { ptr @cgroup_roots, ptr @cgroup_roots }, align 4
@cgroupns_operations = external dso_local constant %struct.proc_ns_operations, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@init_css_set = dso_local global %struct.css_set { [0 x ptr] zeroinitializer, %struct.refcount_struct { %struct.atomic_t { i32 1 } }, ptr @init_css_set, ptr getelementptr (i8, ptr @cgrp_dfl_root, i64 16), i32 0, %struct.list_head { ptr getelementptr (i8, ptr @init_css_set, i64 16), ptr getelementptr (i8, ptr @init_css_set, i64 16) }, %struct.list_head { ptr getelementptr (i8, ptr @init_css_set, i64 24), ptr getelementptr (i8, ptr @init_css_set, i64 24) }, %struct.list_head { ptr getelementptr (i8, ptr @init_css_set, i64 32), ptr getelementptr (i8, ptr @init_css_set, i64 32) }, %struct.list_head { ptr getelementptr (i8, ptr @init_css_set, i64 40), ptr getelementptr (i8, ptr @init_css_set, i64 40) }, [0 x %struct.list_head] zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @init_css_set, i64 48), ptr getelementptr (i8, ptr @init_css_set, i64 48) }, %struct.list_head zeroinitializer, %struct.hlist_node zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @init_css_set, i64 72), ptr getelementptr (i8, ptr @init_css_set, i64 72) }, %struct.list_head { ptr getelementptr (i8, ptr @init_css_set, i64 80), ptr getelementptr (i8, ptr @init_css_set, i64 80) }, %struct.list_head { ptr getelementptr (i8, ptr @init_css_set, i64 88), ptr getelementptr (i8, ptr @init_css_set, i64 88) }, ptr null, ptr null, ptr null, i8 0, %struct.callback_head zeroinitializer }, align 4
@init_cgroup_ns = dso_local global %struct.cgroup_namespace { %struct.ns_common { %struct.atomic_t zeroinitializer, ptr @cgroupns_operations, i32 -268435461, %struct.refcount_struct { %struct.atomic_t { i32 2 } } }, ptr @init_user_ns, ptr null, ptr @init_css_set }, align 4
@__kstrtab_cgroup_get_e_css = external dso_local constant [0 x i8], align 1
@__kstrtabns_cgroup_get_e_css = external dso_local constant [0 x i8], align 1
@__ksymtab_cgroup_get_e_css = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cgroup_get_e_css to i32), ptr @__kstrtab_cgroup_get_e_css, ptr @__kstrtabns_cgroup_get_e_css }, section "___ksymtab_gpl+cgroup_get_e_css", align 4
@__kstrtab_of_css = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_css = external dso_local constant [0 x i8], align 1
@__ksymtab_of_css = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_css to i32), ptr @__kstrtab_of_css, ptr @__kstrtabns_of_css }, section "___ksymtab_gpl+of_css", align 4
@put_css_set_locked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [23 x i8] c"kernel/cgroup/cgroup.c\00", align 1
@css_set_count = internal unnamed_addr global i32 1, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" \09\0A\\\00", align 1
@cgroup_kf_syscall_ops = internal global %struct.kernfs_syscall_ops { ptr @cgroup_show_options, ptr @cgroup_mkdir, ptr @cgroup_rmdir, ptr null, ptr @cgroup_show_path }, align 4
@cgroup1_kf_syscall_ops = external dso_local global %struct.kernfs_syscall_ops, align 4
@cgroup_setup_root.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cgroup_root_count = internal unnamed_addr global i32 0, align 4
@css_set_table = internal global [128 x %struct.hlist_head] zeroinitializer, align 4
@cgroup2_fs_type = internal global %struct.file_system_type { ptr @.str.50, i32 8, ptr @cgroup_init_fs_context, ptr @cgroup2_fs_parameters, ptr null, ptr @cgroup_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@.str.3 = private constant [7 x i8] c"cgroup\00", align 1
@cgroup1_fs_parameters = external dso_local constant [0 x %struct.fs_parameter_spec], align 4
@cgroup_fs_type = dso_local global %struct.file_system_type { ptr @.str.3, i32 8, ptr @cgroup_init_fs_context, ptr @cgroup1_fs_parameters, ptr null, ptr @cgroup_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@__kstrtab_cgroup_path_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_cgroup_path_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_cgroup_path_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cgroup_path_ns to i32), ptr @__kstrtab_cgroup_path_ns, ptr @__kstrtabns_cgroup_path_ns }, section "___ksymtab_gpl+cgroup_path_ns", align 4
@cgroup_hierarchy_idr = internal global %struct.idr { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554436, ptr null }, i32 0, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@__kstrtab_task_cgroup_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_task_cgroup_path = external dso_local constant [0 x i8], align 1
@__ksymtab_task_cgroup_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @task_cgroup_path to i32), ptr @__kstrtab_task_cgroup_path, ptr @__kstrtabns_task_cgroup_path }, section "___ksymtab_gpl+task_cgroup_path", align 4
@cgroup_migrate_prepare_dst.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@trace_cgroup_path = dso_local global [1024 x i8] zeroinitializer, align 1
@cgroup_file_kn_lock = internal global %struct.spinlock zeroinitializer, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_css_next_descendant_pre = external dso_local constant [0 x i8], align 1
@__kstrtabns_css_next_descendant_pre = external dso_local constant [0 x i8], align 1
@__ksymtab_css_next_descendant_pre = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @css_next_descendant_pre to i32), ptr @__kstrtab_css_next_descendant_pre, ptr @__kstrtabns_css_next_descendant_pre }, section "___ksymtab_gpl+css_next_descendant_pre", align 4
@cgroup_init_early.ctx = internal global %struct.cgroup_fs_context zeroinitializer, section ".init.data", align 4
@init_task = external dso_local global %struct.task_struct, align 64
@cgroup_base_files = internal global [13 x %struct.cftype] [%struct.cftype { [64 x i8] c"cgroup.type\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_type_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_type_write, ptr null }, %struct.cftype { [64 x i8] c"cgroup.procs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 4, i32 156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @cgroup_procs_release, ptr null, ptr null, ptr @cgroup_procs_show, ptr @cgroup_procs_start, ptr @cgroup_procs_next, ptr null, ptr null, ptr null, ptr @cgroup_procs_write, ptr null }, %struct.cftype { [64 x i8] c"cgroup.threads\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 4, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @cgroup_procs_release, ptr null, ptr null, ptr @cgroup_procs_show, ptr @cgroup_threads_start, ptr @cgroup_procs_next, ptr null, ptr null, ptr null, ptr @cgroup_threads_write, ptr null }, %struct.cftype { [64 x i8] c"cgroup.controllers\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_controllers_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.cftype { [64 x i8] c"cgroup.subtree_control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 4, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_subtree_control_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_subtree_control_write, ptr null }, %struct.cftype { [64 x i8] c"cgroup.events\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 2, i32 184, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_events_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.cftype { [64 x i8] c"cgroup.max.descendants\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_max_descendants_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_max_descendants_write, ptr null }, %struct.cftype { [64 x i8] c"cgroup.max.depth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_max_depth_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_max_depth_write, ptr null }, %struct.cftype { [64 x i8] c"cgroup.stat\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_stat_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.cftype { [64 x i8] c"cgroup.freeze\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_freeze_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_freeze_write, ptr null }, %struct.cftype { [64 x i8] c"cgroup.kill\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_kill_write, ptr null }, %struct.cftype { [64 x i8] c"cpu.stat\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpu_stat_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.cftype zeroinitializer], align 4
@cgroup1_base_files = external dso_local global [0 x %struct.cftype], align 4
@fs_kobj = external dso_local local_unnamed_addr global ptr, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"cgroups\00", align 1
@__initcall__kmod_cgroup__535_5951_cgroup_wq_init1 = internal global ptr @cgroup_wq_init, section ".initcall1.init", align 4
@__kstrtab_cgroup_get_from_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_cgroup_get_from_id = external dso_local constant [0 x i8], align 1
@__ksymtab_cgroup_get_from_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cgroup_get_from_id to i32), ptr @__kstrtab_cgroup_get_from_id, ptr @__kstrtabns_cgroup_get_from_id }, section "___ksymtab_gpl+cgroup_get_from_id", align 4
@cgrp_dfl_visible = internal unnamed_addr global i1 false, align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%sname=%s\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c" (deleted)\0A\00", align 1
@cgroup_post_fork.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cgroup_post_fork.__already_done.15 = internal unnamed_addr global i1 false, section ".data.once", align 1
@cgroup_exit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cgroup_exit.__already_done.16 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__setup_str_cgroup_disable = internal constant [16 x i8] c"cgroup_disable=\00", section ".init.rodata", align 1
@__setup_cgroup_disable = internal global %struct.obs_kernel_param { ptr @__setup_str_cgroup_disable, ptr @cgroup_disable, i32 0 }, section ".init.setup", align 4
@__setup_str_enable_cgroup_debug = internal constant [13 x i8] c"cgroup_debug\00", section ".init.rodata", align 1
@__setup_enable_cgroup_debug = internal global %struct.obs_kernel_param { ptr @__setup_str_enable_cgroup_debug, ptr @enable_cgroup_debug, i32 0 }, section ".init.setup", align 4
@__kstrtab_cgroup_get_from_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_cgroup_get_from_path = external dso_local constant [0 x i8], align 1
@__ksymtab_cgroup_get_from_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cgroup_get_from_path to i32), ptr @__kstrtab_cgroup_get_from_path, ptr @__kstrtabns_cgroup_get_from_path }, section "___ksymtab_gpl+cgroup_get_from_path", align 4
@__kstrtab_cgroup_get_from_fd = external dso_local constant [0 x i8], align 1
@__kstrtabns_cgroup_get_from_fd = external dso_local constant [0 x i8], align 1
@__ksymtab_cgroup_get_from_fd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cgroup_get_from_fd to i32), ptr @__kstrtab_cgroup_get_from_fd, ptr @__kstrtabns_cgroup_get_from_fd }, section "___ksymtab_gpl+cgroup_get_from_fd", align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"%lld.%n%lld%n\00", align 1
@__initcall__kmod_cgroup__543_6780_cgroup_sysfs_init4 = internal global ptr @cgroup_sysfs_init, section ".initcall4.init", align 4
@cgroup_debug = dso_local local_unnamed_addr global i8 0, section ".data..read_mostly", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"u16\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"ss_mask\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"root=%d ss_mask=%#x name=%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"u64\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"root=%d id=%llu level=%d path=%s\0A\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"dst_root\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"dst_level\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"dst_id\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"dst_path\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@.str.37 = private unnamed_addr constant [65 x i8] c"dst_root=%d dst_id=%llu dst_level=%d dst_path=%s pid=%d comm=%s\0A\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"root=%d id=%llu level=%d path=%s val=%d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_cgroup_housekeeping.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"&cgrp->pidlist_mutex\00", align 1
@init_cgroup_housekeeping.__key.41 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"&cgrp->offline_waitq\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"\014cgroup: %s: failed to add %s, err=%d\0A\00", align 1
@__func__.cgroup_addrm_files = private unnamed_addr constant [19 x i8] c"cgroup_addrm_files\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c".__DEBUG__.\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"%s%s.%s\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cgroup_fs_context_ops = internal constant %struct.fs_context_operations { ptr @cgroup_fs_context_free, ptr null, ptr @cgroup2_parse_param, ptr null, ptr @cgroup_get_tree, ptr @cgroup_reconfigure }, align 4
@cgroup1_fs_context_ops = internal constant %struct.fs_context_operations { ptr @cgroup_fs_context_free, ptr null, ptr @cgroup1_parse_param, ptr null, ptr @cgroup1_get_tree, ptr @cgroup1_reconfigure }, align 4
@cgroup2_fs_parameters = internal constant [4 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.47, ptr null, i8 0, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.48, ptr null, i8 1, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.49, ptr null, i8 2, i16 0, ptr null }, %struct.fs_parameter_spec zeroinitializer], align 4
@.str.47 = private unnamed_addr constant [11 x i8] c"nsdelegate\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"memory_localevents\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"memory_recursiveprot\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"cgroup2\00", align 1
@cgroup_migrate_add_task.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cgroup_get_live.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cgroup_destroy_wq = internal unnamed_addr global ptr null, align 4
@cgroup_idr_lock = internal global %struct.spinlock zeroinitializer, align 4
@css_serial_nr_next = internal unnamed_addr global i64 1, align 8
@.str.51 = private unnamed_addr constant [12 x i8] c",nsdelegate\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c",memory_localevents\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c",memory_recursiveprot\00", align 1
@cgroup_kf_ops = internal global %struct.kernfs_ops { ptr @cgroup_file_open, ptr @cgroup_file_release, ptr @cgroup_seqfile_show, ptr @cgroup_seqfile_start, ptr @cgroup_seqfile_next, ptr @cgroup_seqfile_stop, ptr null, i32 4096, i8 0, ptr @cgroup_file_write, ptr @cgroup_file_poll, ptr null }, align 4
@cgroup_kf_single_ops = internal global %struct.kernfs_ops { ptr @cgroup_file_open, ptr @cgroup_file_release, ptr @cgroup_seqfile_show, ptr null, ptr null, ptr null, ptr null, i32 4096, i8 0, ptr @cgroup_file_write, ptr @cgroup_file_poll, ptr null }, align 4
@.str.54 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"threaded\0A\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"domain invalid\0A\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"domain threaded\0A\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"domain\0A\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"threaded\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@__cgroup_procs_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"populated %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"frozen %d\0A\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"max\0A\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"nr_descendants %d\0A\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"nr_dying_descendants %d\0A\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"cgroup_destroy\00", align 1
@css_set_move_task.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@css_set_move_task.__already_done.70 = internal unnamed_addr global i1 false, section ".data.once", align 1
@css_set_move_task.__already_done.71 = internal unnamed_addr global i1 false, section ".data.once", align 1
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@cgroup_sysfs_attr_group = internal constant %struct.attribute_group { ptr @.str.3, ptr null, ptr null, ptr @cgroup_sysfs_attrs, ptr null }, align 4
@cgroup_sysfs_attrs = internal global [3 x ptr] [ptr @cgroup_delegate_attr, ptr @cgroup_features_attr, ptr null], align 4
@cgroup_delegate_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.77, i16 292 }, ptr @delegate_show, ptr null }, align 4
@cgroup_features_attr = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.80, i16 292 }, ptr @features_show, ptr null }, align 4
@.str.77 = private unnamed_addr constant [9 x i8] c"delegate\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@.str.81 = private unnamed_addr constant [52 x i8] c"nsdelegate\0Amemory_localevents\0Amemory_recursiveprot\0A\00", align 1
@llvm.compiler.used = appending global [69 x ptr] [ptr @__event_cgroup_attach_task, ptr @__event_cgroup_destroy_root, ptr @__event_cgroup_freeze, ptr @__event_cgroup_mkdir, ptr @__event_cgroup_notify_frozen, ptr @__event_cgroup_notify_populated, ptr @__event_cgroup_release, ptr @__event_cgroup_remount, ptr @__event_cgroup_rename, ptr @__event_cgroup_rmdir, ptr @__event_cgroup_setup_root, ptr @__event_cgroup_transfer_tasks, ptr @__event_cgroup_unfreeze, ptr @__initcall__kmod_cgroup__535_5951_cgroup_wq_init1, ptr @__initcall__kmod_cgroup__543_6780_cgroup_sysfs_init4, ptr @__ksymtab_cgroup_get_e_css, ptr @__ksymtab_cgroup_get_from_fd, ptr @__ksymtab_cgroup_get_from_id, ptr @__ksymtab_cgroup_get_from_path, ptr @__ksymtab_cgroup_path_ns, ptr @__ksymtab_cgrp_dfl_root, ptr @__ksymtab_css_next_descendant_pre, ptr @__ksymtab_of_css, ptr @__ksymtab_task_cgroup_path, ptr @__setup_cgroup_disable, ptr @__setup_enable_cgroup_debug, ptr @__tracepoint_cgroup_attach_task, ptr @__tracepoint_cgroup_destroy_root, ptr @__tracepoint_cgroup_freeze, ptr @__tracepoint_cgroup_mkdir, ptr @__tracepoint_cgroup_notify_frozen, ptr @__tracepoint_cgroup_notify_populated, ptr @__tracepoint_cgroup_release, ptr @__tracepoint_cgroup_remount, ptr @__tracepoint_cgroup_rename, ptr @__tracepoint_cgroup_rmdir, ptr @__tracepoint_cgroup_setup_root, ptr @__tracepoint_cgroup_transfer_tasks, ptr @__tracepoint_cgroup_unfreeze, ptr @__tracepoint_ptr_cgroup_attach_task, ptr @__tracepoint_ptr_cgroup_destroy_root, ptr @__tracepoint_ptr_cgroup_freeze, ptr @__tracepoint_ptr_cgroup_mkdir, ptr @__tracepoint_ptr_cgroup_notify_frozen, ptr @__tracepoint_ptr_cgroup_notify_populated, ptr @__tracepoint_ptr_cgroup_release, ptr @__tracepoint_ptr_cgroup_remount, ptr @__tracepoint_ptr_cgroup_rename, ptr @__tracepoint_ptr_cgroup_rmdir, ptr @__tracepoint_ptr_cgroup_setup_root, ptr @__tracepoint_ptr_cgroup_transfer_tasks, ptr @__tracepoint_ptr_cgroup_unfreeze, ptr @event_cgroup_attach_task, ptr @event_cgroup_destroy_root, ptr @event_cgroup_freeze, ptr @event_cgroup_mkdir, ptr @event_cgroup_notify_frozen, ptr @event_cgroup_notify_populated, ptr @event_cgroup_release, ptr @event_cgroup_remount, ptr @event_cgroup_rename, ptr @event_cgroup_rmdir, ptr @event_cgroup_setup_root, ptr @event_cgroup_transfer_tasks, ptr @event_cgroup_unfreeze, ptr @event_class_cgroup, ptr @event_class_cgroup_event, ptr @event_class_cgroup_migrate, ptr @event_class_cgroup_root], section "llvm.metadata"
@switch.table.cgroup2_parse_param = private unnamed_addr constant [3 x i32] [i32 8, i32 32, i32 64], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cgroup_setup_root(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_setup_root, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #27
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
define dso_local i32 @__traceiter_cgroup_destroy_root(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_destroy_root, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #27
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cgroup_remount(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_remount, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #27
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cgroup_mkdir(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_mkdir, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #27
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cgroup_rmdir(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_rmdir, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #27
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cgroup_release(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_release, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #27
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cgroup_rename(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_rename, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #27
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cgroup_freeze(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_freeze, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #27
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cgroup_unfreeze(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_unfreeze, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #27
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cgroup_attach_task(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_attach_task, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) #27
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cgroup_transfer_tasks(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_transfer_tasks, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) #27
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cgroup_notify_populated(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_notify_populated, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #27
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cgroup_notify_frozen(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_notify_frozen, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #27
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cgroup_root(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #27
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #27
  br i1 %12, label %34, label %13

13:                                               ; preds = %11, %8, %2
  %14 = getelementptr inbounds %struct.cgroup_root, ptr %1, i32 0, i32 9
  %15 = tail call i32 @strlen(ptr noundef %14) #27
  %16 = add i32 %15, 21
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %16) #27
  %18 = icmp eq ptr %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %13
  %20 = shl i32 %15, 16
  %21 = add i32 %20, 65556
  %22 = getelementptr inbounds %struct.trace_event_raw_cgroup_root, ptr %17, i32 0, i32 3
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.cgroup_root, ptr %1, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.trace_event_raw_cgroup_root, ptr %17, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.cgroup_root, ptr %1, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = trunc i32 %27 to i16
  %29 = getelementptr inbounds %struct.trace_event_raw_cgroup_root, ptr %17, i32 0, i32 2
  store i16 %28, ptr %29, align 4
  %30 = getelementptr i8, ptr %17, i32 20
  %31 = icmp eq ptr %14, null
  %32 = select i1 %31, ptr @.str.18, ptr %14
  %33 = call ptr @strcpy(ptr noundef %30, ptr noundef %32)
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #27
  br label %34

34:                                               ; preds = %19, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_cgroup_root(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #27
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.cgroup_root, ptr %1, i32 0, i32 9
  %6 = tail call i32 @strlen(ptr noundef %5) #27
  %7 = shl i32 %6, 16
  %8 = add i32 %7, 65556
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #19, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %54, label %23

23:                                               ; preds = %20, %2
  %24 = add i32 %6, 32
  %25 = and i32 %24, -8
  %26 = add i32 %25, -4
  %27 = call ptr @perf_trace_buf_alloc(i32 noundef %26, ptr noundef nonnull %3, ptr noundef nonnull %4) #27
  %28 = icmp eq ptr %27, null
  br i1 %28, label %54, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr %3, align 4
  %31 = call ptr @llvm.returnaddress(i32 0) #27
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %30, i32 0, i32 15
  store i32 %32, ptr %33, align 4
  %34 = call ptr @llvm.frameaddress.p0(i32 0) #27
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %30, i32 0, i32 11
  store i32 %35, ptr %36, align 4
  %37 = call i32 @llvm.read_register.i32(metadata !0) #27
  %38 = getelementptr [18 x i32], ptr %30, i32 0, i32 13
  store i32 %37, ptr %38, align 4
  %39 = getelementptr [18 x i32], ptr %30, i32 0, i32 16
  store i32 19, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_cgroup_root, ptr %27, i32 0, i32 3
  store i32 %8, ptr %40, align 4
  %41 = getelementptr inbounds %struct.cgroup_root, ptr %1, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr inbounds %struct.trace_event_raw_cgroup_root, ptr %27, i32 0, i32 1
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.cgroup_root, ptr %1, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = trunc i32 %45 to i16
  %47 = getelementptr inbounds %struct.trace_event_raw_cgroup_root, ptr %27, i32 0, i32 2
  store i16 %46, ptr %47, align 4
  %48 = getelementptr i8, ptr %27, i32 20
  %49 = icmp eq ptr %5, null
  %50 = select i1 %49, ptr @.str.18, ptr %5
  %51 = call ptr @strcpy(ptr noundef %48, ptr noundef %50)
  %52 = load i32, ptr %4, align 4
  %53 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %27, i32 noundef %26, i32 noundef %52, ptr noundef %0, i64 noundef 1, ptr noundef %53, ptr noundef %16, ptr noundef null) #27
  br label %54

54:                                               ; preds = %29, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cgroup(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #27
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #27
  br i1 %13, label %40, label %14

14:                                               ; preds = %12, %9, %3
  %15 = icmp eq ptr %2, null
  %16 = select i1 %15, ptr @.str.18, ptr %2
  %17 = tail call i32 @strlen(ptr noundef %16) #27
  %18 = add i32 %17, 33
  %19 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %18) #27
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %14
  %22 = shl i32 %17, 16
  %23 = add i32 %22, 65564
  %24 = getelementptr inbounds %struct.trace_event_raw_cgroup, ptr %19, i32 0, i32 4
  store i32 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 19
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.cgroup_root, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.trace_event_raw_cgroup, ptr %19, i32 0, i32 1
  store i32 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 11
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.kernfs_node, ptr %31, i32 0, i32 9
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds %struct.trace_event_raw_cgroup, ptr %19, i32 0, i32 3
  store i64 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_cgroup, ptr %19, i32 0, i32 2
  store i32 %36, ptr %37, align 4
  %38 = getelementptr i8, ptr %19, i32 28
  %39 = call ptr @strcpy(ptr noundef %38, ptr noundef %16)
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #27
  br label %40

40:                                               ; preds = %21, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_cgroup(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = icmp eq ptr %2, null
  %7 = select i1 %6, ptr @.str.18, ptr %2
  %8 = tail call i32 @strlen(ptr noundef %7) #27
  %9 = shl i32 %8, 16
  %10 = add i32 %9, 65564
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #19, !srcloc !12
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load volatile ptr, ptr %18, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %60, label %25

25:                                               ; preds = %22, %3
  %26 = add i32 %8, 44
  %27 = and i32 %26, -8
  %28 = add i32 %27, -4
  %29 = call ptr @perf_trace_buf_alloc(i32 noundef %28, ptr noundef nonnull %4, ptr noundef nonnull %5) #27
  %30 = icmp eq ptr %29, null
  br i1 %30, label %60, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %4, align 4
  %33 = call ptr @llvm.returnaddress(i32 0) #27
  %34 = ptrtoint ptr %33 to i32
  %35 = getelementptr [18 x i32], ptr %32, i32 0, i32 15
  store i32 %34, ptr %35, align 4
  %36 = call ptr @llvm.frameaddress.p0(i32 0) #27
  %37 = ptrtoint ptr %36 to i32
  %38 = getelementptr [18 x i32], ptr %32, i32 0, i32 11
  store i32 %37, ptr %38, align 4
  %39 = call i32 @llvm.read_register.i32(metadata !0) #27
  %40 = getelementptr [18 x i32], ptr %32, i32 0, i32 13
  store i32 %39, ptr %40, align 4
  %41 = getelementptr [18 x i32], ptr %32, i32 0, i32 16
  store i32 19, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_cgroup, ptr %29, i32 0, i32 4
  store i32 %10, ptr %42, align 8
  %43 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 19
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.cgroup_root, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr inbounds %struct.trace_event_raw_cgroup, ptr %29, i32 0, i32 1
  store i32 %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 11
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.kernfs_node, ptr %49, i32 0, i32 9
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds %struct.trace_event_raw_cgroup, ptr %29, i32 0, i32 3
  store i64 %51, ptr %52, align 8
  %53 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.trace_event_raw_cgroup, ptr %29, i32 0, i32 2
  store i32 %54, ptr %55, align 4
  %56 = getelementptr i8, ptr %29, i32 28
  %57 = call ptr @strcpy(ptr noundef %56, ptr noundef %7)
  %58 = load i32, ptr %5, align 4
  %59 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %29, i32 noundef %28, i32 noundef %58, ptr noundef %0, i64 noundef 1, ptr noundef %59, ptr noundef %18, ptr noundef null) #27
  br label %60

60:                                               ; preds = %31, %25, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cgroup_migrate(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3, i1 noundef zeroext %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #27
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
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #27
  br i1 %15, label %58, label %16

16:                                               ; preds = %14, %11, %5
  %17 = icmp eq ptr %2, null
  %18 = select i1 %17, ptr @.str.18, ptr %2
  %19 = tail call i32 @strlen(ptr noundef %18) #27
  %20 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 85
  %21 = tail call i32 @strlen(ptr noundef %20) #27
  %22 = add i32 %21, 1
  %23 = add i32 %19, 41
  %24 = add i32 %23, %22
  %25 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %24) #27
  %26 = icmp eq ptr %25, null
  br i1 %26, label %58, label %27

27:                                               ; preds = %16
  %28 = shl i32 %22, 16
  %29 = add i32 %19, 37
  %30 = or i32 %28, %29
  %31 = shl i32 %19, 16
  %32 = add i32 %31, 65572
  %33 = getelementptr inbounds %struct.trace_event_raw_cgroup_migrate, ptr %25, i32 0, i32 5
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_cgroup_migrate, ptr %25, i32 0, i32 6
  store i32 %30, ptr %34, align 8
  %35 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 19
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.cgroup_root, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.trace_event_raw_cgroup_migrate, ptr %25, i32 0, i32 1
  store i32 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 11
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.kernfs_node, ptr %41, i32 0, i32 9
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds %struct.trace_event_raw_cgroup_migrate, ptr %25, i32 0, i32 3
  store i64 %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_cgroup_migrate, ptr %25, i32 0, i32 2
  store i32 %46, ptr %47, align 4
  %48 = getelementptr i8, ptr %25, i32 36
  %49 = call ptr @strcpy(ptr noundef %48, ptr noundef %18)
  %50 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 52
  %51 = load i32, ptr %50, align 8
  %52 = getelementptr inbounds %struct.trace_event_raw_cgroup_migrate, ptr %25, i32 0, i32 4
  store i32 %51, ptr %52, align 8
  %53 = and i32 %29, 65535
  %54 = getelementptr i8, ptr %25, i32 %53
  %55 = icmp eq ptr %20, null
  %56 = select i1 %55, ptr @.str.18, ptr %20
  %57 = call ptr @strcpy(ptr noundef %54, ptr noundef %56)
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #27
  br label %58

58:                                               ; preds = %27, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_cgroup_migrate(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3, i1 noundef zeroext %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = icmp eq ptr %2, null
  %9 = select i1 %8, ptr @.str.18, ptr %2
  %10 = tail call i32 @strlen(ptr noundef %9) #27
  %11 = shl i32 %10, 16
  %12 = add i32 %11, 65536
  %13 = or i32 %12, 36
  %14 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 85
  %15 = tail call i32 @strlen(ptr noundef %14) #27
  %16 = add i32 %15, 1
  %17 = add i32 %10, 37
  %18 = shl i32 %16, 16
  %19 = or i32 %18, %17
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %24 = inttoptr i32 %23 to ptr
  %25 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %24) #19, !srcloc !12
  %26 = add i32 %25, %22
  %27 = inttoptr i32 %26 to ptr
  %28 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load volatile ptr, ptr %27, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %79, label %34

34:                                               ; preds = %31, %5
  %35 = add i32 %10, 52
  %36 = add i32 %35, %16
  %37 = and i32 %36, -8
  %38 = add i32 %37, -4
  %39 = call ptr @perf_trace_buf_alloc(i32 noundef %38, ptr noundef nonnull %6, ptr noundef nonnull %7) #27
  %40 = icmp eq ptr %39, null
  br i1 %40, label %79, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr %6, align 4
  %43 = call ptr @llvm.returnaddress(i32 0) #27
  %44 = ptrtoint ptr %43 to i32
  %45 = getelementptr [18 x i32], ptr %42, i32 0, i32 15
  store i32 %44, ptr %45, align 4
  %46 = call ptr @llvm.frameaddress.p0(i32 0) #27
  %47 = ptrtoint ptr %46 to i32
  %48 = getelementptr [18 x i32], ptr %42, i32 0, i32 11
  store i32 %47, ptr %48, align 4
  %49 = call i32 @llvm.read_register.i32(metadata !0) #27
  %50 = getelementptr [18 x i32], ptr %42, i32 0, i32 13
  store i32 %49, ptr %50, align 4
  %51 = getelementptr [18 x i32], ptr %42, i32 0, i32 16
  store i32 19, ptr %51, align 4
  %52 = getelementptr inbounds %struct.trace_event_raw_cgroup_migrate, ptr %39, i32 0, i32 5
  store i32 %13, ptr %52, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_cgroup_migrate, ptr %39, i32 0, i32 6
  store i32 %19, ptr %53, align 8
  %54 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 19
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.cgroup_root, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 8
  %58 = getelementptr inbounds %struct.trace_event_raw_cgroup_migrate, ptr %39, i32 0, i32 1
  store i32 %57, ptr %58, align 8
  %59 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 11
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.kernfs_node, ptr %60, i32 0, i32 9
  %62 = load i64, ptr %61, align 8
  %63 = getelementptr inbounds %struct.trace_event_raw_cgroup_migrate, ptr %39, i32 0, i32 3
  store i64 %62, ptr %63, align 8
  %64 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.trace_event_raw_cgroup_migrate, ptr %39, i32 0, i32 2
  store i32 %65, ptr %66, align 4
  %67 = getelementptr i8, ptr %39, i32 36
  %68 = call ptr @strcpy(ptr noundef %67, ptr noundef %9)
  %69 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 52
  %70 = load i32, ptr %69, align 8
  %71 = getelementptr inbounds %struct.trace_event_raw_cgroup_migrate, ptr %39, i32 0, i32 4
  store i32 %70, ptr %71, align 8
  %72 = and i32 %17, 65535
  %73 = getelementptr i8, ptr %39, i32 %72
  %74 = icmp eq ptr %14, null
  %75 = select i1 %74, ptr @.str.18, ptr %14
  %76 = call ptr @strcpy(ptr noundef %73, ptr noundef %75)
  %77 = load i32, ptr %7, align 4
  %78 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %39, i32 noundef %38, i32 noundef %77, ptr noundef %0, i64 noundef 1, ptr noundef %78, ptr noundef %27, ptr noundef null) #27
  br label %79

79:                                               ; preds = %41, %34, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cgroup_event(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #27
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #27
  br i1 %14, label %42, label %15

15:                                               ; preds = %13, %10, %4
  %16 = icmp eq ptr %2, null
  %17 = select i1 %16, ptr @.str.18, ptr %2
  %18 = tail call i32 @strlen(ptr noundef %17) #27
  %19 = add i32 %18, 33
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %19) #27
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %15
  %23 = shl i32 %18, 16
  %24 = add i32 %23, 65568
  %25 = getelementptr inbounds %struct.trace_event_raw_cgroup_event, ptr %20, i32 0, i32 4
  store i32 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 19
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.cgroup_root, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.trace_event_raw_cgroup_event, ptr %20, i32 0, i32 1
  store i32 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 11
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.kernfs_node, ptr %32, i32 0, i32 9
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds %struct.trace_event_raw_cgroup_event, ptr %20, i32 0, i32 3
  store i64 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_cgroup_event, ptr %20, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  %39 = getelementptr i8, ptr %20, i32 32
  %40 = call ptr @strcpy(ptr noundef %39, ptr noundef %17)
  %41 = getelementptr inbounds %struct.trace_event_raw_cgroup_event, ptr %20, i32 0, i32 5
  store i32 %3, ptr %41, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #27
  br label %42

42:                                               ; preds = %22, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_cgroup_event(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = icmp eq ptr %2, null
  %8 = select i1 %7, ptr @.str.18, ptr %2
  %9 = tail call i32 @strlen(ptr noundef %8) #27
  %10 = shl i32 %9, 16
  %11 = add i32 %10, 65568
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #19, !srcloc !12
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load volatile ptr, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %62, label %26

26:                                               ; preds = %23, %4
  %27 = add i32 %9, 44
  %28 = and i32 %27, -8
  %29 = add i32 %28, -4
  %30 = call ptr @perf_trace_buf_alloc(i32 noundef %29, ptr noundef nonnull %5, ptr noundef nonnull %6) #27
  %31 = icmp eq ptr %30, null
  br i1 %31, label %62, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %5, align 4
  %34 = call ptr @llvm.returnaddress(i32 0) #27
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %33, i32 0, i32 15
  store i32 %35, ptr %36, align 4
  %37 = call ptr @llvm.frameaddress.p0(i32 0) #27
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %33, i32 0, i32 11
  store i32 %38, ptr %39, align 4
  %40 = call i32 @llvm.read_register.i32(metadata !0) #27
  %41 = getelementptr [18 x i32], ptr %33, i32 0, i32 13
  store i32 %40, ptr %41, align 4
  %42 = getelementptr [18 x i32], ptr %33, i32 0, i32 16
  store i32 19, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_cgroup_event, ptr %30, i32 0, i32 4
  store i32 %11, ptr %43, align 8
  %44 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 19
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.cgroup_root, ptr %45, i32 0, i32 2
  %47 = load i32, ptr %46, align 8
  %48 = getelementptr inbounds %struct.trace_event_raw_cgroup_event, ptr %30, i32 0, i32 1
  store i32 %47, ptr %48, align 8
  %49 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 11
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.kernfs_node, ptr %50, i32 0, i32 9
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds %struct.trace_event_raw_cgroup_event, ptr %30, i32 0, i32 3
  store i64 %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.trace_event_raw_cgroup_event, ptr %30, i32 0, i32 2
  store i32 %55, ptr %56, align 4
  %57 = getelementptr i8, ptr %30, i32 32
  %58 = call ptr @strcpy(ptr noundef %57, ptr noundef %8)
  %59 = getelementptr inbounds %struct.trace_event_raw_cgroup_event, ptr %30, i32 0, i32 5
  store i32 %3, ptr %59, align 4
  %60 = load i32, ptr %6, align 4
  %61 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %30, i32 noundef %29, i32 noundef %60, ptr noundef %0, i64 noundef 1, ptr noundef %61, ptr noundef %19, ptr noundef null) #27
  br label %62

62:                                               ; preds = %32, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cgroup_ssid_enabled(i32 %0) local_unnamed_addr #3 {
  ret i1 false
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cgroup_on_dfl(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @cgrp_dfl_root
  ret i1 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cgroup_is_threaded(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ne ptr %3, %0
  ret i1 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cgroup_is_thread_root(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp ne i32 %7, 0
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i1 [ false, %1 ], [ %8, %5 ]
  ret i1 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local noalias ptr @cgroup_e_css(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #3 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local noalias ptr @cgroup_get_e_css(ptr nocapture readnone %0, ptr nocapture readnone %1) #3 {
  ret ptr null
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @__cgroup_task_count(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %15, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %13, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %12, %5 ], [ 0, %1 ]
  %8 = getelementptr i8, ptr %6, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.css_set, ptr %9, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %7
  %13 = load ptr, ptr %6, align 4
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %15, label %5

15:                                               ; preds = %5, %1
  %16 = phi i32 [ 0, %1 ], [ %12, %5 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cgroup_task_count(ptr noundef readonly %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %2 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %15, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %13, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %12, %5 ], [ 0, %1 ]
  %8 = getelementptr i8, ptr %6, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.css_set, ptr %9, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %7
  %13 = load ptr, ptr %6, align 4
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %15, label %5

15:                                               ; preds = %5, %1
  %16 = phi i32 [ 0, %1 ], [ %12, %5 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %17 = load i16, ptr @css_set_lock, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @of_css(ptr nocapture noundef readonly %0) #6 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_css_set_locked(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #27, !srcloc !19
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #27, !srcloc !20
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %98, label %8, !prof !10

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #27
  br label %98

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !21
  %10 = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 10
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp ne ptr %11, %10
  %13 = load i1, ptr @put_css_set_locked.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !11

16:                                               ; preds = %9
  store i1 true, ptr @put_css_set_locked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 966, i32 noundef 9, ptr noundef null) #27
  br label %17

17:                                               ; preds = %16, %9
  %18 = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 12
  %19 = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 12, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %18, align 4
  store volatile ptr %23, ptr %20, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.hlist_node, ptr %23, i32 0, i32 1
  store volatile ptr %20, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %22
  store ptr null, ptr %18, align 4
  store ptr null, ptr %19, align 4
  br label %28

28:                                               ; preds = %27, %17
  %29 = load i32, ptr @css_set_count, align 4
  %30 = add i32 %29, -1
  store i32 %30, ptr @css_set_count, align 4
  %31 = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 13
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %83, label %34

34:                                               ; preds = %81, %28
  %35 = phi ptr [ %37, %81 ], [ %32, %28 ]
  %36 = getelementptr i8, ptr %35, i32 -16
  %37 = load ptr, ptr %35, align 4
  %38 = getelementptr i8, ptr %35, i32 -8
  %39 = getelementptr i8, ptr %35, i32 -4
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %38, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %40, ptr %42, align 4
  store volatile ptr %41, ptr %40, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %38, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %39, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %35, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %44, ptr %46, align 4
  store volatile ptr %45, ptr %44, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %35, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %43, align 4
  %47 = load ptr, ptr %36, align 4
  %48 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %47, i32 0, i32 12
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %81, label %51

51:                                               ; preds = %34
  %52 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %47, i32 0, i32 7
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %47, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %58, 3
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %70, !prof !10

61:                                               ; preds = %56
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #27, !srcloc !23
  %63 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %64 = inttoptr i32 %63 to ptr
  %65 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %64) #19, !srcloc !12
  %66 = add i32 %65, %58
  %67 = inttoptr i32 %66 to ptr
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, -1
  store i32 %69, ptr %67, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %62) #27, !srcloc !24
  br label %80

70:                                               ; preds = %56
  %71 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %47, i32 0, i32 2, i32 1
  %72 = load ptr, ptr %71, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %72) #27, !srcloc !19
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %72, ptr %72, i32 1, ptr elementtype(i32) %72) #27, !srcloc !26
  %74 = extractvalue { i32, i32 } %73, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !27
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80, !prof !11

76:                                               ; preds = %70
  %77 = load ptr, ptr %71, align 4
  %78 = getelementptr inbounds %struct.percpu_ref_data, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  tail call void %79(ptr noundef %57) #27
  br label %80

80:                                               ; preds = %76, %70, %61
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %81

81:                                               ; preds = %80, %51, %34
  tail call void @kfree(ptr noundef %36) #27
  %82 = icmp eq ptr %37, %31
  br i1 %82, label %83, label %34

83:                                               ; preds = %81, %28
  %84 = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, %0
  br i1 %86, label %94, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 11
  %89 = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 11, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = load ptr, ptr %88, align 4
  %92 = getelementptr inbounds %struct.list_head, ptr %91, i32 0, i32 1
  store ptr %90, ptr %92, align 4
  store volatile ptr %91, ptr %90, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %88, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %89, align 4
  %93 = load ptr, ptr %84, align 4
  tail call void @put_css_set_locked(ptr noundef %93)
  br label %94

94:                                               ; preds = %87, %83
  %95 = icmp eq ptr %0, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 20
  tail call void @kvfree_call_rcu(ptr noundef %97, ptr noundef nonnull inttoptr (i32 112 to ptr)) #27
  br label %98

98:                                               ; preds = %96, %94, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @cgroup_root_from_kf(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.cgroup, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_free_root(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @task_cgroup_from_root(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 123
  %4 = load volatile ptr, ptr %3, align 16
  %5 = icmp eq ptr %4, @init_css_set
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cgroup_root, ptr %1, i32 0, i32 3
  br label %25

8:                                                ; preds = %2
  %9 = icmp eq ptr %1, @cgrp_dfl_root
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.css_set, ptr %4, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  br label %25

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.css_set, ptr %4, i32 0, i32 13
  br label %15

15:                                               ; preds = %19, %13
  %16 = phi ptr [ %14, %13 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %14
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %17, i32 -16
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.cgroup, ptr %21, i32 0, i32 19
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %25, label %15

25:                                               ; preds = %19, %10, %6
  %26 = phi ptr [ %7, %6 ], [ %12, %10 ], [ %21, %19 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29, !prof !11

28:                                               ; preds = %25, %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1442, 0\0A.popsection", ""() #27, !srcloc !29
  unreachable

29:                                               ; preds = %25
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_kn_unlock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 10
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 15
  %5 = icmp eq i16 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ %0, %1 ]
  %11 = getelementptr inbounds %struct.kernfs_node, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #27
  tail call void @kernfs_unbreak_active_protection(ptr noundef %0) #27
  %13 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %12, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %12, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 3
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31, !prof !10

22:                                               ; preds = %17
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #27, !srcloc !23
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #19, !srcloc !12
  %27 = add i32 %26, %19
  %28 = inttoptr i32 %27 to ptr
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, -1
  store i32 %30, ptr %28, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #27, !srcloc !24
  br label %41

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %12, i32 0, i32 2, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #27, !srcloc !19
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #27, !srcloc !26
  %35 = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !27
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41, !prof !11

37:                                               ; preds = %31
  %38 = load ptr, ptr %32, align 4
  %39 = getelementptr inbounds %struct.percpu_ref_data, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void %40(ptr noundef %18) #27
  br label %41

41:                                               ; preds = %37, %31, %22
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %42

42:                                               ; preds = %41, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_unbreak_active_protection(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cgroup_kn_lock_live(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 10
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 15
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %12 = getelementptr inbounds %struct.kernfs_node, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %13, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %13, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32, !prof !10

23:                                               ; preds = %18
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #27, !srcloc !23
  %25 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %26 = inttoptr i32 %25 to ptr
  %27 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %26) #19, !srcloc !12
  %28 = add i32 %27, %20
  %29 = inttoptr i32 %28 to ptr
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %24) #27, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %40

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %13, i32 0, i32 2, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #27, !srcloc !19
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 0, i32 1, ptr elementtype(i32) %34) #27, !srcloc !31
  %36 = extractvalue { i32, i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %40

39:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %99

40:                                               ; preds = %38, %23, %10
  tail call void @kernfs_break_active_protection(ptr noundef %0) #27
  tail call void @mutex_lock(ptr noundef nonnull @cgroup_mutex) #27
  br i1 %1, label %41, label %94

41:                                               ; preds = %41, %40
  %42 = phi ptr [ %45, %41 ], [ %13, %40 ]
  %43 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %42, i32 0, i32 4
  %44 = load volatile ptr, ptr %43, align 8
  %45 = getelementptr i8, ptr %44, i32 -16
  %46 = icmp eq ptr %44, %43
  %47 = icmp eq ptr %45, null
  %48 = or i1 %46, %47
  br i1 %48, label %49, label %41

49:                                               ; preds = %41
  %50 = icmp eq ptr %42, null
  br i1 %50, label %94, label %51

51:                                               ; preds = %91, %49
  %52 = phi ptr [ %92, %91 ], [ %42, %49 ]
  %53 = icmp eq ptr %52, %13
  br i1 %53, label %94, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %52, i32 0, i32 12
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %52, i32 0, i32 7
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %73, label %61, !prof !10

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %56, i32 0, i32 4
  %63 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %52, i32 0, i32 8
  br label %64

64:                                               ; preds = %68, %61
  %65 = phi ptr [ %62, %61 ], [ %66, %68 ]
  %66 = load volatile ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, %62
  br i1 %67, label %91, label %68

68:                                               ; preds = %64
  %69 = getelementptr i8, ptr %66, i32 32
  %70 = load i64, ptr %69, align 8
  %71 = load i64, ptr %63, align 8
  %72 = icmp ugt i64 %70, %71
  br i1 %72, label %76, label %64

73:                                               ; preds = %54
  %74 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %52, i32 0, i32 3
  %75 = load volatile ptr, ptr %74, align 8
  br label %76

76:                                               ; preds = %73, %68
  %77 = phi ptr [ %75, %73 ], [ %66, %68 ]
  %78 = getelementptr i8, ptr %77, i32 -16
  %79 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %56, i32 0, i32 4
  %80 = icmp eq ptr %77, %79
  %81 = icmp eq ptr %78, null
  %82 = or i1 %80, %81
  br i1 %82, label %91, label %83

83:                                               ; preds = %83, %76
  %84 = phi ptr [ %87, %83 ], [ %78, %76 ]
  %85 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %84, i32 0, i32 4
  %86 = load volatile ptr, ptr %85, align 8
  %87 = getelementptr i8, ptr %86, i32 -16
  %88 = icmp eq ptr %86, %85
  %89 = icmp eq ptr %87, null
  %90 = or i1 %88, %89
  br i1 %90, label %91, label %83

91:                                               ; preds = %83, %76, %64
  %92 = phi ptr [ %56, %76 ], [ %84, %83 ], [ %56, %64 ]
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %51

94:                                               ; preds = %91, %51, %49, %40
  %95 = load i32, ptr %14, align 4
  %96 = and i32 %95, 2
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  tail call void @cgroup_kn_unlock(ptr noundef %0)
  br label %99

99:                                               ; preds = %98, %94, %39
  %100 = phi ptr [ null, %98 ], [ null, %39 ], [ %13, %94 ]
  ret ptr %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_break_active_protection(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_lock_and_drain_offline(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @cgroup_mutex) #27
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %6, %2 ], [ %0, %1 ]
  %4 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %3, i32 0, i32 4
  %5 = load volatile ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -16
  %7 = icmp eq ptr %5, %4
  %8 = icmp eq ptr %6, null
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %2

10:                                               ; preds = %2
  %11 = icmp eq ptr %3, null
  br i1 %11, label %55, label %12

12:                                               ; preds = %52, %10
  %13 = phi ptr [ %53, %52 ], [ %3, %10 ]
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %55, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %13, i32 0, i32 12
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %13, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22, !prof !10

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %17, i32 0, i32 4
  %24 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %13, i32 0, i32 8
  br label %25

25:                                               ; preds = %29, %22
  %26 = phi ptr [ %23, %22 ], [ %27, %29 ]
  %27 = load volatile ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, %23
  br i1 %28, label %52, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %27, i32 32
  %31 = load i64, ptr %30, align 8
  %32 = load i64, ptr %24, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %37, label %25

34:                                               ; preds = %15
  %35 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %13, i32 0, i32 3
  %36 = load volatile ptr, ptr %35, align 8
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi ptr [ %36, %34 ], [ %27, %29 ]
  %39 = getelementptr i8, ptr %38, i32 -16
  %40 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %17, i32 0, i32 4
  %41 = icmp eq ptr %38, %40
  %42 = icmp eq ptr %39, null
  %43 = or i1 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %44, %37
  %45 = phi ptr [ %48, %44 ], [ %39, %37 ]
  %46 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %45, i32 0, i32 4
  %47 = load volatile ptr, ptr %46, align 8
  %48 = getelementptr i8, ptr %47, i32 -16
  %49 = icmp eq ptr %47, %46
  %50 = icmp eq ptr %48, null
  %51 = or i1 %49, %50
  br i1 %51, label %52, label %44

52:                                               ; preds = %44, %37, %25
  %53 = phi ptr [ %17, %37 ], [ %45, %44 ], [ %17, %25 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %12

55:                                               ; preds = %52, %12, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rebind_subsystems(ptr nocapture noundef readonly %0, i16 zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cgroup_root, ptr %0, i32 0, i32 3, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @kernfs_activate(ptr noundef %4) #27
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_activate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cgroup_show_path(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.cgroup, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 4096) #28
  %11 = icmp eq ptr %10, null
  br i1 %11, label %58, label %12

12:                                               ; preds = %3
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %13 = tail call ptr @llvm.thread.pointer() #27
  %14 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 92
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nsproxy, ptr %15, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.cgroup_namespace, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, @init_css_set
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.cgroup_root, ptr %8, i32 0, i32 3
  br label %41

23:                                               ; preds = %12
  %24 = icmp eq ptr %8, @cgrp_dfl_root
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.css_set, ptr %19, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  br label %41

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.css_set, ptr %19, i32 0, i32 13
  br label %30

30:                                               ; preds = %35, %28
  %31 = phi ptr [ %29, %28 ], [ %32, %35 ]
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %29
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %44

35:                                               ; preds = %30
  %36 = getelementptr i8, ptr %32, i32 -16
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.cgroup, ptr %37, i32 0, i32 19
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %8
  br i1 %40, label %41, label %30

41:                                               ; preds = %35, %25, %21
  %42 = phi ptr [ %22, %21 ], [ %27, %25 ], [ %37, %35 ]
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45, !prof !11

44:                                               ; preds = %41, %34
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1412, 0\0A.popsection", ""() #27, !srcloc !33
  unreachable

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.cgroup, ptr %42, i32 0, i32 11
  %47 = load ptr, ptr %46, align 8
  %48 = tail call i32 @kernfs_path_from_node(ptr noundef %1, ptr noundef %47, ptr noundef nonnull %10, i32 noundef 4096) #27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %49 = load i16, ptr @css_set_lock, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  %51 = icmp sgt i32 %48, 4095
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = icmp sgt i32 %48, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %52
  %55 = tail call i32 @strlen(ptr noundef nonnull %10) #27
  tail call void @seq_escape_mem(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %55, i32 noundef 8, ptr noundef nonnull @.str.1) #27
  br label %56

56:                                               ; preds = %54, %52, %45
  %57 = phi i32 [ 0, %54 ], [ %48, %52 ], [ -34, %45 ]
  tail call void @kfree(ptr noundef nonnull %10) #27
  br label %58

58:                                               ; preds = %56, %3
  %59 = phi i32 [ %57, %56 ], [ -12, %3 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_path_from_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @init_cgroup_root(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cgroup_fs_context, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 6
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 6, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 5
  store volatile i32 1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 19
  store ptr %3, ptr %8, align 4
  %9 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 0, i32 3
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 0, i32 3, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 0, i32 4
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 0, i32 4, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 20
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 20, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 29
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 29, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 30
  tail call void @__mutex_init(ptr noundef %17, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_cgroup_housekeeping.__key) #27
  store ptr %4, ptr %4, align 8
  %18 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %19, 2
  store i32 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 22
  store ptr %4, ptr %21, align 8
  %22 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 6
  store i32 2147483647, ptr %22, align 4
  %23 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 3
  store i32 2147483647, ptr %23, align 8
  %24 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 25
  store volatile ptr %24, ptr %24, align 4
  %25 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 25, i32 1
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 28
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %26, i8 0, i64 20, i1 false) #27
  %27 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 31
  tail call void @__init_waitqueue_head(ptr noundef %27, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_cgroup_housekeeping.__key.41) #27
  %28 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 32
  store i32 -32, ptr %28, align 8
  %29 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 32, i32 1
  store volatile ptr %29, ptr %29, align 4
  %30 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 32, i32 1, i32 1
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 32, i32 2
  store ptr @cgroup1_release_agent, ptr %31, align 4
  %32 = getelementptr inbounds %struct.cgroup_fs_context, ptr %0, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 7
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.cgroup_fs_context, ptr %0, i32 0, i32 9
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %1
  %39 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 8
  %40 = tail call i32 @strscpy(ptr noundef %39, ptr noundef nonnull %36, i32 noundef 4096) #27
  br label %41

41:                                               ; preds = %38, %1
  %42 = getelementptr inbounds %struct.cgroup_fs_context, ptr %0, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 9
  %47 = tail call i32 @strscpy(ptr noundef %46, ptr noundef nonnull %43, i32 noundef 64) #27
  br label %48

48:                                               ; preds = %45, %41
  %49 = getelementptr inbounds %struct.cgroup_fs_context, ptr %0, i32 0, i32 4
  %50 = load i8, ptr %49, align 4, !range !34
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 1
  tail call void @_set_bit(i32 noundef 1, ptr noundef %53) #27
  br label %54

54:                                               ; preds = %52, %48
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cgroup_setup_root(ptr noundef %0, i16 zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.cgroup_root, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.cgroup_root, ptr %0, i32 0, i32 3, i32 0, i32 2
  %7 = call i32 @percpu_ref_init(ptr noundef %6, ptr noundef nonnull @css_release, i32 noundef 0, i32 noundef 3264) #27
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %126

9:                                                ; preds = %2
  %10 = load i32, ptr @css_set_count, align 4
  %11 = shl i32 %10, 1
  store volatile ptr %3, ptr %3, align 8
  store ptr %3, ptr %4, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %29, %9
  %14 = phi i32 [ %34, %29 ], [ 0, %9 ]
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 24) #28
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load ptr, ptr %3, align 8
  %20 = icmp eq ptr %19, %3
  br i1 %20, label %124, label %21

21:                                               ; preds = %21, %18
  %22 = phi ptr [ %24, %21 ], [ %19, %18 ]
  %23 = getelementptr i8, ptr %22, i32 -8
  %24 = load ptr, ptr %22, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  store volatile ptr %24, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  call void @kfree(ptr noundef %23) #27
  %28 = icmp eq ptr %24, %3
  br i1 %28, label %124, label %21

29:                                               ; preds = %13
  %30 = getelementptr inbounds %struct.cgrp_cset_link, ptr %16, i32 0, i32 2
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store ptr %31, ptr %30, align 8
  %33 = getelementptr inbounds %struct.cgrp_cset_link, ptr %16, i32 0, i32 2, i32 1
  store ptr %3, ptr %33, align 4
  store volatile ptr %30, ptr %3, align 8
  %34 = add nuw nsw i32 %14, 1
  %35 = icmp eq i32 %34, %11
  br i1 %35, label %36, label %13

36:                                               ; preds = %29, %9
  %37 = call i32 @idr_alloc_cyclic(ptr noundef nonnull @cgroup_hierarchy_idr, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #27
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %124, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.cgroup_root, ptr %0, i32 0, i32 2
  store i32 %37, ptr %40, align 8
  %41 = icmp eq ptr %0, @cgrp_dfl_root
  %42 = select i1 %41, ptr @cgroup_kf_syscall_ops, ptr @cgroup1_kf_syscall_ops
  %43 = call ptr @kernfs_create_root(ptr noundef nonnull %42, i32 noundef 13, ptr noundef %5) #27
  store ptr %43, ptr %0, align 8
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = ptrtoint ptr %43 to i32
  br label %120

47:                                               ; preds = %39
  %48 = load ptr, ptr %43, align 4
  %49 = getelementptr inbounds %struct.cgroup_root, ptr %0, i32 0, i32 3, i32 11
  store ptr %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.kernfs_node, ptr %48, i32 0, i32 9
  %51 = load i64, ptr %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = icmp ne i32 %52, 1
  %54 = load i1, ptr @cgroup_setup_root.__already_done, align 1
  %55 = xor i1 %54, true
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %61, !prof !11

57:                                               ; preds = %47
  store i1 true, ptr @cgroup_setup_root.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2029, i32 noundef 9, ptr noundef null) #27
  %58 = load ptr, ptr %49, align 8
  %59 = getelementptr inbounds %struct.kernfs_node, ptr %58, i32 0, i32 9
  %60 = load i64, ptr %59, align 8
  br label %61

61:                                               ; preds = %57, %47
  %62 = phi i64 [ %60, %57 ], [ %51, %47 ]
  %63 = getelementptr inbounds %struct.cgroup_root, ptr %0, i32 0, i32 4
  store i64 %62, ptr %63, align 8
  %64 = call fastcc i32 @css_populate_dir(ptr noundef %5)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %117

66:                                               ; preds = %61
  %67 = call i32 @cgroup_rstat_init(ptr noundef %5) #27
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %117

69:                                               ; preds = %66
  %70 = load ptr, ptr %49, align 8
  call void @kernfs_activate(ptr noundef %70) #27
  call fastcc void @trace_cgroup_setup_root(ptr noundef %0)
  %71 = getelementptr inbounds %struct.cgroup_root, ptr %0, i32 0, i32 6
  %72 = load ptr, ptr @cgroup_roots, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %71, ptr %73, align 4
  store ptr %72, ptr %71, align 4
  %74 = getelementptr inbounds %struct.cgroup_root, ptr %0, i32 0, i32 6, i32 1
  store ptr @cgroup_roots, ptr %74, align 4
  store volatile ptr %71, ptr @cgroup_roots, align 4
  %75 = load i32, ptr @cgroup_root_count, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr @cgroup_root_count, align 4
  call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  br label %77

77:                                               ; preds = %102, %69
  %78 = phi i32 [ 0, %69 ], [ %103, %102 ]
  %79 = getelementptr [128 x %struct.hlist_head], ptr @css_set_table, i32 0, i32 %78
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  %82 = getelementptr i8, ptr %80, i32 -64
  %83 = icmp eq ptr %82, null
  %84 = or i1 %81, %83
  br i1 %84, label %102, label %85

85:                                               ; preds = %95, %77
  %86 = phi ptr [ %99, %95 ], [ %82, %77 ]
  call fastcc void @link_css_set(ptr noundef nonnull %3, ptr noundef nonnull %86, ptr noundef %5)
  %87 = getelementptr inbounds %struct.css_set, ptr %86, i32 0, i32 5
  %88 = load volatile ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, %87
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.css_set, ptr %86, i32 0, i32 6
  %92 = load volatile ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, %91
  br i1 %93, label %95, label %94

94:                                               ; preds = %90, %85
  call fastcc void @cgroup_update_populated(ptr noundef %5, i1 noundef zeroext true)
  br label %95

95:                                               ; preds = %94, %90
  %96 = getelementptr inbounds %struct.css_set, ptr %86, i32 0, i32 12
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  %99 = getelementptr i8, ptr %97, i32 -64
  %100 = icmp eq ptr %99, null
  %101 = or i1 %98, %100
  br i1 %101, label %102, label %85

102:                                              ; preds = %95, %77
  %103 = add nuw nsw i32 %78, 1
  %104 = icmp eq i32 %103, 128
  br i1 %104, label %105, label %77

105:                                              ; preds = %102
  call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %106 = load i16, ptr @css_set_lock, align 4
  %107 = add i16 %106, 1
  store i16 %107, ptr @css_set_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  %108 = getelementptr inbounds %struct.cgroup_root, ptr %0, i32 0, i32 3, i32 0, i32 4
  %109 = load volatile ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, %108
  br i1 %110, label %112, label %111, !prof !10

111:                                              ; preds = %105
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2069, 0\0A.popsection", ""() #27, !srcloc !35
  unreachable

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.cgroup_root, ptr %0, i32 0, i32 5
  %114 = load volatile i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %126, label %116, !prof !10

116:                                              ; preds = %112
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2070, 0\0A.popsection", ""() #27, !srcloc !36
  unreachable

117:                                              ; preds = %66, %61
  %118 = phi i32 [ %64, %61 ], [ %67, %66 ]
  %119 = load ptr, ptr %0, align 8
  call void @kernfs_destroy_root(ptr noundef %119) #27
  store ptr null, ptr %0, align 8
  br label %120

120:                                              ; preds = %117, %45
  %121 = phi i32 [ %46, %45 ], [ %118, %117 ]
  %122 = load i32, ptr %40, align 8
  %123 = call ptr @idr_remove(ptr noundef nonnull @cgroup_hierarchy_idr, i32 noundef %122) #27
  br label %124

124:                                              ; preds = %120, %36, %21, %18
  %125 = phi i32 [ %121, %120 ], [ -12, %18 ], [ %37, %36 ], [ -12, %21 ]
  call void @percpu_ref_exit(ptr noundef %6) #27
  br label %126

126:                                              ; preds = %124, %112, %2
  %127 = phi i32 [ %7, %2 ], [ %125, %124 ], [ 0, %112 ]
  %128 = load ptr, ptr %3, align 8
  %129 = icmp eq ptr %128, %3
  br i1 %129, label %138, label %130

130:                                              ; preds = %130, %126
  %131 = phi ptr [ %133, %130 ], [ %128, %126 ]
  %132 = getelementptr i8, ptr %131, i32 -8
  %133 = load ptr, ptr %131, align 4
  %134 = getelementptr inbounds %struct.list_head, ptr %131, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.list_head, ptr %133, i32 0, i32 1
  store ptr %135, ptr %136, align 4
  store volatile ptr %133, ptr %135, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %131, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %134, align 4
  call void @kfree(ptr noundef %132) #27
  %137 = icmp eq ptr %133, %3
  br i1 %137, label %138, label %130

138:                                              ; preds = %130, %126
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret i32 %127
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @percpu_ref_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @css_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 52
  store i32 -32, ptr %2, align 4
  %3 = getelementptr i8, ptr %0, i32 56
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr i8, ptr %0, i32 60
  store ptr %3, ptr %4, align 4
  %5 = getelementptr i8, ptr %0, i32 64
  store ptr @css_release_work_fn, ptr %5, align 4
  %6 = load ptr, ptr @cgroup_destroy_wq, align 4
  %7 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %6, ptr noundef %2) #27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_create_root(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @css_populate_dir(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %56

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cgroup, ptr %2, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %56, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cgroup, ptr %2, i32 0, i32 19
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, @cgrp_dfl_root
  %19 = select i1 %18, ptr @cgroup_base_files, ptr @cgroup1_base_files
  %20 = tail call fastcc i32 @cgroup_addrm_files(ptr noundef %2, ptr noundef %2, ptr noundef nonnull %19, i1 noundef zeroext true)
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %56, label %43

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.cgroup_subsys, ptr %13, i32 0, i32 24
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.cgroup_subsys, ptr %13, i32 0, i32 24
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %43, label %27

27:                                               ; preds = %33, %22
  %28 = phi ptr [ %34, %33 ], [ %24, %22 ]
  %29 = getelementptr i8, ptr %28, i32 -84
  %30 = tail call fastcc i32 @cgroup_addrm_files(ptr noundef %0, ptr noundef %2, ptr noundef %29, i1 noundef zeroext true)
  %31 = icmp slt i32 %30, 0
  %32 = load ptr, ptr %12, align 4
  br i1 %31, label %37, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %28, align 4
  %35 = getelementptr inbounds %struct.cgroup_subsys, ptr %32, i32 0, i32 24
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %43, label %27

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.cgroup_subsys, ptr %32, i32 0, i32 24
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %38
  %41 = icmp eq ptr %39, %28
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %56, label %46

43:                                               ; preds = %33, %22, %15
  %44 = load i32, ptr %3, align 4
  %45 = or i32 %44, 8
  store i32 %45, ptr %3, align 4
  br label %56

46:                                               ; preds = %46, %37
  %47 = phi ptr [ %50, %46 ], [ %39, %37 ]
  %48 = getelementptr i8, ptr %47, i32 -84
  %49 = tail call fastcc i32 @cgroup_addrm_files(ptr noundef %0, ptr noundef %2, ptr noundef %48, i1 noundef zeroext false)
  %50 = load ptr, ptr %47, align 4
  %51 = load ptr, ptr %12, align 4
  %52 = getelementptr inbounds %struct.cgroup_subsys, ptr %51, i32 0, i32 24
  %53 = icmp eq ptr %50, %52
  %54 = icmp eq ptr %50, %28
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %56, label %46

56:                                               ; preds = %46, %43, %37, %15, %7, %1
  %57 = phi i32 [ 0, %43 ], [ 0, %7 ], [ 0, %1 ], [ %20, %15 ], [ %30, %37 ], [ %30, %46 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_rstat_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_cgroup_setup_root(ptr noundef %0) unnamed_addr #8 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_setup_root, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #27
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !37
  %16 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_setup_root, i32 0, i32 7), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %15
  %19 = phi ptr [ %23, %18 ], [ %16, %15 ]
  %20 = load volatile ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tracepoint_func, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void %20(ptr noundef %22, ptr noundef %0) #27
  %23 = getelementptr %struct.tracepoint_func, ptr %19, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %15
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !38
  br label %27

27:                                               ; preds = %26, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @link_css_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load volatile ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %6, label %7, !prof !11

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1172, 0\0A.popsection", ""() #27, !srcloc !39
  unreachable

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cgroup, ptr %2, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @cgrp_dfl_root
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.css_set, ptr %1, i32 0, i32 3
  store ptr %2, ptr %12, align 4
  %13 = load ptr, ptr %0, align 4
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %4, %7 ]
  %16 = getelementptr i8, ptr %15, i32 -8
  %17 = getelementptr i8, ptr %15, i32 -4
  store ptr %1, ptr %17, align 4
  store ptr %2, ptr %16, align 4
  %18 = getelementptr inbounds %struct.cgroup, ptr %2, i32 0, i32 20
  %19 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %15, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  store volatile ptr %21, ptr %20, align 4
  %23 = getelementptr inbounds %struct.cgroup, ptr %2, i32 0, i32 20, i32 1
  %24 = load ptr, ptr %23, align 4
  store ptr %15, ptr %23, align 4
  store ptr %18, ptr %15, align 4
  store ptr %24, ptr %19, align 4
  store volatile ptr %15, ptr %24, align 4
  %25 = getelementptr i8, ptr %15, i32 8
  %26 = getelementptr inbounds %struct.css_set, ptr %1, i32 0, i32 13
  %27 = getelementptr inbounds %struct.css_set, ptr %1, i32 0, i32 13, i32 1
  %28 = load ptr, ptr %27, align 4
  store ptr %25, ptr %27, align 4
  store ptr %26, ptr %25, align 4
  %29 = getelementptr i8, ptr %15, i32 12
  store ptr %28, ptr %29, align 4
  store volatile ptr %25, ptr %28, align 4
  %30 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %2, i32 0, i32 12
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %66, label %33

33:                                               ; preds = %14
  %34 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %2, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  %38 = load i1, ptr @cgroup_get_live.__already_done, align 1
  %39 = xor i1 %38, true
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %43, !prof !11

41:                                               ; preds = %33
  store i1 true, ptr @cgroup_get_live.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 615, i32 noundef 9, ptr noundef null) #27
  %42 = load i32, ptr %34, align 4
  br label %43

43:                                               ; preds = %41, %33
  %44 = phi i32 [ %42, %41 ], [ %35, %33 ]
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %2, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 3
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %61, !prof !10

52:                                               ; preds = %47
  %53 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #27, !srcloc !23
  %54 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %55 = inttoptr i32 %54 to ptr
  %56 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %55) #19, !srcloc !12
  %57 = add i32 %56, %49
  %58 = inttoptr i32 %57 to ptr
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %53) #27, !srcloc !24
  br label %65

61:                                               ; preds = %47
  %62 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %2, i32 0, i32 2, i32 1
  %63 = load ptr, ptr %62, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #27, !srcloc !19
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 1, ptr elementtype(i32) %63) #27, !srcloc !40
  br label %65

65:                                               ; preds = %61, %52
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %66

66:                                               ; preds = %65, %43, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cgroup_update_populated(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = select i1 %1, i32 1, i32 -1
  br label %4

4:                                                ; preds = %97, %2
  %5 = phi ptr [ null, %2 ], [ %6, %97 ]
  %6 = phi ptr [ %0, %2 ], [ %99, %97 ]
  %7 = getelementptr inbounds %struct.cgroup, ptr %6, i32 0, i32 7
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.cgroup, ptr %6, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  %12 = getelementptr inbounds %struct.cgroup, ptr %6, i32 0, i32 9
  %13 = load i32, ptr %12, align 8
  %14 = sub i32 0, %13
  %15 = icmp ne i32 %11, %14
  %16 = icmp eq ptr %5, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = add i32 %8, %3
  store i32 %18, ptr %7, align 8
  br label %28

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 22
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, %5
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = add i32 %13, %3
  store i32 %24, ptr %12, align 8
  %25 = sub i32 0, %24
  br label %28

26:                                               ; preds = %19
  %27 = add i32 %10, %3
  store i32 %27, ptr %9, align 4
  br label %28

28:                                               ; preds = %26, %23, %17
  %29 = phi i32 [ %25, %23 ], [ %14, %26 ], [ %14, %17 ]
  %30 = phi i32 [ %10, %23 ], [ %27, %26 ], [ %10, %17 ]
  %31 = phi i32 [ %8, %23 ], [ %8, %26 ], [ %18, %17 ]
  %32 = add i32 %30, %31
  %33 = icmp ne i32 %32, %29
  %34 = xor i1 %15, %33
  br i1 %34, label %35, label %101

35:                                               ; preds = %28
  tail call void @cgroup1_check_for_release(ptr noundef %6) #27
  %36 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_notify_populated, i32 0, i32 1), align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %76

38:                                               ; preds = %35
  %39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_cgroup_path_lock) #27
  %40 = getelementptr inbounds %struct.cgroup, ptr %6, i32 0, i32 11
  %41 = load ptr, ptr %40, align 8
  %42 = tail call i32 @kernfs_path_from_node(ptr noundef %41, ptr noundef null, ptr noundef nonnull @trace_cgroup_path, i32 noundef 1024) #27
  %43 = load i32, ptr %7, align 8
  %44 = load i32, ptr %9, align 4
  %45 = add i32 %44, %43
  %46 = load i32, ptr %12, align 8
  %47 = sub i32 0, %46
  %48 = icmp ne i32 %45, %47
  %49 = zext i1 %48 to i32
  %50 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_notify_populated, i32 0, i32 1), align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %38
  %53 = tail call ptr @llvm.thread.pointer() #27
  %54 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %55 = load i32, ptr %54, align 8
  %56 = lshr i32 %55, 5
  %57 = getelementptr i32, ptr @__cpu_online_mask, i32 %56
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %55, 31
  %60 = shl nuw i32 1, %59
  %61 = and i32 %60, %58
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %52
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !41
  %64 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_notify_populated, i32 0, i32 7), align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %66, %63
  %67 = phi ptr [ %71, %66 ], [ %64, %63 ]
  %68 = load volatile ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.tracepoint_func, ptr %67, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  tail call void %68(ptr noundef %70, ptr noundef %6, ptr noundef nonnull @trace_cgroup_path, i32 noundef %49) #27
  %71 = getelementptr %struct.tracepoint_func, ptr %67, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %66

74:                                               ; preds = %66, %63
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !42
  br label %75

75:                                               ; preds = %74, %52, %38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_cgroup_path_lock, i32 noundef %39) #27
  br label %76

76:                                               ; preds = %75, %35
  %77 = getelementptr inbounds %struct.cgroup, ptr %6, i32 0, i32 13
  %78 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @cgroup_file_kn_lock) #27
  %79 = load ptr, ptr %77, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %97, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.cgroup, ptr %6, i32 0, i32 13, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, 1
  %85 = load volatile i32, ptr @jiffies, align 64
  %86 = sub i32 %85, %83
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load volatile i32, ptr @jiffies, align 64
  %90 = sub i32 %84, %89
  %91 = icmp sgt i32 %90, -1
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.cgroup, ptr %6, i32 0, i32 13, i32 2
  %94 = tail call i32 @timer_reduce(ptr noundef %93, i32 noundef %84) #27
  br label %97

95:                                               ; preds = %88, %81
  tail call void @kernfs_notify(ptr noundef nonnull %79) #27
  %96 = load volatile i32, ptr @jiffies, align 64
  store i32 %96, ptr %82, align 4
  br label %97

97:                                               ; preds = %95, %92, %76
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @cgroup_file_kn_lock, i32 noundef %78) #27
  %98 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %6, i32 0, i32 12
  %99 = load ptr, ptr %98, align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %4

101:                                              ; preds = %97, %28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_rstat_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_destroy_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cgroup_do_get_tree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cgroup_fs_context, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 4
  %7 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @cgroup2_fs_type
  %10 = select i1 %9, i32 1667723888, i32 2613483
  %11 = getelementptr inbounds %struct.kernfs_fs_context, ptr %3, i32 0, i32 2
  store i32 %10, ptr %11, align 4
  %12 = tail call i32 @kernfs_get_tree(ptr noundef %0) #27
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %64

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.cgroup_fs_context, ptr %3, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, @init_cgroup_ns
  br i1 %17, label %64, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 9
  %22 = load ptr, ptr %21, align 4
  tail call void @mutex_lock(ptr noundef nonnull @cgroup_mutex) #27
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %23 = load ptr, ptr %15, align 4
  %24 = getelementptr inbounds %struct.cgroup_namespace, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %4, align 4
  %27 = icmp eq ptr %25, @init_css_set
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.cgroup_root, ptr %26, i32 0, i32 3
  br label %47

30:                                               ; preds = %18
  %31 = icmp eq ptr %26, @cgrp_dfl_root
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.css_set, ptr %25, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  br label %47

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.css_set, ptr %25, i32 0, i32 13
  br label %37

37:                                               ; preds = %41, %35
  %38 = phi ptr [ %36, %35 ], [ %39, %41 ]
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %36
  br i1 %40, label %50, label %41

41:                                               ; preds = %37
  %42 = getelementptr i8, ptr %39, i32 -16
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.cgroup, ptr %43, i32 0, i32 19
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %26
  br i1 %46, label %47, label %37

47:                                               ; preds = %41, %32, %28
  %48 = phi ptr [ %29, %28 ], [ %34, %32 ], [ %43, %41 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51, !prof !11

50:                                               ; preds = %47, %37
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1442, 0\0A.popsection", ""() #27, !srcloc !29
  unreachable

51:                                               ; preds = %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %52 = load i16, ptr @css_set_lock, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #27
  %54 = getelementptr inbounds %struct.cgroup, ptr %48, i32 0, i32 11
  %55 = load ptr, ptr %54, align 8
  %56 = tail call ptr @kernfs_node_dentry(ptr noundef %55, ptr noundef %22) #27
  %57 = load ptr, ptr %19, align 4
  tail call void @dput(ptr noundef %57) #27
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  tail call void @deactivate_locked_super(ptr noundef %22) #27
  %60 = ptrtoint ptr %56 to i32
  br label %61

61:                                               ; preds = %59, %51
  %62 = phi i32 [ %60, %59 ], [ 0, %51 ]
  %63 = phi ptr [ null, %59 ], [ %56, %51 ]
  store ptr %63, ptr %19, align 4
  br label %64

64:                                               ; preds = %61, %14, %1
  %65 = phi i32 [ %12, %1 ], [ %62, %61 ], [ 0, %14 ]
  %66 = getelementptr inbounds %struct.kernfs_fs_context, ptr %3, i32 0, i32 3
  %67 = load i8, ptr %66, align 4, !range !34
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %100

69:                                               ; preds = %64
  %70 = load ptr, ptr %4, align 4
  %71 = getelementptr inbounds %struct.cgroup_root, ptr %70, i32 0, i32 3, i32 0, i32 7
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.cgroup_root, ptr %70, i32 0, i32 3, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %77, 3
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %89, !prof !10

80:                                               ; preds = %75
  %81 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #27, !srcloc !23
  %82 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %83 = inttoptr i32 %82 to ptr
  %84 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %83) #19, !srcloc !12
  %85 = add i32 %84, %77
  %86 = inttoptr i32 %85 to ptr
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, -1
  store i32 %88, ptr %86, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %81) #27, !srcloc !24
  br label %99

89:                                               ; preds = %75
  %90 = getelementptr inbounds %struct.cgroup_root, ptr %70, i32 0, i32 3, i32 0, i32 2, i32 1
  %91 = load ptr, ptr %90, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #27, !srcloc !19
  %92 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %91, ptr %91, i32 1, ptr elementtype(i32) %91) #27, !srcloc !26
  %93 = extractvalue { i32, i32 } %92, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !27
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99, !prof !11

95:                                               ; preds = %89
  %96 = load ptr, ptr %90, align 4
  %97 = getelementptr inbounds %struct.percpu_ref_data, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  tail call void %98(ptr noundef %76) #27
  br label %99

99:                                               ; preds = %95, %89, %80
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %100

100:                                              ; preds = %99, %69, %64
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_get_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_node_dentry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_locked_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_init_fs_context(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 44) #28
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #27
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 92
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nsproxy, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.cgroup_fs_context, ptr %3, i32 0, i32 2
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.ns_common, ptr %10, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #27, !srcloc !19
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #27, !srcloc !43
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !11

18:                                               ; preds = %13
  %19 = add i32 %16, 1
  %20 = or i32 %19, %16
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %24, label %22, !prof !10

22:                                               ; preds = %18, %13
  %23 = phi i32 [ 2, %13 ], [ 1, %18 ]
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef %23) #27
  br label %24

24:                                               ; preds = %22, %18, %5
  %25 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  store ptr %3, ptr %25, align 4
  %26 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, @cgroup2_fs_type
  %29 = select i1 %28, ptr @cgroup_fs_context_ops, ptr @cgroup1_fs_context_ops
  store ptr %29, ptr %0, align 4
  %30 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 6
  store ptr @init_user_ns, ptr %30, align 4
  %31 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 17
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, 131072
  store i32 %33, ptr %31, align 4
  br label %34

34:                                               ; preds = %24, %1
  %35 = phi i32 [ 0, %24 ], [ -12, %1 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cgroup_kill_sb(ptr noundef %0) #0 {
  %2 = tail call ptr @kernfs_root_from_sb(ptr noundef %0) #27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cgroup_root, ptr %7, i32 0, i32 3, i32 0, i32 4
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  %11 = icmp ne ptr %7, @cgrp_dfl_root
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.cgroup_root, ptr %7, i32 0, i32 3, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void @percpu_ref_kill_and_confirm(ptr noundef %14, ptr noundef null) #27
  br label %19

19:                                               ; preds = %18, %13, %1
  %20 = getelementptr inbounds %struct.cgroup_root, ptr %7, i32 0, i32 3, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.cgroup_root, ptr %7, i32 0, i32 3, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 3
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %38, !prof !10

29:                                               ; preds = %24
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #27, !srcloc !23
  %31 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %32) #19, !srcloc !12
  %34 = add i32 %33, %26
  %35 = inttoptr i32 %34 to ptr
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, -1
  store i32 %37, ptr %35, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #27, !srcloc !24
  br label %48

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.cgroup_root, ptr %7, i32 0, i32 3, i32 0, i32 2, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #27, !srcloc !19
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #27, !srcloc !26
  %42 = extractvalue { i32, i32 } %41, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !27
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48, !prof !11

44:                                               ; preds = %38
  %45 = load ptr, ptr %39, align 4
  %46 = getelementptr inbounds %struct.percpu_ref_data, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  tail call void %47(ptr noundef %25) #27
  br label %48

48:                                               ; preds = %44, %38, %29
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %49

49:                                               ; preds = %48, %19
  tail call void @kernfs_kill_sb(ptr noundef %0) #27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cgroup_path_ns_locked(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.cgroup_namespace, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %6, @init_css_set
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.cgroup_root, ptr %8, i32 0, i32 3
  br label %29

12:                                               ; preds = %4
  %13 = icmp eq ptr %8, @cgrp_dfl_root
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.css_set, ptr %6, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  br label %29

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.css_set, ptr %6, i32 0, i32 13
  br label %19

19:                                               ; preds = %23, %17
  %20 = phi ptr [ %18, %17 ], [ %21, %23 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %18
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %21, i32 -16
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.cgroup, ptr %25, i32 0, i32 19
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %8
  br i1 %28, label %29, label %19

29:                                               ; preds = %23, %14, %10
  %30 = phi ptr [ %11, %10 ], [ %16, %14 ], [ %25, %23 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33, !prof !11

32:                                               ; preds = %29, %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1442, 0\0A.popsection", ""() #27, !srcloc !29
  unreachable

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 11
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.cgroup, ptr %30, i32 0, i32 11
  %37 = load ptr, ptr %36, align 8
  %38 = tail call i32 @kernfs_path_from_node(ptr noundef %35, ptr noundef %37, ptr noundef %1, i32 noundef %2) #27
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cgroup_path_ns(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @cgroup_mutex) #27
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %5 = getelementptr inbounds %struct.cgroup_namespace, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %6, @init_css_set
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.cgroup_root, ptr %8, i32 0, i32 3
  br label %29

12:                                               ; preds = %4
  %13 = icmp eq ptr %8, @cgrp_dfl_root
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.css_set, ptr %6, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  br label %29

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.css_set, ptr %6, i32 0, i32 13
  br label %19

19:                                               ; preds = %23, %17
  %20 = phi ptr [ %18, %17 ], [ %21, %23 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %18
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %21, i32 -16
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.cgroup, ptr %25, i32 0, i32 19
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %8
  br i1 %28, label %29, label %19

29:                                               ; preds = %23, %14, %10
  %30 = phi ptr [ %11, %10 ], [ %16, %14 ], [ %25, %23 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33, !prof !11

32:                                               ; preds = %29, %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1442, 0\0A.popsection", ""() #27, !srcloc !29
  unreachable

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 11
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.cgroup, ptr %30, i32 0, i32 11
  %37 = load ptr, ptr %36, align 8
  %38 = tail call i32 @kernfs_path_from_node(ptr noundef %35, ptr noundef %37, ptr noundef %1, i32 noundef %2) #27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %39 = load i16, ptr @css_set_lock, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #27
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @task_cgroup_path(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  store i32 1, ptr %4, align 4
  tail call void @mutex_lock(ptr noundef nonnull @cgroup_mutex) #27
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %5 = call ptr @idr_get_next(ptr noundef nonnull @cgroup_hierarchy_idr, ptr noundef nonnull %4) #27
  %6 = icmp eq ptr %5, null
  br i1 %6, label %68, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 123
  %9 = load volatile ptr, ptr %8, align 16
  %10 = icmp eq ptr %9, @init_css_set
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cgroup_root, ptr %5, i32 0, i32 3
  br label %30

13:                                               ; preds = %7
  %14 = icmp eq ptr %5, @cgrp_dfl_root
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.css_set, ptr %9, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  br label %30

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.css_set, ptr %9, i32 0, i32 13
  br label %20

20:                                               ; preds = %24, %18
  %21 = phi ptr [ %19, %18 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %19
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %22, i32 -16
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.cgroup, ptr %26, i32 0, i32 19
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %5
  br i1 %29, label %30, label %20

30:                                               ; preds = %24, %15, %11
  %31 = phi ptr [ %12, %11 ], [ %17, %15 ], [ %26, %24 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34, !prof !11

33:                                               ; preds = %30, %20
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1442, 0\0A.popsection", ""() #27, !srcloc !29
  unreachable

34:                                               ; preds = %30
  %35 = load ptr, ptr getelementptr inbounds (%struct.cgroup_namespace, ptr @init_cgroup_ns, i32 0, i32 3), align 4
  %36 = getelementptr inbounds %struct.cgroup, ptr %31, i32 0, i32 19
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %35, @init_css_set
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.cgroup_root, ptr %37, i32 0, i32 3
  br label %58

41:                                               ; preds = %34
  %42 = icmp eq ptr %37, @cgrp_dfl_root
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.css_set, ptr %35, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  br label %58

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.css_set, ptr %35, i32 0, i32 13
  br label %48

48:                                               ; preds = %52, %46
  %49 = phi ptr [ %47, %46 ], [ %50, %52 ]
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %47
  br i1 %51, label %61, label %52

52:                                               ; preds = %48
  %53 = getelementptr i8, ptr %50, i32 -16
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.cgroup, ptr %54, i32 0, i32 19
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, %37
  br i1 %57, label %58, label %48

58:                                               ; preds = %52, %43, %39
  %59 = phi ptr [ %40, %39 ], [ %45, %43 ], [ %54, %52 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62, !prof !11

61:                                               ; preds = %58, %48
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1442, 0\0A.popsection", ""() #27, !srcloc !29
  unreachable

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.cgroup, ptr %31, i32 0, i32 11
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.cgroup, ptr %59, i32 0, i32 11
  %66 = load ptr, ptr %65, align 8
  %67 = call i32 @kernfs_path_from_node(ptr noundef %64, ptr noundef %66, ptr noundef %1, i32 noundef %2) #27
  br label %70

68:                                               ; preds = %3
  %69 = call i32 @strlcpy(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %2) #27
  br label %70

70:                                               ; preds = %68, %62
  %71 = phi i32 [ %67, %62 ], [ %69, %68 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %72 = load i16, ptr @css_set_lock, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr @css_set_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local noalias ptr @cgroup_taskset_first(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.cgroup_taskset, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -88
  %7 = getelementptr inbounds %struct.cgroup_taskset, ptr %0, i32 0, i32 5
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.cgroup_taskset, ptr %0, i32 0, i32 6
  store ptr null, ptr %8, align 4
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local noalias ptr @cgroup_taskset_next(ptr nocapture noundef readnone %0, ptr nocapture readnone %1) local_unnamed_addr #3 {
  ret ptr null
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @cgroup_migrate_vet_dst(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @cgrp_dfl_root
  br i1 %4, label %5, label %49

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 22
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.cgroup, ptr %7, i32 0, i32 22
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, %7
  br i1 %10, label %11, label %49

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %7, i32 0, i32 12
  %13 = load ptr, ptr %12, align 8
  br label %14

14:                                               ; preds = %29, %11
  %15 = phi ptr [ %19, %29 ], [ %13, %11 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %15, i32 0, i32 12
  %19 = load ptr, ptr %18, align 8
  %20 = icmp ne ptr %19, null
  %21 = getelementptr inbounds %struct.cgroup, ptr %15, i32 0, i32 22
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, %15
  %24 = select i1 %20, i1 %23, i1 false
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.cgroup, ptr %15, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %25, %17
  %30 = phi ptr [ %15, %25 ], [ %22, %17 ]
  %31 = icmp eq ptr %30, %15
  br i1 %31, label %14, label %49

32:                                               ; preds = %14
  %33 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 12
  %34 = load ptr, ptr %33, align 8
  %35 = icmp ne ptr %34, null
  %36 = icmp eq ptr %7, %0
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 8
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  %42 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 14
  %43 = load i16, ptr %42, align 4
  %44 = icmp eq i16 %43, 0
  %45 = select i1 %41, i1 %44, i1 false
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = icmp eq i16 %43, 0
  %48 = select i1 %47, i32 0, i32 -16
  br label %49

49:                                               ; preds = %46, %38, %32, %29, %25, %5, %1
  %50 = phi i32 [ 0, %1 ], [ 0, %32 ], [ %48, %46 ], [ -95, %5 ], [ 0, %38 ], [ -95, %29 ], [ -95, %25 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_migrate_finish(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %4 = load volatile ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %7, ptr %10, align 4
  store ptr %4, ptr %7, align 4
  store ptr %2, ptr %9, align 4
  store ptr %9, ptr %3, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %8, align 4
  br label %11

11:                                               ; preds = %6, %1
  %12 = getelementptr inbounds %struct.cgroup_mgctx, ptr %0, i32 0, i32 1
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.cgroup_mgctx, ptr %0, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %16, ptr %19, align 4
  store ptr %13, ptr %16, align 4
  store ptr %2, ptr %18, align 4
  store ptr %18, ptr %3, align 4
  store volatile ptr %12, ptr %12, align 4
  store ptr %12, ptr %17, align 4
  br label %20

20:                                               ; preds = %15, %11
  %21 = load ptr, ptr %2, align 8
  %22 = icmp eq ptr %21, %2
  br i1 %22, label %34, label %23

23:                                               ; preds = %23, %20
  %24 = phi ptr [ %26, %23 ], [ %21, %20 ]
  %25 = getelementptr i8, ptr %24, i32 -80
  %26 = load ptr, ptr %24, align 4
  %27 = getelementptr i8, ptr %24, i32 16
  store ptr null, ptr %27, align 4
  %28 = getelementptr i8, ptr %24, i32 20
  store ptr null, ptr %28, align 4
  %29 = getelementptr i8, ptr %24, i32 24
  store ptr null, ptr %29, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  store volatile ptr %26, ptr %31, align 4
  store volatile ptr %24, ptr %24, align 4
  store ptr %24, ptr %30, align 4
  call void @put_css_set_locked(ptr noundef %25)
  %33 = icmp eq ptr %26, %2
  br i1 %33, label %34, label %23

34:                                               ; preds = %23, %20
  call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %35 = load i16, ptr @css_set_lock, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr @css_set_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_migrate_add_src(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 19
  %5 = load i8, ptr %4, align 4, !range !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %73

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 14
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %11, label %73

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %0, @init_css_set
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cgroup_root, ptr %13, i32 0, i32 3
  br label %34

17:                                               ; preds = %11
  %18 = icmp eq ptr %13, @cgrp_dfl_root
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  br label %34

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 13
  br label %24

24:                                               ; preds = %28, %22
  %25 = phi ptr [ %23, %22 ], [ %26, %28 ]
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %23
  br i1 %27, label %37, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %26, i32 -16
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.cgroup, ptr %30, i32 0, i32 19
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %13
  br i1 %33, label %34, label %24

34:                                               ; preds = %28, %19, %15
  %35 = phi ptr [ %16, %15 ], [ %21, %19 ], [ %30, %28 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38, !prof !11

37:                                               ; preds = %34, %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1442, 0\0A.popsection", ""() #27, !srcloc !29
  unreachable

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 16
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42, !prof !10

42:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2659, i32 noundef 9, ptr noundef null) #27
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 17
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47, !prof !10

47:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2660, i32 noundef 9, ptr noundef null) #27
  br label %48

48:                                               ; preds = %47, %43
  %49 = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 6
  %50 = load volatile ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %53, label %52, !prof !10

52:                                               ; preds = %48
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2661, i32 noundef 9, ptr noundef null) #27
  br label %53

53:                                               ; preds = %52, %48
  %54 = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 15
  %55 = load volatile ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %54
  br i1 %56, label %58, label %57, !prof !10

57:                                               ; preds = %53
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2662, i32 noundef 9, ptr noundef null) #27
  br label %58

58:                                               ; preds = %57, %53
  store ptr %35, ptr %39, align 4
  store ptr %1, ptr %44, align 4
  %59 = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #27, !srcloc !19
  %60 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #27, !srcloc !43
  %61 = extractvalue { i32, i32, i32 } %60, 0
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63, !prof !11

63:                                               ; preds = %58
  %64 = add i32 %61, 1
  %65 = or i32 %64, %61
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %69, label %67, !prof !10

67:                                               ; preds = %63, %58
  %68 = phi i32 [ 2, %58 ], [ 1, %63 ]
  tail call void @refcount_warn_saturate(ptr noundef %59, i32 noundef %68) #27
  br label %69

69:                                               ; preds = %67, %63
  %70 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  store ptr %8, ptr %70, align 4
  store ptr %2, ptr %8, align 4
  %72 = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 14, i32 1
  store ptr %71, ptr %72, align 4
  store volatile ptr %8, ptr %71, align 4
  br label %73

73:                                               ; preds = %69, %7, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cgroup_migrate_prepare_dst(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %59, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cgroup_mgctx, ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.cgroup_mgctx, ptr %0, i32 0, i32 1, i32 1
  br label %7

7:                                                ; preds = %57, %4
  %8 = phi ptr [ %2, %4 ], [ %10, %57 ]
  %9 = getelementptr i8, ptr %8, i32 -80
  %10 = load ptr, ptr %8, align 4
  %11 = getelementptr i8, ptr %8, i32 20
  %12 = load ptr, ptr %11, align 4
  %13 = tail call fastcc ptr @find_css_set(ptr noundef %9, ptr noundef %12)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %59, label %15

15:                                               ; preds = %7
  %16 = getelementptr i8, ptr %8, i32 24
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.css_set, ptr %13, i32 0, i32 18
  %21 = load ptr, ptr %20, align 4
  %22 = icmp ne ptr %21, null
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ true, %15 ], [ %22, %19 ]
  %25 = load i1, ptr @cgroup_migrate_prepare_dst.__already_done, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29, !prof !11

28:                                               ; preds = %23
  store i1 true, ptr @cgroup_migrate_prepare_dst.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2701, i32 noundef 9, ptr noundef null) #27
  br label %29

29:                                               ; preds = %28, %23
  %30 = icmp eq ptr %9, %13
  br i1 %30, label %31, label %45

31:                                               ; preds = %29
  %32 = getelementptr i8, ptr %8, i32 16
  store ptr null, ptr %32, align 4
  store ptr null, ptr %11, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %8, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store volatile ptr %8, ptr %8, align 4
  store ptr %8, ptr %33, align 4
  %37 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %9) #27
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @css_set_lock) #27
  tail call void @put_css_set_locked(ptr noundef %9) #27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @css_set_lock, i32 noundef %39) #27
  br label %40

40:                                               ; preds = %38, %31
  %41 = getelementptr i8, ptr %8, i32 -80
  %42 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %41) #27
  br i1 %42, label %57, label %43

43:                                               ; preds = %40
  %44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @css_set_lock) #27
  tail call void @put_css_set_locked(ptr noundef nonnull %9) #27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @css_set_lock, i32 noundef %44) #27
  br label %57

45:                                               ; preds = %29
  store ptr %13, ptr %16, align 4
  %46 = getelementptr inbounds %struct.css_set, ptr %13, i32 0, i32 14
  %47 = load volatile ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %46
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load ptr, ptr %6, align 4
  store ptr %46, ptr %6, align 4
  store ptr %5, ptr %46, align 4
  %51 = getelementptr inbounds %struct.css_set, ptr %13, i32 0, i32 14, i32 1
  store ptr %50, ptr %51, align 4
  store volatile ptr %46, ptr %50, align 4
  br label %57

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.css_set, ptr %13, i32 0, i32 1
  %54 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %53) #27
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @css_set_lock) #27
  tail call void @put_css_set_locked(ptr noundef nonnull %13) #27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @css_set_lock, i32 noundef %56) #27
  br label %57

57:                                               ; preds = %55, %52, %49, %43, %40
  %58 = icmp eq ptr %10, %0
  br i1 %58, label %59, label %7

59:                                               ; preds = %57, %7, %1
  %60 = phi i32 [ 0, %1 ], [ -12, %7 ], [ 0, %57 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @find_css_set(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %4 = load ptr, ptr @css_set_table, align 4
  %5 = icmp eq ptr %4, null
  %6 = getelementptr i8, ptr %4, i32 -64
  %7 = icmp eq ptr %6, null
  %8 = or i1 %5, %7
  br i1 %8, label %86, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 19
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @cgrp_dfl_root
  %13 = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 13
  br label %15

15:                                               ; preds = %63, %9
  %16 = phi ptr [ %6, %9 ], [ %67, %63 ]
  br i1 %12, label %19, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %13, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %18, %17 ], [ %1, %15 ]
  %21 = getelementptr inbounds %struct.cgroup, ptr %20, i32 0, i32 22
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.css_set, ptr %16, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.css_set, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %22, %26
  br i1 %27, label %28, label %63

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.css_set, ptr %16, i32 0, i32 13
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %14, align 4
  %32 = icmp eq ptr %30, %29
  br i1 %32, label %33, label %37

33:                                               ; preds = %59, %28
  %34 = phi ptr [ %61, %59 ], [ %31, %28 ]
  %35 = icmp eq ptr %34, %14
  br i1 %35, label %70, label %36, !prof !10

36:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1044, 0\0A.popsection", ""() #27, !srcloc !44
  unreachable

37:                                               ; preds = %59, %28
  %38 = phi ptr [ %61, %59 ], [ %31, %28 ]
  %39 = phi ptr [ %60, %59 ], [ %30, %28 ]
  %40 = icmp eq ptr %38, %14
  br i1 %40, label %41, label %42, !prof !11

41:                                               ; preds = %37
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1047, 0\0A.popsection", ""() #27, !srcloc !45
  unreachable

42:                                               ; preds = %37
  %43 = getelementptr i8, ptr %39, i32 -16
  %44 = getelementptr i8, ptr %38, i32 -16
  %45 = load ptr, ptr %43, align 4
  %46 = load ptr, ptr %44, align 4
  %47 = getelementptr inbounds %struct.cgroup, ptr %45, i32 0, i32 19
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.cgroup, ptr %46, i32 0, i32 19
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %48, %50
  br i1 %51, label %53, label %52, !prof !10

52:                                               ; preds = %42
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1055, 0\0A.popsection", ""() #27, !srcloc !46
  unreachable

53:                                               ; preds = %42
  %54 = icmp eq ptr %48, %11
  br i1 %54, label %55, label %57

55:                                               ; preds = %53
  %56 = icmp eq ptr %45, %1
  br i1 %56, label %59, label %63

57:                                               ; preds = %53
  %58 = icmp eq ptr %45, %46
  br i1 %58, label %59, label %63

59:                                               ; preds = %57, %55
  %60 = load ptr, ptr %39, align 4
  %61 = load ptr, ptr %38, align 4
  %62 = icmp eq ptr %60, %29
  br i1 %62, label %33, label %37

63:                                               ; preds = %57, %55, %19
  %64 = getelementptr inbounds %struct.css_set, ptr %16, i32 0, i32 12
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  %67 = getelementptr i8, ptr %65, i32 -64
  %68 = icmp eq ptr %67, null
  %69 = or i1 %66, %68
  br i1 %69, label %86, label %15

70:                                               ; preds = %33
  %71 = icmp eq ptr %16, null
  br i1 %71, label %86, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.css_set, ptr %16, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %73) #27, !srcloc !19
  %74 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %73, ptr %73, i32 1, ptr elementtype(i32) %73) #27, !srcloc !43
  %75 = extractvalue { i32, i32, i32 } %74, 0
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77, !prof !11

77:                                               ; preds = %72
  %78 = add i32 %75, 1
  %79 = or i32 %78, %75
  %80 = icmp sgt i32 %79, -1
  br i1 %80, label %83, label %81, !prof !10

81:                                               ; preds = %77, %72
  %82 = phi i32 [ 2, %72 ], [ 1, %77 ]
  tail call void @refcount_warn_saturate(ptr noundef %73, i32 noundef %82) #27
  br label %83

83:                                               ; preds = %81, %77
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %84 = load i16, ptr @css_set_lock, align 4
  %85 = add i16 %84, 1
  store i16 %85, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  br label %191

86:                                               ; preds = %70, %63, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %87 = load i16, ptr @css_set_lock, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  %89 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %90 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %89, i32 noundef 3520, i32 noundef 120) #28
  %91 = icmp eq ptr %90, null
  br i1 %91, label %191, label %92

92:                                               ; preds = %86
  %93 = load i32, ptr @cgroup_root_count, align 4
  store volatile ptr %3, ptr %3, align 8
  %94 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %94, align 4
  %95 = icmp sgt i32 %93, 0
  br i1 %95, label %96, label %120

96:                                               ; preds = %112, %92
  %97 = phi i32 [ %117, %112 ], [ 0, %92 ]
  %98 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %99 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %98, i32 noundef 3520, i32 noundef 24) #28
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load ptr, ptr %3, align 8
  %103 = icmp eq ptr %102, %3
  br i1 %103, label %119, label %104

104:                                              ; preds = %104, %101
  %105 = phi ptr [ %107, %104 ], [ %102, %101 ]
  %106 = getelementptr i8, ptr %105, i32 -8
  %107 = load ptr, ptr %105, align 4
  %108 = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  store ptr %109, ptr %110, align 4
  store volatile ptr %107, ptr %109, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %105, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %108, align 4
  call void @kfree(ptr noundef %106) #27
  %111 = icmp eq ptr %107, %3
  br i1 %111, label %119, label %104

112:                                              ; preds = %96
  %113 = getelementptr inbounds %struct.cgrp_cset_link, ptr %99, i32 0, i32 2
  %114 = load ptr, ptr %3, align 8
  %115 = getelementptr inbounds %struct.list_head, ptr %114, i32 0, i32 1
  store ptr %113, ptr %115, align 4
  store ptr %114, ptr %113, align 8
  %116 = getelementptr inbounds %struct.cgrp_cset_link, ptr %99, i32 0, i32 2, i32 1
  store ptr %3, ptr %116, align 4
  store volatile ptr %113, ptr %3, align 8
  %117 = add nuw nsw i32 %97, 1
  %118 = icmp eq i32 %117, %93
  br i1 %118, label %120, label %96

119:                                              ; preds = %104, %101
  call void @kfree(ptr noundef nonnull %90) #27
  br label %191

120:                                              ; preds = %112, %92
  %121 = getelementptr inbounds %struct.css_set, ptr %90, i32 0, i32 1
  store volatile i32 1, ptr %121, align 8
  %122 = getelementptr inbounds %struct.css_set, ptr %90, i32 0, i32 2
  store ptr %90, ptr %122, align 4
  %123 = getelementptr inbounds %struct.css_set, ptr %90, i32 0, i32 5
  store volatile ptr %123, ptr %123, align 8
  %124 = getelementptr inbounds %struct.css_set, ptr %90, i32 0, i32 5, i32 1
  store ptr %123, ptr %124, align 4
  %125 = getelementptr inbounds %struct.css_set, ptr %90, i32 0, i32 6
  store volatile ptr %125, ptr %125, align 8
  %126 = getelementptr inbounds %struct.css_set, ptr %90, i32 0, i32 6, i32 1
  store ptr %125, ptr %126, align 4
  %127 = getelementptr inbounds %struct.css_set, ptr %90, i32 0, i32 7
  store volatile ptr %127, ptr %127, align 8
  %128 = getelementptr inbounds %struct.css_set, ptr %90, i32 0, i32 7, i32 1
  store ptr %127, ptr %128, align 4
  %129 = getelementptr inbounds %struct.css_set, ptr %90, i32 0, i32 8
  store volatile ptr %129, ptr %129, align 8
  %130 = getelementptr inbounds %struct.css_set, ptr %90, i32 0, i32 8, i32 1
  store ptr %129, ptr %130, align 4
  %131 = getelementptr inbounds %struct.css_set, ptr %90, i32 0, i32 10
  store volatile ptr %131, ptr %131, align 8
  %132 = getelementptr inbounds %struct.css_set, ptr %90, i32 0, i32 10, i32 1
  store ptr %131, ptr %132, align 4
  %133 = getelementptr inbounds %struct.css_set, ptr %90, i32 0, i32 12
  store ptr null, ptr %133, align 8
  %134 = getelementptr inbounds %struct.css_set, ptr %90, i32 0, i32 12, i32 1
  store ptr null, ptr %134, align 4
  %135 = getelementptr inbounds %struct.css_set, ptr %90, i32 0, i32 13
  store volatile ptr %135, ptr %135, align 8
  %136 = getelementptr inbounds %struct.css_set, ptr %90, i32 0, i32 13, i32 1
  store ptr %135, ptr %136, align 4
  %137 = getelementptr inbounds %struct.css_set, ptr %90, i32 0, i32 14
  store volatile ptr %137, ptr %137, align 8
  %138 = getelementptr inbounds %struct.css_set, ptr %90, i32 0, i32 14, i32 1
  store ptr %137, ptr %138, align 4
  %139 = getelementptr inbounds %struct.css_set, ptr %90, i32 0, i32 15
  store volatile ptr %139, ptr %139, align 8
  %140 = getelementptr inbounds %struct.css_set, ptr %90, i32 0, i32 15, i32 1
  store ptr %139, ptr %140, align 4
  call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %141 = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 13
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, %141
  br i1 %143, label %157, label %144

144:                                              ; preds = %120
  %145 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 19
  br label %146

146:                                              ; preds = %146, %144
  %147 = phi ptr [ %142, %144 ], [ %155, %146 ]
  %148 = getelementptr i8, ptr %147, i32 -16
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.cgroup, ptr %149, i32 0, i32 19
  %151 = load ptr, ptr %150, align 4
  %152 = load ptr, ptr %145, align 4
  %153 = icmp eq ptr %151, %152
  %154 = select i1 %153, ptr %1, ptr %149
  call fastcc void @link_css_set(ptr noundef nonnull %3, ptr noundef nonnull %90, ptr noundef %154)
  %155 = load ptr, ptr %147, align 4
  %156 = icmp eq ptr %155, %141
  br i1 %156, label %157, label %146

157:                                              ; preds = %146, %120
  %158 = load volatile ptr, ptr %3, align 8
  %159 = icmp eq ptr %158, %3
  br i1 %159, label %161, label %160, !prof !10

160:                                              ; preds = %157
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1260, 0\0A.popsection", ""() #27, !srcloc !47
  unreachable

161:                                              ; preds = %157
  %162 = load i32, ptr @css_set_count, align 4
  %163 = add i32 %162, 1
  store i32 %163, ptr @css_set_count, align 4
  %164 = load ptr, ptr @css_set_table, align 4
  store volatile ptr %164, ptr %133, align 8
  %165 = icmp eq ptr %164, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.hlist_node, ptr %164, i32 0, i32 1
  store volatile ptr %133, ptr %167, align 4
  br label %168

168:                                              ; preds = %166, %161
  store volatile ptr %133, ptr @css_set_table, align 4
  store volatile ptr @css_set_table, ptr %134, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %169 = load i16, ptr @css_set_lock, align 4
  %170 = add i16 %169, 1
  store i16 %170, ptr @css_set_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  %171 = getelementptr inbounds %struct.css_set, ptr %90, i32 0, i32 3
  %172 = load ptr, ptr %171, align 8
  %173 = getelementptr inbounds %struct.cgroup, ptr %172, i32 0, i32 22
  %174 = load ptr, ptr %173, align 8
  %175 = icmp eq ptr %174, %172
  br i1 %175, label %191, label %176

176:                                              ; preds = %168
  %177 = call fastcc ptr @find_css_set(ptr noundef nonnull %90, ptr noundef %174)
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = call zeroext i1 @refcount_dec_not_one(ptr noundef %121) #27
  br i1 %180, label %191, label %181

181:                                              ; preds = %179
  %182 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @css_set_lock) #27
  call void @put_css_set_locked(ptr noundef %90) #27
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @css_set_lock, i32 noundef %182) #27
  br label %191

183:                                              ; preds = %176
  call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  store ptr %177, ptr %122, align 4
  %184 = getelementptr inbounds %struct.css_set, ptr %90, i32 0, i32 11
  %185 = getelementptr inbounds %struct.css_set, ptr %177, i32 0, i32 10
  %186 = getelementptr inbounds %struct.css_set, ptr %177, i32 0, i32 10, i32 1
  %187 = load ptr, ptr %186, align 4
  store ptr %184, ptr %186, align 4
  store ptr %185, ptr %184, align 8
  %188 = getelementptr inbounds %struct.css_set, ptr %90, i32 0, i32 11, i32 1
  store ptr %187, ptr %188, align 4
  store volatile ptr %184, ptr %187, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %189 = load i16, ptr @css_set_lock, align 4
  %190 = add i16 %189, 1
  store i16 %190, ptr @css_set_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  br label %191

191:                                              ; preds = %183, %181, %179, %168, %119, %86, %83
  %192 = phi ptr [ %16, %83 ], [ null, %119 ], [ null, %86 ], [ %90, %183 ], [ %90, %168 ], [ null, %179 ], [ null, %181 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret ptr %192
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_css_set(ptr noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.css_set, ptr %0, i32 0, i32 1
  %3 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %2) #27
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @css_set_lock) #27
  tail call void @put_css_set_locked(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @css_set_lock, i32 noundef %5) #27
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cgroup_migrate(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  br label %4

4:                                                ; preds = %6, %3
  %5 = phi ptr [ %0, %3 ], [ %9, %6 ]
  tail call fastcc void @cgroup_migrate_add_task(ptr noundef %5, ptr noundef %2)
  br i1 %1, label %6, label %11

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 64
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -1380
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %4

11:                                               ; preds = %6, %4
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %12 = load i16, ptr @css_set_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  tail call fastcc void @cgroup_migrate_execute(ptr noundef %2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cgroup_migrate_add_task(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %51

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 124
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  %11 = load i1, ptr @cgroup_migrate_add_task.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !11

14:                                               ; preds = %7
  store i1 true, ptr @cgroup_migrate_add_task.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2368, i32 noundef 9, ptr noundef null) #27
  br label %15

15:                                               ; preds = %14, %7
  %16 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 123
  %17 = load volatile ptr, ptr %16, align 16
  %18 = getelementptr inbounds %struct.css_set, ptr %17, i32 0, i32 16
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %51, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.cgroup_mgctx, ptr %1, i32 0, i32 2, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.css_set, ptr %17, i32 0, i32 6
  %26 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 124, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %8, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  %30 = getelementptr inbounds %struct.css_set, ptr %17, i32 0, i32 6, i32 1
  %31 = load ptr, ptr %30, align 4
  store ptr %8, ptr %30, align 4
  store ptr %25, ptr %8, align 4
  store ptr %31, ptr %26, align 4
  store volatile ptr %8, ptr %31, align 4
  %32 = getelementptr inbounds %struct.css_set, ptr %17, i32 0, i32 15
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %35, label %40

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.cgroup_mgctx, ptr %1, i32 0, i32 2
  %37 = getelementptr inbounds %struct.cgroup_mgctx, ptr %1, i32 0, i32 2, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  store ptr %32, ptr %37, align 4
  store ptr %36, ptr %32, align 4
  %39 = getelementptr inbounds %struct.css_set, ptr %17, i32 0, i32 15, i32 1
  store ptr %38, ptr %39, align 4
  store volatile ptr %32, ptr %38, align 4
  br label %40

40:                                               ; preds = %35, %21
  %41 = getelementptr inbounds %struct.css_set, ptr %17, i32 0, i32 18
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.css_set, ptr %42, i32 0, i32 15
  %44 = load volatile ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %43
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.cgroup_mgctx, ptr %1, i32 0, i32 2, i32 1
  %48 = getelementptr inbounds %struct.cgroup_mgctx, ptr %1, i32 0, i32 2, i32 1, i32 1
  %49 = load ptr, ptr %48, align 4
  store ptr %43, ptr %48, align 4
  store ptr %47, ptr %43, align 4
  %50 = getelementptr inbounds %struct.css_set, ptr %42, i32 0, i32 15, i32 1
  store ptr %49, ptr %50, align 4
  store volatile ptr %43, ptr %49, align 4
  br label %51

51:                                               ; preds = %46, %40, %15, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cgroup_migrate_execute(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cgroup_mgctx, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %44, label %8

5:                                                ; preds = %32, %8
  %6 = load ptr, ptr %9, align 4
  %7 = icmp eq ptr %6, %2
  br i1 %7, label %44, label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = getelementptr i8, ptr %9, i32 -64
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %5, label %13

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %9, i32 16
  br label %15

15:                                               ; preds = %32, %13
  %16 = phi ptr [ %11, %13 ], [ %18, %32 ]
  %17 = getelementptr i8, ptr %16, i32 -1780
  %18 = load ptr, ptr %16, align 4
  %19 = getelementptr i8, ptr %16, i32 -4
  %20 = load volatile ptr, ptr %19, align 16
  %21 = load ptr, ptr %14, align 4
  %22 = getelementptr inbounds %struct.css_set, ptr %21, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #27, !srcloc !19
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #27, !srcloc !43
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26, !prof !11

26:                                               ; preds = %15
  %27 = add i32 %24, 1
  %28 = or i32 %27, %24
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %32, label %30, !prof !10

30:                                               ; preds = %26, %15
  %31 = phi i32 [ 2, %15 ], [ 1, %26 ]
  tail call void @refcount_warn_saturate(ptr noundef %22, i32 noundef %31) #27
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds %struct.css_set, ptr %21, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 4
  tail call fastcc void @css_set_move_task(ptr noundef %17, ptr noundef %20, ptr noundef %21, i1 noundef zeroext true)
  %36 = getelementptr inbounds %struct.css_set, ptr %20, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, -1
  store i32 %38, ptr %36, align 4
  %39 = getelementptr inbounds %struct.css_set, ptr %20, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.css_set, ptr %21, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  tail call void @cgroup_freezer_migrate_task(ptr noundef %17, ptr noundef %40, ptr noundef %42) #27
  tail call void @put_css_set_locked(ptr noundef %20)
  %43 = icmp eq ptr %18, %10
  br i1 %43, label %5, label %15

44:                                               ; preds = %5, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %45 = load i16, ptr @css_set_lock, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  %47 = getelementptr inbounds %struct.cgroup_mgctx, ptr %0, i32 0, i32 2, i32 1
  %48 = getelementptr inbounds %struct.cgroup_mgctx, ptr %0, i32 0, i32 2, i32 4
  store ptr %47, ptr %48, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %49 = load volatile ptr, ptr %47, align 4
  %50 = icmp eq ptr %49, %47
  br i1 %50, label %57, label %51

51:                                               ; preds = %44
  %52 = load ptr, ptr %2, align 4
  %53 = getelementptr inbounds %struct.cgroup_mgctx, ptr %0, i32 0, i32 2, i32 1, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %2, ptr %55, align 4
  store ptr %49, ptr %2, align 4
  store ptr %52, ptr %54, align 4
  %56 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  store ptr %54, ptr %56, align 4
  store volatile ptr %47, ptr %47, align 4
  store ptr %47, ptr %53, align 4
  br label %57

57:                                               ; preds = %51, %44
  %58 = load ptr, ptr %2, align 4
  %59 = icmp eq ptr %58, %2
  br i1 %59, label %80, label %60

60:                                               ; preds = %74, %57
  %61 = phi ptr [ %62, %74 ], [ %58, %57 ]
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i8, ptr %61, i32 -64
  %64 = load volatile ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, %63
  br i1 %65, label %74, label %66

66:                                               ; preds = %60
  %67 = getelementptr i8, ptr %61, i32 -72
  %68 = getelementptr i8, ptr %61, i32 -68
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %61, i32 -60
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  store ptr %69, ptr %72, align 4
  store ptr %64, ptr %69, align 4
  store ptr %67, ptr %71, align 4
  store ptr %71, ptr %68, align 4
  store volatile ptr %63, ptr %63, align 4
  store ptr %63, ptr %70, align 4
  %73 = load ptr, ptr %61, align 4
  br label %74

74:                                               ; preds = %66, %60
  %75 = phi ptr [ %62, %60 ], [ %73, %66 ]
  %76 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  store ptr %77, ptr %78, align 4
  store volatile ptr %75, ptr %77, align 4
  store volatile ptr %61, ptr %61, align 4
  store ptr %61, ptr %76, align 4
  %79 = icmp eq ptr %62, %2
  br i1 %79, label %80, label %60

80:                                               ; preds = %74, %57
  %81 = getelementptr inbounds %struct.cgroup_mgctx, ptr %0, i32 0, i32 2, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %82 = load i16, ptr @css_set_lock, align 4
  %83 = add i16 %82, 1
  store i16 %83, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  store i32 0, ptr %81, align 4
  store ptr %2, ptr %48, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cgroup_attach_task(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.cgroup_mgctx, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #27
  %5 = getelementptr inbounds i8, ptr %4, i32 52
  store i32 0, ptr %5, align 4, !annotation !9
  store ptr %4, ptr %4, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  %7 = getelementptr inbounds %struct.cgroup_mgctx, ptr %4, i32 0, i32 1
  store ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.cgroup_mgctx, ptr %4, i32 0, i32 1, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.cgroup_mgctx, ptr %4, i32 0, i32 2
  store ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.cgroup_mgctx, ptr %4, i32 0, i32 2, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.cgroup_mgctx, ptr %4, i32 0, i32 2, i32 1
  store ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cgroup_mgctx, ptr %4, i32 0, i32 2, i32 1, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.cgroup_mgctx, ptr %4, i32 0, i32 2, i32 2
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cgroup_mgctx, ptr %4, i32 0, i32 2, i32 3
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.cgroup_mgctx, ptr %4, i32 0, i32 2, i32 4
  store ptr %9, ptr %15, align 4
  %16 = getelementptr inbounds %struct.cgroup_mgctx, ptr %4, i32 0, i32 2, i32 5
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.cgroup_mgctx, ptr %4, i32 0, i32 2, i32 6
  store ptr null, ptr %17, align 4
  call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  br label %18

18:                                               ; preds = %22, %3
  %19 = phi ptr [ %1, %3 ], [ %25, %22 ]
  %20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 123
  %21 = load volatile ptr, ptr %20, align 16
  call void @cgroup_migrate_add_src(ptr noundef %21, ptr noundef %0, ptr noundef nonnull %4)
  br i1 %2, label %22, label %27

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 64
  %24 = load volatile ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 -1380
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %18

27:                                               ; preds = %22, %18
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %28 = load i16, ptr @css_set_lock, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr @css_set_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  %30 = call i32 @cgroup_migrate_prepare_dst(ptr noundef nonnull %4)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %84

32:                                               ; preds = %27
  call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  br label %33

33:                                               ; preds = %79, %32
  %34 = phi ptr [ %1, %32 ], [ %82, %79 ]
  %35 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 124
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  %43 = load i1, ptr @cgroup_migrate_add_task.__already_done, align 1
  %44 = xor i1 %43, true
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %47, !prof !11

46:                                               ; preds = %39
  store i1 true, ptr @cgroup_migrate_add_task.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2368, i32 noundef 9, ptr noundef null) #27
  br label %47

47:                                               ; preds = %46, %39
  %48 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 123
  %49 = load volatile ptr, ptr %48, align 16
  %50 = getelementptr inbounds %struct.css_set, ptr %49, i32 0, i32 16
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %78, label %53

53:                                               ; preds = %47
  %54 = load i32, ptr %13, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %13, align 4
  %56 = getelementptr inbounds %struct.css_set, ptr %49, i32 0, i32 6
  %57 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 124, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %40, align 4
  %60 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  store ptr %58, ptr %60, align 4
  store volatile ptr %59, ptr %58, align 4
  %61 = getelementptr inbounds %struct.css_set, ptr %49, i32 0, i32 6, i32 1
  %62 = load ptr, ptr %61, align 4
  store ptr %40, ptr %61, align 4
  store ptr %56, ptr %40, align 4
  store ptr %62, ptr %57, align 4
  store volatile ptr %40, ptr %62, align 4
  %63 = getelementptr inbounds %struct.css_set, ptr %49, i32 0, i32 15
  %64 = load volatile ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, %63
  br i1 %65, label %66, label %69

66:                                               ; preds = %53
  %67 = load ptr, ptr %10, align 4
  store ptr %63, ptr %10, align 4
  store ptr %9, ptr %63, align 4
  %68 = getelementptr inbounds %struct.css_set, ptr %49, i32 0, i32 15, i32 1
  store ptr %67, ptr %68, align 4
  store volatile ptr %63, ptr %67, align 4
  br label %69

69:                                               ; preds = %66, %53
  %70 = getelementptr inbounds %struct.css_set, ptr %49, i32 0, i32 18
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.css_set, ptr %71, i32 0, i32 15
  %73 = load volatile ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, %72
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load ptr, ptr %12, align 4
  store ptr %72, ptr %12, align 4
  store ptr %11, ptr %72, align 4
  %77 = getelementptr inbounds %struct.css_set, ptr %71, i32 0, i32 15, i32 1
  store ptr %76, ptr %77, align 4
  store volatile ptr %72, ptr %76, align 4
  br label %78

78:                                               ; preds = %75, %69, %47, %33
  br i1 %2, label %79, label %85

79:                                               ; preds = %78
  %80 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 64
  %81 = load volatile ptr, ptr %80, align 4
  %82 = getelementptr i8, ptr %81, i32 -1380
  %83 = icmp eq ptr %82, %1
  br i1 %83, label %85, label %33

84:                                               ; preds = %27
  call void @cgroup_migrate_finish(ptr noundef nonnull %4)
  br label %121

85:                                               ; preds = %79, %78
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %86 = load i16, ptr @css_set_lock, align 4
  %87 = add i16 %86, 1
  store i16 %87, ptr @css_set_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  call fastcc void @cgroup_migrate_execute(ptr noundef nonnull %4) #27
  call void @cgroup_migrate_finish(ptr noundef nonnull %4)
  %88 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_attach_task, i32 0, i32 1), align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %121

90:                                               ; preds = %85
  %91 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_cgroup_path_lock) #27
  %92 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 11
  %93 = load ptr, ptr %92, align 8
  %94 = call i32 @kernfs_path_from_node(ptr noundef %93, ptr noundef null, ptr noundef nonnull @trace_cgroup_path, i32 noundef 1024) #27
  %95 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_attach_task, i32 0, i32 1), align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %90
  %98 = tail call ptr @llvm.thread.pointer() #27
  %99 = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 2
  %100 = load i32, ptr %99, align 8
  %101 = lshr i32 %100, 5
  %102 = getelementptr i32, ptr @__cpu_online_mask, i32 %101
  %103 = load volatile i32, ptr %102, align 4
  %104 = and i32 %100, 31
  %105 = shl nuw i32 1, %104
  %106 = and i32 %105, %103
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %120, label %108

108:                                              ; preds = %97
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !48
  %109 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_attach_task, i32 0, i32 7), align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %119, label %111

111:                                              ; preds = %111, %108
  %112 = phi ptr [ %116, %111 ], [ %109, %108 ]
  %113 = load volatile ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.tracepoint_func, ptr %112, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  call void %113(ptr noundef %115, ptr noundef %0, ptr noundef nonnull @trace_cgroup_path, ptr noundef %1, i1 noundef zeroext %2) #27
  %116 = getelementptr %struct.tracepoint_func, ptr %112, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %111

119:                                              ; preds = %111, %108
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !49
  br label %120

120:                                              ; preds = %119, %97, %90
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_cgroup_path_lock, i32 noundef %91) #27
  br label %121

121:                                              ; preds = %120, %85, %84
  %122 = phi i32 [ 0, %85 ], [ 0, %120 ], [ %30, %84 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #27
  ret i32 %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cgroup_procs_write_start(ptr noundef %0, i1 noundef zeroext %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = tail call ptr @strim(ptr noundef %0) #27
  %6 = call i32 @kstrtoint(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %4) #27
  %7 = icmp ne i32 %6, 0
  %8 = load i32, ptr %4, align 4
  %9 = icmp slt i32 %8, 0
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %58, label %11

11:                                               ; preds = %3
  %12 = icmp ne i32 %8, 0
  %13 = or i1 %12, %1
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @percpu_down_write(ptr noundef nonnull @cgroup_threadgroup_rwsem) #27
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i8 [ 1, %14 ], [ 0, %11 ]
  store i8 %16, ptr %2, align 1
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %17 = load i32, ptr %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = call ptr @find_task_by_vpid(i32 noundef %17) #27
  %21 = icmp eq ptr %20, null
  br i1 %21, label %51, label %24

22:                                               ; preds = %15
  %23 = tail call ptr @llvm.thread.pointer() #27
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi ptr [ %20, %19 ], [ %23, %22 ]
  br i1 %1, label %26, label %29

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 59
  %28 = load ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi ptr [ %28, %26 ], [ %25, %24 ]
  %31 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 49
  %32 = load i8, ptr %31, align 8
  %33 = and i8 %32, 16
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 67108864
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #27, !srcloc !19
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #27, !srcloc !43
  %43 = extractvalue { i32, i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45, !prof !11

45:                                               ; preds = %40
  %46 = add i32 %43, 1
  %47 = or i32 %46, %43
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %56, label %49, !prof !10

49:                                               ; preds = %45, %40
  %50 = phi i32 [ 2, %40 ], [ 1, %45 ]
  call void @refcount_warn_saturate(ptr noundef %41, i32 noundef %50) #27
  br label %56

51:                                               ; preds = %35, %29, %19
  %52 = phi ptr [ inttoptr (i32 -3 to ptr), %19 ], [ inttoptr (i32 -22 to ptr), %35 ], [ inttoptr (i32 -22 to ptr), %29 ]
  %53 = load i8, ptr %2, align 1, !range !34
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  call void @percpu_up_write(ptr noundef nonnull @cgroup_threadgroup_rwsem) #27
  store i8 0, ptr %2, align 1
  br label %56

56:                                               ; preds = %55, %51, %49, %45
  %57 = phi ptr [ %52, %55 ], [ %52, %51 ], [ %30, %45 ], [ %30, %49 ]
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %58

58:                                               ; preds = %56, %3
  %59 = phi ptr [ %57, %56 ], [ inttoptr (i32 -22 to ptr), %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  ret ptr %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_procs_write_finish(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #27, !srcloc !19
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #27, !srcloc !20
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %11, label %9, !prof !10

9:                                                ; preds = %7
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef 3) #27
  br label %11

10:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !21
  tail call void @__put_task_struct(ptr noundef %0) #27
  br label %11

11:                                               ; preds = %10, %9, %7
  br i1 %1, label %12, label %13

12:                                               ; preds = %11
  tail call void @percpu_up_write(ptr noundef nonnull @cgroup_threadgroup_rwsem) #27
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @css_next_descendant_post(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %12

4:                                                ; preds = %4, %2
  %5 = phi ptr [ %8, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %5, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 -16
  %9 = icmp eq ptr %7, %6
  %10 = icmp eq ptr %8, null
  %11 = or i1 %9, %10
  br i1 %11, label %51, label %4

12:                                               ; preds = %2
  %13 = icmp eq ptr %0, %1
  br i1 %13, label %51, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 12
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21, !prof !10

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %16, i32 0, i32 4
  %23 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 8
  br label %24

24:                                               ; preds = %28, %21
  %25 = phi ptr [ %22, %21 ], [ %26, %28 ]
  %26 = load volatile ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, %22
  br i1 %27, label %51, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %26, i32 32
  %30 = load i64, ptr %29, align 8
  %31 = load i64, ptr %23, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %36, label %24

33:                                               ; preds = %14
  %34 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 3
  %35 = load volatile ptr, ptr %34, align 8
  br label %36

36:                                               ; preds = %33, %28
  %37 = phi ptr [ %35, %33 ], [ %26, %28 ]
  %38 = getelementptr i8, ptr %37, i32 -16
  %39 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %16, i32 0, i32 4
  %40 = icmp eq ptr %37, %39
  %41 = icmp eq ptr %38, null
  %42 = or i1 %40, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %43, %36
  %44 = phi ptr [ %47, %43 ], [ %38, %36 ]
  %45 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %44, i32 0, i32 4
  %46 = load volatile ptr, ptr %45, align 8
  %47 = getelementptr i8, ptr %46, i32 -16
  %48 = icmp eq ptr %46, %45
  %49 = icmp eq ptr %47, null
  %50 = or i1 %48, %49
  br i1 %50, label %51, label %43

51:                                               ; preds = %43, %36, %24, %12, %4
  %52 = phi ptr [ null, %12 ], [ %16, %36 ], [ %5, %4 ], [ %44, %43 ], [ %16, %24 ]
  ret ptr %52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cgroup_psi_enabled() local_unnamed_addr #3 {
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cgroup_rm_cftypes(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @cgroup_mutex) #27
  %2 = icmp eq ptr %0, null
  br i1 %2, label %93, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.cftype, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %93, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cftype, ptr %0, i32 0, i32 6
  %9 = getelementptr inbounds %struct.cftype, ptr %0, i32 0, i32 6, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.cgroup_subsys, ptr %13, i32 0, i32 22
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.cgroup_root, ptr %15, i32 0, i32 3
  br label %17

17:                                               ; preds = %34, %7
  %18 = phi ptr [ %16, %7 ], [ %35, %34 ]
  %19 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %18, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %18, align 8
  %25 = tail call fastcc i32 @cgroup_addrm_files(ptr noundef nonnull %18, ptr noundef %24, ptr noundef nonnull %0, i1 noundef zeroext false) #27
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %74

27:                                               ; preds = %23, %17
  %28 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %18, i32 0, i32 4
  %29 = load volatile ptr, ptr %28, align 8
  %30 = getelementptr i8, ptr %29, i32 -16
  %31 = icmp eq ptr %29, %28
  %32 = icmp eq ptr %30, null
  %33 = or i1 %31, %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %67, %27
  %35 = phi ptr [ %30, %27 ], [ %69, %67 ]
  br label %17

36:                                               ; preds = %67, %27
  %37 = phi ptr [ %41, %67 ], [ %18, %27 ]
  %38 = icmp eq ptr %37, %16
  br i1 %38, label %74, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %37, i32 0, i32 12
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %37, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %41, i32 0, i32 4
  br label %64

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %37, i32 0, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52, !prof !10

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %37, i32 0, i32 3
  br label %64

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %41, i32 0, i32 4
  %54 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %37, i32 0, i32 8
  br label %55

55:                                               ; preds = %59, %52
  %56 = phi ptr [ %53, %52 ], [ %57, %59 ]
  %57 = load volatile ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, %53
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = getelementptr i8, ptr %57, i32 32
  %61 = load i64, ptr %60, align 8
  %62 = load i64, ptr %54, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %67, label %55

64:                                               ; preds = %50, %43
  %65 = phi ptr [ %51, %50 ], [ %44, %43 ]
  %66 = load volatile ptr, ptr %65, align 8
  br label %67

67:                                               ; preds = %64, %59, %55
  %68 = phi ptr [ %66, %64 ], [ %53, %55 ], [ %57, %59 ]
  %69 = getelementptr i8, ptr %68, i32 -16
  %70 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %41, i32 0, i32 4
  %71 = icmp eq ptr %68, %70
  %72 = icmp eq ptr %69, null
  %73 = or i1 %71, %72
  br i1 %73, label %36, label %34

74:                                               ; preds = %36, %23
  %75 = load i8, ptr %0, align 4
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %93, label %77

77:                                               ; preds = %84, %74
  %78 = phi ptr [ %90, %84 ], [ %0, %74 ]
  %79 = getelementptr inbounds %struct.cftype, ptr %78, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  switch i32 %80, label %81 [
    i32 0, label %84
    i32 4096, label %84
  ]

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.cftype, ptr %78, i32 0, i32 7
  %83 = load ptr, ptr %82, align 4
  tail call void @kfree(ptr noundef %83) #27
  br label %84

84:                                               ; preds = %81, %77, %77
  %85 = getelementptr inbounds %struct.cftype, ptr %78, i32 0, i32 7
  store ptr null, ptr %85, align 4
  %86 = getelementptr inbounds %struct.cftype, ptr %78, i32 0, i32 5
  store ptr null, ptr %86, align 4
  %87 = getelementptr inbounds %struct.cftype, ptr %78, i32 0, i32 3
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, -196609
  store i32 %89, ptr %87, align 4
  %90 = getelementptr %struct.cftype, ptr %78, i32 1
  %91 = load i8, ptr %90, align 4
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %77

93:                                               ; preds = %84, %74, %3, %1
  %94 = phi i32 [ -2, %3 ], [ -2, %1 ], [ 0, %74 ], [ 0, %84 ]
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #27
  ret i32 %94
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cgroup_add_dfl_cftypes(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #12 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %12, %8 ], [ %1, %2 ]
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.cftype, ptr %5, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, 65536
  store i32 %11, ptr %9, align 4
  %12 = getelementptr %struct.cftype, ptr %5, i32 1
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4

14:                                               ; preds = %8, %4, %2
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cgroup_add_legacy_cftypes(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #12 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %12, %8 ], [ %1, %2 ]
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.cftype, ptr %5, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, 131072
  store i32 %11, ptr %9, align 4
  %12 = getelementptr %struct.cftype, ptr %5, i32 1
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4

14:                                               ; preds = %8, %4, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_file_notify(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @cgroup_file_kn_lock) #27
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cgroup_file, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 1
  %9 = load volatile i32, ptr @jiffies, align 64
  %10 = sub i32 %9, %7
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = sub i32 %8, %13
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.cgroup_file, ptr %0, i32 0, i32 2
  %18 = tail call i32 @timer_reduce(ptr noundef %17, i32 noundef %8) #27
  br label %21

19:                                               ; preds = %12, %5
  tail call void @kernfs_notify(ptr noundef nonnull %3) #27
  %20 = load volatile i32, ptr @jiffies, align 64
  store i32 %20, ptr %6, align 4
  br label %21

21:                                               ; preds = %19, %16, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @cgroup_file_kn_lock, i32 noundef %2) #27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timer_reduce(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @css_next_child(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %1, i32 0, i32 4
  br label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !10

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 3
  br label %25

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %1, i32 0, i32 4
  %15 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 8
  br label %16

16:                                               ; preds = %20, %13
  %17 = phi ptr [ %14, %13 ], [ %18, %20 ]
  %18 = load volatile ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, %14
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %18, i32 32
  %22 = load i64, ptr %21, align 8
  %23 = load i64, ptr %15, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %28, label %16

25:                                               ; preds = %11, %4
  %26 = phi ptr [ %12, %11 ], [ %5, %4 ]
  %27 = load volatile ptr, ptr %26, align 8
  br label %28

28:                                               ; preds = %25, %20, %16
  %29 = phi ptr [ %27, %25 ], [ %14, %16 ], [ %18, %20 ]
  %30 = getelementptr i8, ptr %29, i32 -16
  %31 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %1, i32 0, i32 4
  %32 = icmp eq ptr %29, %31
  %33 = select i1 %32, ptr null, ptr %30
  ret ptr %33
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @css_next_descendant_pre(ptr noundef %0, ptr noundef readnone %1) #11 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %49, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 4
  %6 = load volatile ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -16
  %8 = icmp eq ptr %6, %5
  %9 = icmp eq ptr %7, null
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %49

11:                                               ; preds = %42, %4
  %12 = phi ptr [ %16, %42 ], [ %0, %4 ]
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %49, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %12, i32 0, i32 12
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %12, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %16, i32 0, i32 4
  br label %39

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %12, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27, !prof !10

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %12, i32 0, i32 3
  br label %39

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %16, i32 0, i32 4
  %29 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %12, i32 0, i32 8
  br label %30

30:                                               ; preds = %34, %27
  %31 = phi ptr [ %28, %27 ], [ %32, %34 ]
  %32 = load volatile ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, %28
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %32, i32 32
  %36 = load i64, ptr %35, align 8
  %37 = load i64, ptr %29, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %42, label %30

39:                                               ; preds = %25, %18
  %40 = phi ptr [ %26, %25 ], [ %19, %18 ]
  %41 = load volatile ptr, ptr %40, align 8
  br label %42

42:                                               ; preds = %39, %34, %30
  %43 = phi ptr [ %41, %39 ], [ %32, %34 ], [ %28, %30 ]
  %44 = getelementptr i8, ptr %43, i32 -16
  %45 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %16, i32 0, i32 4
  %46 = icmp eq ptr %43, %45
  %47 = icmp eq ptr %44, null
  %48 = or i1 %46, %47
  br i1 %48, label %11, label %49

49:                                               ; preds = %42, %11, %4, %2
  %50 = phi ptr [ %1, %2 ], [ %7, %4 ], [ null, %11 ], [ %44, %42 ]
  ret ptr %50
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @css_rightmost_descendant(ptr noundef %0) local_unnamed_addr #11 {
  br label %2

2:                                                ; preds = %36, %1
  %3 = phi ptr [ %0, %1 ], [ %11, %36 ]
  %4 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %3, i32 0, i32 4
  %5 = load volatile ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -16
  %7 = icmp eq ptr %5, %4
  %8 = icmp eq ptr %6, null
  %9 = or i1 %7, %8
  br i1 %9, label %38, label %10

10:                                               ; preds = %30, %2
  %11 = phi ptr [ %32, %30 ], [ %6, %2 ]
  %12 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %11, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16, !prof !10

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %11, i32 0, i32 8
  br label %18

18:                                               ; preds = %22, %16
  %19 = phi ptr [ %4, %16 ], [ %20, %22 ]
  %20 = load volatile ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, %4
  br i1 %21, label %36, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %20, i32 32
  %24 = load i64, ptr %23, align 8
  %25 = load i64, ptr %17, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %30, label %18

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %11, i32 0, i32 3
  %29 = load volatile ptr, ptr %28, align 8
  br label %30

30:                                               ; preds = %27, %22
  %31 = phi ptr [ %29, %27 ], [ %20, %22 ]
  %32 = getelementptr i8, ptr %31, i32 -16
  %33 = icmp eq ptr %31, %4
  %34 = icmp eq ptr %32, null
  %35 = or i1 %33, %34
  br i1 %35, label %36, label %10

36:                                               ; preds = %30, %18
  %37 = icmp eq ptr %11, null
  br i1 %37, label %38, label %2

38:                                               ; preds = %36, %2
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @css_has_online_children(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %2 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 4
  %3 = load volatile ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -16
  %5 = icmp eq ptr %3, %2
  %6 = icmp eq ptr %4, null
  %7 = or i1 %5, %6
  br i1 %7, label %39, label %8

8:                                                ; preds = %31, %1
  %9 = phi ptr [ %33, %31 ], [ %4, %1 ]
  %10 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %9, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = and i32 %11, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17, !prof !10

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %9, i32 0, i32 8
  br label %19

19:                                               ; preds = %23, %17
  %20 = phi ptr [ %2, %17 ], [ %21, %23 ]
  %21 = load volatile ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, %2
  br i1 %22, label %37, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %21, i32 32
  %25 = load i64, ptr %24, align 8
  %26 = load i64, ptr %18, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %31, label %19

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %9, i32 0, i32 3
  %30 = load volatile ptr, ptr %29, align 8
  br label %31

31:                                               ; preds = %28, %23
  %32 = phi ptr [ %30, %28 ], [ %21, %23 ]
  %33 = getelementptr i8, ptr %32, i32 -16
  %34 = icmp eq ptr %32, %2
  %35 = icmp eq ptr %33, null
  %36 = or i1 %34, %35
  br i1 %36, label %37, label %8

37:                                               ; preds = %31, %19, %8
  %38 = xor i1 %13, true
  br label %39

39:                                               ; preds = %37, %1
  %40 = phi i1 [ false, %1 ], [ %38, %37 ]
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  ret i1 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @css_task_iter_start(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(52) %2, i8 0, i32 52, i1 false)
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %4 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  store ptr %5, ptr %2, align 4
  %6 = getelementptr inbounds %struct.css_task_iter, ptr %2, i32 0, i32 1
  store i32 %1, ptr %6, align 4
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.cgroup, ptr %7, i32 0, i32 20
  %9 = getelementptr inbounds %struct.css_task_iter, ptr %2, i32 0, i32 2
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.css_task_iter, ptr %2, i32 0, i32 3
  store ptr %8, ptr %10, align 4
  tail call fastcc void @css_task_iter_advance(ptr noundef %2)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %11 = load i16, ptr @css_set_lock, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @css_task_iter_advance(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 7
  %3 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %3, align 4
  br label %7

7:                                                ; preds = %50, %1
  %8 = phi ptr [ %6, %1 ], [ %40, %50 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %4, align 4
  %12 = and i32 %11, 65536
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = and i32 %11, -65537
  store i32 %15, ptr %4, align 4
  br label %18

16:                                               ; preds = %10
  %17 = load ptr, ptr %8, align 4
  store ptr %17, ptr %3, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %17, %16 ], [ %8, %14 ]
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr inbounds %struct.css_set, ptr %20, i32 0, i32 5
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.css_set, ptr %20, i32 0, i32 6
  store ptr %24, ptr %2, align 4
  %25 = load ptr, ptr %24, align 4
  store ptr %25, ptr %3, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi ptr [ %25, %23 ], [ %19, %18 ]
  %28 = getelementptr inbounds %struct.css_set, ptr %20, i32 0, i32 6
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.css_set, ptr %20, i32 0, i32 7
  store ptr %31, ptr %2, align 4
  %32 = load ptr, ptr %31, align 4
  store ptr %32, ptr %3, align 4
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi ptr [ %32, %30 ], [ %27, %26 ]
  %35 = getelementptr inbounds %struct.css_set, ptr %20, i32 0, i32 7
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %7
  tail call fastcc void @css_task_iter_advance_css_set(ptr noundef %0)
  %38 = load ptr, ptr %3, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi ptr [ %38, %37 ], [ %34, %33 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %67, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr %4, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %40, i32 -560
  %48 = load i32, ptr %47, align 4
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %51, label %50

50:                                               ; preds = %62, %56, %46
  br label %7

51:                                               ; preds = %46
  %52 = load ptr, ptr %2, align 4
  %53 = load ptr, ptr %5, align 4
  %54 = getelementptr inbounds %struct.css_set, ptr %53, i32 0, i32 7
  %55 = icmp eq ptr %52, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = getelementptr i8, ptr %40, i32 -164
  %58 = load ptr, ptr %57, align 16
  %59 = getelementptr inbounds %struct.signal_struct, ptr %58, i32 0, i32 1
  %60 = load volatile i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %50, label %67

62:                                               ; preds = %42
  %63 = load ptr, ptr %2, align 4
  %64 = load ptr, ptr %5, align 4
  %65 = getelementptr inbounds %struct.css_set, ptr %64, i32 0, i32 7
  %66 = icmp eq ptr %63, %65
  br i1 %66, label %50, label %67

67:                                               ; preds = %62, %56, %51, %39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @css_task_iter_next(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #27, !srcloc !19
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #27, !srcloc !20
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %14, label %12, !prof !10

12:                                               ; preds = %10
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 3) #27
  br label %14

13:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !21
  tail call void @__put_task_struct(ptr noundef nonnull %3) #27
  br label %14

14:                                               ; preds = %13, %12, %10
  store ptr null, ptr %2, align 4
  br label %15

15:                                               ; preds = %14, %1
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %16 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 65536
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call fastcc void @css_task_iter_advance(ptr noundef %0)
  br label %21

21:                                               ; preds = %20, %15
  %22 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %23, i32 -1780
  store ptr %26, ptr %2, align 4
  %27 = getelementptr i8, ptr %23, i32 -1236
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #27, !srcloc !19
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #27, !srcloc !43
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !11

31:                                               ; preds = %25
  %32 = add i32 %29, 1
  %33 = or i32 %32, %29
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %37, label %35, !prof !10

35:                                               ; preds = %31, %25
  %36 = phi i32 [ 2, %25 ], [ 1, %31 ]
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef %36) #27
  br label %37

37:                                               ; preds = %35, %31
  tail call fastcc void @css_task_iter_advance(ptr noundef %0)
  br label %38

38:                                               ; preds = %37, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %39 = load i16, ptr @css_set_lock, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  %41 = load ptr, ptr %2, align 4
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @css_task_iter_end(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %6 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 11
  %7 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 11, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  %11 = load ptr, ptr %2, align 4
  tail call void @put_css_set_locked(ptr noundef %11)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %12 = load i16, ptr @css_set_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  br label %14

14:                                               ; preds = %5, %1
  %15 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.css_set, ptr %16, i32 0, i32 1
  %20 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %19) #27
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @css_set_lock) #27
  tail call void @put_css_set_locked(ptr noundef nonnull %16) #27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @css_set_lock, i32 noundef %22) #27
  br label %23

23:                                               ; preds = %21, %18, %14
  %24 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #27, !srcloc !19
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #27, !srcloc !20
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = icmp sgt i32 %30, 0
  br i1 %33, label %36, label %34, !prof !10

34:                                               ; preds = %32
  tail call void @refcount_warn_saturate(ptr noundef %28, i32 noundef 3) #27
  br label %36

35:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !21
  tail call void @__put_task_struct(ptr noundef nonnull %25) #27
  br label %36

36:                                               ; preds = %35, %34, %32, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cgroup_mkdir(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) #0 {
  %4 = alloca %struct.iattr, align 8
  %5 = tail call ptr @strchr(ptr noundef %1, i32 noundef 10)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %326

7:                                                ; preds = %3
  %8 = tail call ptr @cgroup_kn_lock_live(ptr noundef %0, i1 noundef zeroext false)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %326, label %10

10:                                               ; preds = %22, %7
  %11 = phi i32 [ %23, %22 ], [ 1, %7 ]
  %12 = phi ptr [ %25, %22 ], [ %8, %7 ]
  %13 = getelementptr inbounds %struct.cgroup, ptr %12, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.cgroup, ptr %12, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %324

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.cgroup, ptr %12, i32 0, i32 3
  %20 = load i32, ptr %19, align 8
  %21 = icmp sgt i32 %11, %20
  br i1 %21, label %324, label %22

22:                                               ; preds = %18
  %23 = add i32 %11, 1
  %24 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %12, i32 0, i32 12
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %10

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.cgroup, ptr %8, i32 0, i32 19
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.cgroup, ptr %8, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  %33 = add i32 %31, 2
  %34 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %33, i32 8) #27
  %35 = extractvalue { i32, i1 } %34, 1
  %36 = extractvalue { i32, i1 } %34, 0
  %37 = tail call i32 @llvm.uadd.sat.i32(i32 %36, i32 408) #27
  %38 = select i1 %35, i32 -1, i32 %37
  %39 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %38, i32 noundef 3520) #29
  %40 = icmp eq ptr %39, null
  br i1 %40, label %286, label %41

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %39, i32 0, i32 2
  %43 = tail call i32 @percpu_ref_init(ptr noundef %42, ptr noundef nonnull @css_release, i32 noundef 0, i32 noundef 3264) #27
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %280

45:                                               ; preds = %41
  %46 = tail call i32 @cgroup_rstat_init(ptr noundef nonnull %39) #27
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %278

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.cgroup, ptr %8, i32 0, i32 11
  %50 = load ptr, ptr %49, align 8
  %51 = tail call ptr @kernfs_create_dir_ns(ptr noundef %50, ptr noundef %1, i16 noundef zeroext %2, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, ptr noundef nonnull %39, ptr noundef null) #27
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = ptrtoint ptr %51 to i32
  tail call void @cgroup_rstat_exit(ptr noundef nonnull %39) #27
  br label %278

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 11
  store ptr %51, ptr %56, align 8
  %57 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %39, i32 0, i32 3
  store volatile ptr %57, ptr %57, align 16
  %58 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %39, i32 0, i32 3, i32 1
  store ptr %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %39, i32 0, i32 4
  store volatile ptr %59, ptr %59, align 8
  %60 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %39, i32 0, i32 4, i32 1
  store ptr %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 20
  store volatile ptr %61, ptr %61, align 32
  %62 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 20, i32 1
  store ptr %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 29
  store volatile ptr %63, ptr %63, align 8
  %64 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 29, i32 1
  store ptr %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 30
  tail call void @__mutex_init(ptr noundef %65, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_cgroup_housekeeping.__key) #27
  store ptr %39, ptr %39, align 64
  %66 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %39, i32 0, i32 7
  %67 = load i32, ptr %66, align 4
  %68 = or i32 %67, 2
  store i32 %68, ptr %66, align 4
  %69 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 22
  store ptr %39, ptr %69, align 8
  %70 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 6
  store i32 2147483647, ptr %70, align 4
  %71 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 3
  store i32 2147483647, ptr %71, align 8
  %72 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 25
  store volatile ptr %72, ptr %72, align 4
  %73 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 25, i32 1
  store ptr %72, ptr %73, align 8
  %74 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 28
  tail call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(20) %74, i8 0, i64 20, i1 false) #27
  %75 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 31
  tail call void @__init_waitqueue_head(ptr noundef %75, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_cgroup_housekeeping.__key.41) #27
  %76 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 32
  store i32 -32, ptr %76, align 16
  %77 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 32, i32 1
  store volatile ptr %77, ptr %77, align 4
  %78 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 32, i32 1, i32 1
  store ptr %77, ptr %78, align 8
  %79 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 32, i32 2
  store ptr @cgroup1_release_agent, ptr %79, align 4
  %80 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %39, i32 0, i32 12
  store ptr %8, ptr %80, align 8
  %81 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 19
  store ptr %29, ptr %81, align 4
  %82 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 2
  store i32 %32, ptr %82, align 4
  %83 = getelementptr inbounds %struct.cgroup, ptr %8, i32 0, i32 36, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 36, i32 1
  store i32 %84, ptr %85, align 8
  %86 = icmp eq i32 %84, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %55
  %88 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 2, ptr noundef %88) #27
  tail call void @_set_bit(i32 noundef 3, ptr noundef %88) #27
  br label %89

89:                                               ; preds = %87, %55
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  br label %90

90:                                               ; preds = %110, %89
  %91 = phi ptr [ %112, %110 ], [ %39, %89 ]
  %92 = getelementptr inbounds %struct.cgroup, ptr %91, i32 0, i32 11
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %struct.kernfs_node, ptr %93, i32 0, i32 9
  %95 = load i64, ptr %94, align 8
  %96 = getelementptr inbounds %struct.cgroup, ptr %91, i32 0, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr %struct.cgroup, ptr %39, i32 0, i32 37, i32 %97
  store i64 %95, ptr %98, align 8
  %99 = icmp eq ptr %91, %39
  br i1 %99, label %110, label %100

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.cgroup, ptr %91, i32 0, i32 4
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %102, 1
  store i32 %103, ptr %101, align 4
  %104 = load i32, ptr %85, align 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.cgroup, ptr %91, i32 0, i32 36, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, 1
  store i32 %109, ptr %107, align 4
  br label %110

110:                                              ; preds = %106, %100, %90
  %111 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %91, i32 0, i32 12
  %112 = load ptr, ptr %111, align 8
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %90

114:                                              ; preds = %110
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %115 = load i16, ptr @css_set_lock, align 4
  %116 = add i16 %115, 1
  store i16 %116, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  %117 = getelementptr inbounds %struct.cgroup, ptr %8, i32 0, i32 1
  %118 = load volatile i32, ptr %117, align 4
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %122) #27
  br label %123

123:                                              ; preds = %121, %114
  %124 = load volatile i32, ptr %117, align 4
  %125 = and i32 %124, 2
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 1, ptr noundef %128) #27
  br label %129

129:                                              ; preds = %127, %123
  %130 = load i64, ptr @css_serial_nr_next, align 8
  %131 = add i64 %130, 1
  store i64 %131, ptr @css_serial_nr_next, align 8
  %132 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %39, i32 0, i32 8
  store i64 %130, ptr %132, align 16
  %133 = load ptr, ptr %80, align 8
  %134 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %133, i32 0, i32 4, i32 1
  %136 = load ptr, ptr %135, align 4
  store ptr %134, ptr %57, align 16
  store ptr %136, ptr %58, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !50
  store volatile ptr %57, ptr %136, align 4
  store ptr %57, ptr %135, align 4
  %137 = getelementptr inbounds %struct.cgroup_root, ptr %29, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %137) #27, !srcloc !19
  %138 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %137, ptr %137, i32 1, ptr elementtype(i32) %137) #27, !srcloc !40
  %139 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %8, i32 0, i32 7
  %140 = load i32, ptr %139, align 4
  %141 = and i32 %140, 2
  %142 = icmp eq i32 %141, 0
  %143 = load i1, ptr @cgroup_get_live.__already_done, align 1
  %144 = xor i1 %143, true
  %145 = select i1 %142, i1 %144, i1 false
  br i1 %145, label %146, label %148, !prof !11

146:                                              ; preds = %129
  store i1 true, ptr @cgroup_get_live.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 615, i32 noundef 9, ptr noundef null) #27
  %147 = load i32, ptr %139, align 4
  br label %148

148:                                              ; preds = %146, %129
  %149 = phi i32 [ %147, %146 ], [ %140, %129 ]
  %150 = and i32 %149, 1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %171

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %8, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %154 = load volatile i32, ptr %153, align 4
  %155 = and i32 %154, 3
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %166, !prof !10

157:                                              ; preds = %152
  %158 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #27, !srcloc !23
  %159 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %160 = inttoptr i32 %159 to ptr
  %161 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %160) #19, !srcloc !12
  %162 = add i32 %161, %154
  %163 = inttoptr i32 %162 to ptr
  %164 = load i32, ptr %163, align 4
  %165 = add i32 %164, 1
  store i32 %165, ptr %163, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %158) #27, !srcloc !24
  br label %170

166:                                              ; preds = %152
  %167 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %8, i32 0, i32 2, i32 1
  %168 = load ptr, ptr %167, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %168) #27, !srcloc !19
  %169 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %168, ptr %168, i32 1, ptr elementtype(i32) %168) #27, !srcloc !40
  br label %170

170:                                              ; preds = %166, %157
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %171

171:                                              ; preds = %170, %148
  %172 = load ptr, ptr %81, align 4
  %173 = icmp eq ptr %172, @cgrp_dfl_root
  br i1 %173, label %190, label %174

174:                                              ; preds = %171
  %175 = load ptr, ptr %80, align 8
  %176 = icmp eq ptr %175, null
  br i1 %176, label %183, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.cgroup, ptr %175, i32 0, i32 14
  %179 = load i16, ptr %178, align 4
  %180 = load ptr, ptr %69, align 8
  %181 = icmp eq ptr %180, %39
  %182 = select i1 %181, i16 %179, i16 0
  br label %187

183:                                              ; preds = %174
  %184 = getelementptr inbounds %struct.cgroup_root, ptr %172, i32 0, i32 1
  %185 = load i32, ptr %184, align 4
  %186 = trunc i32 %185 to i16
  br label %187

187:                                              ; preds = %183, %177
  %188 = phi i16 [ %182, %177 ], [ %186, %183 ]
  %189 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 14
  store i16 %188, ptr %189, align 4
  br label %190

190:                                              ; preds = %187, %171
  br label %191

191:                                              ; preds = %238, %190
  %192 = phi ptr [ %39, %190 ], [ %239, %238 ]
  %193 = load ptr, ptr %192, align 8
  %194 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %193, i32 0, i32 7
  %195 = load i32, ptr %194, align 4
  %196 = and i32 %195, 2
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %231, label %198

198:                                              ; preds = %191
  %199 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %193, i32 0, i32 12
  %200 = load ptr, ptr %199, align 8
  %201 = icmp eq ptr %200, null
  br i1 %201, label %215, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.cgroup, ptr %200, i32 0, i32 14
  %204 = load i16, ptr %203, align 4
  %205 = getelementptr inbounds %struct.cgroup, ptr %193, i32 0, i32 22
  %206 = load ptr, ptr %205, align 8
  %207 = icmp eq ptr %206, %193
  %208 = select i1 %207, i16 %204, i16 0
  %209 = getelementptr inbounds %struct.cgroup, ptr %193, i32 0, i32 14
  %210 = load i16, ptr %209, align 4
  %211 = and i16 %208, %210
  store i16 %211, ptr %209, align 4
  %212 = getelementptr inbounds %struct.cgroup, ptr %200, i32 0, i32 15
  %213 = load i16, ptr %212, align 2
  %214 = select i1 %207, i16 %213, i16 0
  br label %226

215:                                              ; preds = %198
  %216 = getelementptr inbounds %struct.cgroup, ptr %193, i32 0, i32 19
  %217 = load ptr, ptr %216, align 4
  %218 = getelementptr inbounds %struct.cgroup_root, ptr %217, i32 0, i32 1
  %219 = load i32, ptr %218, align 4
  %220 = trunc i32 %219 to i16
  %221 = getelementptr inbounds %struct.cgroup, ptr %193, i32 0, i32 14
  %222 = load i16, ptr %221, align 4
  %223 = and i16 %222, %220
  store i16 %223, ptr %221, align 4
  %224 = load i32, ptr %218, align 4
  %225 = trunc i32 %224 to i16
  br label %226

226:                                              ; preds = %215, %202
  %227 = phi i16 [ %211, %202 ], [ %223, %215 ]
  %228 = phi i16 [ %214, %202 ], [ %225, %215 ]
  %229 = and i16 %228, %227
  %230 = getelementptr inbounds %struct.cgroup, ptr %193, i32 0, i32 15
  store i16 %229, ptr %230, align 2
  br label %231

231:                                              ; preds = %226, %191
  %232 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %192, i32 0, i32 4
  %233 = load volatile ptr, ptr %232, align 8
  %234 = getelementptr i8, ptr %233, i32 -16
  %235 = icmp eq ptr %233, %232
  %236 = icmp eq ptr %234, null
  %237 = or i1 %235, %236
  br i1 %237, label %240, label %238

238:                                              ; preds = %271, %231
  %239 = phi ptr [ %234, %231 ], [ %273, %271 ]
  br label %191

240:                                              ; preds = %271, %231
  %241 = phi ptr [ %245, %271 ], [ %192, %231 ]
  %242 = icmp eq ptr %241, %39
  br i1 %242, label %283, label %243

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %241, i32 0, i32 12
  %245 = load ptr, ptr %244, align 8
  %246 = icmp eq ptr %241, null
  br i1 %246, label %247, label %249

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %245, i32 0, i32 4
  br label %268

249:                                              ; preds = %243
  %250 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %241, i32 0, i32 7
  %251 = load i32, ptr %250, align 4
  %252 = and i32 %251, 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %256, !prof !10

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %241, i32 0, i32 3
  br label %268

256:                                              ; preds = %249
  %257 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %245, i32 0, i32 4
  %258 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %241, i32 0, i32 8
  br label %259

259:                                              ; preds = %263, %256
  %260 = phi ptr [ %257, %256 ], [ %261, %263 ]
  %261 = load volatile ptr, ptr %260, align 8
  %262 = icmp eq ptr %261, %257
  br i1 %262, label %271, label %263

263:                                              ; preds = %259
  %264 = getelementptr i8, ptr %261, i32 32
  %265 = load i64, ptr %264, align 8
  %266 = load i64, ptr %258, align 8
  %267 = icmp ugt i64 %265, %266
  br i1 %267, label %271, label %259

268:                                              ; preds = %254, %247
  %269 = phi ptr [ %255, %254 ], [ %248, %247 ]
  %270 = load volatile ptr, ptr %269, align 8
  br label %271

271:                                              ; preds = %268, %263, %259
  %272 = phi ptr [ %270, %268 ], [ %257, %259 ], [ %261, %263 ]
  %273 = getelementptr i8, ptr %272, i32 -16
  %274 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %245, i32 0, i32 4
  %275 = icmp eq ptr %272, %274
  %276 = icmp eq ptr %273, null
  %277 = or i1 %275, %276
  br i1 %277, label %240, label %238

278:                                              ; preds = %53, %45
  %279 = phi i32 [ %46, %45 ], [ %54, %53 ]
  tail call void @percpu_ref_exit(ptr noundef %42) #27
  br label %280

280:                                              ; preds = %278, %41
  %281 = phi i32 [ %43, %41 ], [ %279, %278 ]
  tail call void @kfree(ptr noundef nonnull %39) #27
  %282 = inttoptr i32 %281 to ptr
  br label %283

283:                                              ; preds = %280, %240
  %284 = phi ptr [ %282, %280 ], [ %39, %240 ]
  %285 = icmp ugt ptr %284, inttoptr (i32 -4096 to ptr)
  br i1 %285, label %286, label %289

286:                                              ; preds = %283, %27
  %287 = phi ptr [ %284, %283 ], [ inttoptr (i32 -12 to ptr), %27 ]
  %288 = ptrtoint ptr %287 to i32
  br label %324

289:                                              ; preds = %283
  %290 = getelementptr inbounds %struct.cgroup, ptr %284, i32 0, i32 11
  %291 = load ptr, ptr %290, align 8
  tail call void @kernfs_get(ptr noundef %291) #27
  %292 = load ptr, ptr %290, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false) #27
  store i32 6, ptr %4, align 8
  %293 = getelementptr inbounds %struct.iattr, ptr %4, i32 0, i32 2
  %294 = tail call ptr @llvm.thread.pointer() #27
  %295 = getelementptr inbounds %struct.task_struct, ptr %294, i32 0, i32 83
  %296 = load ptr, ptr %295, align 8
  %297 = getelementptr inbounds %struct.cred, ptr %296, i32 0, i32 7
  %298 = load i32, ptr %297, align 4
  store i32 %298, ptr %293, align 8
  %299 = getelementptr inbounds %struct.iattr, ptr %4, i32 0, i32 3
  %300 = getelementptr inbounds %struct.cred, ptr %296, i32 0, i32 8
  %301 = load i32, ptr %300, align 4
  store i32 %301, ptr %299, align 4
  %302 = icmp eq i32 %298, 0
  %303 = icmp eq i32 %301, 0
  %304 = select i1 %302, i1 %303, i1 false
  br i1 %304, label %305, label %306

305:                                              ; preds = %289
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #27
  br label %309

306:                                              ; preds = %289
  %307 = call i32 @kernfs_setattr(ptr noundef %292, ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #27
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %321

309:                                              ; preds = %306, %305
  %310 = call fastcc i32 @css_populate_dir(ptr noundef %284)
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %321

312:                                              ; preds = %309
  call fastcc void @cgroup_apply_control_enable(ptr noundef %284)
  %313 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_mkdir, i32 0, i32 1), align 4
  %314 = icmp sgt i32 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %312
  %316 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_cgroup_path_lock) #27
  %317 = load ptr, ptr %290, align 8
  %318 = call i32 @kernfs_path_from_node(ptr noundef %317, ptr noundef null, ptr noundef nonnull @trace_cgroup_path, i32 noundef 1024) #27
  call fastcc void @trace_cgroup_mkdir(ptr noundef %284)
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_cgroup_path_lock, i32 noundef %316) #27
  br label %319

319:                                              ; preds = %315, %312
  %320 = load ptr, ptr %290, align 8
  call void @kernfs_activate(ptr noundef %320) #27
  br label %324

321:                                              ; preds = %309, %306
  %322 = phi i32 [ %307, %306 ], [ %310, %309 ]
  %323 = call fastcc i32 @cgroup_destroy_locked(ptr noundef %284)
  br label %324

324:                                              ; preds = %321, %319, %286, %18, %10
  %325 = phi i32 [ %288, %286 ], [ %322, %321 ], [ 0, %319 ], [ -11, %18 ], [ -11, %10 ]
  call void @cgroup_kn_unlock(ptr noundef %0)
  br label %326

326:                                              ; preds = %324, %7, %3
  %327 = phi i32 [ %325, %324 ], [ -22, %3 ], [ -19, %7 ]
  ret i32 %327
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cgroup_apply_control_enable(ptr noundef %0) unnamed_addr #11 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %51, label %3

3:                                                ; preds = %11, %1
  %4 = phi ptr [ %12, %11 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %4, i32 0, i32 4
  %6 = load volatile ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -16
  %8 = icmp eq ptr %6, %5
  %9 = icmp eq ptr %7, null
  %10 = or i1 %8, %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %44, %3
  %12 = phi ptr [ %7, %3 ], [ %46, %44 ]
  br label %3

13:                                               ; preds = %44, %3
  %14 = phi ptr [ %18, %44 ], [ %4, %3 ]
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %51, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %14, i32 0, i32 12
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %14, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %18, i32 0, i32 4
  br label %41

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %14, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29, !prof !10

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %14, i32 0, i32 3
  br label %41

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %18, i32 0, i32 4
  %31 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %14, i32 0, i32 8
  br label %32

32:                                               ; preds = %36, %29
  %33 = phi ptr [ %30, %29 ], [ %34, %36 ]
  %34 = load volatile ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, %30
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %34, i32 32
  %38 = load i64, ptr %37, align 8
  %39 = load i64, ptr %31, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %44, label %32

41:                                               ; preds = %27, %20
  %42 = phi ptr [ %28, %27 ], [ %21, %20 ]
  %43 = load volatile ptr, ptr %42, align 8
  br label %44

44:                                               ; preds = %41, %36, %32
  %45 = phi ptr [ %43, %41 ], [ %30, %32 ], [ %34, %36 ]
  %46 = getelementptr i8, ptr %45, i32 -16
  %47 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %18, i32 0, i32 4
  %48 = icmp eq ptr %45, %47
  %49 = icmp eq ptr %46, null
  %50 = or i1 %48, %49
  br i1 %50, label %13, label %11

51:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_cgroup_mkdir(ptr noundef %0) unnamed_addr #8 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_mkdir, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #27
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !51
  %16 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_mkdir, i32 0, i32 7), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %15
  %19 = phi ptr [ %23, %18 ], [ %16, %15 ]
  %20 = load volatile ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tracepoint_func, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void %20(ptr noundef %22, ptr noundef %0, ptr noundef nonnull @trace_cgroup_path) #27
  %23 = getelementptr %struct.tracepoint_func, ptr %19, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %15
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !52
  br label %27

27:                                               ; preds = %26, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cgroup_destroy_locked(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %5
  %9 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 9
  %10 = load i32, ptr %9, align 8
  %11 = sub i32 0, %10
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %136

13:                                               ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %14 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 4
  %15 = load volatile ptr, ptr %14, align 8
  %16 = getelementptr i8, ptr %15, i32 -16
  %17 = icmp eq ptr %15, %14
  %18 = icmp eq ptr %16, null
  %19 = or i1 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %52

21:                                               ; preds = %45, %13
  %22 = phi ptr [ %47, %45 ], [ %16, %13 ]
  %23 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %22, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %136

28:                                               ; preds = %21
  %29 = and i32 %24, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %42, label %31, !prof !10

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %22, i32 0, i32 8
  br label %33

33:                                               ; preds = %37, %31
  %34 = phi ptr [ %14, %31 ], [ %35, %37 ]
  %35 = load volatile ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, %14
  br i1 %36, label %51, label %37

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %35, i32 32
  %39 = load i64, ptr %38, align 8
  %40 = load i64, ptr %32, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %45, label %33

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %22, i32 0, i32 3
  %44 = load volatile ptr, ptr %43, align 8
  br label %45

45:                                               ; preds = %42, %37
  %46 = phi ptr [ %44, %42 ], [ %35, %37 ]
  %47 = getelementptr i8, ptr %46, i32 -16
  %48 = icmp eq ptr %46, %14
  %49 = icmp eq ptr %47, null
  %50 = or i1 %48, %49
  br i1 %50, label %51, label %21

51:                                               ; preds = %45, %33
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %52

52:                                               ; preds = %51, %20
  %53 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, -3
  store i32 %55, ptr %53, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %56 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 20
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %56
  br i1 %58, label %66, label %59

59:                                               ; preds = %59, %52
  %60 = phi ptr [ %64, %59 ], [ %57, %52 ]
  %61 = getelementptr i8, ptr %60, i32 -4
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.css_set, ptr %62, i32 0, i32 19
  store i8 1, ptr %63, align 4
  %64 = load ptr, ptr %60, align 4
  %65 = icmp eq ptr %64, %56
  br i1 %65, label %66, label %59

66:                                               ; preds = %59, %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %67 = load i16, ptr @css_set_lock, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  %69 = load ptr, ptr %0, align 8
  %70 = load i32, ptr %53, align 4
  %71 = and i32 %70, 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %96, label %73

73:                                               ; preds = %66
  %74 = and i32 %70, -9
  store i32 %74, ptr %53, align 4
  %75 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.cgroup, ptr %69, i32 0, i32 19
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, @cgrp_dfl_root
  %82 = select i1 %81, ptr @cgroup_base_files, ptr @cgroup1_base_files
  %83 = tail call fastcc i32 @cgroup_addrm_files(ptr noundef %0, ptr noundef %69, ptr noundef nonnull %82, i1 noundef zeroext false) #27
  br label %96

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.cgroup_subsys, ptr %76, i32 0, i32 24
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, %85
  br i1 %87, label %96, label %88

88:                                               ; preds = %88, %84
  %89 = phi ptr [ %92, %88 ], [ %86, %84 ]
  %90 = getelementptr i8, ptr %89, i32 -84
  %91 = tail call fastcc i32 @cgroup_addrm_files(ptr noundef %0, ptr noundef %69, ptr noundef %90, i1 noundef zeroext false) #27
  %92 = load ptr, ptr %89, align 4
  %93 = load ptr, ptr %75, align 4
  %94 = getelementptr inbounds %struct.cgroup_subsys, ptr %93, i32 0, i32 24
  %95 = icmp eq ptr %92, %94
  br i1 %95, label %96, label %88

96:                                               ; preds = %88, %84, %78, %66
  %97 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 11
  %98 = load ptr, ptr %97, align 8
  tail call void @kernfs_remove(ptr noundef %98) #27
  %99 = icmp eq ptr %3, null
  br i1 %99, label %108, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 22
  %102 = load ptr, ptr %101, align 8
  %103 = icmp eq ptr %102, %0
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.cgroup, ptr %3, i32 0, i32 10
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %106, -1
  store i32 %107, ptr %105, align 4
  br label %108

108:                                              ; preds = %104, %100, %96
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %109 = load ptr, ptr %2, align 8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %132, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 1
  br label %113

113:                                              ; preds = %128, %111
  %114 = phi ptr [ %109, %111 ], [ %130, %128 ]
  %115 = getelementptr inbounds %struct.cgroup, ptr %114, i32 0, i32 4
  %116 = load i32, ptr %115, align 4
  %117 = add i32 %116, -1
  store i32 %117, ptr %115, align 4
  %118 = getelementptr inbounds %struct.cgroup, ptr %114, i32 0, i32 5
  %119 = load i32, ptr %118, align 8
  %120 = add i32 %119, 1
  store i32 %120, ptr %118, align 8
  %121 = load volatile i32, ptr %112, align 4
  %122 = and i32 %121, 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %113
  %125 = getelementptr inbounds %struct.cgroup, ptr %114, i32 0, i32 36, i32 2
  %126 = load i32, ptr %125, align 4
  %127 = add i32 %126, -1
  store i32 %127, ptr %125, align 4
  br label %128

128:                                              ; preds = %124, %113
  %129 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %114, i32 0, i32 12
  %130 = load ptr, ptr %129, align 8
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %113

132:                                              ; preds = %128, %108
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %133 = load i16, ptr @css_set_lock, align 4
  %134 = add i16 %133, 1
  store i16 %134, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  tail call void @cgroup1_check_for_release(ptr noundef %3) #27
  %135 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 2
  tail call void @percpu_ref_kill_and_confirm(ptr noundef %135, ptr noundef null) #27
  br label %136

136:                                              ; preds = %132, %27, %1
  %137 = phi i32 [ 0, %132 ], [ -16, %1 ], [ -16, %27 ]
  ret i32 %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cgroup_rmdir(ptr noundef %0) #0 {
  %2 = tail call ptr @cgroup_kn_lock_live(ptr noundef %0, i1 noundef zeroext false)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %42, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @cgroup_destroy_locked(ptr noundef nonnull %2)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %41

7:                                                ; preds = %4
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_rmdir, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %7
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_cgroup_path_lock) #27
  %12 = getelementptr inbounds %struct.cgroup, ptr %2, i32 0, i32 11
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @kernfs_path_from_node(ptr noundef %13, ptr noundef null, ptr noundef nonnull @trace_cgroup_path, i32 noundef 1024) #27
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_rmdir, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %10
  %18 = tail call ptr @llvm.thread.pointer() #27
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr @__cpu_online_mask, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !53
  %29 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_rmdir, i32 0, i32 7), align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %31, %28
  %32 = phi ptr [ %36, %31 ], [ %29, %28 ]
  %33 = load volatile ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.tracepoint_func, ptr %32, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  tail call void %33(ptr noundef %35, ptr noundef nonnull %2, ptr noundef nonnull @trace_cgroup_path) #27
  %36 = getelementptr %struct.tracepoint_func, ptr %32, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %31

39:                                               ; preds = %31, %28
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !54
  br label %40

40:                                               ; preds = %39, %17, %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_cgroup_path_lock, i32 noundef %11) #27
  br label %41

41:                                               ; preds = %40, %7, %4
  tail call void @cgroup_kn_unlock(ptr noundef %0)
  br label %42

42:                                               ; preds = %41, %1
  %43 = phi i32 [ %5, %41 ], [ 0, %1 ]
  ret i32 %43
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @cgroup_init_early() local_unnamed_addr #14 section ".init.text" {
  store ptr @cgrp_dfl_root, ptr getelementptr inbounds (%struct.cgroup_fs_context, ptr @cgroup_init_early.ctx, i32 0, i32 1), align 4
  tail call void @init_cgroup_root(ptr noundef nonnull @cgroup_init_early.ctx)
  %1 = load i32, ptr getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 3, i32 0, i32 7), align 4
  %2 = or i32 %1, 1
  store i32 %2, ptr getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 3, i32 0, i32 7), align 4
  store volatile ptr @init_css_set, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 123), align 16
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @cgroup_init() local_unnamed_addr #14 section ".init.text" {
  %1 = tail call fastcc i32 @cgroup_init_cftypes(ptr noundef nonnull @cgroup_base_files)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3, !prof !10

3:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5840, 0\0A.popsection", ""() #27, !srcloc !55
  unreachable

4:                                                ; preds = %0
  %5 = tail call fastcc i32 @cgroup_init_cftypes(ptr noundef nonnull @cgroup1_base_files)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !10

7:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5841, 0\0A.popsection", ""() #27, !srcloc !56
  unreachable

8:                                                ; preds = %4
  tail call void @cgroup_rstat_boot() #27
  tail call void @rcu_sync_enter_start(ptr noundef nonnull @cgroup_threadgroup_rwsem) #27
  tail call void @mutex_lock(ptr noundef nonnull @cgroup_mutex) #27
  %9 = load ptr, ptr @css_set_table, align 4
  store volatile ptr %9, ptr getelementptr inbounds (%struct.css_set, ptr @init_css_set, i32 0, i32 12), align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  store volatile ptr getelementptr inbounds (%struct.css_set, ptr @init_css_set, i32 0, i32 12), ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %8
  store volatile ptr getelementptr inbounds (%struct.css_set, ptr @init_css_set, i32 0, i32 12), ptr @css_set_table, align 4
  store volatile ptr @css_set_table, ptr getelementptr inbounds (%struct.css_set, ptr @init_css_set, i32 0, i32 12, i32 1), align 4
  %14 = tail call i32 @cgroup_setup_root(ptr noundef nonnull @cgrp_dfl_root, i16 zeroext undef)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !10

16:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5862, 0\0A.popsection", ""() #27, !srcloc !57
  unreachable

17:                                               ; preds = %13
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #27
  %18 = load ptr, ptr getelementptr inbounds (%struct.css_set, ptr @init_css_set, i32 0, i32 12, i32 1), align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr getelementptr inbounds (%struct.css_set, ptr @init_css_set, i32 0, i32 12), align 4
  store volatile ptr %21, ptr %18, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.hlist_node, ptr %21, i32 0, i32 1
  store volatile ptr %18, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %20, %17
  %26 = load ptr, ptr @css_set_table, align 4
  store volatile ptr %26, ptr getelementptr inbounds (%struct.css_set, ptr @init_css_set, i32 0, i32 12), align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  store volatile ptr getelementptr inbounds (%struct.css_set, ptr @init_css_set, i32 0, i32 12), ptr %29, align 4
  br label %30

30:                                               ; preds = %28, %25
  store volatile ptr getelementptr inbounds (%struct.css_set, ptr @init_css_set, i32 0, i32 12), ptr @css_set_table, align 4
  store volatile ptr @css_set_table, ptr getelementptr inbounds (%struct.css_set, ptr @init_css_set, i32 0, i32 12, i32 1), align 4
  %31 = load ptr, ptr @fs_kobj, align 4
  %32 = tail call i32 @sysfs_create_mount_point(ptr noundef %31, ptr noundef nonnull @.str.3) #27
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34, !prof !10

34:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5926, i32 noundef 9, ptr noundef null) #27
  br label %35

35:                                               ; preds = %34, %30
  %36 = tail call i32 @register_filesystem(ptr noundef nonnull @cgroup_fs_type) #27
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38, !prof !10

38:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5927, i32 noundef 9, ptr noundef null) #27
  br label %39

39:                                               ; preds = %38, %35
  %40 = tail call i32 @register_filesystem(ptr noundef nonnull @cgroup2_fs_type) #27
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42, !prof !10

42:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5928, i32 noundef 9, ptr noundef null) #27
  br label %43

43:                                               ; preds = %42, %39
  %44 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.8, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @proc_cgroupstats_show, ptr noundef null) #27
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47, !prof !11

46:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5929, i32 noundef 9, ptr noundef null) #27
  br label %47

47:                                               ; preds = %46, %43
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cgroup_init_cftypes(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i8, ptr %0, align 4
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %58, label %4

4:                                                ; preds = %54, %1
  %5 = phi ptr [ %55, %54 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.cftype, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.cftype, ptr %5, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !10

13:                                               ; preds = %9, %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4132, i32 noundef 9, ptr noundef null) #27
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.cftype, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 64
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.cftype, ptr %5, i32 0, i32 13
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  %23 = select i1 %22, ptr @cgroup_kf_single_ops, ptr @cgroup_kf_ops
  %24 = getelementptr inbounds %struct.cftype, ptr %5, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  switch i32 %25, label %26 [
    i32 0, label %51
    i32 4096, label %51
  ]

26:                                               ; preds = %19
  %27 = tail call ptr @kmemdup(ptr noundef nonnull %23, i32 noundef 48, i32 noundef 3264) #27
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load i8, ptr %0, align 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %58, label %32

32:                                               ; preds = %39, %29
  %33 = phi ptr [ %45, %39 ], [ %0, %29 ]
  %34 = getelementptr inbounds %struct.cftype, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  switch i32 %35, label %36 [
    i32 0, label %39
    i32 4096, label %39
  ]

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.cftype, ptr %33, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  tail call void @kfree(ptr noundef %38) #27
  br label %39

39:                                               ; preds = %36, %32, %32
  %40 = getelementptr inbounds %struct.cftype, ptr %33, i32 0, i32 7
  store ptr null, ptr %40, align 4
  %41 = getelementptr inbounds %struct.cftype, ptr %33, i32 0, i32 5
  store ptr null, ptr %41, align 4
  %42 = getelementptr inbounds %struct.cftype, ptr %33, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, -196609
  store i32 %44, ptr %42, align 4
  %45 = getelementptr %struct.cftype, ptr %33, i32 1
  %46 = load i8, ptr %45, align 4
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %58, label %32

48:                                               ; preds = %26
  %49 = load i32, ptr %24, align 4
  %50 = getelementptr inbounds %struct.kernfs_ops, ptr %27, i32 0, i32 7
  store i32 %49, ptr %50, align 4
  br label %51

51:                                               ; preds = %48, %19, %19
  %52 = phi ptr [ %27, %48 ], [ %23, %19 ], [ %23, %19 ]
  %53 = getelementptr inbounds %struct.cftype, ptr %5, i32 0, i32 7
  store ptr %52, ptr %53, align 4
  store ptr null, ptr %6, align 4
  br label %54

54:                                               ; preds = %51, %14
  %55 = getelementptr %struct.cftype, ptr %5, i32 1
  %56 = load i8, ptr %55, align 4
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %4

58:                                               ; preds = %54, %39, %29, %1
  %59 = phi i32 [ -12, %29 ], [ 0, %1 ], [ -12, %39 ], [ 0, %54 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_rstat_boot() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_sync_enter_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_mount_point(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_cgroupstats_show(ptr noundef, ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cgroup_wq_init() #14 section ".init.text" {
  %1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.69, i32 noundef 0, i32 noundef 1) #27
  store ptr %1, ptr @cgroup_destroy_wq, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !11

3:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5948, 0\0A.popsection", ""() #27, !srcloc !58
  unreachable

4:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_path_from_kernfs_id(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @cgrp_dfl_root, align 8
  %5 = tail call ptr @kernfs_find_and_get_node_by_id(ptr noundef %4, i64 noundef %0) #27
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @kernfs_path_from_node(ptr noundef nonnull %5, ptr noundef null, ptr noundef %1, i32 noundef %2) #27
  tail call void @kernfs_put(ptr noundef nonnull %5) #27
  br label %9

9:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_find_and_get_node_by_id(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cgroup_get_from_id(i64 noundef %0) #0 {
  %2 = load ptr, ptr @cgrp_dfl_root, align 8
  %3 = tail call ptr @kernfs_find_and_get_node_by_id(ptr noundef %2, i64 noundef %0) #27
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 8
  %7 = load volatile ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %7, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %7, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28, !prof !10

19:                                               ; preds = %14
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #27, !srcloc !23
  %21 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %22 = inttoptr i32 %21 to ptr
  %23 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %22) #19, !srcloc !12
  %24 = add i32 %23, %16
  %25 = inttoptr i32 %24 to ptr
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #27, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %36

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %7, i32 0, i32 2, i32 1
  %30 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #27, !srcloc !19
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 0, i32 1, ptr elementtype(i32) %30) #27, !srcloc !31
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %36

35:                                               ; preds = %28
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %36

36:                                               ; preds = %35, %34, %19, %9, %5
  %37 = phi ptr [ null, %5 ], [ null, %35 ], [ %7, %34 ], [ %7, %19 ], [ %7, %9 ]
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  tail call void @kernfs_put(ptr noundef nonnull %3) #27
  br label %38

38:                                               ; preds = %36, %1
  %39 = phi ptr [ %37, %36 ], [ null, %1 ]
  ret ptr %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_cgroup_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 4096) #28
  %7 = icmp eq ptr %6, null
  br i1 %7, label %126, label %8

8:                                                ; preds = %4
  tail call void @mutex_lock(ptr noundef nonnull @cgroup_mutex) #27
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %9 = load ptr, ptr @cgroup_roots, align 4
  %10 = icmp eq ptr %9, @cgroup_roots
  br i1 %10, label %122, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 123
  %13 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 4
  br label %14

14:                                               ; preds = %119, %11
  %15 = phi ptr [ %9, %11 ], [ %120, %119 ]
  %16 = getelementptr i8, ptr %15, i32 -436
  %17 = icmp eq ptr %16, @cgrp_dfl_root
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i1, ptr @cgrp_dfl_visible, align 1
  br i1 %19, label %20, label %119

20:                                               ; preds = %18, %14
  %21 = getelementptr i8, ptr %15, i32 -428
  %22 = load i32, ptr %21, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %22) #27
  %23 = getelementptr i8, ptr %15, i32 4108
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, ptr noundef %23) #27
  br label %27

27:                                               ; preds = %26, %20
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 58) #27
  %28 = load volatile ptr, ptr %12, align 16
  %29 = icmp eq ptr %28, @init_css_set
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = getelementptr i8, ptr %15, i32 -420
  br label %48

32:                                               ; preds = %27
  br i1 %17, label %33, label %36

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.css_set, ptr %28, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  br label %48

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.css_set, ptr %28, i32 0, i32 13
  br label %38

38:                                               ; preds = %42, %36
  %39 = phi ptr [ %37, %36 ], [ %40, %42 ]
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %37
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %40, i32 -16
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.cgroup, ptr %44, i32 0, i32 19
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %16
  br i1 %47, label %48, label %38

48:                                               ; preds = %42, %33, %30
  %49 = phi ptr [ %31, %30 ], [ %35, %33 ], [ %44, %42 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52, !prof !11

51:                                               ; preds = %48, %38
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1442, 0\0A.popsection", ""() #27, !srcloc !29
  unreachable

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.cgroup, ptr %49, i32 0, i32 19
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, @cgrp_dfl_root
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %13, align 4
  %58 = and i32 %57, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %69, label %108

60:                                               ; preds = %52
  %61 = tail call ptr @llvm.thread.pointer() #27
  %62 = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 92
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.nsproxy, ptr %63, i32 0, i32 8
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.cgroup_namespace, ptr %65, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, @init_css_set
  br i1 %68, label %78, label %80

69:                                               ; preds = %56
  %70 = tail call ptr @llvm.thread.pointer() #27
  %71 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 92
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.nsproxy, ptr %72, i32 0, i32 8
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.cgroup_namespace, ptr %74, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, @init_css_set
  br i1 %77, label %78, label %83

78:                                               ; preds = %69, %60
  %79 = getelementptr inbounds %struct.cgroup_root, ptr %54, i32 0, i32 3
  br label %95

80:                                               ; preds = %60
  %81 = getelementptr inbounds %struct.css_set, ptr %67, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  br label %95

83:                                               ; preds = %69
  %84 = getelementptr inbounds %struct.css_set, ptr %76, i32 0, i32 13
  br label %85

85:                                               ; preds = %89, %83
  %86 = phi ptr [ %84, %83 ], [ %87, %89 ]
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, %84
  br i1 %88, label %98, label %89

89:                                               ; preds = %85
  %90 = getelementptr i8, ptr %87, i32 -16
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.cgroup, ptr %91, i32 0, i32 19
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, %54
  br i1 %94, label %95, label %85

95:                                               ; preds = %89, %80, %78
  %96 = phi ptr [ %79, %78 ], [ %82, %80 ], [ %91, %89 ]
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %99, !prof !11

98:                                               ; preds = %95, %85
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1442, 0\0A.popsection", ""() #27, !srcloc !29
  unreachable

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.cgroup, ptr %49, i32 0, i32 11
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.cgroup, ptr %96, i32 0, i32 11
  %103 = load ptr, ptr %102, align 8
  %104 = tail call i32 @kernfs_path_from_node(ptr noundef %101, ptr noundef %103, ptr noundef nonnull %6, i32 noundef 4096) #27
  %105 = icmp sgt i32 %104, 4095
  %106 = select i1 %105, i32 -36, i32 %104
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %122, label %108

108:                                              ; preds = %99, %56
  %109 = phi ptr [ %6, %99 ], [ @.str.4, %56 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %109) #27
  %110 = load ptr, ptr %53, align 4
  %111 = icmp eq ptr %110, @cgrp_dfl_root
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %49, i32 0, i32 7
  %114 = load i32, ptr %113, align 4
  %115 = and i32 %114, 2
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.14) #27
  br label %119

118:                                              ; preds = %112, %108
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #27
  br label %119

119:                                              ; preds = %118, %117, %18
  %120 = load ptr, ptr %15, align 4
  %121 = icmp eq ptr %120, @cgroup_roots
  br i1 %121, label %122, label %14

122:                                              ; preds = %119, %99, %8
  %123 = phi i32 [ 0, %8 ], [ %106, %99 ], [ 0, %119 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %124 = load i16, ptr @css_set_lock, align 4
  %125 = add i16 %124, 1
  store i16 %125, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #27
  tail call void @kfree(ptr noundef nonnull %6) #27
  br label %126

126:                                              ; preds = %122, %4
  %127 = phi i32 [ %123, %122 ], [ -12, %4 ]
  ret i32 %127
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_fork(ptr noundef %0) local_unnamed_addr #16 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 123
  store volatile ptr @init_css_set, ptr %2, align 16
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 124
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 124, i32 1
  store ptr %3, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cgroup_can_fork(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 8589934592
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @cgroup_mutex) #27
  br label %7

7:                                                ; preds = %6, %2
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !59
  %8 = load volatile i32, ptr @cgroup_threadgroup_rwsem, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21, !prof !10

10:                                               ; preds = %7
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #27, !srcloc !23
  %12 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 1), align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #19, !srcloc !12
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #27, !srcloc !24
  br label %23

21:                                               ; preds = %7
  %22 = tail call zeroext i1 @__percpu_down_read(ptr noundef nonnull @cgroup_threadgroup_rwsem, i1 noundef zeroext false) #27
  br label %23

23:                                               ; preds = %21, %10
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !60
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %24 = tail call ptr @llvm.thread.pointer() #27
  %25 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 123
  %26 = load volatile ptr, ptr %25, align 16
  %27 = getelementptr inbounds %struct.css_set, ptr %26, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #27, !srcloc !19
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #27, !srcloc !43
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !11

31:                                               ; preds = %23
  %32 = add i32 %29, 1
  %33 = or i32 %32, %29
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %37, label %35, !prof !10

35:                                               ; preds = %31, %23
  %36 = phi i32 [ 2, %23 ], [ 1, %31 ]
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef %36) #27
  br label %37

37:                                               ; preds = %35, %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %38 = load i16, ptr @css_set_lock, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  %40 = load i64, ptr %1, align 8
  %41 = and i64 %40, 8589934592
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.kernel_clone_args, ptr %1, i32 0, i32 13
  store ptr %26, ptr %44, align 8
  br label %208

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.kernel_clone_args, ptr %1, i32 0, i32 10
  %47 = load i32, ptr %46, align 4
  %48 = tail call ptr @fget_raw(i32 noundef %47) #27
  %49 = icmp eq ptr %48, null
  br i1 %49, label %133, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.file, ptr %48, i32 0, i32 1, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.dentry, ptr %52, i32 0, i32 9
  %54 = load ptr, ptr %53, align 4
  %55 = tail call ptr @css_tryget_online_from_dir(ptr noundef %52, ptr undef) #27
  %56 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %92, label %57

57:                                               ; preds = %50
  %58 = load ptr, ptr %55, align 8
  %59 = getelementptr inbounds %struct.cgroup, ptr %58, i32 0, i32 19
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, @cgrp_dfl_root
  br i1 %61, label %92, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %58, i32 0, i32 7
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %95

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %58, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %69, 3
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %81, !prof !10

72:                                               ; preds = %67
  %73 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #27, !srcloc !23
  %74 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %75 = inttoptr i32 %74 to ptr
  %76 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %75) #19, !srcloc !12
  %77 = add i32 %76, %69
  %78 = inttoptr i32 %77 to ptr
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, -1
  store i32 %80, ptr %78, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %73) #27, !srcloc !24
  br label %91

81:                                               ; preds = %67
  %82 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %58, i32 0, i32 2, i32 1
  %83 = load ptr, ptr %82, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %83) #27, !srcloc !19
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %83, ptr %83, i32 1, ptr elementtype(i32) %83) #27, !srcloc !26
  %85 = extractvalue { i32, i32 } %84, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !27
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91, !prof !11

87:                                               ; preds = %81
  %88 = load ptr, ptr %82, align 4
  %89 = getelementptr inbounds %struct.percpu_ref_data, ptr %88, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  tail call void %90(ptr noundef %68) #27
  br label %91

91:                                               ; preds = %87, %81, %72
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %95

92:                                               ; preds = %57, %50
  %93 = phi ptr [ %58, %57 ], [ %55, %50 ]
  %94 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  br i1 %94, label %95, label %98

95:                                               ; preds = %92, %91, %62
  %96 = phi ptr [ %93, %92 ], [ inttoptr (i32 -9 to ptr), %62 ], [ inttoptr (i32 -9 to ptr), %91 ]
  %97 = ptrtoint ptr %96 to i32
  br label %133

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %93, i32 0, i32 7
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 2
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %133, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.cgroup, ptr %93, i32 0, i32 12
  %105 = load ptr, ptr %104, align 4
  %106 = tail call ptr @kernfs_get_inode(ptr noundef %54, ptr noundef %105) #27
  %107 = icmp eq ptr %106, null
  br i1 %107, label %133, label %108

108:                                              ; preds = %103
  %109 = tail call i32 @inode_permission(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %106, i32 noundef 2) #27
  tail call void @iput(ptr noundef nonnull %106) #27
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %133

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.css_set, ptr %26, i32 0, i32 3
  %113 = load ptr, ptr %112, align 4
  %114 = load i64, ptr %1, align 8
  %115 = and i64 %114, 65536
  %116 = icmp eq i64 %115, 0
  %117 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 92
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.nsproxy, ptr %118, i32 0, i32 8
  %120 = load ptr, ptr %119, align 4
  %121 = tail call fastcc i32 @cgroup_attach_permissions(ptr noundef %113, ptr noundef %93, ptr noundef %54, i1 noundef zeroext %116, ptr noundef %120) #27
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %111
  %124 = tail call fastcc ptr @find_css_set(ptr noundef %26, ptr noundef %93) #27
  %125 = getelementptr inbounds %struct.kernel_clone_args, ptr %1, i32 0, i32 13
  store ptr %124, ptr %125, align 8
  %126 = icmp eq ptr %124, null
  br i1 %126, label %133, label %127

127:                                              ; preds = %123
  %128 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %27) #27
  br i1 %128, label %131, label %129

129:                                              ; preds = %127
  %130 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @css_set_lock) #27
  tail call void @put_css_set_locked(ptr noundef %26) #27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @css_set_lock, i32 noundef %130) #27
  br label %131

131:                                              ; preds = %129, %127
  tail call void @fput(ptr noundef nonnull %48) #27
  %132 = getelementptr inbounds %struct.kernel_clone_args, ptr %1, i32 0, i32 12
  store ptr %93, ptr %132, align 4
  br label %208

133:                                              ; preds = %123, %111, %108, %103, %98, %95, %45
  %134 = phi i32 [ %97, %95 ], [ %109, %108 ], [ %121, %111 ], [ -9, %45 ], [ -19, %98 ], [ -12, %123 ], [ -12, %103 ]
  %135 = phi ptr [ null, %95 ], [ %93, %108 ], [ %93, %111 ], [ null, %45 ], [ %93, %98 ], [ %93, %123 ], [ %93, %103 ]
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !61
  %136 = load volatile i32, ptr @cgroup_threadgroup_rwsem, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %149, !prof !10

138:                                              ; preds = %133
  %139 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #27, !srcloc !23
  %140 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 1), align 4
  %141 = ptrtoint ptr %140 to i32
  %142 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %143 = inttoptr i32 %142 to ptr
  %144 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %143) #19, !srcloc !12
  %145 = add i32 %144, %141
  %146 = inttoptr i32 %145 to ptr
  %147 = load i32, ptr %146, align 4
  %148 = add i32 %147, -1
  store i32 %148, ptr %146, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %139) #27, !srcloc !24
  br label %161

149:                                              ; preds = %133
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !62
  %150 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #27, !srcloc !23
  %151 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 1), align 4
  %152 = ptrtoint ptr %151 to i32
  %153 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %154 = inttoptr i32 %153 to ptr
  %155 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %154) #19, !srcloc !12
  %156 = add i32 %155, %152
  %157 = inttoptr i32 %156 to ptr
  %158 = load i32, ptr %157, align 4
  %159 = add i32 %158, -1
  store i32 %159, ptr %157, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %150) #27, !srcloc !24
  %160 = tail call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 2)) #27
  br label %161

161:                                              ; preds = %149, %138
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !63
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #27
  br i1 %49, label %163, label %162

162:                                              ; preds = %161
  tail call void @fput(ptr noundef nonnull %48) #27
  br label %163

163:                                              ; preds = %162, %161
  %164 = icmp eq ptr %135, null
  br i1 %164, label %195, label %165

165:                                              ; preds = %163
  %166 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %135, i32 0, i32 7
  %167 = load i32, ptr %166, align 4
  %168 = and i32 %167, 1
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %195

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %135, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %172 = load volatile i32, ptr %171, align 4
  %173 = and i32 %172, 3
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %184, !prof !10

175:                                              ; preds = %170
  %176 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #27, !srcloc !23
  %177 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %178 = inttoptr i32 %177 to ptr
  %179 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %178) #19, !srcloc !12
  %180 = add i32 %179, %172
  %181 = inttoptr i32 %180 to ptr
  %182 = load i32, ptr %181, align 4
  %183 = add i32 %182, -1
  store i32 %183, ptr %181, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %176) #27, !srcloc !24
  br label %194

184:                                              ; preds = %170
  %185 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %135, i32 0, i32 2, i32 1
  %186 = load ptr, ptr %185, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %186) #27, !srcloc !19
  %187 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %186, ptr %186, i32 1, ptr elementtype(i32) %186) #27, !srcloc !26
  %188 = extractvalue { i32, i32 } %187, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !27
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %194, !prof !11

190:                                              ; preds = %184
  %191 = load ptr, ptr %185, align 4
  %192 = getelementptr inbounds %struct.percpu_ref_data, ptr %191, i32 0, i32 1
  %193 = load ptr, ptr %192, align 4
  tail call void %193(ptr noundef %171) #27
  br label %194

194:                                              ; preds = %190, %184, %175
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %195

195:                                              ; preds = %194, %165, %163
  %196 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %27) #27
  br i1 %196, label %199, label %197

197:                                              ; preds = %195
  %198 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @css_set_lock) #27
  tail call void @put_css_set_locked(ptr noundef %26) #27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @css_set_lock, i32 noundef %198) #27
  br label %199

199:                                              ; preds = %197, %195
  %200 = getelementptr inbounds %struct.kernel_clone_args, ptr %1, i32 0, i32 13
  %201 = load ptr, ptr %200, align 8
  %202 = icmp eq ptr %201, null
  br i1 %202, label %208, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.css_set, ptr %201, i32 0, i32 1
  %205 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %204) #27
  br i1 %205, label %208, label %206

206:                                              ; preds = %203
  %207 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @css_set_lock) #27
  tail call void @put_css_set_locked(ptr noundef nonnull %201) #27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @css_set_lock, i32 noundef %207) #27
  br label %208

208:                                              ; preds = %206, %203, %199, %131, %43
  %209 = phi i32 [ 0, %131 ], [ 0, %43 ], [ %134, %199 ], [ %134, %203 ], [ %134, %206 ]
  ret i32 %209
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cgroup_css_set_put_fork(ptr nocapture noundef %0) unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !61
  %2 = load volatile i32, ptr @cgroup_threadgroup_rwsem, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %15, !prof !10

4:                                                ; preds = %1
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #27, !srcloc !23
  %6 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 1), align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #19, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  store i32 %14, ptr %12, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #27, !srcloc !24
  br label %27

15:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !62
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #27, !srcloc !23
  %17 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 1), align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #19, !srcloc !12
  %22 = add i32 %21, %18
  %23 = inttoptr i32 %22 to ptr
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, -1
  store i32 %25, ptr %23, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #27, !srcloc !24
  %26 = tail call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 2)) #27
  br label %27

27:                                               ; preds = %15, %4
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !63
  %28 = load i64, ptr %0, align 8
  %29 = and i64 %28, 8589934592
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %76, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.kernel_clone_args, ptr %0, i32 0, i32 12
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.kernel_clone_args, ptr %0, i32 0, i32 13
  %35 = load ptr, ptr %34, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #27
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.css_set, ptr %35, i32 0, i32 1
  %39 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %38) #27
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @css_set_lock) #27
  tail call void @put_css_set_locked(ptr noundef nonnull %35) #27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @css_set_lock, i32 noundef %41) #27
  br label %42

42:                                               ; preds = %40, %37
  store ptr null, ptr %34, align 8
  br label %43

43:                                               ; preds = %42, %31
  %44 = icmp eq ptr %33, null
  br i1 %44, label %76, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %33, i32 0, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %33, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %52, 3
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %64, !prof !10

55:                                               ; preds = %50
  %56 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #27, !srcloc !23
  %57 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %58 = inttoptr i32 %57 to ptr
  %59 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %58) #19, !srcloc !12
  %60 = add i32 %59, %52
  %61 = inttoptr i32 %60 to ptr
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, -1
  store i32 %63, ptr %61, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %56) #27, !srcloc !24
  br label %74

64:                                               ; preds = %50
  %65 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %33, i32 0, i32 2, i32 1
  %66 = load ptr, ptr %65, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %66) #27, !srcloc !19
  %67 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %66, ptr %66, i32 1, ptr elementtype(i32) %66) #27, !srcloc !26
  %68 = extractvalue { i32, i32 } %67, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !27
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74, !prof !11

70:                                               ; preds = %64
  %71 = load ptr, ptr %65, align 4
  %72 = getelementptr inbounds %struct.percpu_ref_data, ptr %71, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  tail call void %73(ptr noundef %51) #27
  br label %74

74:                                               ; preds = %70, %64, %55
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %75

75:                                               ; preds = %74, %45
  store ptr null, ptr %32, align 4
  br label %76

76:                                               ; preds = %75, %43, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_cancel_fork(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @cgroup_css_set_put_fork(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_post_fork(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.kernel_clone_args, ptr %1, i32 0, i32 13
  %5 = load ptr, ptr %4, align 8
  store ptr null, ptr %4, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %6 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 52
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %31, label %9, !prof !11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.kernel_clone_args, ptr %1, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.css_set, ptr %5, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ %15, %13 ], [ %11, %9 ]
  %18 = getelementptr inbounds %struct.cgroup, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  store i32 %19, ptr %3, align 4
  %20 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 124
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp ne ptr %21, %20
  %23 = load i1, ptr @cgroup_post_fork.__already_done, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %27, !prof !11

26:                                               ; preds = %16
  store i1 true, ptr @cgroup_post_fork.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 6334, i32 noundef 9, ptr noundef null) #27
  br label %27

27:                                               ; preds = %26, %16
  %28 = getelementptr inbounds %struct.css_set, ptr %5, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  tail call fastcc void @css_set_move_task(ptr noundef %0, ptr noundef null, ptr noundef %5, i1 noundef zeroext false)
  br label %32

31:                                               ; preds = %2
  tail call fastcc void @put_css_set(ptr noundef %5)
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi ptr [ %5, %27 ], [ null, %31 ]
  %34 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 2097152
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %32
  %39 = load volatile i32, ptr %3, align 4
  %40 = and i32 %39, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %60, label %42, !prof !10

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %44 = load ptr, ptr %43, align 4
  tail call void @_raw_spin_lock(ptr noundef %44) #27
  %45 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 49
  %46 = load i8, ptr %45, align 8
  %47 = and i8 %46, 32
  %48 = icmp ne i8 %47, 0
  %49 = load i1, ptr @cgroup_post_fork.__already_done.15, align 1
  %50 = xor i1 %49, true
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %53, !prof !11

52:                                               ; preds = %42
  store i1 true, ptr @cgroup_post_fork.__already_done.15, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 6350, i32 noundef 9, ptr noundef null) #27
  br label %53

53:                                               ; preds = %52, %42
  %54 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 45
  %55 = load i32, ptr %54, align 4
  %56 = or i32 %55, 8388608
  store i32 %56, ptr %54, align 4
  %57 = load ptr, ptr %43, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %58 = load i16, ptr %57, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %57, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !64
  br label %60

60:                                               ; preds = %53, %38
  %61 = load volatile i32, ptr %3, align 4
  %62 = and i32 %61, 16
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %60, %32
  %65 = phi i1 [ false, %32 ], [ %63, %60 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %66 = load i16, ptr @css_set_lock, align 4
  %67 = add i16 %66, 1
  store i16 %67, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  %68 = load i64, ptr %1, align 8
  %69 = and i64 %68, 33554432
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %97, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 92
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.nsproxy, ptr %73, i32 0, i32 8
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.cgroup_namespace, ptr %75, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.css_set, ptr %33, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %78) #27, !srcloc !19
  %79 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %78, ptr %78, i32 1, ptr elementtype(i32) %78) #27, !srcloc !43
  %80 = extractvalue { i32, i32, i32 } %79, 0
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82, !prof !11

82:                                               ; preds = %71
  %83 = add i32 %80, 1
  %84 = or i32 %83, %80
  %85 = icmp sgt i32 %84, -1
  br i1 %85, label %88, label %86, !prof !10

86:                                               ; preds = %82, %71
  %87 = phi i32 [ 2, %71 ], [ 1, %82 ]
  tail call void @refcount_warn_saturate(ptr noundef %78, i32 noundef %87) #27
  br label %88

88:                                               ; preds = %86, %82
  %89 = load ptr, ptr %72, align 4
  %90 = getelementptr inbounds %struct.nsproxy, ptr %89, i32 0, i32 8
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.cgroup_namespace, ptr %91, i32 0, i32 3
  store ptr %33, ptr %92, align 4
  %93 = getelementptr inbounds %struct.css_set, ptr %77, i32 0, i32 1
  %94 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %93) #27
  br i1 %94, label %97, label %95

95:                                               ; preds = %88
  %96 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @css_set_lock) #27
  tail call void @put_css_set_locked(ptr noundef %77) #27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @css_set_lock, i32 noundef %96) #27
  br label %97

97:                                               ; preds = %95, %88, %64
  br i1 %65, label %98, label %100, !prof !11

98:                                               ; preds = %97
  %99 = tail call i32 @do_send_sig_info(i32 noundef 9, ptr noundef null, ptr noundef %0, i32 noundef 1) #27
  br label %100

100:                                              ; preds = %98, %97
  tail call fastcc void @cgroup_css_set_put_fork(ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @css_set_move_task(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.css_set, ptr %2, i32 0, i32 5
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.css_set, ptr %2, i32 0, i32 6
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.css_set, ptr %2, i32 0, i32 13
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %24, label %18

18:                                               ; preds = %18, %14
  %19 = phi ptr [ %22, %18 ], [ %16, %14 ]
  %20 = getelementptr i8, ptr %19, i32 -16
  %21 = load ptr, ptr %20, align 4
  tail call fastcc void @cgroup_update_populated(ptr noundef %21, i1 noundef zeroext true) #27
  %22 = load ptr, ptr %19, align 4
  %23 = icmp eq ptr %22, %15
  br i1 %23, label %24, label %18

24:                                               ; preds = %18, %14, %10, %6, %4
  %25 = icmp eq ptr %1, null
  %26 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 124
  %27 = load volatile ptr, ptr %26, align 4
  br i1 %25, label %73, label %28

28:                                               ; preds = %24
  %29 = icmp eq ptr %27, %26
  %30 = load i1, ptr @css_set_move_task.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34, !prof !11

33:                                               ; preds = %28
  store i1 true, ptr @css_set_move_task.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 910, i32 noundef 9, ptr noundef null) #27
  br label %34

34:                                               ; preds = %33, %28
  %35 = getelementptr inbounds %struct.css_set, ptr %1, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %51, label %38

38:                                               ; preds = %49, %34
  %39 = phi ptr [ %40, %49 ], [ %36, %34 ]
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %39, i32 -20
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %26
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load ptr, ptr %26, align 4
  store ptr %45, ptr %41, align 4
  %46 = getelementptr i8, ptr %39, i32 -40
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %47, 65536
  store i32 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %44, %38
  %50 = icmp eq ptr %40, %35
  br i1 %50, label %51, label %38

51:                                               ; preds = %49, %34
  %52 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 124, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %26, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %53, ptr %55, align 4
  store volatile ptr %54, ptr %53, align 4
  store volatile ptr %26, ptr %26, align 4
  store ptr %26, ptr %52, align 4
  %56 = getelementptr inbounds %struct.css_set, ptr %1, i32 0, i32 5
  %57 = load volatile ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %56
  br i1 %58, label %59, label %79

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.css_set, ptr %1, i32 0, i32 6
  %61 = load volatile ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.css_set, ptr %1, i32 0, i32 13
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %64
  br i1 %66, label %79, label %67

67:                                               ; preds = %67, %63
  %68 = phi ptr [ %71, %67 ], [ %65, %63 ]
  %69 = getelementptr i8, ptr %68, i32 -16
  %70 = load ptr, ptr %69, align 4
  tail call fastcc void @cgroup_update_populated(ptr noundef %70, i1 noundef zeroext false) #27
  %71 = load ptr, ptr %68, align 4
  %72 = icmp eq ptr %71, %64
  br i1 %72, label %79, label %67

73:                                               ; preds = %24
  %74 = icmp ne ptr %27, %26
  %75 = load i1, ptr @css_set_move_task.__already_done.70, align 1
  %76 = xor i1 %75, true
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %79, !prof !11

78:                                               ; preds = %73
  store i1 true, ptr @css_set_move_task.__already_done.70, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 917, i32 noundef 9, ptr noundef null) #27
  br label %79

79:                                               ; preds = %78, %73, %67, %63, %59, %51
  br i1 %5, label %98, label %80

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 4
  %84 = icmp ne i32 %83, 0
  %85 = load i1, ptr @css_set_move_task.__already_done.71, align 1
  %86 = xor i1 %85, true
  %87 = select i1 %84, i1 %86, i1 false
  br i1 %87, label %88, label %89, !prof !11

88:                                               ; preds = %80
  store i1 true, ptr @css_set_move_task.__already_done.71, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 926, i32 noundef 9, ptr noundef null) #27
  br label %89

89:                                               ; preds = %88, %80
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !65
  %90 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 123
  store volatile ptr %2, ptr %90, align 16
  %91 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 124
  %92 = getelementptr inbounds %struct.css_set, ptr %2, i32 0, i32 6
  %93 = getelementptr inbounds %struct.css_set, ptr %2, i32 0, i32 5
  %94 = select i1 %3, ptr %92, ptr %93
  %95 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  store ptr %91, ptr %95, align 4
  store ptr %94, ptr %91, align 4
  %97 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 124, i32 1
  store ptr %96, ptr %97, align 4
  store volatile ptr %91, ptr %96, align 4
  br label %98

98:                                               ; preds = %89, %79
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_send_sig_info(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_exit(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 124
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  %5 = load i1, ptr @cgroup_exit.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %1
  store i1 true, ptr @cgroup_exit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 6412, i32 noundef 9, ptr noundef null) #27
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 123
  %11 = load volatile ptr, ptr %10, align 16
  tail call fastcc void @css_set_move_task(ptr noundef %0, ptr noundef %11, ptr noundef null, i1 noundef zeroext false)
  %12 = getelementptr inbounds %struct.css_set, ptr %11, i32 0, i32 7
  %13 = getelementptr inbounds %struct.css_set, ptr %11, i32 0, i32 7, i32 1
  %14 = load ptr, ptr %13, align 4
  store ptr %2, ptr %13, align 4
  store ptr %12, ptr %2, align 4
  %15 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 124, i32 1
  store ptr %14, ptr %15, align 4
  store volatile ptr %2, ptr %14, align 4
  %16 = getelementptr inbounds %struct.css_set, ptr %11, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -1
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 49
  %20 = load i8, ptr %19, align 8
  %21 = and i8 %20, 32
  %22 = icmp ne i8 %21, 0
  %23 = load i1, ptr @cgroup_exit.__already_done.16, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %27, !prof !11

26:                                               ; preds = %9
  store i1 true, ptr @cgroup_exit.__already_done.16, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 6418, i32 noundef 9, ptr noundef null) #27
  br label %27

27:                                               ; preds = %26, %9
  %28 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 2097152
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load volatile ptr, ptr %10, align 16
  %34 = getelementptr inbounds %struct.css_set, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.cgroup, ptr %35, i32 0, i32 1
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40, !prof !10

40:                                               ; preds = %32
  %41 = load volatile ptr, ptr %10, align 16
  %42 = getelementptr inbounds %struct.css_set, ptr %41, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  tail call void @cgroup_update_frozen(ptr noundef %43) #27
  br label %44

44:                                               ; preds = %40, %32, %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %45 = load i16, ptr @css_set_lock, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_update_frozen(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_release(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 123
  %3 = load volatile ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.css_set, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 124
  br label %9

9:                                                ; preds = %20, %7
  %10 = phi ptr [ %5, %7 ], [ %11, %20 ]
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %10, i32 -20
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %8
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load ptr, ptr %8, align 4
  store ptr %16, ptr %12, align 4
  %17 = getelementptr i8, ptr %10, i32 -40
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 65536
  store i32 %19, ptr %17, align 4
  br label %20

20:                                               ; preds = %15, %9
  %21 = icmp eq ptr %11, %4
  br i1 %21, label %22, label %9

22:                                               ; preds = %20, %1
  %23 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 124
  %24 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 124, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  store volatile ptr %23, ptr %23, align 4
  store ptr %23, ptr %24, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %28 = load i16, ptr @css_set_lock, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 123
  %3 = load volatile ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.css_set, ptr %3, i32 0, i32 1
  %5 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %4) #27
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @css_set_lock) #27
  tail call void @put_css_set_locked(ptr noundef %3) #27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @css_set_lock, i32 noundef %7) #27
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cgroup_disable(ptr noundef %0) #14 section ".init.text" {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  br label %3

3:                                                ; preds = %3, %1
  %4 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.11) #27
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %3

6:                                                ; preds = %3
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define weak dso_local void @enable_debug_cgroup() local_unnamed_addr #14 section ".init.text" {
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @enable_cgroup_debug(ptr nocapture noundef readnone %0) #14 section ".init.text" {
  store i8 1, ptr @cgroup_debug, align 1
  tail call void @enable_debug_cgroup() #30
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @css_tryget_online_from_dir(ptr noundef %0, ptr nocapture readnone %1) local_unnamed_addr #0 {
  %3 = tail call ptr @kernfs_node_from_dentry(ptr noundef %0) #27
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 32
  %8 = icmp eq ptr %7, @cgroup_fs_type
  %9 = icmp eq ptr %7, @cgroup2_fs_type
  %10 = or i1 %8, %9
  %11 = icmp ne ptr %3, null
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %55

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 10
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 15
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %55

18:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %19 = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 8
  %20 = load volatile ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %53, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %20, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %20, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 3
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41, !prof !10

32:                                               ; preds = %27
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #27, !srcloc !23
  %34 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %35 = inttoptr i32 %34 to ptr
  %36 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %35) #19, !srcloc !12
  %37 = add i32 %36, %29
  %38 = inttoptr i32 %37 to ptr
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %33) #27, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %53

41:                                               ; preds = %27
  %42 = and i32 %29, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %53

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %20, i32 0, i32 2, i32 1
  %47 = load ptr, ptr %46, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #27, !srcloc !19
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 0, i32 1, ptr elementtype(i32) %47) #27, !srcloc !31
  %49 = extractvalue { i32, i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %53

52:                                               ; preds = %45
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %53

53:                                               ; preds = %52, %51, %44, %32, %22, %18
  %54 = phi ptr [ %20, %32 ], [ %20, %51 ], [ inttoptr (i32 -2 to ptr), %52 ], [ inttoptr (i32 -2 to ptr), %44 ], [ inttoptr (i32 -2 to ptr), %18 ], [ %20, %22 ]
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %55

55:                                               ; preds = %53, %13, %2
  %56 = phi ptr [ %54, %53 ], [ inttoptr (i32 -9 to ptr), %2 ], [ inttoptr (i32 -9 to ptr), %13 ]
  ret ptr %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_node_from_dentry(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @css_from_id(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cgroup_subsys, ptr %1, i32 0, i32 23
  %4 = tail call ptr @idr_find(ptr noundef %3, i32 noundef %0) #27
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cgroup_get_from_path(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 3, i32 11), align 8
  %3 = tail call ptr @kernfs_walk_and_get_ns(ptr noundef %2, ptr noundef %0, ptr noundef null) #27
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 10
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 15
  %9 = icmp eq i16 %8, 1
  br i1 %9, label %10, label %43

10:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %11 = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 8
  %12 = load volatile ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %41, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %12, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %12, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33, !prof !10

24:                                               ; preds = %19
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #27, !srcloc !23
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #19, !srcloc !12
  %29 = add i32 %28, %21
  %30 = inttoptr i32 %29 to ptr
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #27, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %41

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %12, i32 0, i32 2, i32 1
  %35 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #27, !srcloc !19
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 0, i32 1, ptr elementtype(i32) %35) #27, !srcloc !31
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %41

40:                                               ; preds = %33
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %41

41:                                               ; preds = %40, %39, %24, %14, %10
  %42 = phi ptr [ %12, %24 ], [ %12, %39 ], [ inttoptr (i32 -2 to ptr), %40 ], [ inttoptr (i32 -2 to ptr), %10 ], [ %12, %14 ]
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %43

43:                                               ; preds = %41, %5
  %44 = phi ptr [ %42, %41 ], [ inttoptr (i32 -20 to ptr), %5 ]
  tail call void @kernfs_put(ptr noundef nonnull %3) #27
  br label %45

45:                                               ; preds = %43, %1
  %46 = phi ptr [ %44, %43 ], [ inttoptr (i32 -2 to ptr), %1 ]
  ret ptr %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cgroup_get_from_fd(i32 noundef %0) #0 {
  %2 = tail call ptr @fget_raw(i32 noundef %0) #27
  %3 = icmp eq ptr %2, null
  br i1 %3, label %46, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @css_tryget_online_from_dir(ptr noundef %6, ptr undef) #27
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %44, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %7, align 8
  %11 = getelementptr inbounds %struct.cgroup, ptr %10, i32 0, i32 19
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @cgrp_dfl_root
  br i1 %13, label %44, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %10, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %10, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33, !prof !10

24:                                               ; preds = %19
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #27, !srcloc !23
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #19, !srcloc !12
  %29 = add i32 %28, %21
  %30 = inttoptr i32 %29 to ptr
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -1
  store i32 %32, ptr %30, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #27, !srcloc !24
  br label %43

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %10, i32 0, i32 2, i32 1
  %35 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #27, !srcloc !19
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #27, !srcloc !26
  %37 = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !27
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43, !prof !11

39:                                               ; preds = %33
  %40 = load ptr, ptr %34, align 4
  %41 = getelementptr inbounds %struct.percpu_ref_data, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef %20) #27
  br label %43

43:                                               ; preds = %39, %33, %24
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %44

44:                                               ; preds = %43, %14, %9, %4
  %45 = phi ptr [ %10, %9 ], [ %7, %4 ], [ inttoptr (i32 -9 to ptr), %14 ], [ inttoptr (i32 -9 to ptr), %43 ]
  tail call void @fput(ptr noundef nonnull %2) #27
  br label %46

46:                                               ; preds = %44, %1
  %47 = phi ptr [ %45, %44 ], [ inttoptr (i32 -9 to ptr), %1 ]
  ret ptr %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget_raw(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cgroup_parse_float(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  store i64 0, ptr %4, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  store i64 0, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  store i32 0, ptr %7, align 4
  %8 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7)
  %9 = icmp eq i32 %8, 0
  %10 = load i64, ptr %5, align 8
  %11 = icmp slt i64 %10, 0
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %68, label %13

13:                                               ; preds = %3
  %14 = load i32, ptr %7, align 4
  %15 = load i32, ptr %6, align 4
  %16 = icmp sgt i32 %14, %15
  %17 = sub i32 %14, %15
  %18 = select i1 %16, i32 %17, i32 0
  %19 = icmp ult i32 %18, %1
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = sub i32 %1, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %23, %20
  %24 = phi i64 [ %27, %23 ], [ 1, %20 ]
  %25 = phi i32 [ %26, %23 ], [ %21, %20 ]
  %26 = add i32 %25, -1
  %27 = mul i64 %24, 10
  %28 = icmp eq i32 %26, 0
  br i1 %28, label %29, label %23

29:                                               ; preds = %23, %20
  %30 = phi i64 [ 1, %20 ], [ %27, %23 ]
  %31 = mul i64 %30, %10
  br label %54

32:                                               ; preds = %13
  %33 = sub i32 %18, %1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %35, %32
  %36 = phi i64 [ %39, %35 ], [ 1, %32 ]
  %37 = phi i32 [ %38, %35 ], [ %33, %32 ]
  %38 = add i32 %37, -1
  %39 = mul i64 %36, 10
  %40 = icmp eq i32 %38, 0
  br i1 %40, label %41, label %35

41:                                               ; preds = %35, %32
  %42 = phi i64 [ 1, %32 ], [ %39, %35 ]
  %43 = lshr i64 %42, 1
  %44 = add i64 %43, %10
  %45 = trunc i64 %42 to i32
  %46 = icmp ult i64 %44, 4294967296
  br i1 %46, label %47, label %51, !prof !10

47:                                               ; preds = %41
  %48 = trunc i64 %44 to i32
  %49 = udiv i32 %48, %45
  %50 = zext i32 %49 to i64
  br label %54

51:                                               ; preds = %41
  %52 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %45, i64 %44) #31, !srcloc !66
  %53 = extractvalue { i64, i64 } %52, 1
  br label %54

54:                                               ; preds = %51, %47, %29
  %55 = phi i64 [ %31, %29 ], [ %50, %47 ], [ %53, %51 ]
  %56 = load i64, ptr %4, align 8
  %57 = icmp eq i32 %1, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %58, %54
  %59 = phi i64 [ %62, %58 ], [ 1, %54 ]
  %60 = phi i32 [ %61, %58 ], [ %1, %54 ]
  %61 = add i32 %60, -1
  %62 = mul i64 %59, 10
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %64, label %58

64:                                               ; preds = %58, %54
  %65 = phi i64 [ 1, %54 ], [ %62, %58 ]
  %66 = mul i64 %65, %56
  %67 = add i64 %66, %55
  store i64 %67, ptr %2, align 8
  br label %68

68:                                               ; preds = %64, %3
  %69 = phi i32 [ 0, %64 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  ret i32 %69
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cgroup_sysfs_init() #14 section ".init.text" {
  %1 = load ptr, ptr @kernel_kobj, align 4
  %2 = tail call i32 @sysfs_create_group(ptr noundef %1, ptr noundef nonnull @cgroup_sysfs_attr_group) #27
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cgroup_root(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #27
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_cgroup_root, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_cgroup_root, ptr %5, i32 0, i32 2
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.trace_event_raw_cgroup_root, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 65535
  %18 = getelementptr i8, ptr %5, i32 %17
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %11, i32 noundef %14, ptr noundef %18) #27
  %19 = tail call i32 @trace_handle_return(ptr noundef %9) #27
  br label %20

20:                                               ; preds = %8, %3
  %21 = phi i32 [ %19, %8 ], [ %6, %3 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cgroup(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #27
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_cgroup, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_cgroup, ptr %5, i32 0, i32 3
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.trace_event_raw_cgroup, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_cgroup, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = getelementptr i8, ptr %5, i32 %18
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %11, i64 noundef %13, i32 noundef %15, ptr noundef %19) #27
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #27
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cgroup_migrate(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #27
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %27

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_cgroup_migrate, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_cgroup_migrate, ptr %5, i32 0, i32 3
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.trace_event_raw_cgroup_migrate, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_cgroup_migrate, ptr %5, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 65535
  %19 = getelementptr i8, ptr %5, i32 %18
  %20 = getelementptr inbounds %struct.trace_event_raw_cgroup_migrate, ptr %5, i32 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.trace_event_raw_cgroup_migrate, ptr %5, i32 0, i32 6
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = getelementptr i8, ptr %5, i32 %24
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %11, i64 noundef %13, i32 noundef %15, ptr noundef %19, i32 noundef %21, ptr noundef %25) #27
  %26 = tail call i32 @trace_handle_return(ptr noundef %9) #27
  br label %27

27:                                               ; preds = %8, %3
  %28 = phi i32 [ %26, %8 ], [ %6, %3 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cgroup_event(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #27
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_cgroup_event, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_cgroup_event, ptr %5, i32 0, i32 3
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.trace_event_raw_cgroup_event, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_cgroup_event, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 65535
  %19 = getelementptr i8, ptr %5, i32 %18
  %20 = getelementptr inbounds %struct.trace_event_raw_cgroup_event, ptr %5, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %11, i64 noundef %13, i32 noundef %15, ptr noundef %19, i32 noundef %21) #27
  %22 = tail call i32 @trace_handle_return(ptr noundef %9) #27
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
declare i32 @llvm.read_register.i32(metadata) #19

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #20

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #22

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_escape_mem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #23

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup1_release_agent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cgroup_addrm_files(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca [98 x i8], align 1
  %6 = alloca %struct.iattr, align 8
  %7 = alloca [98 x i8], align 1
  %8 = icmp eq ptr %2, null
  br i1 %8, label %200, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 19
  %11 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %1, i32 0, i32 12
  %12 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 11
  %13 = getelementptr inbounds %struct.iattr, ptr %6, i32 0, i32 2
  %14 = getelementptr inbounds %struct.iattr, ptr %6, i32 0, i32 3
  br label %15

15:                                               ; preds = %153, %9
  %16 = phi i1 [ %3, %9 ], [ false, %153 ]
  %17 = phi i32 [ 0, %9 ], [ %154, %153 ]
  %18 = phi ptr [ null, %9 ], [ %21, %153 ]
  br label %19

19:                                               ; preds = %196, %15
  %20 = phi i32 [ %17, %15 ], [ %197, %196 ]
  %21 = phi ptr [ %2, %15 ], [ %198, %196 ]
  %22 = load i8, ptr %21, align 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %200, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.cftype, ptr %21, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 64
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %196

29:                                               ; preds = %24
  %30 = and i32 %26, 65536
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %10, align 4
  %34 = icmp eq ptr %33, @cgrp_dfl_root
  br i1 %34, label %35, label %196

35:                                               ; preds = %32, %29
  %36 = and i32 %26, 131072
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %10, align 4
  %40 = icmp eq ptr %39, @cgrp_dfl_root
  br i1 %40, label %196, label %41

41:                                               ; preds = %38, %35
  %42 = and i32 %26, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %11, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %196, label %47

47:                                               ; preds = %44, %41
  %48 = and i32 %26, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %11, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %196

53:                                               ; preds = %50, %47
  %54 = and i32 %26, 32
  %55 = icmp ne i32 %54, 0
  %56 = load i8, ptr @cgroup_debug, align 1
  %57 = icmp eq i8 %56, 0
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %196, label %59

59:                                               ; preds = %53
  br i1 %16, label %60, label %157

60:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 98, ptr nonnull %7) #27
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(98) %7, i8 0, i32 98, i1 false) #27, !annotation !9
  %61 = load ptr, ptr %12, align 8
  %62 = getelementptr inbounds %struct.cftype, ptr %21, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = icmp ne ptr %63, null
  %65 = and i32 %26, 8
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %83

68:                                               ; preds = %60
  %69 = load ptr, ptr %10, align 4
  %70 = getelementptr inbounds %struct.cgroup_root, ptr %69, i32 0, i32 7
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = icmp eq i32 %54, 0
  %76 = select i1 %75, ptr @.str.12, ptr @.str.44
  %77 = icmp eq ptr %69, @cgrp_dfl_root
  %78 = getelementptr inbounds %struct.cgroup_subsys, ptr %63, i32 0, i32 20
  %79 = getelementptr inbounds %struct.cgroup_subsys, ptr %63, i32 0, i32 21
  %80 = select i1 %77, ptr %78, ptr %79
  %81 = load ptr, ptr %80, align 4
  %82 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 98, ptr noundef nonnull @.str.45, ptr noundef nonnull %76, ptr noundef %81, ptr noundef %21) #27
  br label %85

83:                                               ; preds = %68, %60
  %84 = call i32 @strscpy(ptr noundef nonnull %7, ptr noundef %21, i32 noundef 98) #27
  br label %85

85:                                               ; preds = %83, %74
  %86 = getelementptr inbounds %struct.cftype, ptr %21, i32 0, i32 10
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.cftype, ptr %21, i32 0, i32 11
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.cftype, ptr %21, i32 0, i32 12
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %93, %89, %85
  br label %98

98:                                               ; preds = %97, %93
  %99 = phi i16 [ 292, %97 ], [ 0, %93 ]
  %100 = getelementptr inbounds %struct.cftype, ptr %21, i32 0, i32 16
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.cftype, ptr %21, i32 0, i32 17
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.cftype, ptr %21, i32 0, i32 18
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %119, label %111

111:                                              ; preds = %107, %103, %98
  %112 = load i32, ptr %25, align 4
  %113 = and i32 %112, 16
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  %116 = or i16 %99, 146
  br label %119

117:                                              ; preds = %111
  %118 = or i16 %99, 128
  br label %119

119:                                              ; preds = %117, %115, %107
  %120 = phi i16 [ %116, %115 ], [ %118, %117 ], [ %99, %107 ]
  %121 = getelementptr inbounds %struct.cftype, ptr %21, i32 0, i32 7
  %122 = load ptr, ptr %121, align 4
  %123 = call ptr @__kernfs_create_file(ptr noundef %61, ptr noundef nonnull %7, i16 noundef zeroext %120, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i64 noundef 0, ptr noundef %122, ptr noundef %21, ptr noundef null, ptr noundef null) #27
  %124 = icmp ugt ptr %123, inttoptr (i32 -4096 to ptr)
  br i1 %124, label %151, label %125

125:                                              ; preds = %119
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %6, i8 0, i64 80, i1 false) #27
  store i32 6, ptr %6, align 8
  %126 = tail call ptr @llvm.thread.pointer() #27
  %127 = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 83
  %128 = load ptr, ptr %127, align 8
  %129 = getelementptr inbounds %struct.cred, ptr %128, i32 0, i32 7
  %130 = load i32, ptr %129, align 4
  store i32 %130, ptr %13, align 8
  %131 = getelementptr inbounds %struct.cred, ptr %128, i32 0, i32 8
  %132 = load i32, ptr %131, align 4
  store i32 %132, ptr %14, align 4
  %133 = icmp eq i32 %130, 0
  %134 = icmp eq i32 %132, 0
  %135 = select i1 %133, i1 %134, i1 false
  br i1 %135, label %136, label %137

136:                                              ; preds = %125
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #27
  br label %141

137:                                              ; preds = %125
  %138 = call i32 @kernfs_setattr(ptr noundef %123, ptr noundef nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #27
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  call void @kernfs_remove(ptr noundef %123) #27
  call void @llvm.lifetime.end.p0(i64 98, ptr nonnull %7) #27
  br label %153

141:                                              ; preds = %137, %136
  %142 = getelementptr inbounds %struct.cftype, ptr %21, i32 0, i32 4
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %141
  %146 = getelementptr i8, ptr %0, i32 %143
  %147 = getelementptr inbounds %struct.cgroup_file, ptr %146, i32 0, i32 2
  call void @init_timer_key(ptr noundef %147, ptr noundef nonnull @cgroup_file_notify_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #27
  call void @_raw_spin_lock_irq(ptr noundef nonnull @cgroup_file_kn_lock) #27
  store ptr %123, ptr %146, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %148 = load i16, ptr @cgroup_file_kn_lock, align 4
  %149 = add i16 %148, 1
  store i16 %149, ptr @cgroup_file_kn_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  br label %150

150:                                              ; preds = %145, %141
  call void @llvm.lifetime.end.p0(i64 98, ptr nonnull %7) #27
  br label %196

151:                                              ; preds = %119
  %152 = ptrtoint ptr %123 to i32
  call void @llvm.lifetime.end.p0(i64 98, ptr nonnull %7) #27
  br label %153

153:                                              ; preds = %151, %140
  %154 = phi i32 [ %138, %140 ], [ %152, %151 ]
  %155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.cgroup_addrm_files, ptr noundef %21, i32 noundef %154) #32
  %156 = icmp eq ptr %21, %2
  br i1 %156, label %200, label %15

157:                                              ; preds = %59
  call void @llvm.lifetime.start.p0(i64 98, ptr nonnull %5) #27
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(98) %5, i8 0, i32 98, i1 false) #27, !annotation !9
  %158 = getelementptr inbounds %struct.cftype, ptr %21, i32 0, i32 4
  %159 = load i32, ptr %158, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %157
  %162 = getelementptr i8, ptr %1, i32 %159
  call void @_raw_spin_lock_irq(ptr noundef nonnull @cgroup_file_kn_lock) #27
  store ptr null, ptr %162, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %163 = load i16, ptr @cgroup_file_kn_lock, align 4
  %164 = add i16 %163, 1
  store i16 %164, ptr @cgroup_file_kn_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  %165 = getelementptr inbounds %struct.cgroup_file, ptr %162, i32 0, i32 2
  %166 = call i32 @del_timer_sync(ptr noundef %165) #27
  br label %167

167:                                              ; preds = %161, %157
  %168 = load ptr, ptr %12, align 8
  %169 = getelementptr inbounds %struct.cftype, ptr %21, i32 0, i32 5
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %192, label %172

172:                                              ; preds = %167
  %173 = load i32, ptr %25, align 4
  %174 = and i32 %173, 8
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %192

176:                                              ; preds = %172
  %177 = load ptr, ptr %10, align 4
  %178 = getelementptr inbounds %struct.cgroup_root, ptr %177, i32 0, i32 7
  %179 = load i32, ptr %178, align 4
  %180 = and i32 %179, 2
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %176
  %183 = and i32 %173, 32
  %184 = icmp eq i32 %183, 0
  %185 = select i1 %184, ptr @.str.12, ptr @.str.44
  %186 = icmp eq ptr %177, @cgrp_dfl_root
  %187 = getelementptr inbounds %struct.cgroup_subsys, ptr %170, i32 0, i32 20
  %188 = getelementptr inbounds %struct.cgroup_subsys, ptr %170, i32 0, i32 21
  %189 = select i1 %186, ptr %187, ptr %188
  %190 = load ptr, ptr %189, align 4
  %191 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 98, ptr noundef nonnull @.str.45, ptr noundef nonnull %185, ptr noundef %190, ptr noundef %21) #27
  br label %194

192:                                              ; preds = %176, %172, %167
  %193 = call i32 @strscpy(ptr noundef nonnull %5, ptr noundef %21, i32 noundef 98) #27
  br label %194

194:                                              ; preds = %192, %182
  %195 = call i32 @kernfs_remove_by_name_ns(ptr noundef %168, ptr noundef nonnull %5, ptr noundef null) #27
  call void @llvm.lifetime.end.p0(i64 98, ptr nonnull %5) #27
  br label %196

196:                                              ; preds = %194, %150, %53, %50, %44, %38, %32, %24
  %197 = phi i32 [ %20, %38 ], [ %20, %50 ], [ %20, %194 ], [ %20, %44 ], [ %20, %32 ], [ %20, %53 ], [ %20, %24 ], [ 0, %150 ]
  %198 = getelementptr %struct.cftype, ptr %21, i32 1
  %199 = icmp eq ptr %198, %18
  br i1 %199, label %200, label %19

200:                                              ; preds = %196, %153, %19, %4
  %201 = phi i32 [ 0, %4 ], [ %197, %196 ], [ %20, %19 ], [ %154, %153 ]
  ret i32 %201
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kernfs_create_file(ptr noundef, ptr noundef, i16 noundef zeroext, [1 x i32], [1 x i32], i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cgroup_file_notify_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @cgroup_file_kn_lock) #27
  %4 = load ptr, ptr %2, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = sub i32 %10, %8
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %19

13:                                               ; preds = %6
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = sub i32 %9, %14
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call i32 @timer_reduce(ptr noundef %0, i32 noundef %9) #27
  br label %21

19:                                               ; preds = %13, %6
  tail call void @kernfs_notify(ptr noundef nonnull %4) #27
  %20 = load volatile i32, ptr @jiffies, align 64
  store i32 %20, ptr %7, align 4
  br label %21

21:                                               ; preds = %19, %17, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @cgroup_file_kn_lock, i32 noundef %3) #27
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_remove_by_name_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup1_check_for_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cgroup_fs_context_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cgroup_fs_context, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #27
  %6 = getelementptr inbounds %struct.cgroup_fs_context, ptr %3, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #27
  %8 = getelementptr inbounds %struct.cgroup_fs_context, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ns_common, ptr %9, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #27, !srcloc !19
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #27, !srcloc !20
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %20, label %18, !prof !10

18:                                               ; preds = %16
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 3) #27
  br label %20

19:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !21
  tail call void @free_cgroup_ns(ptr noundef nonnull %9) #27
  br label %20

20:                                               ; preds = %19, %18, %16, %1
  tail call void @kernfs_free_fs_context(ptr noundef %0) #27
  tail call void @kfree(ptr noundef %3) #27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup2_parse_param(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.fs_parse_result, align 8
  %4 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #27
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9
  %7 = call i32 @__fs_parse(ptr noundef %6, ptr noundef nonnull @cgroup2_fs_parameters, ptr noundef %1, ptr noundef nonnull %3) #27
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = icmp ult i32 %7, 3
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = getelementptr inbounds [3 x i32], ptr @switch.table.cgroup2_parse_param, i32 0, i32 %7
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.cgroup_fs_context, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, %13
  store i32 %16, ptr %14, align 4
  br label %17

17:                                               ; preds = %11, %9, %2
  %18 = phi i32 [ %7, %2 ], [ -22, %9 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #27
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_get_tree(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  store i1 true, ptr @cgrp_dfl_visible, align 1
  %4 = load i32, ptr getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 3, i32 0, i32 7), align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @cgroup_get_live.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %12, !prof !11

10:                                               ; preds = %1
  store i1 true, ptr @cgroup_get_live.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 615, i32 noundef 9, ptr noundef null) #27
  %11 = load i32, ptr getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 3, i32 0, i32 7), align 4
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi i32 [ %11, %10 ], [ %4, %1 ]
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 3, i32 0, i32 2), align 8
  %18 = and i32 %17, 3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29, !prof !10

20:                                               ; preds = %16
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #27, !srcloc !23
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %23) #19, !srcloc !12
  %25 = add i32 %24, %17
  %26 = inttoptr i32 %25 to ptr
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #27, !srcloc !24
  br label %32

29:                                               ; preds = %16
  %30 = load ptr, ptr getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 3, i32 0, i32 2, i32 1), align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #27, !srcloc !19
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #27, !srcloc !40
  br label %32

32:                                               ; preds = %29, %20
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %33

33:                                               ; preds = %32, %12
  %34 = getelementptr inbounds %struct.cgroup_fs_context, ptr %3, i32 0, i32 1
  store ptr @cgrp_dfl_root, ptr %34, align 4
  %35 = tail call i32 @cgroup_do_get_tree(ptr noundef %0)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = tail call ptr @llvm.thread.pointer() #27
  %39 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 92
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nsproxy, ptr %40, i32 0, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, @init_cgroup_ns
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.cgroup_fs_context, ptr %3, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = load i32, ptr getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 7), align 4
  %48 = and i32 %47, -105
  %49 = and i32 %46, 104
  %50 = or i32 %49, %48
  store i32 %50, ptr getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 7), align 4
  br label %51

51:                                               ; preds = %44, %37, %33
  ret i32 %35
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @cgroup_reconfigure(ptr nocapture noundef readonly %0) #24 {
  %2 = tail call ptr @llvm.thread.pointer() #27
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 92
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nsproxy, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @init_cgroup_ns
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.cgroup_fs_context, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 7), align 4
  %14 = and i32 %13, -105
  %15 = and i32 %12, 104
  %16 = or i32 %15, %14
  store i32 %16, ptr getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 7), align 4
  br label %17

17:                                               ; preds = %8, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_free_fs_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cgroup_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup1_parse_param(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup1_get_tree(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup1_reconfigure(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_root_from_sb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_kill_sb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_kill_and_confirm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_not_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_freezer_migrate_task(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #20

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cgroup_propagate_control(ptr noundef %0) unnamed_addr #11 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %90, label %3

3:                                                ; preds = %50, %1
  %4 = phi ptr [ %51, %50 ], [ %0, %1 ]
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %43, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %5, i32 0, i32 12
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.cgroup, ptr %12, i32 0, i32 14
  %16 = load i16, ptr %15, align 4
  %17 = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 22
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, %5
  %20 = select i1 %19, i16 %16, i16 0
  %21 = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 14
  %22 = load i16, ptr %21, align 4
  %23 = and i16 %20, %22
  store i16 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.cgroup, ptr %12, i32 0, i32 15
  %25 = load i16, ptr %24, align 2
  %26 = select i1 %19, i16 %25, i16 0
  br label %38

27:                                               ; preds = %10
  %28 = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 19
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.cgroup_root, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = trunc i32 %31 to i16
  %33 = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 14
  %34 = load i16, ptr %33, align 4
  %35 = and i16 %34, %32
  store i16 %35, ptr %33, align 4
  %36 = load i32, ptr %30, align 4
  %37 = trunc i32 %36 to i16
  br label %38

38:                                               ; preds = %27, %14
  %39 = phi i16 [ %23, %14 ], [ %35, %27 ]
  %40 = phi i16 [ %26, %14 ], [ %37, %27 ]
  %41 = and i16 %40, %39
  %42 = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 15
  store i16 %41, ptr %42, align 2
  br label %43

43:                                               ; preds = %38, %3
  %44 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %4, i32 0, i32 4
  %45 = load volatile ptr, ptr %44, align 8
  %46 = getelementptr i8, ptr %45, i32 -16
  %47 = icmp eq ptr %45, %44
  %48 = icmp eq ptr %46, null
  %49 = or i1 %47, %48
  br i1 %49, label %52, label %50

50:                                               ; preds = %83, %43
  %51 = phi ptr [ %46, %43 ], [ %85, %83 ]
  br label %3

52:                                               ; preds = %83, %43
  %53 = phi ptr [ %57, %83 ], [ %4, %43 ]
  %54 = icmp eq ptr %53, %0
  br i1 %54, label %90, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %53, i32 0, i32 12
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %53, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %57, i32 0, i32 4
  br label %80

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %53, i32 0, i32 7
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68, !prof !10

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %53, i32 0, i32 3
  br label %80

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %57, i32 0, i32 4
  %70 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %53, i32 0, i32 8
  br label %71

71:                                               ; preds = %75, %68
  %72 = phi ptr [ %69, %68 ], [ %73, %75 ]
  %73 = load volatile ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, %69
  br i1 %74, label %83, label %75

75:                                               ; preds = %71
  %76 = getelementptr i8, ptr %73, i32 32
  %77 = load i64, ptr %76, align 8
  %78 = load i64, ptr %70, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %83, label %71

80:                                               ; preds = %66, %59
  %81 = phi ptr [ %67, %66 ], [ %60, %59 ]
  %82 = load volatile ptr, ptr %81, align 8
  br label %83

83:                                               ; preds = %80, %75, %71
  %84 = phi ptr [ %82, %80 ], [ %69, %71 ], [ %73, %75 ]
  %85 = getelementptr i8, ptr %84, i32 -16
  %86 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %57, i32 0, i32 4
  %87 = icmp eq ptr %84, %86
  %88 = icmp eq ptr %85, null
  %89 = or i1 %87, %88
  br i1 %89, label %52, label %50

90:                                               ; preds = %52, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @css_task_iter_advance_css_set(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 4
  %3 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 5
  %4 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %2, align 4
  br label %9

9:                                                ; preds = %71, %1
  %10 = phi ptr [ %60, %71 ], [ %8, %1 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %10, align 4
  %14 = load ptr, ptr %3, align 4
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  store ptr %13, ptr %2, align 4
  %17 = getelementptr i8, ptr %13, i32 -56
  br label %59

18:                                               ; preds = %12
  store ptr null, ptr %2, align 4
  br label %19

19:                                               ; preds = %18, %9
  %20 = load ptr, ptr %4, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %5, align 4
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store ptr null, ptr %4, align 4
  br label %75

25:                                               ; preds = %19
  %26 = load ptr, ptr %0, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.cgroup_subsys, ptr %26, i32 0, i32 19
  %30 = load i32, ptr %29, align 4
  %31 = mul i32 %30, -8
  %32 = add i32 %31, -48
  %33 = getelementptr i8, ptr %21, i32 %32
  br label %37

34:                                               ; preds = %25
  %35 = getelementptr i8, ptr %21, i32 -4
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi ptr [ %33, %28 ], [ %36, %34 ]
  store ptr %21, ptr %4, align 4
  %39 = load i32, ptr %6, align 4
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr %7, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void @put_css_set_locked(ptr noundef nonnull %43) #27
  br label %46

46:                                               ; preds = %45, %42
  store ptr %38, ptr %7, align 4
  %47 = getelementptr inbounds %struct.css_set, ptr %38, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #27, !srcloc !19
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #27, !srcloc !43
  %49 = extractvalue { i32, i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51, !prof !11

51:                                               ; preds = %46
  %52 = add i32 %49, 1
  %53 = or i32 %52, %49
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %57, label %55, !prof !10

55:                                               ; preds = %51, %46
  %56 = phi i32 [ 2, %46 ], [ 1, %51 ]
  tail call void @refcount_warn_saturate(ptr noundef %47, i32 noundef %56) #27
  br label %57

57:                                               ; preds = %55, %51
  %58 = getelementptr inbounds %struct.css_set, ptr %38, i32 0, i32 10
  store ptr %58, ptr %3, align 4
  store ptr %58, ptr %2, align 4
  br label %59

59:                                               ; preds = %57, %37, %16
  %60 = phi ptr [ %13, %16 ], [ %58, %57 ], [ null, %37 ]
  %61 = phi ptr [ %17, %16 ], [ %38, %57 ], [ %38, %37 ]
  %62 = icmp eq ptr %61, null
  br i1 %62, label %75, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.css_set, ptr %61, i32 0, i32 5
  %65 = load volatile ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %64
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.css_set, ptr %61, i32 0, i32 6
  %69 = load volatile ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %68
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.css_set, ptr %61, i32 0, i32 7
  %73 = load volatile ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, %72
  br i1 %74, label %9, label %77

75:                                               ; preds = %59, %24
  %76 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 6
  store ptr null, ptr %76, align 4
  br label %109

77:                                               ; preds = %71, %67, %63
  %78 = phi ptr [ %64, %63 ], [ %68, %67 ], [ %72, %71 ]
  %79 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 7
  store ptr %78, ptr %79, align 4
  %80 = load ptr, ptr %78, align 4
  %81 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 6
  store ptr %80, ptr %81, align 4
  %82 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 8
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 11
  %87 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 11, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = load ptr, ptr %86, align 4
  %90 = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  store ptr %88, ptr %90, align 4
  store volatile ptr %89, ptr %88, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %86, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %87, align 4
  %91 = load ptr, ptr %82, align 4
  tail call void @put_css_set_locked(ptr noundef %91)
  br label %92

92:                                               ; preds = %85, %77
  %93 = getelementptr inbounds %struct.css_set, ptr %61, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %93) #27, !srcloc !19
  %94 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %93, ptr %93, i32 1, ptr elementtype(i32) %93) #27, !srcloc !43
  %95 = extractvalue { i32, i32, i32 } %94, 0
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97, !prof !11

97:                                               ; preds = %92
  %98 = add i32 %95, 1
  %99 = or i32 %98, %95
  %100 = icmp sgt i32 %99, -1
  br i1 %100, label %103, label %101, !prof !10

101:                                              ; preds = %97, %92
  %102 = phi i32 [ 2, %92 ], [ 1, %97 ]
  tail call void @refcount_warn_saturate(ptr noundef %93, i32 noundef %102) #27
  br label %103

103:                                              ; preds = %101, %97
  store ptr %61, ptr %82, align 4
  %104 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 11
  %105 = getelementptr inbounds %struct.css_set, ptr %61, i32 0, i32 8
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  store ptr %104, ptr %107, align 4
  store ptr %106, ptr %104, align 4
  %108 = getelementptr inbounds %struct.css_task_iter, ptr %0, i32 0, i32 11, i32 1
  store ptr %105, ptr %108, align 4
  store volatile ptr %104, ptr %105, align 4
  br label %109

109:                                              ; preds = %103, %75
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @css_release_work_fn(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -60
  %3 = getelementptr i8, ptr %0, i32 -56
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 8
  tail call void @mutex_lock(ptr noundef nonnull @cgroup_mutex) #27
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, 4
  store i32 %8, ptr %6, align 4
  %9 = getelementptr i8, ptr %0, i32 -44
  %10 = getelementptr i8, ptr %0, i32 -40
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  %14 = icmp eq ptr %4, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %1
  %16 = getelementptr i8, ptr %0, i32 -28
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  tail call void @cgroup_rstat_flush(ptr noundef %5) #27
  %20 = getelementptr i8, ptr %0, i32 -24
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  br label %24

24:                                               ; preds = %19, %15
  %25 = getelementptr inbounds %struct.cgroup_subsys, ptr %4, i32 0, i32 23
  %26 = getelementptr i8, ptr %0, i32 -20
  %27 = load i32, ptr %26, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @cgroup_idr_lock) #27
  %28 = tail call ptr @idr_replace(ptr noundef %25, ptr noundef null, i32 noundef %27) #27
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @cgroup_idr_lock) #27
  %29 = getelementptr inbounds %struct.cgroup_subsys, ptr %4, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %87, label %32

32:                                               ; preds = %24
  tail call void %30(ptr noundef %2) #27
  br label %87

33:                                               ; preds = %1
  %34 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_release, i32 0, i32 1), align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %33
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_cgroup_path_lock) #27
  %38 = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 11
  %39 = load ptr, ptr %38, align 8
  %40 = tail call i32 @kernfs_path_from_node(ptr noundef %39, ptr noundef null, ptr noundef nonnull @trace_cgroup_path, i32 noundef 1024) #27
  %41 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_release, i32 0, i32 1), align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %36
  %44 = tail call ptr @llvm.thread.pointer() #27
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
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !67
  %55 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_release, i32 0, i32 7), align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %57, %54
  %58 = phi ptr [ %62, %57 ], [ %55, %54 ]
  %59 = load volatile ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.tracepoint_func, ptr %58, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  tail call void %59(ptr noundef %61, ptr noundef %5, ptr noundef nonnull @trace_cgroup_path) #27
  %62 = getelementptr %struct.tracepoint_func, ptr %58, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %57

65:                                               ; preds = %57, %54
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !68
  br label %66

66:                                               ; preds = %65, %43, %36
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_cgroup_path_lock, i32 noundef %37) #27
  br label %67

67:                                               ; preds = %66, %33
  tail call void @cgroup_rstat_flush(ptr noundef %5) #27
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %68 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %5, i32 0, i32 12
  %69 = load ptr, ptr %68, align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %71, %67
  %72 = phi ptr [ %77, %71 ], [ %69, %67 ]
  %73 = getelementptr inbounds %struct.cgroup, ptr %72, i32 0, i32 5
  %74 = load i32, ptr %73, align 8
  %75 = add i32 %74, -1
  store i32 %75, ptr %73, align 8
  %76 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %72, i32 0, i32 12
  %77 = load ptr, ptr %76, align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %71

79:                                               ; preds = %71, %67
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %80 = load i16, ptr @css_set_lock, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  %82 = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 11
  %83 = load ptr, ptr %82, align 8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.kernfs_node, ptr %83, i32 0, i32 8
  store volatile ptr null, ptr %86, align 8
  br label %87

87:                                               ; preds = %85, %79, %32, %24
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #27
  %88 = getelementptr i8, ptr %0, i32 16
  store i32 -32, ptr %88, align 4
  %89 = getelementptr i8, ptr %0, i32 20
  store volatile ptr %89, ptr %89, align 4
  %90 = getelementptr i8, ptr %0, i32 24
  store ptr %89, ptr %90, align 4
  %91 = getelementptr i8, ptr %0, i32 28
  store ptr @css_free_rwork_fn, ptr %91, align 4
  %92 = load ptr, ptr @cgroup_destroy_wq, align 4
  %93 = tail call zeroext i1 @queue_rcu_work(ptr noundef %92, ptr noundef %88) #27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_rstat_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @css_free_rwork_fn(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -76
  %3 = getelementptr i8, ptr %0, i32 -72
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr i8, ptr %0, i32 -68
  tail call void @percpu_ref_exit(ptr noundef %6) #27
  %7 = icmp eq ptr %4, null
  br i1 %7, label %78, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 28
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %0, i32 -36
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.cgroup_subsys, ptr %4, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %2) #27
  %15 = getelementptr inbounds %struct.cgroup_subsys, ptr %4, i32 0, i32 23
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @cgroup_idr_lock) #27
  %16 = tail call ptr @idr_remove(ptr noundef %15, i32 noundef %12) #27
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @cgroup_idr_lock) #27
  %17 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %5, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %5, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 3
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35, !prof !10

26:                                               ; preds = %21
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #27, !srcloc !23
  %28 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %29 = inttoptr i32 %28 to ptr
  %30 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %29) #19, !srcloc !12
  %31 = add i32 %30, %23
  %32 = inttoptr i32 %31 to ptr
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, -1
  store i32 %34, ptr %32, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #27, !srcloc !24
  br label %45

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %5, i32 0, i32 2, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #27, !srcloc !19
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #27, !srcloc !26
  %39 = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !27
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45, !prof !11

41:                                               ; preds = %35
  %42 = load ptr, ptr %36, align 4
  %43 = getelementptr inbounds %struct.percpu_ref_data, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  tail call void %44(ptr noundef %22) #27
  br label %45

45:                                               ; preds = %41, %35, %26
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %46

46:                                               ; preds = %45, %8
  %47 = icmp eq ptr %10, null
  br i1 %47, label %248, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %10, i32 0, i32 7
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %248

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %10, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %55, 3
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %67, !prof !10

58:                                               ; preds = %53
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #27, !srcloc !23
  %60 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %61 = inttoptr i32 %60 to ptr
  %62 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %61) #19, !srcloc !12
  %63 = add i32 %62, %55
  %64 = inttoptr i32 %63 to ptr
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, -1
  store i32 %66, ptr %64, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %59) #27, !srcloc !24
  br label %77

67:                                               ; preds = %53
  %68 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %10, i32 0, i32 2, i32 1
  %69 = load ptr, ptr %68, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %69) #27, !srcloc !19
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %69, ptr %69, i32 1, ptr elementtype(i32) %69) #27, !srcloc !26
  %71 = extractvalue { i32, i32 } %70, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !27
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77, !prof !11

73:                                               ; preds = %67
  %74 = load ptr, ptr %68, align 4
  %75 = getelementptr inbounds %struct.percpu_ref_data, ptr %74, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  tail call void %76(ptr noundef %54) #27
  br label %77

77:                                               ; preds = %73, %67, %58
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %248

78:                                               ; preds = %1
  %79 = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 19
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.cgroup_root, ptr %80, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %81) #27, !srcloc !19
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %81, ptr %81, i32 1, ptr elementtype(i32) %81) #27, !srcloc !69
  tail call void @cgroup1_pidlist_destroy_all(ptr noundef %5) #27
  %83 = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 32
  %84 = tail call zeroext i1 @cancel_work_sync(ptr noundef %83) #27
  %85 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %5, i32 0, i32 12
  %86 = load ptr, ptr %85, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %121, label %88

88:                                               ; preds = %78
  %89 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %86, i32 0, i32 7
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %118

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %86, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %95, 3
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %107, !prof !10

98:                                               ; preds = %93
  %99 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #27, !srcloc !23
  %100 = tail call i32 @llvm.read_register.i32(metadata !0) #27
  %101 = inttoptr i32 %100 to ptr
  %102 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %101) #19, !srcloc !12
  %103 = add i32 %102, %95
  %104 = inttoptr i32 %103 to ptr
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %105, -1
  store i32 %106, ptr %104, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %99) #27, !srcloc !24
  br label %117

107:                                              ; preds = %93
  %108 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %86, i32 0, i32 2, i32 1
  %109 = load ptr, ptr %108, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %109) #27, !srcloc !19
  %110 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %109, ptr %109, i32 1, ptr elementtype(i32) %109) #27, !srcloc !26
  %111 = extractvalue { i32, i32 } %110, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !27
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %117, !prof !11

113:                                              ; preds = %107
  %114 = load ptr, ptr %108, align 4
  %115 = getelementptr inbounds %struct.percpu_ref_data, ptr %114, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  tail call void %116(ptr noundef %94) #27
  br label %117

117:                                              ; preds = %113, %107, %98
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  br label %118

118:                                              ; preds = %117, %88
  %119 = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 11
  %120 = load ptr, ptr %119, align 8
  tail call void @kernfs_put(ptr noundef %120) #27
  tail call void @cgroup_rstat_exit(ptr noundef %5) #27
  tail call void @kfree(ptr noundef %5) #27
  br label %248

121:                                              ; preds = %78
  %122 = load ptr, ptr %79, align 4
  %123 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_destroy_root, i32 0, i32 1), align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %148

125:                                              ; preds = %121
  %126 = tail call ptr @llvm.thread.pointer() #27
  %127 = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 2
  %128 = load i32, ptr %127, align 8
  %129 = lshr i32 %128, 5
  %130 = getelementptr i32, ptr @__cpu_online_mask, i32 %129
  %131 = load volatile i32, ptr %130, align 4
  %132 = and i32 %128, 31
  %133 = shl nuw i32 1, %132
  %134 = and i32 %133, %131
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %148, label %136

136:                                              ; preds = %125
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !70
  %137 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_destroy_root, i32 0, i32 7), align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %147, label %139

139:                                              ; preds = %139, %136
  %140 = phi ptr [ %144, %139 ], [ %137, %136 ]
  %141 = load volatile ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.tracepoint_func, ptr %140, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  tail call void %141(ptr noundef %143, ptr noundef %122) #27
  %144 = getelementptr %struct.tracepoint_func, ptr %140, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %139

147:                                              ; preds = %139, %136
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !71
  br label %148

148:                                              ; preds = %147, %125, %121
  tail call void @mutex_lock(ptr noundef nonnull @cgroup_mutex) #27
  br label %149

149:                                              ; preds = %149, %148
  %150 = phi ptr [ %153, %149 ], [ getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 3), %148 ]
  %151 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %150, i32 0, i32 4
  %152 = load volatile ptr, ptr %151, align 8
  %153 = getelementptr i8, ptr %152, i32 -16
  %154 = icmp eq ptr %152, %151
  %155 = icmp eq ptr %153, null
  %156 = or i1 %154, %155
  br i1 %156, label %157, label %149

157:                                              ; preds = %149
  %158 = icmp eq ptr %150, null
  br i1 %158, label %202, label %159

159:                                              ; preds = %199, %157
  %160 = phi ptr [ %200, %199 ], [ %150, %157 ]
  %161 = icmp eq ptr %160, getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 3)
  br i1 %161, label %202, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %160, i32 0, i32 12
  %164 = load ptr, ptr %163, align 8
  %165 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %160, i32 0, i32 7
  %166 = load i32, ptr %165, align 4
  %167 = and i32 %166, 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %181, label %169, !prof !10

169:                                              ; preds = %162
  %170 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %164, i32 0, i32 4
  %171 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %160, i32 0, i32 8
  br label %172

172:                                              ; preds = %176, %169
  %173 = phi ptr [ %170, %169 ], [ %174, %176 ]
  %174 = load volatile ptr, ptr %173, align 8
  %175 = icmp eq ptr %174, %170
  br i1 %175, label %199, label %176

176:                                              ; preds = %172
  %177 = getelementptr i8, ptr %174, i32 32
  %178 = load i64, ptr %177, align 8
  %179 = load i64, ptr %171, align 8
  %180 = icmp ugt i64 %178, %179
  br i1 %180, label %184, label %172

181:                                              ; preds = %162
  %182 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %160, i32 0, i32 3
  %183 = load volatile ptr, ptr %182, align 8
  br label %184

184:                                              ; preds = %181, %176
  %185 = phi ptr [ %183, %181 ], [ %174, %176 ]
  %186 = getelementptr i8, ptr %185, i32 -16
  %187 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %164, i32 0, i32 4
  %188 = icmp eq ptr %185, %187
  %189 = icmp eq ptr %186, null
  %190 = or i1 %188, %189
  br i1 %190, label %199, label %191

191:                                              ; preds = %191, %184
  %192 = phi ptr [ %195, %191 ], [ %186, %184 ]
  %193 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %192, i32 0, i32 4
  %194 = load volatile ptr, ptr %193, align 8
  %195 = getelementptr i8, ptr %194, i32 -16
  %196 = icmp eq ptr %194, %193
  %197 = icmp eq ptr %195, null
  %198 = or i1 %196, %197
  br i1 %198, label %199, label %191

199:                                              ; preds = %191, %184, %172
  %200 = phi ptr [ %164, %184 ], [ %192, %191 ], [ %164, %172 ]
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %159

202:                                              ; preds = %199, %159, %157
  %203 = getelementptr inbounds %struct.cgroup_root, ptr %122, i32 0, i32 5
  %204 = load volatile i32, ptr %203, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %207, label %206, !prof !10

206:                                              ; preds = %202
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1345, 0\0A.popsection", ""() #27, !srcloc !72
  unreachable

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.cgroup_root, ptr %122, i32 0, i32 3, i32 0, i32 4
  %209 = load volatile ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, %208
  br i1 %210, label %212, label %211, !prof !10

211:                                              ; preds = %207
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1346, 0\0A.popsection", ""() #27, !srcloc !73
  unreachable

212:                                              ; preds = %207
  %213 = load ptr, ptr getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 3, i32 11), align 8
  tail call void @kernfs_activate(ptr noundef %213) #27
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %214 = getelementptr inbounds %struct.cgroup_root, ptr %122, i32 0, i32 3, i32 20
  %215 = load ptr, ptr %214, align 8
  %216 = icmp eq ptr %215, %214
  br i1 %216, label %230, label %217

217:                                              ; preds = %217, %212
  %218 = phi ptr [ %220, %217 ], [ %215, %212 ]
  %219 = getelementptr i8, ptr %218, i32 -8
  %220 = load ptr, ptr %218, align 4
  %221 = getelementptr inbounds %struct.list_head, ptr %218, i32 0, i32 1
  %222 = load ptr, ptr %221, align 4
  %223 = getelementptr inbounds %struct.list_head, ptr %220, i32 0, i32 1
  store ptr %222, ptr %223, align 4
  store volatile ptr %220, ptr %222, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %218, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %221, align 4
  %224 = getelementptr i8, ptr %218, i32 8
  %225 = getelementptr i8, ptr %218, i32 12
  %226 = load ptr, ptr %225, align 4
  %227 = load ptr, ptr %224, align 4
  %228 = getelementptr inbounds %struct.list_head, ptr %227, i32 0, i32 1
  store ptr %226, ptr %228, align 4
  store volatile ptr %227, ptr %226, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %224, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %225, align 4
  tail call void @kfree(ptr noundef %219) #27
  %229 = icmp eq ptr %220, %214
  br i1 %229, label %230, label %217

230:                                              ; preds = %217, %212
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %231 = load i16, ptr @css_set_lock, align 4
  %232 = add i16 %231, 1
  store i16 %232, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  %233 = getelementptr inbounds %struct.cgroup_root, ptr %122, i32 0, i32 6
  %234 = load volatile ptr, ptr %233, align 4
  %235 = icmp eq ptr %234, %233
  br i1 %235, label %242, label %236

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.cgroup_root, ptr %122, i32 0, i32 6, i32 1
  %238 = load ptr, ptr %237, align 4
  %239 = getelementptr inbounds %struct.list_head, ptr %234, i32 0, i32 1
  store ptr %238, ptr %239, align 4
  store volatile ptr %234, ptr %238, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %233, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %237, align 4
  %240 = load i32, ptr @cgroup_root_count, align 4
  %241 = add i32 %240, -1
  store i32 %241, ptr @cgroup_root_count, align 4
  br label %242

242:                                              ; preds = %236, %230
  %243 = getelementptr inbounds %struct.cgroup_root, ptr %122, i32 0, i32 3
  %244 = getelementptr inbounds %struct.cgroup_root, ptr %122, i32 0, i32 2
  %245 = load i32, ptr %244, align 8
  %246 = tail call ptr @idr_remove(ptr noundef nonnull @cgroup_hierarchy_idr, i32 noundef %245) #27
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #27
  tail call void @cgroup_rstat_exit(ptr noundef %243) #27
  %247 = load ptr, ptr %122, align 8
  tail call void @kernfs_destroy_root(ptr noundef %247) #27
  tail call void @kfree(ptr noundef %122) #27
  br label %248

248:                                              ; preds = %242, %118, %77, %48, %46
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_rcu_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_replace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup1_pidlist_destroy_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #25

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_create_dir_ns(ptr noundef, ptr noundef, i16 noundef zeroext, [1 x i32], [1 x i32], ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_setattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_show_options(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load i32, ptr getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 7), align 4
  %4 = and i32 %3, 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.51) #27
  %7 = load i32, ptr getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 7), align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ %3, %2 ]
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.52) #27
  %13 = load i32, ptr getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 7), align 4
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %13, %12 ], [ %9, %8 ]
  %16 = and i32 %15, 64
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.53) #27
  br label %19

19:                                               ; preds = %18, %14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_file_open(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 68) #28
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @llvm.thread.pointer() #27
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 92
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nsproxy, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %6, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ns_common, ptr %13, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #27, !srcloc !19
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #27, !srcloc !43
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !11

20:                                               ; preds = %15
  %21 = add i32 %18, 1
  %22 = or i32 %21, %18
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %26, label %24, !prof !10

24:                                               ; preds = %20, %15
  %25 = phi i32 [ 2, %15 ], [ 1, %20 ]
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef %25) #27
  br label %26

26:                                               ; preds = %24, %20, %8
  %27 = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 3
  store ptr %6, ptr %27, align 4
  %28 = getelementptr inbounds %struct.cftype, ptr %4, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %47, label %31

31:                                               ; preds = %26
  %32 = tail call i32 %29(ptr noundef %0) #27
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %6, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.ns_common, ptr %35, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #27, !srcloc !19
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #27, !srcloc !20
  %40 = extractvalue { i32, i32, i32 } %39, 0
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = icmp sgt i32 %40, 0
  br i1 %43, label %46, label %44, !prof !10

44:                                               ; preds = %42
  tail call void @refcount_warn_saturate(ptr noundef %38, i32 noundef 3) #27
  br label %46

45:                                               ; preds = %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !21
  tail call void @free_cgroup_ns(ptr noundef nonnull %35) #27
  br label %46

46:                                               ; preds = %45, %44, %42, %34
  tail call void @kfree(ptr noundef nonnull %6) #27
  br label %47

47:                                               ; preds = %46, %31, %26, %1
  %48 = phi i32 [ -12, %1 ], [ 0, %26 ], [ %32, %46 ], [ 0, %31 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cgroup_file_release(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cftype, ptr %4, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void %8(ptr noundef %0) #27
  br label %11

11:                                               ; preds = %10, %1
  %12 = load ptr, ptr %6, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.ns_common, ptr %12, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #27, !srcloc !19
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #27, !srcloc !20
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = icmp sgt i32 %17, 0
  br i1 %20, label %23, label %21, !prof !10

21:                                               ; preds = %19
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 3) #27
  br label %23

22:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !21
  tail call void @free_cgroup_ns(ptr noundef nonnull %12) #27
  br label %23

23:                                               ; preds = %22, %21, %19, %11
  tail call void @kfree(ptr noundef %6) #27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_seqfile_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.kernfs_node, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.cftype, ptr %7, i32 0, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = tail call i32 %13(ptr noundef %0, ptr noundef %1) #27
  br label %29

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.cftype, ptr %7, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call i64 %19(ptr noundef %11, ptr noundef %7) #27
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i64 noundef %22) #27
  br label %29

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.cftype, ptr %7, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i64 %25(ptr noundef %11, ptr noundef %7) #27
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.55, i64 noundef %28) #27
  br label %29

29:                                               ; preds = %27, %23, %21, %15
  %30 = phi i32 [ %16, %15 ], [ -22, %23 ], [ 0, %27 ], [ 0, %21 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @cgroup_seqfile_start(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.cftype, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr %9(ptr noundef %0, ptr noundef %1) #27
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @cgroup_seqfile_next(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.kernfs_node, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.cftype, ptr %8, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr %10(ptr noundef %0, ptr noundef %1, ptr noundef %2) #27
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cgroup_seqfile_stop(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.cftype, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void %9(ptr noundef %0, ptr noundef %1) #27
  br label %12

12:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_file_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.kernfs_node, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.kernfs_node, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.kernfs_node, ptr %9, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %74, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.cgroup, ptr %13, i32 0, i32 19
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.cgroup_root, ptr %19, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.cftype, ptr %15, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 4
  %31 = icmp eq ptr %30, @init_cgroup_ns
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.cgroup_namespace, ptr %30, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.css_set, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %13
  br i1 %37, label %74, label %38

38:                                               ; preds = %32, %29, %24, %17
  %39 = getelementptr inbounds %struct.cftype, ptr %15, i32 0, i32 18
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call i32 %40(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #27
  br label %74

44:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !28
  %45 = getelementptr inbounds %struct.cftype, ptr %15, i32 0, i32 16
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  store i64 0, ptr %5, align 8, !annotation !9
  %49 = call i32 @kstrtoull(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %5) #27
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load ptr, ptr %45, align 4
  %53 = load i64, ptr %5, align 8
  %54 = call i32 %52(ptr noundef %13, ptr noundef %15, i64 noundef %53) #27
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i32 [ %49, %48 ], [ %54, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  br label %70

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.cftype, ptr %15, i32 0, i32 17
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %74, label %61

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  store i64 0, ptr %6, align 8, !annotation !9
  %62 = call i32 @kstrtoll(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %6) #27
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load ptr, ptr %58, align 4
  %66 = load i64, ptr %6, align 8
  %67 = call i32 %65(ptr noundef %13, ptr noundef %15, i64 noundef %66) #27
  br label %68

68:                                               ; preds = %64, %61
  %69 = phi i32 [ %62, %61 ], [ %67, %64 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  br label %70

70:                                               ; preds = %68, %55
  %71 = phi i32 [ %56, %55 ], [ %69, %68 ]
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, i32 %2, i32 %71
  br label %74

74:                                               ; preds = %70, %57, %42, %32, %4
  %75 = phi i32 [ %43, %42 ], [ 0, %4 ], [ -1, %32 ], [ -22, %57 ], [ %73, %70 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_file_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cftype, ptr %5, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 %7(ptr noundef %0, ptr noundef %1) #27
  br label %13

11:                                               ; preds = %2
  %12 = tail call i32 @kernfs_generic_poll(ptr noundef %0, ptr noundef %1) #27
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_generic_poll(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_type_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.cgroup, ptr %10, i32 0, i32 22
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, %10
  br i1 %13, label %14, label %40

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %10, i32 0, i32 12
  %16 = load ptr, ptr %15, align 8
  br label %17

17:                                               ; preds = %32, %14
  %18 = phi ptr [ %22, %32 ], [ %16, %14 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %18, i32 0, i32 12
  %22 = load ptr, ptr %21, align 8
  %23 = icmp ne ptr %22, null
  %24 = getelementptr inbounds %struct.cgroup, ptr %18, i32 0, i32 22
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, %18
  %27 = select i1 %23, i1 %26, i1 false
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.cgroup, ptr %18, i32 0, i32 10
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28, %20
  %33 = phi ptr [ %18, %28 ], [ %25, %20 ]
  %34 = icmp eq ptr %33, %18
  br i1 %34, label %17, label %40

35:                                               ; preds = %17
  %36 = getelementptr inbounds %struct.cgroup, ptr %10, i32 0, i32 10
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, ptr @.str.59, ptr @.str.58
  br label %40

40:                                               ; preds = %35, %32, %28, %2
  %41 = phi ptr [ @.str.56, %2 ], [ %39, %35 ], [ @.str.57, %32 ], [ @.str.57, %28 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %41) #27
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_type_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.cgroup_mgctx, align 4
  %6 = tail call ptr @strim(ptr noundef %1) #27
  %7 = tail call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(9) @.str.60)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %614

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 4
  %11 = tail call ptr @cgroup_kn_lock_live(ptr noundef %10, i1 noundef zeroext true)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %614, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %11, i32 0, i32 12
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.cgroup, ptr %15, i32 0, i32 22
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.cgroup, ptr %11, i32 0, i32 22
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, %11
  br i1 %20, label %23, label %21

21:                                               ; preds = %13
  %22 = load ptr, ptr %0, align 4
  tail call void @cgroup_kn_unlock(ptr noundef %22)
  br label %613

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.cgroup, ptr %11, i32 0, i32 7
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.cgroup, ptr %11, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  %29 = getelementptr inbounds %struct.cgroup, ptr %11, i32 0, i32 9
  %30 = load i32, ptr %29, align 8
  %31 = sub i32 0, %30
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %609

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.cgroup, ptr %11, i32 0, i32 14
  %35 = load i16, ptr %34, align 4
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %609

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.cgroup, ptr %17, i32 0, i32 22
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, %17
  br i1 %40, label %41, label %609

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %17, i32 0, i32 12
  %43 = load ptr, ptr %42, align 8
  br label %44

44:                                               ; preds = %59, %41
  %45 = phi ptr [ %49, %59 ], [ %43, %41 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %62, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %45, i32 0, i32 12
  %49 = load ptr, ptr %48, align 8
  %50 = icmp ne ptr %49, null
  %51 = getelementptr inbounds %struct.cgroup, ptr %45, i32 0, i32 22
  %52 = load ptr, ptr %51, align 8
  %53 = icmp eq ptr %52, %45
  %54 = select i1 %50, i1 %53, i1 false
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.cgroup, ptr %45, i32 0, i32 10
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %609

59:                                               ; preds = %55, %47
  %60 = phi ptr [ %45, %55 ], [ %52, %47 ]
  %61 = icmp eq ptr %60, %45
  br i1 %61, label %44, label %609

62:                                               ; preds = %44
  %63 = icmp eq ptr %43, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.cgroup, ptr %17, i32 0, i32 8
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %609

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.cgroup, ptr %17, i32 0, i32 14
  %70 = load i16, ptr %69, align 4
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %609

72:                                               ; preds = %68, %62
  br label %73

73:                                               ; preds = %97, %72
  %74 = phi ptr [ %11, %72 ], [ %98, %97 ]
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %75, i32 0, i32 7
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.cgroup, ptr %75, i32 0, i32 14
  %82 = load i16, ptr %81, align 4
  %83 = getelementptr inbounds %struct.cgroup, ptr %75, i32 0, i32 16
  store i16 %82, ptr %83, align 8
  %84 = getelementptr inbounds %struct.cgroup, ptr %75, i32 0, i32 15
  %85 = load i16, ptr %84, align 2
  %86 = getelementptr inbounds %struct.cgroup, ptr %75, i32 0, i32 17
  store i16 %85, ptr %86, align 2
  %87 = getelementptr inbounds %struct.cgroup, ptr %75, i32 0, i32 22
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.cgroup, ptr %75, i32 0, i32 23
  store ptr %88, ptr %89, align 4
  br label %90

90:                                               ; preds = %80, %73
  %91 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %74, i32 0, i32 4
  %92 = load volatile ptr, ptr %91, align 8
  %93 = getelementptr i8, ptr %92, i32 -16
  %94 = icmp eq ptr %92, %91
  %95 = icmp eq ptr %93, null
  %96 = or i1 %94, %95
  br i1 %96, label %99, label %97

97:                                               ; preds = %130, %90
  %98 = phi ptr [ %93, %90 ], [ %132, %130 ]
  br label %73

99:                                               ; preds = %130, %90
  %100 = phi ptr [ %104, %130 ], [ %74, %90 ]
  %101 = icmp eq ptr %100, %11
  br i1 %101, label %137, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %100, i32 0, i32 12
  %104 = load ptr, ptr %103, align 8
  %105 = icmp eq ptr %100, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %104, i32 0, i32 4
  br label %127

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %100, i32 0, i32 7
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %115, !prof !10

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %100, i32 0, i32 3
  br label %127

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %104, i32 0, i32 4
  %117 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %100, i32 0, i32 8
  br label %118

118:                                              ; preds = %122, %115
  %119 = phi ptr [ %116, %115 ], [ %120, %122 ]
  %120 = load volatile ptr, ptr %119, align 8
  %121 = icmp eq ptr %120, %116
  br i1 %121, label %130, label %122

122:                                              ; preds = %118
  %123 = getelementptr i8, ptr %120, i32 32
  %124 = load i64, ptr %123, align 8
  %125 = load i64, ptr %117, align 8
  %126 = icmp ugt i64 %124, %125
  br i1 %126, label %130, label %118

127:                                              ; preds = %113, %106
  %128 = phi ptr [ %114, %113 ], [ %107, %106 ]
  %129 = load volatile ptr, ptr %128, align 8
  br label %130

130:                                              ; preds = %127, %122, %118
  %131 = phi ptr [ %129, %127 ], [ %116, %118 ], [ %120, %122 ]
  %132 = getelementptr i8, ptr %131, i32 -16
  %133 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %104, i32 0, i32 4
  %134 = icmp eq ptr %131, %133
  %135 = icmp eq ptr %132, null
  %136 = or i1 %134, %135
  br i1 %136, label %99, label %97

137:                                              ; preds = %159, %99
  %138 = phi ptr [ %160, %159 ], [ %11, %99 ]
  %139 = load ptr, ptr %138, align 8
  %140 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %139, i32 0, i32 7
  %141 = load i32, ptr %140, align 4
  %142 = and i32 %141, 2
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %137
  %145 = icmp eq ptr %139, %11
  br i1 %145, label %150, label %146

146:                                              ; preds = %144
  %147 = getelementptr inbounds %struct.cgroup, ptr %139, i32 0, i32 22
  %148 = load ptr, ptr %147, align 8
  %149 = icmp eq ptr %148, %139
  br i1 %149, label %152, label %150

150:                                              ; preds = %146, %144
  %151 = getelementptr inbounds %struct.cgroup, ptr %139, i32 0, i32 22
  store ptr %17, ptr %151, align 8
  br label %152

152:                                              ; preds = %150, %146, %137
  %153 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %138, i32 0, i32 4
  %154 = load volatile ptr, ptr %153, align 8
  %155 = getelementptr i8, ptr %154, i32 -16
  %156 = icmp eq ptr %154, %153
  %157 = icmp eq ptr %155, null
  %158 = or i1 %156, %157
  br i1 %158, label %161, label %159

159:                                              ; preds = %192, %152
  %160 = phi ptr [ %155, %152 ], [ %194, %192 ]
  br label %137

161:                                              ; preds = %192, %152
  %162 = phi ptr [ %166, %192 ], [ %138, %152 ]
  %163 = icmp eq ptr %162, %11
  br i1 %163, label %199, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %162, i32 0, i32 12
  %166 = load ptr, ptr %165, align 8
  %167 = icmp eq ptr %162, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %166, i32 0, i32 4
  br label %189

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %162, i32 0, i32 7
  %172 = load i32, ptr %171, align 4
  %173 = and i32 %172, 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %177, !prof !10

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %162, i32 0, i32 3
  br label %189

177:                                              ; preds = %170
  %178 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %166, i32 0, i32 4
  %179 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %162, i32 0, i32 8
  br label %180

180:                                              ; preds = %184, %177
  %181 = phi ptr [ %178, %177 ], [ %182, %184 ]
  %182 = load volatile ptr, ptr %181, align 8
  %183 = icmp eq ptr %182, %178
  br i1 %183, label %192, label %184

184:                                              ; preds = %180
  %185 = getelementptr i8, ptr %182, i32 32
  %186 = load i64, ptr %185, align 8
  %187 = load i64, ptr %179, align 8
  %188 = icmp ugt i64 %186, %187
  br i1 %188, label %192, label %180

189:                                              ; preds = %175, %168
  %190 = phi ptr [ %176, %175 ], [ %169, %168 ]
  %191 = load volatile ptr, ptr %190, align 8
  br label %192

192:                                              ; preds = %189, %184, %180
  %193 = phi ptr [ %191, %189 ], [ %182, %184 ], [ %178, %180 ]
  %194 = getelementptr i8, ptr %193, i32 -16
  %195 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %166, i32 0, i32 4
  %196 = icmp eq ptr %193, %195
  %197 = icmp eq ptr %194, null
  %198 = or i1 %196, %197
  br i1 %198, label %161, label %159

199:                                              ; preds = %246, %161
  %200 = phi ptr [ %247, %246 ], [ %11, %161 ]
  %201 = load ptr, ptr %200, align 8
  %202 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %201, i32 0, i32 7
  %203 = load i32, ptr %202, align 4
  %204 = and i32 %203, 2
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %239, label %206

206:                                              ; preds = %199
  %207 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %201, i32 0, i32 12
  %208 = load ptr, ptr %207, align 8
  %209 = icmp eq ptr %208, null
  br i1 %209, label %223, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.cgroup, ptr %208, i32 0, i32 14
  %212 = load i16, ptr %211, align 4
  %213 = getelementptr inbounds %struct.cgroup, ptr %201, i32 0, i32 22
  %214 = load ptr, ptr %213, align 8
  %215 = icmp eq ptr %214, %201
  %216 = select i1 %215, i16 %212, i16 0
  %217 = getelementptr inbounds %struct.cgroup, ptr %201, i32 0, i32 14
  %218 = load i16, ptr %217, align 4
  %219 = and i16 %216, %218
  store i16 %219, ptr %217, align 4
  %220 = getelementptr inbounds %struct.cgroup, ptr %208, i32 0, i32 15
  %221 = load i16, ptr %220, align 2
  %222 = select i1 %215, i16 %221, i16 0
  br label %234

223:                                              ; preds = %206
  %224 = getelementptr inbounds %struct.cgroup, ptr %201, i32 0, i32 19
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr inbounds %struct.cgroup_root, ptr %225, i32 0, i32 1
  %227 = load i32, ptr %226, align 4
  %228 = trunc i32 %227 to i16
  %229 = getelementptr inbounds %struct.cgroup, ptr %201, i32 0, i32 14
  %230 = load i16, ptr %229, align 4
  %231 = and i16 %230, %228
  store i16 %231, ptr %229, align 4
  %232 = load i32, ptr %226, align 4
  %233 = trunc i32 %232 to i16
  br label %234

234:                                              ; preds = %223, %210
  %235 = phi i16 [ %219, %210 ], [ %231, %223 ]
  %236 = phi i16 [ %222, %210 ], [ %233, %223 ]
  %237 = and i16 %236, %235
  %238 = getelementptr inbounds %struct.cgroup, ptr %201, i32 0, i32 15
  store i16 %237, ptr %238, align 2
  br label %239

239:                                              ; preds = %234, %199
  %240 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %200, i32 0, i32 4
  %241 = load volatile ptr, ptr %240, align 8
  %242 = getelementptr i8, ptr %241, i32 -16
  %243 = icmp eq ptr %241, %240
  %244 = icmp eq ptr %242, null
  %245 = or i1 %243, %244
  br i1 %245, label %248, label %246

246:                                              ; preds = %279, %239
  %247 = phi ptr [ %242, %239 ], [ %281, %279 ]
  br label %199

248:                                              ; preds = %279, %239
  %249 = phi ptr [ %253, %279 ], [ %200, %239 ]
  %250 = icmp eq ptr %249, %11
  br i1 %250, label %286, label %251

251:                                              ; preds = %248
  %252 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %249, i32 0, i32 12
  %253 = load ptr, ptr %252, align 8
  %254 = icmp eq ptr %249, null
  br i1 %254, label %255, label %257

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %253, i32 0, i32 4
  br label %276

257:                                              ; preds = %251
  %258 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %249, i32 0, i32 7
  %259 = load i32, ptr %258, align 4
  %260 = and i32 %259, 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %264, !prof !10

262:                                              ; preds = %257
  %263 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %249, i32 0, i32 3
  br label %276

264:                                              ; preds = %257
  %265 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %253, i32 0, i32 4
  %266 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %249, i32 0, i32 8
  br label %267

267:                                              ; preds = %271, %264
  %268 = phi ptr [ %265, %264 ], [ %269, %271 ]
  %269 = load volatile ptr, ptr %268, align 8
  %270 = icmp eq ptr %269, %265
  br i1 %270, label %279, label %271

271:                                              ; preds = %267
  %272 = getelementptr i8, ptr %269, i32 32
  %273 = load i64, ptr %272, align 8
  %274 = load i64, ptr %266, align 8
  %275 = icmp ugt i64 %273, %274
  br i1 %275, label %279, label %267

276:                                              ; preds = %262, %255
  %277 = phi ptr [ %263, %262 ], [ %256, %255 ]
  %278 = load volatile ptr, ptr %277, align 8
  br label %279

279:                                              ; preds = %276, %271, %267
  %280 = phi ptr [ %278, %276 ], [ %269, %271 ], [ %265, %267 ]
  %281 = getelementptr i8, ptr %280, i32 -16
  %282 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %253, i32 0, i32 4
  %283 = icmp eq ptr %280, %282
  %284 = icmp eq ptr %281, null
  %285 = or i1 %283, %284
  br i1 %285, label %248, label %246

286:                                              ; preds = %294, %248
  %287 = phi ptr [ %295, %294 ], [ %11, %248 ]
  %288 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %287, i32 0, i32 4
  %289 = load volatile ptr, ptr %288, align 8
  %290 = getelementptr i8, ptr %289, i32 -16
  %291 = icmp eq ptr %289, %288
  %292 = icmp eq ptr %290, null
  %293 = or i1 %291, %292
  br i1 %293, label %296, label %294

294:                                              ; preds = %327, %286
  %295 = phi ptr [ %290, %286 ], [ %329, %327 ]
  br label %286

296:                                              ; preds = %327, %286
  %297 = phi ptr [ %301, %327 ], [ %287, %286 ]
  %298 = icmp eq ptr %297, %11
  br i1 %298, label %334, label %299

299:                                              ; preds = %296
  %300 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %297, i32 0, i32 12
  %301 = load ptr, ptr %300, align 8
  %302 = icmp eq ptr %297, null
  br i1 %302, label %303, label %305

303:                                              ; preds = %299
  %304 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %301, i32 0, i32 4
  br label %324

305:                                              ; preds = %299
  %306 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %297, i32 0, i32 7
  %307 = load i32, ptr %306, align 4
  %308 = and i32 %307, 4
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %312, !prof !10

310:                                              ; preds = %305
  %311 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %297, i32 0, i32 3
  br label %324

312:                                              ; preds = %305
  %313 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %301, i32 0, i32 4
  %314 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %297, i32 0, i32 8
  br label %315

315:                                              ; preds = %319, %312
  %316 = phi ptr [ %313, %312 ], [ %317, %319 ]
  %317 = load volatile ptr, ptr %316, align 8
  %318 = icmp eq ptr %317, %313
  br i1 %318, label %327, label %319

319:                                              ; preds = %315
  %320 = getelementptr i8, ptr %317, i32 32
  %321 = load i64, ptr %320, align 8
  %322 = load i64, ptr %314, align 8
  %323 = icmp ugt i64 %321, %322
  br i1 %323, label %327, label %315

324:                                              ; preds = %310, %303
  %325 = phi ptr [ %311, %310 ], [ %304, %303 ]
  %326 = load volatile ptr, ptr %325, align 8
  br label %327

327:                                              ; preds = %324, %319, %315
  %328 = phi ptr [ %326, %324 ], [ %317, %319 ], [ %313, %315 ]
  %329 = getelementptr i8, ptr %328, i32 -16
  %330 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %301, i32 0, i32 4
  %331 = icmp eq ptr %328, %330
  %332 = icmp eq ptr %329, null
  %333 = or i1 %331, %332
  br i1 %333, label %296, label %294

334:                                              ; preds = %296
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #27
  %335 = getelementptr inbounds i8, ptr %5, i32 52
  store i32 0, ptr %335, align 4, !annotation !9
  store ptr %5, ptr %5, align 4
  %336 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %336, align 4
  %337 = getelementptr inbounds %struct.cgroup_mgctx, ptr %5, i32 0, i32 1
  store ptr %337, ptr %337, align 4
  %338 = getelementptr inbounds %struct.cgroup_mgctx, ptr %5, i32 0, i32 1, i32 1
  store ptr %337, ptr %338, align 4
  %339 = getelementptr inbounds %struct.cgroup_mgctx, ptr %5, i32 0, i32 2
  store ptr %339, ptr %339, align 4
  %340 = getelementptr inbounds %struct.cgroup_mgctx, ptr %5, i32 0, i32 2, i32 0, i32 1
  store ptr %339, ptr %340, align 4
  %341 = getelementptr inbounds %struct.cgroup_mgctx, ptr %5, i32 0, i32 2, i32 1
  store ptr %341, ptr %341, align 4
  %342 = getelementptr inbounds %struct.cgroup_mgctx, ptr %5, i32 0, i32 2, i32 1, i32 1
  store ptr %341, ptr %342, align 4
  %343 = getelementptr inbounds %struct.cgroup_mgctx, ptr %5, i32 0, i32 2, i32 2
  store i32 0, ptr %343, align 4
  %344 = getelementptr inbounds %struct.cgroup_mgctx, ptr %5, i32 0, i32 2, i32 3
  store i32 0, ptr %344, align 4
  %345 = getelementptr inbounds %struct.cgroup_mgctx, ptr %5, i32 0, i32 2, i32 4
  store ptr %339, ptr %345, align 4
  %346 = getelementptr inbounds %struct.cgroup_mgctx, ptr %5, i32 0, i32 2, i32 5
  store ptr null, ptr %346, align 4
  %347 = getelementptr inbounds %struct.cgroup_mgctx, ptr %5, i32 0, i32 2, i32 6
  store ptr null, ptr %347, align 4
  call void @percpu_down_write(ptr noundef nonnull @cgroup_threadgroup_rwsem) #27
  call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  br label %348

348:                                              ; preds = %372, %334
  %349 = phi ptr [ %11, %334 ], [ %373, %372 ]
  %350 = load ptr, ptr %349, align 8
  %351 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %350, i32 0, i32 7
  %352 = load i32, ptr %351, align 4
  %353 = and i32 %352, 2
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %365, label %355

355:                                              ; preds = %348
  %356 = getelementptr inbounds %struct.cgroup, ptr %350, i32 0, i32 20
  %357 = load ptr, ptr %356, align 4
  %358 = icmp eq ptr %357, %356
  br i1 %358, label %365, label %359

359:                                              ; preds = %359, %355
  %360 = phi ptr [ %363, %359 ], [ %357, %355 ]
  %361 = getelementptr i8, ptr %360, i32 -4
  %362 = load ptr, ptr %361, align 4
  call void @cgroup_migrate_add_src(ptr noundef %362, ptr noundef %350, ptr noundef nonnull %5) #27
  %363 = load ptr, ptr %360, align 4
  %364 = icmp eq ptr %363, %356
  br i1 %364, label %365, label %359

365:                                              ; preds = %359, %355, %348
  %366 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %349, i32 0, i32 4
  %367 = load volatile ptr, ptr %366, align 8
  %368 = getelementptr i8, ptr %367, i32 -16
  %369 = icmp eq ptr %367, %366
  %370 = icmp eq ptr %368, null
  %371 = or i1 %369, %370
  br i1 %371, label %374, label %372

372:                                              ; preds = %405, %365
  %373 = phi ptr [ %368, %365 ], [ %407, %405 ]
  br label %348

374:                                              ; preds = %405, %365
  %375 = phi ptr [ %379, %405 ], [ %349, %365 ]
  %376 = icmp eq ptr %375, %11
  br i1 %376, label %412, label %377

377:                                              ; preds = %374
  %378 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %375, i32 0, i32 12
  %379 = load ptr, ptr %378, align 8
  %380 = icmp eq ptr %375, null
  br i1 %380, label %381, label %383

381:                                              ; preds = %377
  %382 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %379, i32 0, i32 4
  br label %402

383:                                              ; preds = %377
  %384 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %375, i32 0, i32 7
  %385 = load i32, ptr %384, align 4
  %386 = and i32 %385, 4
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %390, !prof !10

388:                                              ; preds = %383
  %389 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %375, i32 0, i32 3
  br label %402

390:                                              ; preds = %383
  %391 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %379, i32 0, i32 4
  %392 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %375, i32 0, i32 8
  br label %393

393:                                              ; preds = %397, %390
  %394 = phi ptr [ %391, %390 ], [ %395, %397 ]
  %395 = load volatile ptr, ptr %394, align 8
  %396 = icmp eq ptr %395, %391
  br i1 %396, label %405, label %397

397:                                              ; preds = %393
  %398 = getelementptr i8, ptr %395, i32 32
  %399 = load i64, ptr %398, align 8
  %400 = load i64, ptr %392, align 8
  %401 = icmp ugt i64 %399, %400
  br i1 %401, label %405, label %393

402:                                              ; preds = %388, %381
  %403 = phi ptr [ %389, %388 ], [ %382, %381 ]
  %404 = load volatile ptr, ptr %403, align 8
  br label %405

405:                                              ; preds = %402, %397, %393
  %406 = phi ptr [ %404, %402 ], [ %395, %397 ], [ %391, %393 ]
  %407 = getelementptr i8, ptr %406, i32 -16
  %408 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %379, i32 0, i32 4
  %409 = icmp eq ptr %406, %408
  %410 = icmp eq ptr %407, null
  %411 = or i1 %409, %410
  br i1 %411, label %374, label %372

412:                                              ; preds = %374
  call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %413 = load i16, ptr @css_set_lock, align 4
  %414 = add i16 %413, 1
  store i16 %414, ptr @css_set_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  %415 = call i32 @cgroup_migrate_prepare_dst(ptr noundef nonnull %5) #27
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %478

417:                                              ; preds = %412
  call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %418 = load ptr, ptr %5, align 4
  %419 = icmp eq ptr %418, %5
  br i1 %419, label %475, label %423

420:                                              ; preds = %473, %423
  %421 = load ptr, ptr %424, align 4
  %422 = icmp eq ptr %421, %5
  br i1 %422, label %475, label %423

423:                                              ; preds = %420, %417
  %424 = phi ptr [ %421, %420 ], [ %418, %417 ]
  %425 = getelementptr i8, ptr %424, i32 -64
  %426 = load ptr, ptr %425, align 4
  %427 = icmp eq ptr %426, %425
  br i1 %427, label %420, label %428

428:                                              ; preds = %473, %423
  %429 = phi ptr [ %430, %473 ], [ %426, %423 ]
  %430 = load ptr, ptr %429, align 4
  %431 = getelementptr i8, ptr %429, i32 -1232
  %432 = load i32, ptr %431, align 4
  %433 = and i32 %432, 4
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %473

435:                                              ; preds = %428
  %436 = load volatile ptr, ptr %429, align 4
  %437 = icmp eq ptr %436, %429
  %438 = load i1, ptr @cgroup_migrate_add_task.__already_done, align 1
  %439 = xor i1 %438, true
  %440 = select i1 %437, i1 %439, i1 false
  br i1 %440, label %441, label %442, !prof !11

441:                                              ; preds = %435
  store i1 true, ptr @cgroup_migrate_add_task.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2368, i32 noundef 9, ptr noundef null) #27
  br label %442

442:                                              ; preds = %441, %435
  %443 = getelementptr i8, ptr %429, i32 -4
  %444 = load volatile ptr, ptr %443, align 16
  %445 = getelementptr inbounds %struct.css_set, ptr %444, i32 0, i32 16
  %446 = load ptr, ptr %445, align 4
  %447 = icmp eq ptr %446, null
  br i1 %447, label %473, label %448

448:                                              ; preds = %442
  %449 = load i32, ptr %343, align 4
  %450 = add i32 %449, 1
  store i32 %450, ptr %343, align 4
  %451 = getelementptr inbounds %struct.css_set, ptr %444, i32 0, i32 6
  %452 = getelementptr i8, ptr %429, i32 4
  %453 = load ptr, ptr %452, align 4
  %454 = load ptr, ptr %429, align 4
  %455 = getelementptr inbounds %struct.list_head, ptr %454, i32 0, i32 1
  store ptr %453, ptr %455, align 4
  store volatile ptr %454, ptr %453, align 4
  %456 = getelementptr inbounds %struct.css_set, ptr %444, i32 0, i32 6, i32 1
  %457 = load ptr, ptr %456, align 4
  store ptr %429, ptr %456, align 4
  store ptr %451, ptr %429, align 4
  store ptr %457, ptr %452, align 4
  store volatile ptr %429, ptr %457, align 4
  %458 = getelementptr inbounds %struct.css_set, ptr %444, i32 0, i32 15
  %459 = load volatile ptr, ptr %458, align 4
  %460 = icmp eq ptr %459, %458
  br i1 %460, label %461, label %464

461:                                              ; preds = %448
  %462 = load ptr, ptr %340, align 4
  store ptr %458, ptr %340, align 4
  store ptr %339, ptr %458, align 4
  %463 = getelementptr inbounds %struct.css_set, ptr %444, i32 0, i32 15, i32 1
  store ptr %462, ptr %463, align 4
  store volatile ptr %458, ptr %462, align 4
  br label %464

464:                                              ; preds = %461, %448
  %465 = getelementptr inbounds %struct.css_set, ptr %444, i32 0, i32 18
  %466 = load ptr, ptr %465, align 4
  %467 = getelementptr inbounds %struct.css_set, ptr %466, i32 0, i32 15
  %468 = load volatile ptr, ptr %467, align 4
  %469 = icmp eq ptr %468, %467
  br i1 %469, label %470, label %473

470:                                              ; preds = %464
  %471 = load ptr, ptr %342, align 4
  store ptr %467, ptr %342, align 4
  store ptr %341, ptr %467, align 4
  %472 = getelementptr inbounds %struct.css_set, ptr %466, i32 0, i32 15, i32 1
  store ptr %471, ptr %472, align 4
  store volatile ptr %467, ptr %471, align 4
  br label %473

473:                                              ; preds = %470, %464, %442, %428
  %474 = icmp eq ptr %430, %425
  br i1 %474, label %420, label %428

475:                                              ; preds = %420, %417
  call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %476 = load i16, ptr @css_set_lock, align 4
  %477 = add i16 %476, 1
  store i16 %477, ptr @css_set_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  call fastcc void @cgroup_migrate_execute(ptr noundef nonnull %5) #27
  br label %478

478:                                              ; preds = %475, %412
  %479 = phi i32 [ %415, %412 ], [ 0, %475 ]
  call void @cgroup_migrate_finish(ptr noundef nonnull %5) #27
  call void @percpu_up_write(ptr noundef nonnull @cgroup_threadgroup_rwsem) #27
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #27
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %481, label %485

481:                                              ; preds = %478
  %482 = getelementptr inbounds %struct.cgroup, ptr %15, i32 0, i32 10
  %483 = load i32, ptr %482, align 4
  %484 = add i32 %483, 1
  store i32 %484, ptr %482, align 4
  br label %555

485:                                              ; preds = %485, %478
  %486 = phi ptr [ %489, %485 ], [ %11, %478 ]
  %487 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %486, i32 0, i32 4
  %488 = load volatile ptr, ptr %487, align 8
  %489 = getelementptr i8, ptr %488, i32 -16
  %490 = icmp eq ptr %488, %487
  %491 = icmp eq ptr %489, null
  %492 = or i1 %490, %491
  br i1 %492, label %493, label %485

493:                                              ; preds = %485
  %494 = icmp eq ptr %486, null
  br i1 %494, label %554, label %495

495:                                              ; preds = %551, %493
  %496 = phi ptr [ %552, %551 ], [ %486, %493 ]
  %497 = load ptr, ptr %496, align 8
  %498 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %497, i32 0, i32 7
  %499 = load i32, ptr %498, align 4
  %500 = and i32 %499, 2
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %512, label %502

502:                                              ; preds = %495
  %503 = getelementptr inbounds %struct.cgroup, ptr %497, i32 0, i32 16
  %504 = load i16, ptr %503, align 8
  %505 = getelementptr inbounds %struct.cgroup, ptr %497, i32 0, i32 14
  store i16 %504, ptr %505, align 4
  %506 = getelementptr inbounds %struct.cgroup, ptr %497, i32 0, i32 17
  %507 = load i16, ptr %506, align 2
  %508 = getelementptr inbounds %struct.cgroup, ptr %497, i32 0, i32 15
  store i16 %507, ptr %508, align 2
  %509 = getelementptr inbounds %struct.cgroup, ptr %497, i32 0, i32 23
  %510 = load ptr, ptr %509, align 4
  %511 = getelementptr inbounds %struct.cgroup, ptr %497, i32 0, i32 22
  store ptr %510, ptr %511, align 8
  br label %512

512:                                              ; preds = %502, %495
  %513 = icmp eq ptr %496, %11
  br i1 %513, label %554, label %514

514:                                              ; preds = %512
  %515 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %496, i32 0, i32 12
  %516 = load ptr, ptr %515, align 8
  %517 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %496, i32 0, i32 7
  %518 = load i32, ptr %517, align 4
  %519 = and i32 %518, 4
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %533, label %521, !prof !10

521:                                              ; preds = %514
  %522 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %516, i32 0, i32 4
  %523 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %496, i32 0, i32 8
  br label %524

524:                                              ; preds = %528, %521
  %525 = phi ptr [ %522, %521 ], [ %526, %528 ]
  %526 = load volatile ptr, ptr %525, align 8
  %527 = icmp eq ptr %526, %522
  br i1 %527, label %551, label %528

528:                                              ; preds = %524
  %529 = getelementptr i8, ptr %526, i32 32
  %530 = load i64, ptr %529, align 8
  %531 = load i64, ptr %523, align 8
  %532 = icmp ugt i64 %530, %531
  br i1 %532, label %536, label %524

533:                                              ; preds = %514
  %534 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %496, i32 0, i32 3
  %535 = load volatile ptr, ptr %534, align 8
  br label %536

536:                                              ; preds = %533, %528
  %537 = phi ptr [ %535, %533 ], [ %526, %528 ]
  %538 = getelementptr i8, ptr %537, i32 -16
  %539 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %516, i32 0, i32 4
  %540 = icmp eq ptr %537, %539
  %541 = icmp eq ptr %538, null
  %542 = or i1 %540, %541
  br i1 %542, label %551, label %543

543:                                              ; preds = %543, %536
  %544 = phi ptr [ %547, %543 ], [ %538, %536 ]
  %545 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %544, i32 0, i32 4
  %546 = load volatile ptr, ptr %545, align 8
  %547 = getelementptr i8, ptr %546, i32 -16
  %548 = icmp eq ptr %546, %545
  %549 = icmp eq ptr %547, null
  %550 = or i1 %548, %549
  br i1 %550, label %551, label %543

551:                                              ; preds = %543, %536, %524
  %552 = phi ptr [ %516, %536 ], [ %544, %543 ], [ %516, %524 ]
  %553 = icmp eq ptr %552, null
  br i1 %553, label %554, label %495

554:                                              ; preds = %551, %512, %493
  call fastcc void @cgroup_propagate_control(ptr noundef %11) #27
  br label %555

555:                                              ; preds = %554, %481
  br label %556

556:                                              ; preds = %556, %555
  %557 = phi ptr [ %560, %556 ], [ %11, %555 ]
  %558 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %557, i32 0, i32 4
  %559 = load volatile ptr, ptr %558, align 8
  %560 = getelementptr i8, ptr %559, i32 -16
  %561 = icmp eq ptr %559, %558
  %562 = icmp eq ptr %560, null
  %563 = or i1 %561, %562
  br i1 %563, label %564, label %556

564:                                              ; preds = %556
  %565 = icmp eq ptr %557, null
  br i1 %565, label %611, label %566

566:                                              ; preds = %606, %564
  %567 = phi ptr [ %607, %606 ], [ %557, %564 ]
  %568 = icmp eq ptr %567, %11
  br i1 %568, label %611, label %569

569:                                              ; preds = %566
  %570 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %567, i32 0, i32 12
  %571 = load ptr, ptr %570, align 8
  %572 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %567, i32 0, i32 7
  %573 = load i32, ptr %572, align 4
  %574 = and i32 %573, 4
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %588, label %576, !prof !10

576:                                              ; preds = %569
  %577 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %571, i32 0, i32 4
  %578 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %567, i32 0, i32 8
  br label %579

579:                                              ; preds = %583, %576
  %580 = phi ptr [ %577, %576 ], [ %581, %583 ]
  %581 = load volatile ptr, ptr %580, align 8
  %582 = icmp eq ptr %581, %577
  br i1 %582, label %606, label %583

583:                                              ; preds = %579
  %584 = getelementptr i8, ptr %581, i32 32
  %585 = load i64, ptr %584, align 8
  %586 = load i64, ptr %578, align 8
  %587 = icmp ugt i64 %585, %586
  br i1 %587, label %591, label %579

588:                                              ; preds = %569
  %589 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %567, i32 0, i32 3
  %590 = load volatile ptr, ptr %589, align 8
  br label %591

591:                                              ; preds = %588, %583
  %592 = phi ptr [ %590, %588 ], [ %581, %583 ]
  %593 = getelementptr i8, ptr %592, i32 -16
  %594 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %571, i32 0, i32 4
  %595 = icmp eq ptr %592, %594
  %596 = icmp eq ptr %593, null
  %597 = or i1 %595, %596
  br i1 %597, label %606, label %598

598:                                              ; preds = %598, %591
  %599 = phi ptr [ %602, %598 ], [ %593, %591 ]
  %600 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %599, i32 0, i32 4
  %601 = load volatile ptr, ptr %600, align 8
  %602 = getelementptr i8, ptr %601, i32 -16
  %603 = icmp eq ptr %601, %600
  %604 = icmp eq ptr %602, null
  %605 = or i1 %603, %604
  br i1 %605, label %606, label %598

606:                                              ; preds = %598, %591, %579
  %607 = phi ptr [ %571, %591 ], [ %599, %598 ], [ %571, %579 ]
  %608 = icmp eq ptr %607, null
  br i1 %608, label %611, label %566

609:                                              ; preds = %68, %64, %59, %55, %37, %33, %23
  %610 = load ptr, ptr %0, align 4
  tail call void @cgroup_kn_unlock(ptr noundef %610)
  br label %614

611:                                              ; preds = %606, %566, %564
  %612 = load ptr, ptr %0, align 4
  call void @cgroup_kn_unlock(ptr noundef %612)
  br i1 %480, label %613, label %614

613:                                              ; preds = %611, %21
  br label %614

614:                                              ; preds = %613, %611, %609, %9, %4
  %615 = phi i32 [ -22, %4 ], [ -2, %9 ], [ %2, %613 ], [ %479, %611 ], [ -95, %609 ]
  ret i32 %615
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cgroup_procs_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cgroup_file_ctx, ptr %3, i32 0, i32 2
  %5 = load i8, ptr %4, align 4, !range !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cgroup_file_ctx, ptr %3, i32 0, i32 2, i32 1
  tail call void @css_task_iter_end(ptr noundef %8)
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_procs_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @__task_pid_nr_ns(ptr noundef %1, i32 noundef 0, ptr noundef null) #27
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.61, i32 noundef %3) #27
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @cgroup_procs_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.cgroup, ptr %10, i32 0, i32 22
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, %10
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = tail call fastcc ptr @__cgroup_procs_start(ptr noundef %0, ptr noundef %1, i32 noundef 3)
  br label %16

16:                                               ; preds = %14, %2
  %17 = phi ptr [ %15, %14 ], [ inttoptr (i32 -95 to ptr), %2 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @cgroup_procs_next(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %2, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load i64, ptr %2, align 8
  %11 = add i64 %10, 1
  store i64 %11, ptr %2, align 8
  br label %12

12:                                               ; preds = %9, %3
  %13 = getelementptr inbounds %struct.cgroup_file_ctx, ptr %7, i32 0, i32 2, i32 1
  %14 = tail call ptr @css_task_iter_next(ptr noundef %13)
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_procs_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = tail call fastcc i32 @__cgroup_procs_write(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 %2, i32 %5
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @cgroup_threads_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call fastcc ptr @__cgroup_procs_start(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_threads_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = tail call fastcc i32 @__cgroup_procs_write(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 %2, i32 %5
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @cgroup_controllers_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #6 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @cgroup_subtree_control_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #6 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_subtree_control_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = tail call ptr @strim(ptr noundef %1) #27
  store ptr %6, ptr %5, align 4
  br label %7

7:                                                ; preds = %10, %4
  %8 = call ptr @strsep(ptr noundef nonnull %5, ptr noundef nonnull @.str.62) #27
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i8, ptr %8, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %7, label %19

13:                                               ; preds = %7
  %14 = load ptr, ptr %0, align 4
  %15 = call ptr @cgroup_kn_lock_live(ptr noundef %14, i1 noundef zeroext true)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 4
  call void @cgroup_kn_unlock(ptr noundef %18)
  br label %19

19:                                               ; preds = %17, %13, %10
  %20 = phi i32 [ %2, %17 ], [ -19, %13 ], [ -22, %10 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_events_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.cgroup, ptr %10, i32 0, i32 7
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.cgroup, ptr %10, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %12
  %16 = getelementptr inbounds %struct.cgroup, ptr %10, i32 0, i32 9
  %17 = load i32, ptr %16, align 8
  %18 = sub i32 0, %17
  %19 = icmp ne i32 %15, %18
  %20 = zext i1 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.63, i32 noundef %20) #27
  %21 = getelementptr inbounds %struct.cgroup, ptr %10, i32 0, i32 1
  %22 = load volatile i32, ptr %21, align 4
  %23 = lshr i32 %22, 3
  %24 = and i32 %23, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.64, i32 noundef %24) #27
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_max_descendants_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.cgroup, ptr %10, i32 0, i32 6
  %12 = load volatile i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2147483647
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.65) #27
  br label %16

15:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.61, i32 noundef %12) #27
  br label %16

16:                                               ; preds = %15, %14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_max_descendants_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = tail call ptr @strim(ptr noundef %1) #27
  %7 = tail call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(4) @.str.66)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  store i32 2147483647, ptr %5, align 4
  br label %16

10:                                               ; preds = %4
  %11 = call i32 @kstrtoint(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %5) #27
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load i32, ptr %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %13, %9
  %17 = load ptr, ptr %0, align 4
  %18 = call ptr @cgroup_kn_lock_live(ptr noundef %17, i1 noundef zeroext false)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %5, align 4
  %22 = getelementptr inbounds %struct.cgroup, ptr %18, i32 0, i32 6
  store i32 %21, ptr %22, align 4
  %23 = load ptr, ptr %0, align 4
  call void @cgroup_kn_unlock(ptr noundef %23)
  br label %24

24:                                               ; preds = %20, %16, %13, %10
  %25 = phi i32 [ %2, %20 ], [ %11, %10 ], [ -34, %13 ], [ -2, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_max_depth_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.cgroup, ptr %10, i32 0, i32 3
  %12 = load volatile i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 2147483647
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.65) #27
  br label %16

15:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.61, i32 noundef %12) #27
  br label %16

16:                                               ; preds = %15, %14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_max_depth_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = tail call ptr @strim(ptr noundef %1) #27
  %7 = tail call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(4) @.str.66)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  store i32 2147483647, ptr %5, align 4
  br label %16

10:                                               ; preds = %4
  %11 = call i32 @kstrtoint(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %5) #27
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load i32, ptr %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %13, %9
  %17 = load ptr, ptr %0, align 4
  %18 = call ptr @cgroup_kn_lock_live(ptr noundef %17, i1 noundef zeroext false)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %5, align 4
  %22 = getelementptr inbounds %struct.cgroup, ptr %18, i32 0, i32 3
  store i32 %21, ptr %22, align 8
  %23 = load ptr, ptr %0, align 4
  call void @cgroup_kn_unlock(ptr noundef %23)
  br label %24

24:                                               ; preds = %20, %16, %13, %10
  %25 = phi i32 [ %2, %20 ], [ %11, %10 ], [ -34, %13 ], [ -2, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_stat_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.cgroup, ptr %10, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.67, i32 noundef %12) #27
  %13 = getelementptr inbounds %struct.cgroup, ptr %10, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.68, i32 noundef %14) #27
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_freeze_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.cgroup, ptr %10, i32 0, i32 36
  %12 = load i8, ptr %11, align 4, !range !34
  %13 = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.61, i32 noundef %13) #27
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_freeze_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #27
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = tail call ptr @strim(ptr noundef %1) #27
  %7 = call i32 @kstrtoint(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %5) #27
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = load i32, ptr %5, align 4
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %20, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %0, align 4
  %14 = call ptr @cgroup_kn_lock_live(ptr noundef %13, i1 noundef zeroext false)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr %5, align 4
  %18 = icmp ne i32 %17, 0
  call void @cgroup_freeze(ptr noundef nonnull %14, i1 noundef zeroext %18) #27
  %19 = load ptr, ptr %0, align 4
  call void @cgroup_kn_unlock(ptr noundef %19)
  br label %20

20:                                               ; preds = %16, %12, %9, %4
  %21 = phi i32 [ %2, %16 ], [ %7, %4 ], [ -34, %9 ], [ -2, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #27
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_kill_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.css_task_iter, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = tail call ptr @strim(ptr noundef %1) #27
  %8 = call i32 @kstrtoint(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %6) #27
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %114

10:                                               ; preds = %4
  %11 = load i32, ptr %6, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %114

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 4
  %15 = call ptr @cgroup_kn_lock_live(ptr noundef %14, i1 noundef zeroext false)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %114, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cgroup, ptr %15, i32 0, i32 22
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, %15
  br i1 %20, label %21, label %111

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, ptr %5, i32 16
  %23 = getelementptr inbounds %struct.css_task_iter, ptr %5, i32 0, i32 1
  %24 = getelementptr inbounds %struct.css_task_iter, ptr %5, i32 0, i32 2
  %25 = getelementptr inbounds %struct.css_task_iter, ptr %5, i32 0, i32 3
  br label %26

26:                                               ; preds = %71, %21
  %27 = phi ptr [ %15, %21 ], [ %72, %71 ]
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %28, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %64, label %33

33:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %5) #27
  call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %34 = getelementptr inbounds %struct.cgroup, ptr %28, i32 0, i32 1
  call void @_set_bit(i32 noundef 4, ptr noundef %34) #27
  call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %35 = load i16, ptr @css_set_lock, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr @css_set_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %22, i8 0, i32 36, i1 false) #27
  call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %37 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %28, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  store ptr %38, ptr %5, align 4
  store i32 3, ptr %23, align 4
  %39 = load ptr, ptr %28, align 8
  %40 = getelementptr inbounds %struct.cgroup, ptr %39, i32 0, i32 20
  store ptr %40, ptr %24, align 4
  store ptr %40, ptr %25, align 4
  call fastcc void @css_task_iter_advance(ptr noundef nonnull %5) #27
  call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %41 = load i16, ptr @css_set_lock, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr @css_set_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  %43 = call ptr @css_task_iter_next(ptr noundef nonnull %5) #27
  %44 = icmp eq ptr %43, null
  br i1 %44, label %61, label %45

45:                                               ; preds = %58, %33
  %46 = phi ptr [ %59, %58 ], [ %43, %33 ]
  %47 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 2097152
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 98, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 256
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 @send_sig(i32 noundef 9, ptr noundef nonnull %46, i32 noundef 0) #27
  br label %58

58:                                               ; preds = %56, %51, %45
  %59 = call ptr @css_task_iter_next(ptr noundef nonnull %5) #27
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %45

61:                                               ; preds = %58, %33
  call void @css_task_iter_end(ptr noundef nonnull %5) #27
  call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  call void @_clear_bit(i32 noundef 4, ptr noundef %34) #27
  call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %62 = load i16, ptr @css_set_lock, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr @css_set_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %5) #27
  br label %64

64:                                               ; preds = %61, %26
  %65 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %27, i32 0, i32 4
  %66 = load volatile ptr, ptr %65, align 8
  %67 = getelementptr i8, ptr %66, i32 -16
  %68 = icmp eq ptr %66, %65
  %69 = icmp eq ptr %67, null
  %70 = or i1 %68, %69
  br i1 %70, label %73, label %71

71:                                               ; preds = %104, %64
  %72 = phi ptr [ %67, %64 ], [ %106, %104 ]
  br label %26

73:                                               ; preds = %104, %64
  %74 = phi ptr [ %78, %104 ], [ %27, %64 ]
  %75 = icmp eq ptr %74, %15
  br i1 %75, label %111, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %74, i32 0, i32 12
  %78 = load ptr, ptr %77, align 8
  %79 = icmp eq ptr %74, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %78, i32 0, i32 4
  br label %101

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %74, i32 0, i32 7
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89, !prof !10

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %74, i32 0, i32 3
  br label %101

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %78, i32 0, i32 4
  %91 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %74, i32 0, i32 8
  br label %92

92:                                               ; preds = %96, %89
  %93 = phi ptr [ %90, %89 ], [ %94, %96 ]
  %94 = load volatile ptr, ptr %93, align 8
  %95 = icmp eq ptr %94, %90
  br i1 %95, label %104, label %96

96:                                               ; preds = %92
  %97 = getelementptr i8, ptr %94, i32 32
  %98 = load i64, ptr %97, align 8
  %99 = load i64, ptr %91, align 8
  %100 = icmp ugt i64 %98, %99
  br i1 %100, label %104, label %92

101:                                              ; preds = %87, %80
  %102 = phi ptr [ %88, %87 ], [ %81, %80 ]
  %103 = load volatile ptr, ptr %102, align 8
  br label %104

104:                                              ; preds = %101, %96, %92
  %105 = phi ptr [ %103, %101 ], [ %94, %96 ], [ %90, %92 ]
  %106 = getelementptr i8, ptr %105, i32 -16
  %107 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %78, i32 0, i32 4
  %108 = icmp eq ptr %105, %107
  %109 = icmp eq ptr %106, null
  %110 = or i1 %108, %109
  br i1 %110, label %73, label %71

111:                                              ; preds = %73, %17
  %112 = phi i32 [ -95, %17 ], [ %2, %73 ]
  %113 = load ptr, ptr %0, align 4
  call void @cgroup_kn_unlock(ptr noundef %113)
  br label %114

114:                                              ; preds = %111, %13, %10, %4
  %115 = phi i32 [ %112, %111 ], [ %8, %4 ], [ -34, %10 ], [ -2, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_stat_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @cgroup_base_stat_cputime_show(ptr noundef %0) #27
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__cgroup_procs_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.kernfs_node, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.kernfs_node, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.cgroup_file_ctx, ptr %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.cgroup_file_ctx, ptr %13, i32 0, i32 2, i32 1
  %16 = load i8, ptr %14, align 4, !range !34
  %17 = icmp eq i8 %16, 0
  %18 = load i64, ptr %1, align 8
  br i1 %17, label %19, label %36

19:                                               ; preds = %3
  %20 = icmp ne i64 %18, 0
  %21 = load i1, ptr @__cgroup_procs_start.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !11

24:                                               ; preds = %19
  store i1 true, ptr @__cgroup_procs_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4814, i32 noundef 9, ptr noundef null) #27
  br label %25

25:                                               ; preds = %24, %19
  br i1 %20, label %57, label %26

26:                                               ; preds = %25
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(52) %15, i8 0, i32 52, i1 false) #27
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %27 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %11, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  store ptr %28, ptr %15, align 4
  %29 = getelementptr inbounds %struct.cgroup_file_ctx, ptr %13, i32 0, i32 2, i32 1, i32 1
  store i32 %2, ptr %29, align 4
  %30 = load ptr, ptr %11, align 8
  %31 = getelementptr inbounds %struct.cgroup, ptr %30, i32 0, i32 20
  %32 = getelementptr inbounds %struct.cgroup_file_ctx, ptr %13, i32 0, i32 2, i32 1, i32 2
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.cgroup_file_ctx, ptr %13, i32 0, i32 2, i32 1, i32 3
  store ptr %31, ptr %33, align 4
  tail call fastcc void @css_task_iter_advance(ptr noundef %15) #27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %34 = load i16, ptr @css_set_lock, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  store i8 1, ptr %14, align 4
  br label %51

36:                                               ; preds = %3
  %37 = icmp eq i64 %18, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %36
  tail call void @css_task_iter_end(ptr noundef %15)
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(52) %15, i8 0, i32 52, i1 false) #27
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %39 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %11, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  store ptr %40, ptr %15, align 4
  %41 = getelementptr inbounds %struct.cgroup_file_ctx, ptr %13, i32 0, i32 2, i32 1, i32 1
  store i32 %2, ptr %41, align 4
  %42 = load ptr, ptr %11, align 8
  %43 = getelementptr inbounds %struct.cgroup, ptr %42, i32 0, i32 20
  %44 = getelementptr inbounds %struct.cgroup_file_ctx, ptr %13, i32 0, i32 2, i32 1, i32 2
  store ptr %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.cgroup_file_ctx, ptr %13, i32 0, i32 2, i32 1, i32 3
  store ptr %43, ptr %45, align 4
  tail call fastcc void @css_task_iter_advance(ptr noundef %15) #27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %46 = load i16, ptr @css_set_lock, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  br label %51

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.cgroup_file_ctx, ptr %13, i32 0, i32 2, i32 1, i32 10
  %50 = load ptr, ptr %49, align 4
  br label %57

51:                                               ; preds = %38, %26
  %52 = load ptr, ptr %4, align 8
  %53 = getelementptr inbounds %struct.kernfs_open_file, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.cgroup_file_ctx, ptr %54, i32 0, i32 2, i32 1
  %56 = tail call ptr @css_task_iter_next(ptr noundef %55) #27
  br label %57

57:                                               ; preds = %51, %48, %25
  %58 = phi ptr [ %50, %48 ], [ %56, %51 ], [ inttoptr (i32 -22 to ptr), %25 ]
  ret ptr %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__cgroup_procs_write(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #27
  store i8 0, ptr %4, align 1, !annotation !9
  %7 = load ptr, ptr %0, align 4
  %8 = tail call ptr @cgroup_kn_lock_live(ptr noundef %7, i1 noundef zeroext false)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %59, label %10

10:                                               ; preds = %3
  %11 = call ptr @cgroup_procs_write_start(ptr noundef %1, i1 noundef zeroext %2, ptr noundef nonnull %4)
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %13 = ptrtoint ptr %11 to i32
  br i1 %12, label %56, label %14

14:                                               ; preds = %10
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #27
  %15 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 123
  %16 = load volatile ptr, ptr %15, align 16
  %17 = icmp eq ptr %16, @init_css_set
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.css_set, ptr %16, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23, !prof !11

22:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1442, 0\0A.popsection", ""() #27, !srcloc !29
  unreachable

23:                                               ; preds = %18, %14
  %24 = phi ptr [ %20, %18 ], [ getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 3), %14 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !13
  %25 = load i16, ptr @css_set_lock, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #27, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #27, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #27, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #27, !srcloc !17
  %27 = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.file, ptr %28, i32 0, i32 12
  %30 = load ptr, ptr %29, align 8
  %31 = tail call ptr @override_creds(ptr noundef %30) #27
  %32 = load ptr, ptr %27, align 4
  %33 = getelementptr inbounds %struct.file, ptr %32, i32 0, i32 1, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.dentry, ptr %34, i32 0, i32 9
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %6, align 4
  %38 = tail call fastcc i32 @cgroup_attach_permissions(ptr noundef nonnull %24, ptr noundef nonnull %8, ptr noundef %36, i1 noundef zeroext %2, ptr noundef %37)
  tail call void @revert_creds(ptr noundef %31) #27
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %23
  %41 = tail call i32 @cgroup_attach_task(ptr noundef nonnull %8, ptr noundef %11, i1 noundef zeroext %2)
  br label %42

42:                                               ; preds = %40, %23
  %43 = phi i32 [ %38, %23 ], [ %41, %40 ]
  %44 = load i8, ptr %4, align 1, !range !34
  %45 = icmp eq i8 %44, 0
  %46 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #27, !srcloc !19
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #27, !srcloc !20
  %48 = extractvalue { i32, i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = icmp sgt i32 %48, 0
  br i1 %51, label %54, label %52, !prof !10

52:                                               ; preds = %50
  tail call void @refcount_warn_saturate(ptr noundef %46, i32 noundef 3) #27
  br label %54

53:                                               ; preds = %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #27, !srcloc !21
  tail call void @__put_task_struct(ptr noundef %11) #27
  br label %54

54:                                               ; preds = %53, %52, %50
  br i1 %45, label %56, label %55

55:                                               ; preds = %54
  tail call void @percpu_up_write(ptr noundef nonnull @cgroup_threadgroup_rwsem) #27
  br label %56

56:                                               ; preds = %55, %54, %10
  %57 = phi i32 [ %13, %10 ], [ %43, %54 ], [ %43, %55 ]
  %58 = load ptr, ptr %0, align 4
  tail call void @cgroup_kn_unlock(ptr noundef %58)
  br label %59

59:                                               ; preds = %56, %3
  %60 = phi i32 [ %57, %56 ], [ -19, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #27
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cgroup_attach_permissions(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, i1 noundef zeroext %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 2
  br label %9

9:                                                ; preds = %27, %5
  %10 = phi ptr [ %0, %5 ], [ %29, %27 ]
  %11 = getelementptr inbounds %struct.cgroup, ptr %10, i32 0, i32 19
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %7, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load i32, ptr %8, align 4
  %16 = getelementptr inbounds %struct.cgroup, ptr %10, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = getelementptr %struct.cgroup, ptr %1, i32 0, i32 37, i32 %17
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds %struct.cgroup, ptr %10, i32 0, i32 11
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.kernfs_node, ptr %23, i32 0, i32 9
  %25 = load i64, ptr %24, align 8
  %26 = icmp eq i64 %21, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %19, %14, %9
  %28 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %10, i32 0, i32 12
  %29 = load ptr, ptr %28, align 8
  br label %9

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.cgroup, ptr %10, i32 0, i32 12
  %32 = load ptr, ptr %31, align 4
  %33 = tail call ptr @kernfs_get_inode(ptr noundef %2, ptr noundef %32) #27
  %34 = icmp eq ptr %33, null
  br i1 %34, label %135, label %35

35:                                               ; preds = %30
  %36 = tail call i32 @inode_permission(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %33, i32 noundef 2) #27
  tail call void @iput(ptr noundef nonnull %33) #27
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %135

38:                                               ; preds = %35
  %39 = load i32, ptr getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 7), align 4
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load ptr, ptr %6, align 4
  br label %78

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.cgroup_namespace, ptr %4, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.css_set, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 19
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.cgroup, ptr %48, i32 0, i32 19
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %50, %52
  br i1 %53, label %54, label %135

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.cgroup, ptr %48, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %135, label %60

60:                                               ; preds = %54
  %61 = getelementptr %struct.cgroup, ptr %0, i32 0, i32 37, i32 %58
  %62 = load i64, ptr %61, align 8
  %63 = getelementptr inbounds %struct.cgroup, ptr %48, i32 0, i32 11
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.kernfs_node, ptr %64, i32 0, i32 9
  %66 = load i64, ptr %65, align 8
  %67 = icmp eq i64 %62, %66
  br i1 %67, label %68, label %135

68:                                               ; preds = %60
  %69 = load ptr, ptr %6, align 4
  %70 = icmp eq ptr %69, %50
  br i1 %70, label %71, label %135

71:                                               ; preds = %68
  %72 = load i32, ptr %8, align 4
  %73 = icmp slt i32 %72, %58
  br i1 %73, label %135, label %74

74:                                               ; preds = %71
  %75 = getelementptr %struct.cgroup, ptr %1, i32 0, i32 37, i32 %58
  %76 = load i64, ptr %75, align 8
  %77 = icmp eq i64 %76, %62
  br i1 %77, label %78, label %135

78:                                               ; preds = %74, %42
  %79 = phi ptr [ %43, %42 ], [ %50, %74 ]
  %80 = icmp eq ptr %79, @cgrp_dfl_root
  br i1 %80, label %81, label %124

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 22
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.cgroup, ptr %83, i32 0, i32 22
  %85 = load ptr, ptr %84, align 8
  %86 = icmp eq ptr %85, %83
  br i1 %86, label %87, label %135

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %83, i32 0, i32 12
  %89 = load ptr, ptr %88, align 8
  br label %90

90:                                               ; preds = %105, %87
  %91 = phi ptr [ %95, %105 ], [ %89, %87 ]
  %92 = icmp eq ptr %91, null
  br i1 %92, label %108, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %91, i32 0, i32 12
  %95 = load ptr, ptr %94, align 8
  %96 = icmp ne ptr %95, null
  %97 = getelementptr inbounds %struct.cgroup, ptr %91, i32 0, i32 22
  %98 = load ptr, ptr %97, align 8
  %99 = icmp eq ptr %98, %91
  %100 = select i1 %96, i1 %99, i1 false
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.cgroup, ptr %91, i32 0, i32 10
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %135

105:                                              ; preds = %101, %93
  %106 = phi ptr [ %91, %101 ], [ %98, %93 ]
  %107 = icmp eq ptr %106, %91
  br i1 %107, label %90, label %135

108:                                              ; preds = %90
  %109 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %1, i32 0, i32 12
  %110 = load ptr, ptr %109, align 8
  %111 = icmp ne ptr %110, null
  %112 = icmp eq ptr %83, %1
  %113 = select i1 %111, i1 %112, i1 false
  br i1 %113, label %114, label %124

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 8
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  %118 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 14
  %119 = load i16, ptr %118, align 4
  %120 = icmp eq i16 %119, 0
  %121 = select i1 %117, i1 %120, i1 false
  %122 = select i1 %121, i1 true, i1 %120
  %123 = select i1 %122, i32 0, i32 -16
  br label %124

124:                                              ; preds = %114, %108, %78
  %125 = phi i32 [ 0, %78 ], [ 0, %108 ], [ %123, %114 ]
  %126 = icmp ne i32 %125, 0
  %127 = or i1 %126, %3
  br i1 %127, label %135, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 22
  %130 = load ptr, ptr %129, align 8
  %131 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 22
  %132 = load ptr, ptr %131, align 8
  %133 = icmp eq ptr %130, %132
  %134 = select i1 %133, i32 0, i32 -95
  br label %135

135:                                              ; preds = %128, %124, %105, %101, %81, %74, %71, %68, %60, %54, %44, %35, %30
  %136 = phi i32 [ %125, %124 ], [ %134, %128 ], [ -2, %68 ], [ -2, %71 ], [ -2, %44 ], [ -2, %54 ], [ -12, %30 ], [ -2, %60 ], [ -2, %74 ], [ %36, %35 ], [ -95, %81 ], [ -95, %105 ], [ -95, %101 ]
  ret i32 %136
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_get_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_freeze(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_base_stat_cputime_show(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_walk_and_get_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @delegate_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  br label %4

4:                                                ; preds = %21, %3
  %5 = phi ptr [ @cgroup_base_files, %3 ], [ %23, %21 ]
  %6 = phi i32 [ 0, %3 ], [ %22, %21 ]
  %7 = load i8, ptr %5, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.cftype, ptr %5, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 68
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %2, i32 %6
  %16 = sub i32 4096, %6
  %17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %15, i32 noundef %16, ptr noundef nonnull @.str.79, ptr noundef nonnull %5) #27
  %18 = add i32 %17, %6
  %19 = icmp sgt i32 %18, 4095
  br i1 %19, label %20, label %21, !prof !11

20:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 6729, i32 noundef 9, ptr noundef null) #27
  br label %25

21:                                               ; preds = %14, %9
  %22 = phi i32 [ %6, %9 ], [ %18, %14 ]
  %23 = getelementptr %struct.cftype, ptr %5, i32 1
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %4

25:                                               ; preds = %21, %20, %4
  %26 = phi i32 [ %18, %20 ], [ %22, %21 ], [ %6, %4 ]
  ret i32 %26
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @features_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #26 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(52) %2, ptr noundef nonnull align 1 dereferenceable(52) @.str.81, i32 52, i1 false)
  ret i32 51
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #25

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { nounwind readonly }
attributes #20 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #21 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #22 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #23 = { argmemonly nofree nounwind willreturn }
attributes #24 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #25 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #26 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(2) }
attributes #29 = { nounwind allocsize(0) }
attributes #30 = { cold }
attributes #31 = { nounwind readnone }
attributes #32 = { cold nounwind }

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
!12 = !{i64 768814}
!13 = !{i64 2149381175}
!14 = !{i64 2149376999}
!15 = !{i64 2149377074, i64 2149377101, i64 2149377148, i64 2149377170, i64 2149377198, i64 2149377218}
!16 = !{i64 761954}
!17 = !{i64 2149405319}
!18 = !{i64 2148399470}
!19 = !{i64 732962, i64 2148234528, i64 2148234554, i64 2148234601, i64 2148234623, i64 2148234651, i64 2148234671}
!20 = !{i64 2148301605, i64 2148301637, i64 2148301666, i64 2148301700, i64 2148301731, i64 2148301754}
!21 = !{i64 2149455090}
!22 = !{i64 2149154976}
!23 = !{i64 761709, i64 761770}
!24 = !{i64 764726}
!25 = !{i64 2148398469}
!26 = !{i64 2148300831, i64 2148300863, i64 2148300892, i64 2148300926, i64 2148300957, i64 2148300980}
!27 = !{i64 2148398672}
!28 = !{i64 2149155193}
!29 = !{i64 2157462163, i64 2157462651, i64 2157462200, i64 2157462256, i64 2157462290, i64 2157462314, i64 2157462355, i64 2157462376, i64 2157462404, i64 2157462438}
!30 = !{i64 2148297297}
!31 = !{i64 719531, i64 719556, i64 719578, i64 719594, i64 719606, i64 719626, i64 719650, i64 719666, i64 719678}
!32 = !{i64 2148297423}
!33 = !{i64 2157457560, i64 2157458048, i64 2157457597, i64 2157457653, i64 2157457687, i64 2157457711, i64 2157457752, i64 2157457773, i64 2157457801, i64 2157457835}
!34 = !{i8 0, i8 2}
!35 = !{i64 2157500729, i64 2157501217, i64 2157500766, i64 2157500822, i64 2157500856, i64 2157500880, i64 2157500921, i64 2157500942, i64 2157500970, i64 2157501004}
!36 = !{i64 2157501799, i64 2157502287, i64 2157501836, i64 2157501892, i64 2157501926, i64 2157501950, i64 2157501991, i64 2157502012, i64 2157502040, i64 2157502074}
!37 = !{i64 2156306899}
!38 = !{i64 2156307053}
!39 = !{i64 2157428131, i64 2157428619, i64 2157428168, i64 2157428224, i64 2157428258, i64 2157428282, i64 2157428323, i64 2157428344, i64 2157428372, i64 2157428406}
!40 = !{i64 2148297790, i64 2148297816, i64 2148297845, i64 2148297879, i64 2148297910, i64 2148297933}
!41 = !{i64 2156499479}
!42 = !{i64 2156499667}
!43 = !{i64 2148299248, i64 2148299280, i64 2148299309, i64 2148299343, i64 2148299374, i64 2148299397}
!44 = !{i64 2157399551, i64 2157400039, i64 2157399588, i64 2157399644, i64 2157399678, i64 2157399702, i64 2157399743, i64 2157399764, i64 2157399792, i64 2157399826}
!45 = !{i64 2157400609, i64 2157401097, i64 2157400646, i64 2157400702, i64 2157400736, i64 2157400760, i64 2157400801, i64 2157400822, i64 2157400850, i64 2157400884}
!46 = !{i64 2157404221, i64 2157404709, i64 2157404258, i64 2157404314, i64 2157404348, i64 2157404372, i64 2157404413, i64 2157404434, i64 2157404462, i64 2157404496}
!47 = !{i64 2157434545, i64 2157435033, i64 2157434582, i64 2157434638, i64 2157434672, i64 2157434696, i64 2157434737, i64 2157434758, i64 2157434786, i64 2157434820}
!48 = !{i64 2156464431}
!49 = !{i64 2156464645}
!50 = !{i64 2149180217}
!51 = !{i64 2156359079}
!52 = !{i64 2156359235}
!53 = !{i64 2156374984}
!54 = !{i64 2156375140}
!55 = !{i64 2157723860, i64 2157724348, i64 2157723897, i64 2157723953, i64 2157723987, i64 2157724011, i64 2157724052, i64 2157724073, i64 2157724101, i64 2157724135}
!56 = !{i64 2157724984, i64 2157725472, i64 2157725021, i64 2157725077, i64 2157725111, i64 2157725135, i64 2157725176, i64 2157725197, i64 2157725225, i64 2157725259}
!57 = !{i64 2157732235, i64 2157732723, i64 2157732272, i64 2157732328, i64 2157732362, i64 2157732386, i64 2157732427, i64 2157732448, i64 2157732476, i64 2157732510}
!58 = !{i64 2157745781, i64 2157746269, i64 2157745818, i64 2157745874, i64 2157745908, i64 2157745932, i64 2157745973, i64 2157745994, i64 2157746022, i64 2157746056}
!59 = !{i64 2151351548}
!60 = !{i64 2151359165}
!61 = !{i64 2151367630}
!62 = !{i64 2151375941}
!63 = !{i64 2151384159}
!64 = !{i64 2149404178}
!65 = !{i64 2154884033}
!66 = !{i64 2148789285, i64 2148789565, i64 2148789899, i64 2148790233}
!67 = !{i64 2156395026}
!68 = !{i64 2156395186}
!69 = !{i64 2148300147, i64 2148300173, i64 2148300202, i64 2148300236, i64 2148300267, i64 2148300290}
!70 = !{i64 2156327091}
!71 = !{i64 2156327249}
!72 = !{i64 2157442031, i64 2157442519, i64 2157442068, i64 2157442124, i64 2157442158, i64 2157442182, i64 2157442223, i64 2157442244, i64 2157442272, i64 2157442306}
!73 = !{i64 2157443101, i64 2157443589, i64 2157443138, i64 2157443194, i64 2157443228, i64 2157443252, i64 2157443293, i64 2157443314, i64 2157443342, i64 2157443376}
