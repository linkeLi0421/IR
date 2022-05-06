; ModuleID = '/llk/IR/kernel/cgroup/cgroup-v1.c_pt.bc'
source_filename = "../kernel/cgroup/cgroup-v1.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cgroup_attach_task_all:\09\09\09\09\09"
module asm "\09.asciz \09\22cgroup_attach_task_all\22\09\09\09\09\09"
module asm "__kstrtabns_cgroup_attach_task_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cftype = type { [64 x i8], i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.cgroup_namespace = type { %struct.ns_common, ptr, ptr, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.14 }
%union.anon.14 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.24, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.cgroup_root = type { ptr, i32, i32, %struct.cgroup, i64, %struct.atomic_t, %struct.list_head, i32, [4096 x i8], [64 x i8] }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [0 x ptr], ptr, %struct.list_head, [0 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.psi_group = type {}
%struct.cgroup_bpf = type {}
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.kernfs_syscall_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.cgroup_mgctx = type { %struct.list_head, %struct.list_head, %struct.cgroup_taskset, i16 }
%struct.cgroup_taskset = type { %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, ptr }
%struct.css_task_iter = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.44 }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.63 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.kernfs_open_file = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, %struct.list_head, ptr, i32, i8, ptr }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.27, ptr, i64, i16, i16, ptr }
%union.anon.27 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.cgroup_file_ctx = type { ptr, %struct.anon.72, %struct.anon.73, %struct.anon.74 }
%struct.anon.72 = type { ptr }
%struct.anon.73 = type { i8, %struct.css_task_iter }
%struct.anon.74 = type { ptr }
%struct.cgroup_pidlist = type { %struct.anon.71, ptr, i32, %struct.list_head, ptr, %struct.delayed_work }
%struct.anon.71 = type { i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.31, %struct.list_head, %struct.list_head, %union.anon.32 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.9, ptr }
%union.anon.9 = type { i64 }
%struct.lockref = type { %union.anon.11 }
%union.anon.11 = type { i64 }
%union.anon.31 = type { %struct.list_head }
%union.anon.32 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.cgroupstats = type { i64, i64, i64, i64, i64 }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.fs_parse_result = type { i8, %union.anon.29 }
%union.anon.29 = type { i64 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.cgroup_fs_context = type { %struct.kernfs_fs_context, ptr, ptr, i32, i8, i8, i8, i16, ptr, ptr }
%struct.kernfs_fs_context = type { ptr, ptr, i32, i8 }
%struct.fs_parameter = type { ptr, i8, %union.anon.13, i32, i32 }
%union.anon.13 = type { ptr }
%struct.file = type { %union.anon.8, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.26 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.26 = type { %struct.callback_head }

@cgroup_no_v1_mask = internal unnamed_addr global i1 false, align 2
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@cgroup_threadgroup_rwsem = external dso_local global %struct.percpu_rw_semaphore, align 4
@cgroup_roots = external dso_local global %struct.list_head, align 4
@css_set_lock = external dso_local global %struct.spinlock, align 4
@__kstrtab_cgroup_attach_task_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_cgroup_attach_task_all = external dso_local constant [0 x i8], align 1
@__ksymtab_cgroup_attach_task_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cgroup_attach_task_all to i32), ptr @__kstrtab_cgroup_attach_task_all, ptr @__kstrtabns_cgroup_attach_task_all }, section "___ksymtab_gpl+cgroup_attach_task_all", align 4
@trace_cgroup_path_lock = external dso_local global %struct.spinlock, align 4
@trace_cgroup_path = external dso_local global [1024 x i8], align 1
@cgroup_pidlist_destroy_wq = internal unnamed_addr global ptr null, align 4
@cgroup1_base_files = dso_local local_unnamed_addr global [7 x %struct.cftype] [%struct.cftype { [64 x i8] c"cgroup.procs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_pidlist_show, ptr @cgroup_pidlist_start, ptr @cgroup_pidlist_next, ptr @cgroup_pidlist_stop, ptr null, ptr null, ptr @cgroup1_procs_write, ptr null }, %struct.cftype { [64 x i8] c"cgroup.clone_children\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @cgroup_clone_children_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_clone_children_write, ptr null, ptr null, ptr null }, %struct.cftype { [64 x i8] c"cgroup.sane_behavior\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 1, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_sane_behavior_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.cftype { [64 x i8] c"tasks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_pidlist_show, ptr @cgroup_pidlist_start, ptr @cgroup_pidlist_next, ptr @cgroup_pidlist_stop, ptr null, ptr null, ptr @cgroup1_tasks_write, ptr null }, %struct.cftype { [64 x i8] c"notify_on_release\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr @cgroup_read_notify_on_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_write_notify_on_release, ptr null, ptr null, ptr null }, %struct.cftype { [64 x i8] c"release_agent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4095, i32 1, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_release_agent_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cgroup_release_agent_write, ptr null }, %struct.cftype zeroinitializer], align 4
@.str = private unnamed_addr constant [44 x i8] c"#subsys_name\09hierarchy\09num_cgroups\09enabled\0A\00", align 1
@cgroup_fs_type = external dso_local global %struct.file_system_type, align 4
@release_agent_path_lock = internal global %struct.spinlock zeroinitializer, align 4
@init_cgroup_ns = external dso_local global %struct.cgroup_namespace, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"HOME=/\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"PATH=/sbin:/bin:/usr/sbin:/usr/bin\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"clone_children\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"cpuset_v2_mode\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"noprefix\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"release_agent\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"xattr\00", align 1
@cgroup1_fs_parameters = dso_local constant [9 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.4, ptr null, i8 0, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.5, ptr null, i8 1, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.6, ptr null, i8 2, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.7, ptr @fs_param_is_string, i8 3, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.8, ptr null, i8 4, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.9, ptr null, i8 5, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.10, ptr @fs_param_is_string, i8 6, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.11, ptr null, i8 7, i16 0, ptr null }, %struct.fs_parameter_spec zeroinitializer], align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"Unknown subsys name '%s'\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"release_agent respecified\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.15 = private unnamed_addr constant [34 x i8] c"Setting release_agent not allowed\00", align 1
@cgroup_no_v1_named = internal unnamed_addr global i1 false, align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"Empty name\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"Name too long\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Invalid name\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"name respecified\00", align 1
@cgrp_dfl_root = external dso_local global %struct.cgroup_root, align 8
@.str.20 = private unnamed_addr constant [62 x i8] c"\014option changes via remount are deprecated (pid=%d comm=%s)\0A\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"option or name mismatch, new: 0x%x \22%s\22, old: 0x%x \22%s\22\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"kernel/cgroup/cgroup-v1.c\00", align 1
@cgroup1_kf_syscall_ops = dso_local local_unnamed_addr global %struct.kernfs_syscall_ops { ptr @cgroup1_show_options, ptr @cgroup_mkdir, ptr @cgroup_rmdir, ptr @cgroup1_rename, ptr @cgroup_show_path }, align 4
@__initcall__kmod_cgroup_v1__261_1262_cgroup1_wq_init1 = internal global ptr @cgroup1_wq_init, section ".initcall1.init", align 4
@__setup_str_cgroup_no_v1 = internal constant [14 x i8] c"cgroup_no_v1=\00", section ".init.rodata", align 1
@__setup_cgroup_no_v1 = internal global %struct.obs_kernel_param { ptr @__setup_str_cgroup_no_v1, ptr @cgroup_no_v1, i32 0 }, section ".init.setup", align 4
@__tracepoint_cgroup_transfer_tasks = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.28 = private unnamed_addr constant [27 x i8] c"Need name or subsystem set\00", align 1
@__tracepoint_cgroup_remount = external dso_local global %struct.tracepoint, align 4
@.str.31 = private unnamed_addr constant [10 x i8] c",noprefix\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c",xattr\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c",cpuset_v2_mode\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c",clone_children\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c",= \09\0A\\\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c", \09\0A\\\00", align 1
@__tracepoint_cgroup_rename = external dso_local global %struct.tracepoint, align 4
@.str.37 = private unnamed_addr constant [75 x i8] c"\014new mount options do not match the existing superblock, will be ignored\0A\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"No subsys list or none specified\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"cgroup_pidlist_destroy\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"named\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__initcall__kmod_cgroup_v1__261_1262_cgroup1_wq_init1, ptr @__ksymtab_cgroup_attach_task_all, ptr @__setup_cgroup_no_v1], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cgroup1_ssid_disabled(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i1, ptr @cgroup_no_v1_mask, align 2
  %3 = select i1 %2, i32 65535, i32 0
  %4 = shl nuw i32 1, %0
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cgroup_attach_task_all(ptr noundef %0, ptr noundef %1) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @cgroup_mutex) #19
  tail call void @percpu_down_write(ptr noundef nonnull @cgroup_threadgroup_rwsem) #19
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ @cgroup_roots, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @cgroup_roots
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -436
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #19
  %9 = tail call ptr @task_cgroup_from_root(ptr noundef %0, ptr noundef %8) #19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !9
  %10 = load i16, ptr @css_set_lock, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #19, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !13
  %12 = tail call i32 @cgroup_attach_task(ptr noundef %9, ptr noundef %1, i1 noundef zeroext false) #19
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %3, label %14

14:                                               ; preds = %7, %3
  %15 = phi i32 [ %12, %7 ], [ 0, %3 ]
  tail call void @percpu_up_write(ptr noundef nonnull @cgroup_threadgroup_rwsem) #19
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #19
  ret i32 %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_cgroup_from_root(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_attach_task(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cgroup_transfer_tasks(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.cgroup_mgctx, align 4
  %4 = alloca %struct.css_task_iter, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #19
  %5 = getelementptr inbounds i8, ptr %3, i32 52
  store i32 0, ptr %5, align 4, !annotation !14
  store ptr %3, ptr %3, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.cgroup_mgctx, ptr %3, i32 0, i32 1
  store ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.cgroup_mgctx, ptr %3, i32 0, i32 1, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.cgroup_mgctx, ptr %3, i32 0, i32 2
  store ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.cgroup_mgctx, ptr %3, i32 0, i32 2, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.cgroup_mgctx, ptr %3, i32 0, i32 2, i32 1
  store ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cgroup_mgctx, ptr %3, i32 0, i32 2, i32 1, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.cgroup_mgctx, ptr %3, i32 0, i32 2, i32 2
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cgroup_mgctx, ptr %3, i32 0, i32 2, i32 3
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.cgroup_mgctx, ptr %3, i32 0, i32 2, i32 4
  store ptr %9, ptr %15, align 4
  %16 = getelementptr inbounds %struct.cgroup_mgctx, ptr %3, i32 0, i32 2, i32 5
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.cgroup_mgctx, ptr %3, i32 0, i32 2, i32 6
  store ptr null, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %4) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %4, i8 0, i32 52, i1 false), !annotation !14
  %18 = call zeroext i1 @cgroup_on_dfl(ptr noundef %0) #19
  br i1 %18, label %97, label %19

19:                                               ; preds = %2
  %20 = call i32 @cgroup_migrate_vet_dst(ptr noundef %0) #19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %97

22:                                               ; preds = %19
  call void @mutex_lock(ptr noundef nonnull @cgroup_mutex) #19
  call void @percpu_down_write(ptr noundef nonnull @cgroup_threadgroup_rwsem) #19
  call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #19
  %23 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 20
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %32, label %26

26:                                               ; preds = %26, %22
  %27 = phi ptr [ %30, %26 ], [ %24, %22 ]
  %28 = getelementptr i8, ptr %27, i32 -4
  %29 = load ptr, ptr %28, align 4
  call void @cgroup_migrate_add_src(ptr noundef %29, ptr noundef %0, ptr noundef nonnull %3) #19
  %30 = load ptr, ptr %27, align 4
  %31 = icmp eq ptr %30, %23
  br i1 %31, label %32, label %26

32:                                               ; preds = %26, %22
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !9
  %33 = load i16, ptr @css_set_lock, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr @css_set_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #19, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !13
  %35 = call i32 @cgroup_migrate_prepare_dst(ptr noundef nonnull %3) #19
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %95

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 11
  br label %39

39:                                               ; preds = %94, %37
  call void @css_task_iter_start(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #19
  br label %40

40:                                               ; preds = %43, %39
  %41 = call ptr @css_task_iter_next(ptr noundef nonnull %4) #19
  %42 = icmp eq ptr %41, null
  br i1 %42, label %93, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %40

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #19, !srcloc !15
  %50 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #19, !srcloc !16
  %51 = extractvalue { i32, i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53, !prof !17

53:                                               ; preds = %48
  %54 = add i32 %51, 1
  %55 = or i32 %54, %51
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %59, label %57, !prof !18

57:                                               ; preds = %53, %48
  %58 = phi i32 [ 2, %48 ], [ 1, %53 ]
  call void @refcount_warn_saturate(ptr noundef %49, i32 noundef %58) #19
  br label %59

59:                                               ; preds = %57, %53
  call void @css_task_iter_end(ptr noundef nonnull %4) #19
  %60 = call i32 @cgroup_migrate(ptr noundef nonnull %41, i1 noundef zeroext false, ptr noundef nonnull %3) #19
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %59
  %63 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_transfer_tasks, i32 0, i32 1), align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %62
  %66 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_cgroup_path_lock) #19
  %67 = load ptr, ptr %38, align 8
  %68 = call i32 @kernfs_path_from_node(ptr noundef %67, ptr noundef null, ptr noundef nonnull @trace_cgroup_path, i32 noundef 1024) #19
  %69 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_transfer_tasks, i32 0, i32 1), align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
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
  br i1 %81, label %84, label %82

82:                                               ; preds = %71
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !19
  %83 = call i32 @__traceiter_cgroup_transfer_tasks(ptr noundef null, ptr noundef %0, ptr noundef nonnull @trace_cgroup_path, ptr noundef nonnull %41, i1 noundef zeroext false) #19
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !20
  br label %84

84:                                               ; preds = %82, %71, %65
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_cgroup_path_lock, i32 noundef %66) #19
  br label %85

85:                                               ; preds = %84, %62, %59
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #19, !srcloc !15
  %86 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 1, ptr elementtype(i32) %49) #19, !srcloc !22
  %87 = extractvalue { i32, i32, i32 } %86, 0
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = icmp sgt i32 %87, 0
  br i1 %90, label %94, label %91, !prof !18

91:                                               ; preds = %89
  call void @refcount_warn_saturate(ptr noundef %49, i32 noundef 3) #19
  br label %94

92:                                               ; preds = %85
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !23
  call void @__put_task_struct(ptr noundef nonnull %41) #19
  br label %94

93:                                               ; preds = %40
  call void @css_task_iter_end(ptr noundef nonnull %4) #19
  br label %95

94:                                               ; preds = %92, %91, %89
  br i1 %61, label %39, label %95

95:                                               ; preds = %94, %93, %32
  %96 = phi i32 [ %35, %32 ], [ 0, %93 ], [ %60, %94 ]
  call void @cgroup_migrate_finish(ptr noundef nonnull %3) #19
  call void @percpu_up_write(ptr noundef nonnull @cgroup_threadgroup_rwsem) #19
  call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #19
  br label %97

97:                                               ; preds = %95, %19, %2
  %98 = phi i32 [ %96, %95 ], [ -22, %2 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #19
  ret i32 %98
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cgroup_on_dfl(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_migrate_vet_dst(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_migrate_add_src(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_migrate_prepare_dst(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @css_task_iter_start(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @css_task_iter_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @css_task_iter_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_migrate(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_migrate_finish(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup1_pidlist_destroy_all(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 30
  tail call void @mutex_lock(ptr noundef %2) #19
  %3 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %13, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %8, %6 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr @cgroup_pidlist_destroy_wq, align 4
  %10 = getelementptr i8, ptr %7, i32 12
  %11 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %9, ptr noundef %10, i32 noundef 0) #19
  %12 = icmp eq ptr %8, %3
  br i1 %12, label %13, label %6

13:                                               ; preds = %6, %1
  tail call void @mutex_unlock(ptr noundef %2) #19
  %14 = load ptr, ptr @cgroup_pidlist_destroy_wq, align 4
  tail call void @flush_workqueue(ptr noundef %14) #19
  %15 = load volatile ptr, ptr %3, align 4
  %16 = icmp eq ptr %15, %3
  br i1 %16, label %18, label %17, !prof !18

17:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup-v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #19, !srcloc !24
  unreachable

18:                                               ; preds = %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_pidlist_show(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %3) #19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @cgroup_pidlist_start(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #1 {
  %3 = alloca %struct.css_task_iter, align 4
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @of_css(ptr noundef %5) #19
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.kernfs_node, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.cftype, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load i64, ptr %1, align 8
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %struct.cgroup, ptr %9, i32 0, i32 30
  tail call void @mutex_lock(ptr noundef %18) #19
  %19 = getelementptr inbounds %struct.cgroup_file_ctx, ptr %7, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %44, label %22

22:                                               ; preds = %2
  %23 = tail call ptr @llvm.thread.pointer() #19
  %24 = tail call ptr @task_active_pid_ns(ptr noundef %23) #19
  %25 = getelementptr inbounds %struct.cgroup, ptr %9, i32 0, i32 29
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %40, label %28

28:                                               ; preds = %37, %22
  %29 = phi ptr [ %38, %37 ], [ %26, %22 ]
  %30 = getelementptr i8, ptr %29, i32 -16
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %15
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %29, i32 -12
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %24
  br i1 %36, label %41, label %37

37:                                               ; preds = %33, %28
  %38 = load ptr, ptr %29, align 4
  %39 = icmp eq ptr %38, %25
  br i1 %39, label %40, label %28

40:                                               ; preds = %37, %22
  store ptr null, ptr %19, align 4
  br label %44

41:                                               ; preds = %33
  %42 = getelementptr i8, ptr %29, i32 -16
  store ptr %42, ptr %19, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %146

44:                                               ; preds = %41, %40, %2
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %3) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %3, i8 0, i32 52, i1 false) #19, !annotation !14
  %45 = tail call i32 @cgroup_task_count(ptr noundef %9) #19
  %46 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %45, i32 4) #19
  %47 = extractvalue { i32, i1 } %46, 1
  br i1 %47, label %145, label %48, !prof !17

48:                                               ; preds = %44
  %49 = extractvalue { i32, i1 } %46, 0
  %50 = tail call noalias ptr @kvmalloc_node(i32 noundef %49, i32 noundef 3264, i32 noundef -1) #20
  %51 = icmp eq ptr %50, null
  br i1 %51, label %145, label %52

52:                                               ; preds = %48
  call void @css_task_iter_start(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %3) #19
  %53 = call ptr @css_task_iter_next(ptr noundef nonnull %3) #19
  %54 = icmp eq ptr %53, null
  %55 = icmp eq i32 %45, 0
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %74, label %57, !prof !25

57:                                               ; preds = %52
  %58 = icmp eq i32 %15, 0
  %59 = zext i1 %58 to i32
  br label %60

60:                                               ; preds = %68, %57
  %61 = phi ptr [ %53, %57 ], [ %70, %68 ]
  %62 = phi i32 [ 0, %57 ], [ %69, %68 ]
  %63 = call i32 @__task_pid_nr_ns(ptr noundef nonnull %61, i32 noundef %59, ptr noundef null) #19
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = add i32 %62, 1
  %67 = getelementptr i32, ptr %50, i32 %62
  store i32 %63, ptr %67, align 4
  br label %68

68:                                               ; preds = %65, %60
  %69 = phi i32 [ %66, %65 ], [ %62, %60 ]
  %70 = call ptr @css_task_iter_next(ptr noundef nonnull %3) #19
  %71 = icmp eq ptr %70, null
  %72 = icmp eq i32 %69, %45
  %73 = select i1 %71, i1 true, i1 %72
  br i1 %73, label %74, label %60, !prof !25

74:                                               ; preds = %68, %52
  %75 = phi i32 [ 0, %52 ], [ %69, %68 ]
  call void @css_task_iter_end(ptr noundef nonnull %3) #19
  call void @sort(ptr noundef nonnull %50, i32 noundef %75, i32 noundef 4, ptr noundef nonnull @cmppid, ptr noundef null) #19
  %76 = icmp ne i32 %15, 0
  %77 = icmp ult i32 %75, 2
  %78 = select i1 %76, i1 true, i1 %77
  br i1 %78, label %100, label %79

79:                                               ; preds = %74
  %80 = icmp sgt i32 %75, 1
  br i1 %80, label %81, label %100

81:                                               ; preds = %95, %79
  %82 = phi i32 [ %97, %95 ], [ 1, %79 ]
  %83 = phi i32 [ %98, %95 ], [ 1, %79 ]
  br label %84

84:                                               ; preds = %92, %81
  %85 = phi i32 [ %93, %92 ], [ %83, %81 ]
  %86 = getelementptr i32, ptr %50, i32 %85
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %85, -1
  %89 = getelementptr i32, ptr %50, i32 %88
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %87, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = add i32 %85, 1
  %94 = icmp eq i32 %93, %75
  br i1 %94, label %100, label %84

95:                                               ; preds = %84
  %96 = getelementptr i32, ptr %50, i32 %82
  store i32 %87, ptr %96, align 4
  %97 = add i32 %82, 1
  %98 = add i32 %85, 1
  %99 = icmp slt i32 %98, %75
  br i1 %99, label %81, label %100

100:                                              ; preds = %95, %92, %79, %74
  %101 = phi i32 [ %75, %74 ], [ 1, %79 ], [ %82, %92 ], [ %97, %95 ]
  %102 = tail call ptr @llvm.thread.pointer() #19
  %103 = call ptr @task_active_pid_ns(ptr noundef %102) #19
  %104 = getelementptr inbounds %struct.cgroup, ptr %9, i32 0, i32 29
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, %104
  br i1 %106, label %122, label %107

107:                                              ; preds = %116, %100
  %108 = phi ptr [ %117, %116 ], [ %105, %100 ]
  %109 = getelementptr i8, ptr %108, i32 -16
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, %15
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = getelementptr i8, ptr %108, i32 -12
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, %103
  br i1 %115, label %119, label %116

116:                                              ; preds = %112, %107
  %117 = load ptr, ptr %108, align 4
  %118 = icmp eq ptr %117, %104
  br i1 %118, label %122, label %107

119:                                              ; preds = %112
  %120 = getelementptr i8, ptr %108, i32 -16
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %140

122:                                              ; preds = %119, %116, %100
  %123 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %124 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %123, i32 noundef 3520, i32 noundef 72) #21
  %125 = icmp eq ptr %124, null
  br i1 %125, label %139, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.cgroup_pidlist, ptr %124, i32 0, i32 5
  store i32 -32, ptr %127, align 4
  %128 = getelementptr inbounds %struct.cgroup_pidlist, ptr %124, i32 0, i32 5, i32 0, i32 1
  store volatile ptr %128, ptr %128, align 8
  %129 = getelementptr inbounds %struct.cgroup_pidlist, ptr %124, i32 0, i32 5, i32 0, i32 1, i32 1
  store ptr %128, ptr %129, align 4
  %130 = getelementptr inbounds %struct.cgroup_pidlist, ptr %124, i32 0, i32 5, i32 0, i32 2
  store ptr @cgroup_pidlist_destroy_work_fn, ptr %130, align 8
  %131 = getelementptr inbounds %struct.cgroup_pidlist, ptr %124, i32 0, i32 5, i32 1
  call void @init_timer_key(ptr noundef %131, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #19
  store i32 %15, ptr %124, align 8
  %132 = call ptr @task_active_pid_ns(ptr noundef %102) #19
  %133 = getelementptr inbounds %struct.anon.71, ptr %124, i32 0, i32 1
  store ptr %132, ptr %133, align 4
  %134 = getelementptr inbounds %struct.cgroup_pidlist, ptr %124, i32 0, i32 4
  store ptr %9, ptr %134, align 8
  %135 = getelementptr inbounds %struct.cgroup_pidlist, ptr %124, i32 0, i32 3
  %136 = load ptr, ptr %104, align 4
  %137 = getelementptr inbounds %struct.list_head, ptr %136, i32 0, i32 1
  store ptr %135, ptr %137, align 4
  store ptr %136, ptr %135, align 8
  %138 = getelementptr inbounds %struct.cgroup_pidlist, ptr %124, i32 0, i32 3, i32 1
  store ptr %104, ptr %138, align 4
  store volatile ptr %135, ptr %104, align 4
  br label %140

139:                                              ; preds = %122
  call void @kvfree(ptr noundef nonnull %50) #19
  br label %145

140:                                              ; preds = %126, %119
  %141 = phi ptr [ %120, %119 ], [ %124, %126 ]
  %142 = getelementptr inbounds %struct.cgroup_pidlist, ptr %141, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  call void @kvfree(ptr noundef %143) #19
  store ptr %50, ptr %142, align 4
  %144 = getelementptr inbounds %struct.cgroup_pidlist, ptr %141, i32 0, i32 2
  store i32 %101, ptr %144, align 4
  store ptr %141, ptr %19, align 4
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %3) #19
  br label %146

145:                                              ; preds = %139, %48, %44
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %3) #19
  br label %177

146:                                              ; preds = %140, %41
  %147 = phi ptr [ %141, %140 ], [ %42, %41 ]
  %148 = icmp eq i32 %17, 0
  %149 = getelementptr inbounds %struct.cgroup_pidlist, ptr %147, i32 0, i32 2
  %150 = load i32, ptr %149, align 4
  br i1 %148, label %168, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.cgroup_pidlist, ptr %147, i32 0, i32 1
  br label %153

153:                                              ; preds = %157, %151
  %154 = phi i32 [ 0, %151 ], [ %166, %157 ]
  %155 = phi i32 [ %150, %151 ], [ %167, %157 ]
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %153
  %158 = add i32 %155, %154
  %159 = sdiv i32 %158, 2
  %160 = load ptr, ptr %152, align 4
  %161 = getelementptr i32, ptr %160, i32 %159
  %162 = load i32, ptr %161, align 4
  %163 = icmp eq i32 %162, %17
  %164 = icmp sgt i32 %162, %17
  %165 = add nsw i32 %159, 1
  %166 = select i1 %164, i32 %154, i32 %165
  %167 = select i1 %164, i32 %159, i32 %155
  br i1 %163, label %168, label %153

168:                                              ; preds = %157, %153, %146
  %169 = phi i32 [ 0, %146 ], [ %154, %153 ], [ %159, %157 ]
  %170 = icmp slt i32 %169, %150
  br i1 %170, label %171, label %177

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.cgroup_pidlist, ptr %147, i32 0, i32 1
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr i32, ptr %173, i32 %169
  %175 = load i32, ptr %174, align 4
  %176 = sext i32 %175 to i64
  store i64 %176, ptr %1, align 8
  br label %177

177:                                              ; preds = %171, %168, %145
  %178 = phi ptr [ %174, %171 ], [ inttoptr (i32 -12 to ptr), %145 ], [ null, %168 ]
  ret ptr %178
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @cgroup_pidlist_next(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef %2) #5 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.kernfs_open_file, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cgroup_file_ctx, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cgroup_pidlist, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.cgroup_pidlist, ptr %9, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i32, ptr %11, i32 %13
  %15 = getelementptr i32, ptr %1, i32 1
  %16 = icmp ult ptr %15, %14
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i64, ptr %2, align 8
  %19 = add i64 %18, 1
  br label %23

20:                                               ; preds = %3
  %21 = load i32, ptr %15, align 4
  %22 = sext i32 %21 to i64
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i64 [ %22, %20 ], [ %19, %17 ]
  %25 = phi ptr [ %15, %20 ], [ null, %17 ]
  store i64 %24, ptr %2, align 8
  ret ptr %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cgroup_pidlist_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.kernfs_open_file, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cgroup_file_ctx, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr @cgroup_pidlist_destroy_wq, align 4
  %12 = getelementptr inbounds %struct.cgroup_pidlist, ptr %8, i32 0, i32 5
  %13 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %11, ptr noundef %12, i32 noundef 100) #19
  %14 = load ptr, ptr %3, align 8
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi ptr [ %14, %10 ], [ %4, %2 ]
  %17 = tail call ptr @of_css(ptr noundef %16) #19
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.cgroup, ptr %18, i32 0, i32 30
  tail call void @mutex_unlock(ptr noundef %19) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup1_procs_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #1 {
  %5 = tail call fastcc i32 @__cgroup1_procs_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext true)
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i64 @cgroup_clone_children_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #6 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.cgroup, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  %8 = zext i32 %7 to i64
  ret i64 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_clone_children_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i64 noundef %2) #1 {
  %4 = icmp eq i64 %2, 0
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 1
  br i1 %4, label %8, label %7

7:                                                ; preds = %3
  tail call void @_set_bit(i32 noundef 1, ptr noundef %6) #19
  br label %9

8:                                                ; preds = %3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %6) #19
  br label %9

9:                                                ; preds = %8, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_sane_behavior_show(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.26) #19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup1_tasks_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #1 {
  %5 = tail call fastcc i32 @__cgroup1_procs_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext false)
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i64 @cgroup_read_notify_on_release(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #6 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.cgroup, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = zext i32 %6 to i64
  ret i64 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_write_notify_on_release(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i64 noundef %2) #1 {
  %4 = icmp eq i64 %2, 0
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 1
  br i1 %4, label %8, label %7

7:                                                ; preds = %3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %6) #19
  br label %9

8:                                                ; preds = %3
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %6) #19
  br label %9

9:                                                ; preds = %8, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_release_agent_show(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_css(ptr noundef %4) #19
  %6 = load ptr, ptr %5, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @release_agent_path_lock) #19
  %7 = getelementptr inbounds %struct.cgroup, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.cgroup_root, ptr %8, i32 0, i32 8
  tail call void @seq_puts(ptr noundef %0, ptr noundef %9) #19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !9
  %10 = load i16, ptr @release_agent_path_lock, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr @release_agent_path_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !26
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup_release_agent_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cgroup_namespace, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @init_user_ns
  br i1 %10, label %11, label %28

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call zeroext i1 @file_ns_capable(ptr noundef %13, ptr noundef nonnull @init_user_ns, i32 noundef 21) #19
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 4
  %17 = tail call ptr @cgroup_kn_lock_live(ptr noundef %16, i1 noundef zeroext false) #19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  tail call void @_raw_spin_lock(ptr noundef nonnull @release_agent_path_lock) #19
  %20 = getelementptr inbounds %struct.cgroup, ptr %17, i32 0, i32 19
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.cgroup_root, ptr %21, i32 0, i32 8
  %23 = tail call ptr @strim(ptr noundef %1) #19
  %24 = tail call i32 @strlcpy(ptr noundef %22, ptr noundef %23, i32 noundef 4096) #19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !9
  %25 = load i16, ptr @release_agent_path_lock, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr @release_agent_path_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !26
  %27 = load ptr, ptr %0, align 4
  tail call void @cgroup_kn_unlock(ptr noundef %27) #19
  br label %28

28:                                               ; preds = %19, %15, %11, %4
  %29 = phi i32 [ %2, %19 ], [ -1, %11 ], [ -1, %4 ], [ -19, %15 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_cgroupstats_show(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #1 {
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str) #19
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cgroupstats_build(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.css_task_iter, align 4
  %4 = tail call ptr @kernfs_node_from_dentry(ptr noundef %1) #19
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %3) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %3, i8 0, i32 52, i1 false), !annotation !14
  %5 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 32
  %9 = icmp eq ptr %8, @cgroup_fs_type
  %10 = icmp ne ptr %4, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %105

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 10
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 15
  %16 = icmp eq i16 %15, 1
  br i1 %16, label %17, label %105

17:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !27
  %18 = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 8
  %19 = load volatile ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %48, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %19, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %19, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !27
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 3
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %40, !prof !18

31:                                               ; preds = %26
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !28
  %33 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %34 = inttoptr i32 %33 to ptr
  %35 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %34) #15, !srcloc !29
  %36 = add i32 %35, %28
  %37 = inttoptr i32 %36 to ptr
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #19, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !31
  br label %49

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %19, i32 0, i32 2, i32 1
  %42 = load ptr, ptr %41, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #19, !srcloc !15
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 0, i32 1, ptr elementtype(i32) %42) #19, !srcloc !33
  %44 = extractvalue { i32, i32, i32 } %43, 0
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !31
  br label %49

47:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !31
  br label %48

48:                                               ; preds = %47, %17
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !31
  br label %105

49:                                               ; preds = %46, %31, %21
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !31
  call void @css_task_iter_start(ptr noundef nonnull %19, i32 noundef 0, ptr noundef nonnull %3) #19
  %50 = call ptr @css_task_iter_next(ptr noundef nonnull %3) #19
  %51 = icmp eq ptr %50, null
  br i1 %51, label %76, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.cgroupstats, ptr %0, i32 0, i32 2
  %54 = getelementptr inbounds %struct.cgroupstats, ptr %0, i32 0, i32 3
  %55 = getelementptr inbounds %struct.cgroupstats, ptr %0, i32 0, i32 1
  %56 = getelementptr inbounds %struct.cgroupstats, ptr %0, i32 0, i32 4
  br label %57

57:                                               ; preds = %73, %52
  %58 = phi ptr [ %50, %52 ], [ %74, %73 ]
  %59 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 1
  %60 = load volatile i32, ptr %59, align 8
  switch i32 %60, label %64 [
    i32 0, label %69
    i32 1, label %61
    i32 2, label %62
    i32 260, label %63
  ]

61:                                               ; preds = %57
  br label %69

62:                                               ; preds = %57
  br label %69

63:                                               ; preds = %57
  br label %69

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 49
  %66 = load i8, ptr %65, align 8
  %67 = and i8 %66, 4
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64, %63, %62, %61, %57
  %70 = phi ptr [ %53, %63 ], [ %54, %62 ], [ %0, %61 ], [ %55, %57 ], [ %56, %64 ]
  %71 = load i64, ptr %70, align 8
  %72 = add i64 %71, 1
  store i64 %72, ptr %70, align 8
  br label %73

73:                                               ; preds = %69, %64
  %74 = call ptr @css_task_iter_next(ptr noundef nonnull %3) #19
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %57

76:                                               ; preds = %73, %49
  call void @css_task_iter_end(ptr noundef nonnull %3) #19
  %77 = load i32, ptr %22, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %105

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %19, i32 0, i32 2
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !27
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %82, 3
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %94, !prof !18

85:                                               ; preds = %80
  %86 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !28
  %87 = call i32 @llvm.read_register.i32(metadata !0) #19
  %88 = inttoptr i32 %87 to ptr
  %89 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %88) #15, !srcloc !29
  %90 = add i32 %89, %82
  %91 = inttoptr i32 %90 to ptr
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %92, -1
  store i32 %93, ptr %91, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %86) #19, !srcloc !30
  br label %104

94:                                               ; preds = %80
  %95 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %19, i32 0, i32 2, i32 1
  %96 = load ptr, ptr %95, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !35
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %96) #19, !srcloc !15
  %97 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %96, ptr %96, i32 1, ptr elementtype(i32) %96) #19, !srcloc !36
  %98 = extractvalue { i32, i32 } %97, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !37
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104, !prof !17

100:                                              ; preds = %94
  %101 = load ptr, ptr %95, align 4
  %102 = getelementptr inbounds %struct.percpu_ref_data, ptr %101, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  call void %103(ptr noundef %81) #19
  br label %104

104:                                              ; preds = %100, %94, %85
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !31
  br label %105

105:                                              ; preds = %104, %76, %48, %12, %2
  %106 = phi i32 [ -2, %48 ], [ -22, %12 ], [ -22, %2 ], [ 0, %76 ], [ 0, %104 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %3) #19
  ret i32 %106
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_node_from_dentry(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup1_check_for_release(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  %12 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 9
  %13 = load i32, ptr %12, align 8
  %14 = sub i32 0, %13
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %6
  %17 = tail call zeroext i1 @css_has_online_children(ptr noundef %0) #19
  br i1 %17, label %27, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 32
  %25 = load ptr, ptr @system_wq, align 4
  %26 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %25, ptr noundef %24) #19
  br label %27

27:                                               ; preds = %23, %18, %16, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @css_has_online_children(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup1_release_agent(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca [3 x ptr], align 4
  %3 = alloca [3 x ptr], align 4
  %4 = getelementptr i8, ptr %0, i32 -368
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !14
  %5 = getelementptr i8, ptr %0, i32 -148
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cgroup_root, ptr %6, i32 0, i32 8
  %8 = load i8, ptr %7, align 8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 4096) #21
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 4096) #21
  %15 = icmp ne ptr %12, null
  %16 = icmp ne ptr %14, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %35

18:                                               ; preds = %10
  tail call void @_raw_spin_lock(ptr noundef nonnull @release_agent_path_lock) #19
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds %struct.cgroup_root, ptr %19, i32 0, i32 8
  %21 = tail call i32 @strlcpy(ptr noundef nonnull %14, ptr noundef %20, i32 noundef 4096) #19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !9
  %22 = load i16, ptr @release_agent_path_lock, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr @release_agent_path_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !26
  %24 = load i8, ptr %14, align 8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %18
  %27 = tail call i32 @cgroup_path_ns(ptr noundef %4, ptr noundef nonnull %12, i32 noundef 4096, ptr noundef nonnull @init_cgroup_ns) #19
  %28 = icmp ugt i32 %27, 4095
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  store ptr %14, ptr %2, align 4
  %30 = getelementptr inbounds [3 x ptr], ptr %2, i32 0, i32 1
  store ptr %12, ptr %30, align 4
  %31 = getelementptr inbounds [3 x ptr], ptr %2, i32 0, i32 2
  store ptr null, ptr %31, align 4
  store ptr @.str.2, ptr %3, align 4
  %32 = getelementptr inbounds [3 x ptr], ptr %3, i32 0, i32 1
  store ptr @.str.3, ptr %32, align 4
  %33 = getelementptr inbounds [3 x ptr], ptr %3, i32 0, i32 2
  store ptr null, ptr %33, align 4
  %34 = call i32 @call_usermodehelper(ptr noundef nonnull %14, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 1) #19
  br label %35

35:                                               ; preds = %29, %26, %18, %10
  call void @kfree(ptr noundef %14) #19
  call void @kfree(ptr noundef %12) #19
  br label %36

36:                                               ; preds = %35, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #19
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_path_ns(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_usermodehelper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cgroup1_parse_param(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.fs_parse_result, align 8
  %4 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !14
  %6 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9
  %7 = call i32 @__fs_parse(ptr noundef %6, ptr noundef nonnull @cgroup1_fs_parameters, ptr noundef %1, ptr noundef nonnull %3) #19
  %8 = icmp eq i32 %7, -519
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = call i32 @vfs_parse_fs_param_source(ptr noundef %0, ptr noundef %1) #19
  %11 = icmp eq i32 %10, -519
  br i1 %11, label %12, label %104

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %6, align 4
  %16 = load ptr, ptr %1, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %14, ptr noundef %15, i8 noundef zeroext 101, ptr noundef nonnull @.str.13, ptr noundef %16) #19
  br label %104

17:                                               ; preds = %2
  %18 = icmp slt i32 %7, 0
  br i1 %18, label %104, label %19

19:                                               ; preds = %17
  switch i32 %7, label %104 [
    i32 4, label %20
    i32 0, label %22
    i32 5, label %24
    i32 1, label %28
    i32 2, label %30
    i32 7, label %34
    i32 6, label %38
    i32 3, label %59
  ]

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.cgroup_fs_context, ptr %5, i32 0, i32 5
  store i8 1, ptr %21, align 1
  br label %104

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.cgroup_fs_context, ptr %5, i32 0, i32 6
  store i8 1, ptr %23, align 2
  br label %104

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.cgroup_fs_context, ptr %5, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, 2
  store i32 %27, ptr %25, align 4
  br label %104

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.cgroup_fs_context, ptr %5, i32 0, i32 4
  store i8 1, ptr %29, align 4
  br label %104

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.cgroup_fs_context, ptr %5, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, 16
  store i32 %33, ptr %31, align 4
  br label %104

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.cgroup_fs_context, ptr %5, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, 4
  store i32 %37, ptr %35, align 4
  br label %104

38:                                               ; preds = %19
  %39 = getelementptr inbounds %struct.cgroup_fs_context, ptr %5, i32 0, i32 9
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %6, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %44, ptr noundef %45, i8 noundef zeroext 101, ptr noundef nonnull @.str.14) #19
  br label %104

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 6
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, @init_user_ns
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call zeroext i1 @capable(i32 noundef 21) #19
  br i1 %51, label %56, label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %6, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %54, ptr noundef %55, i8 noundef zeroext 101, ptr noundef nonnull @.str.15) #19
  br label %104

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  store ptr %58, ptr %39, align 4
  store ptr null, ptr %57, align 4
  br label %104

59:                                               ; preds = %19
  %60 = load i1, ptr @cgroup_no_v1_named, align 1
  br i1 %60, label %104, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = load ptr, ptr %6, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %67, ptr noundef %68, i8 noundef zeroext 101, ptr noundef nonnull @.str.16) #19
  br label %104

69:                                               ; preds = %61
  %70 = icmp ugt i32 %63, 63
  br i1 %70, label %74, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  br label %78

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = load ptr, ptr %6, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %76, ptr noundef %77, i8 noundef zeroext 101, ptr noundef nonnull @.str.17) #19
  br label %104

78:                                               ; preds = %92, %71
  %79 = phi i32 [ %93, %92 ], [ 0, %71 ]
  %80 = getelementptr i8, ptr %73, i32 %79
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %82
  %84 = load i8, ptr %83, align 1
  %85 = and i8 %84, 7
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %78
  switch i8 %81, label %88 [
    i8 95, label %92
    i8 46, label %92
    i8 45, label %92
  ]

88:                                               ; preds = %87
  %89 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = load ptr, ptr %6, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %90, ptr noundef %91, i8 noundef zeroext 101, ptr noundef nonnull @.str.18) #19
  br label %104

92:                                               ; preds = %87, %87, %87, %78
  %93 = add nuw i32 %79, 1
  %94 = icmp eq i32 %93, %63
  br i1 %94, label %95, label %78

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.cgroup_fs_context, ptr %5, i32 0, i32 8
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = load ptr, ptr %6, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %101, ptr noundef %102, i8 noundef zeroext 101, ptr noundef nonnull @.str.19) #19
  br label %104

103:                                              ; preds = %95
  store ptr %73, ptr %96, align 4
  store ptr null, ptr %72, align 4
  br label %104

104:                                              ; preds = %103, %99, %88, %74, %65, %59, %56, %52, %42, %34, %30, %28, %24, %22, %20, %19, %17, %12, %9
  %105 = phi i32 [ -22, %74 ], [ -22, %99 ], [ -22, %65 ], [ -22, %42 ], [ -22, %52 ], [ -22, %12 ], [ %10, %9 ], [ %7, %17 ], [ -2, %59 ], [ -22, %88 ], [ 0, %19 ], [ 0, %103 ], [ 0, %56 ], [ 0, %34 ], [ 0, %30 ], [ 0, %28 ], [ 0, %24 ], [ 0, %22 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_parse_fs_param_source(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cgroup1_reconfigure(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @kernfs_root_from_sb(ptr noundef %7) #19
  %9 = tail call ptr @cgroup_root_from_kf(ptr noundef %8) #19
  tail call void @cgroup_lock_and_drain_offline(ptr noundef getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 3)) #19
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.cgroup_fs_context, ptr %10, i32 0, i32 7
  store i16 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cgroup_fs_context, ptr %10, i32 0, i32 5
  %13 = load i8, ptr %12, align 1, !range !38
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.cgroup_fs_context, ptr %10, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cgroup_fs_context, ptr %10, i32 0, i32 6
  store i8 1, ptr %20, align 2
  br label %21

21:                                               ; preds = %19, %15, %1
  %22 = getelementptr inbounds %struct.cgroup_fs_context, ptr %10, i32 0, i32 6
  %23 = load i8, ptr %22, align 2, !range !38
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i16 0, ptr %11, align 4
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.cgroup_fs_context, ptr %10, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9
  %32 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %31, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %33, ptr noundef %34, i8 noundef zeroext 101, ptr noundef nonnull @.str.28) #19
  br label %123

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.cgroup_fs_context, ptr %3, i32 0, i32 7
  %37 = load i16, ptr %36, align 4
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds %struct.cgroup_root, ptr %9, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, %38
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.cgroup_fs_context, ptr %3, i32 0, i32 9
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %42, %35
  %47 = tail call ptr @llvm.thread.pointer() #19
  %48 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 53
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 85
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %49, ptr noundef %50) #22
  %52 = load i16, ptr %36, align 4
  %53 = load i32, ptr %39, align 4
  %54 = zext i16 %52 to i32
  br label %55

55:                                               ; preds = %46, %42
  %56 = phi i32 [ %54, %46 ], [ %38, %42 ]
  %57 = phi i32 [ %53, %46 ], [ %38, %42 ]
  %58 = phi i16 [ %52, %46 ], [ %37, %42 ]
  %59 = trunc i32 %57 to i16
  %60 = xor i16 %59, -1
  %61 = and i16 %58, %60
  %62 = xor i32 %56, -1
  %63 = and i32 %57, %62
  %64 = trunc i32 %63 to i16
  %65 = getelementptr inbounds %struct.cgroup_fs_context, ptr %3, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.cgroup_root, ptr %9, i32 0, i32 7
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %66, %68
  %70 = getelementptr inbounds %struct.cgroup_fs_context, ptr %3, i32 0, i32 8
  %71 = load ptr, ptr %70, align 4
  br i1 %69, label %72, label %78

72:                                               ; preds = %55
  %73 = icmp eq ptr %71, null
  br i1 %73, label %86, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.cgroup_root, ptr %9, i32 0, i32 9
  %76 = tail call i32 @strcmp(ptr noundef nonnull %71, ptr noundef %75)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %74, %55
  %79 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9
  %80 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = load ptr, ptr %79, align 4
  %83 = icmp eq ptr %71, null
  %84 = select i1 %83, ptr @.str.22, ptr %71
  %85 = getelementptr inbounds %struct.cgroup_root, ptr %9, i32 0, i32 9
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %81, ptr noundef %82, i8 noundef zeroext 101, ptr noundef nonnull @.str.21, i32 noundef %66, ptr noundef %84, i32 noundef %68, ptr noundef %85) #19
  br label %123

86:                                               ; preds = %74, %72
  %87 = getelementptr inbounds %struct.cgroup_root, ptr %9, i32 0, i32 3, i32 0, i32 4
  %88 = load volatile ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, %87
  br i1 %89, label %90, label %123

90:                                               ; preds = %86
  %91 = tail call i32 @rebind_subsystems(ptr noundef %9, i16 noundef zeroext %61) #19
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %123

93:                                               ; preds = %90
  %94 = tail call i32 @rebind_subsystems(ptr noundef nonnull @cgrp_dfl_root, i16 noundef zeroext %64) #19
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96, !prof !18

96:                                               ; preds = %93
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 1099, i32 noundef 9, ptr noundef null) #19
  br label %97

97:                                               ; preds = %96, %93
  %98 = getelementptr inbounds %struct.cgroup_fs_context, ptr %3, i32 0, i32 9
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  tail call void @_raw_spin_lock(ptr noundef nonnull @release_agent_path_lock) #19
  %102 = getelementptr inbounds %struct.cgroup_root, ptr %9, i32 0, i32 8
  %103 = load ptr, ptr %98, align 4
  %104 = tail call ptr @strcpy(ptr noundef %102, ptr noundef %103)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !9
  %105 = load i16, ptr @release_agent_path_lock, align 4
  %106 = add i16 %105, 1
  store i16 %106, ptr @release_agent_path_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !26
  br label %107

107:                                              ; preds = %101, %97
  %108 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_remount, i32 0, i32 1), align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %107
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
  br i1 %120, label %123, label %121

121:                                              ; preds = %110
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !39
  %122 = tail call i32 @__traceiter_cgroup_remount(ptr noundef null, ptr noundef %9) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !40
  br label %123

123:                                              ; preds = %121, %110, %107, %90, %86, %78, %30
  %124 = phi i32 [ -22, %30 ], [ -22, %78 ], [ %91, %90 ], [ -16, %86 ], [ 0, %107 ], [ 0, %110 ], [ 0, %121 ]
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #19
  ret i32 %124
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_root_from_sb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_root_from_kf(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_lock_and_drain_offline(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rebind_subsystems(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup1_show_options(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call ptr @cgroup_root_from_kf(ptr noundef %1) #19
  %4 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.31) #19
  %9 = load i32, ptr %4, align 4
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ %5, %2 ]
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.32) #19
  %15 = load i32, ptr %4, align 4
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi i32 [ %15, %14 ], [ %11, %10 ]
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.33) #19
  br label %21

21:                                               ; preds = %20, %16
  tail call void @_raw_spin_lock(ptr noundef nonnull @release_agent_path_lock) #19
  %22 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 8
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 44) #19
  tail call void @seq_escape_mem(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef 13, i32 noundef 8, ptr noundef nonnull @.str.35) #19
  %26 = icmp eq ptr %22, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 61) #19
  %28 = tail call i32 @strlen(ptr noundef nonnull %22) #19
  tail call void @seq_escape_mem(ptr noundef %0, ptr noundef nonnull %22, i32 noundef %28, i32 noundef 8, ptr noundef nonnull @.str.36) #19
  br label %29

29:                                               ; preds = %27, %25, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !9
  %30 = load i16, ptr @release_agent_path_lock, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr @release_agent_path_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !26
  %32 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 3, i32 1
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.34) #19
  br label %37

37:                                               ; preds = %36, %29
  %38 = getelementptr inbounds %struct.cgroup_root, ptr %3, i32 0, i32 9
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 44) #19
  tail call void @seq_escape_mem(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 4, i32 noundef 8, ptr noundef nonnull @.str.35) #19
  %42 = icmp eq ptr %38, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %41
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 61) #19
  %44 = tail call i32 @strlen(ptr noundef nonnull %38) #19
  tail call void @seq_escape_mem(ptr noundef %0, ptr noundef nonnull %38, i32 noundef %44, i32 noundef 8, ptr noundef nonnull @.str.36) #19
  br label %45

45:                                               ; preds = %43, %41, %37
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_mkdir(ptr noundef, ptr noundef, i16 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_rmdir(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cgroup1_rename(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @strchr(ptr noundef %2, i32 noundef 10)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 10
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, 15
  %12 = icmp eq i16 %11, 1
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  tail call void @kernfs_break_active_protection(ptr noundef %1) #19
  tail call void @kernfs_break_active_protection(ptr noundef %0) #19
  tail call void @mutex_lock(ptr noundef nonnull @cgroup_mutex) #19
  %18 = tail call i32 @kernfs_rename_ns(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null) #19
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_rename, i32 0, i32 1), align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_cgroup_path_lock) #19
  %25 = getelementptr inbounds %struct.cgroup, ptr %5, i32 0, i32 11
  %26 = load ptr, ptr %25, align 8
  %27 = tail call i32 @kernfs_path_from_node(ptr noundef %26, ptr noundef null, ptr noundef nonnull @trace_cgroup_path, i32 noundef 1024) #19
  tail call fastcc void @trace_cgroup_rename(ptr noundef %5)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_cgroup_path_lock, i32 noundef %24) #19
  br label %28

28:                                               ; preds = %23, %20, %17
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #19
  tail call void @kernfs_unbreak_active_protection(ptr noundef %0) #19
  tail call void @kernfs_unbreak_active_protection(ptr noundef %1) #19
  br label %29

29:                                               ; preds = %28, %13, %8, %3
  %30 = phi i32 [ %18, %28 ], [ -22, %3 ], [ -20, %8 ], [ -5, %13 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_show_path(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cgroup1_get_tree(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cgroup_fs_context, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cgroup_namespace, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 @ns_capable(ptr noundef %7, i32 noundef 21) #19
  br i1 %8, label %9, label %129

9:                                                ; preds = %1
  tail call void @cgroup_lock_and_drain_offline(ptr noundef getelementptr inbounds (%struct.cgroup_root, ptr @cgrp_dfl_root, i32 0, i32 3)) #19
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.cgroup_fs_context, ptr %10, i32 0, i32 7
  store i16 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cgroup_fs_context, ptr %10, i32 0, i32 5
  %13 = load i8, ptr %12, align 1, !range !38
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.cgroup_fs_context, ptr %10, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cgroup_fs_context, ptr %10, i32 0, i32 6
  store i8 1, ptr %20, align 2
  br label %21

21:                                               ; preds = %19, %15, %9
  %22 = getelementptr inbounds %struct.cgroup_fs_context, ptr %10, i32 0, i32 6
  %23 = load i8, ptr %22, align 2, !range !38
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i16 0, ptr %11, align 4
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.cgroup_fs_context, ptr %10, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @cgroup_roots, align 4
  %32 = icmp eq ptr %31, @cgroup_roots
  br i1 %32, label %64, label %38

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9
  %35 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %34, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %36, ptr noundef %37, i8 noundef zeroext 101, ptr noundef nonnull @.str.28) #19
  br label %112

38:                                               ; preds = %51, %30
  %39 = phi ptr [ %52, %51 ], [ %31, %30 ]
  %40 = getelementptr i8, ptr %39, i32 -436
  %41 = icmp eq ptr %40, @cgrp_dfl_root
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %39, i32 4108
  %44 = tail call i32 @strcmp(ptr noundef nonnull %28, ptr noundef %43) #19
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  br i1 %14, label %54, label %47

47:                                               ; preds = %46
  %48 = getelementptr i8, ptr %39, i32 -432
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %112

51:                                               ; preds = %42, %38
  %52 = load ptr, ptr %39, align 4
  %53 = icmp eq ptr %52, @cgroup_roots
  br i1 %53, label %64, label %38

54:                                               ; preds = %47, %46
  %55 = getelementptr i8, ptr %39, i32 8
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.cgroup_fs_context, ptr %10, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #22
  br label %62

62:                                               ; preds = %60, %54
  %63 = getelementptr inbounds %struct.cgroup_fs_context, ptr %10, i32 0, i32 1
  store ptr %40, ptr %63, align 4
  br label %84

64:                                               ; preds = %51, %30
  br i1 %14, label %65, label %70

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9
  %67 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %66, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %68, ptr noundef %69, i8 noundef zeroext 101, ptr noundef nonnull @.str.38) #19
  br label %112

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.cgroup_fs_context, ptr %10, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, @init_cgroup_ns
  br i1 %73, label %74, label %112

74:                                               ; preds = %70
  %75 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %76 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3520, i32 noundef 4608) #21
  %77 = icmp eq ptr %76, null
  br i1 %77, label %112, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.cgroup_fs_context, ptr %10, i32 0, i32 1
  store ptr %76, ptr %79, align 4
  tail call void @init_cgroup_root(ptr noundef %10) #19
  %80 = load i16, ptr %11, align 4
  %81 = tail call i32 @cgroup_setup_root(ptr noundef nonnull %76, i16 noundef zeroext %80) #19
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  tail call void @cgroup_free_root(ptr noundef nonnull %76) #19
  br label %112

84:                                               ; preds = %78, %62
  %85 = getelementptr inbounds %struct.cgroup_fs_context, ptr %3, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.cgroup_root, ptr %86, i32 0, i32 3, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !27
  %88 = load volatile i32, ptr %87, align 4
  %89 = and i32 %88, 3
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %100, !prof !18

91:                                               ; preds = %84
  %92 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !28
  %93 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %94 = inttoptr i32 %93 to ptr
  %95 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %94) #15, !srcloc !29
  %96 = add i32 %95, %88
  %97 = inttoptr i32 %96 to ptr
  %98 = load i32, ptr %97, align 4
  %99 = add i32 %98, 1
  store i32 %99, ptr %97, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %92) #19, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !31
  br label %114

100:                                              ; preds = %84
  %101 = and i32 %88, 2
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !31
  br label %112

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.cgroup_root, ptr %86, i32 0, i32 3, i32 0, i32 2, i32 1
  %106 = load ptr, ptr %105, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %106) #19, !srcloc !15
  %107 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %106, ptr %106, i32 0, i32 1, ptr elementtype(i32) %106) #19, !srcloc !33
  %108 = extractvalue { i32, i32, i32 } %107, 0
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %104
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !31
  br label %114

111:                                              ; preds = %104
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !31
  br label %112

112:                                              ; preds = %111, %103, %83, %74, %70, %65, %47, %33
  %113 = phi i32 [ 1, %103 ], [ 1, %111 ], [ -16, %47 ], [ -22, %33 ], [ %81, %83 ], [ -12, %74 ], [ -1, %70 ], [ -22, %65 ]
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #19
  br label %124

114:                                              ; preds = %110, %91
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #19
  %115 = tail call i32 @cgroup_do_get_tree(ptr noundef %0) #19
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load ptr, ptr %85, align 4
  %119 = getelementptr inbounds %struct.cgroup_root, ptr %118, i32 0, i32 3, i32 0, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = and i32 %120, 2
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %117
  tail call void @fc_drop_locked(ptr noundef %0) #19
  br label %127

124:                                              ; preds = %114, %112
  %125 = phi i32 [ %115, %114 ], [ %113, %112 ]
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %129, !prof !17

127:                                              ; preds = %124, %123
  tail call void @msleep(i32 noundef 10) #19
  %128 = tail call ptr @llvm.thread.pointer() #19
  tail call void @_set_bit(i32 noundef 0, ptr noundef %128) #19
  br label %129

129:                                              ; preds = %127, %124, %117, %1
  %130 = phi i32 [ -513, %127 ], [ -1, %1 ], [ %125, %124 ], [ 0, %117 ]
  ret i32 %130
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_do_get_tree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_drop_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cgroup1_wq_init() #11 section ".init.text" {
  %1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef 1) #19
  store ptr %1, ptr @cgroup_pidlist_destroy_wq, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !17

3:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cgroup/cgroup-v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1259, 0\0A.popsection", ""() #19, !srcloc !41
  unreachable

4:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cgroup_no_v1(ptr noundef %0) #11 section ".init.text" {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.41) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %13, %1
  %6 = phi ptr [ %14, %13 ], [ %3, %1 ]
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = call i32 @strcmp(ptr noundef nonnull %6, ptr noundef nonnull dereferenceable(4) @.str.4)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  store i1 true, ptr @cgroup_no_v1_mask, align 2
  br label %13

13:                                               ; preds = %19, %16, %12, %5
  %14 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.41) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %5

16:                                               ; preds = %9
  %17 = call i32 @strcmp(ptr noundef nonnull %6, ptr noundef nonnull dereferenceable(6) @.str.42)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %13

19:                                               ; preds = %16
  store i1 true, ptr @cgroup_no_v1_named, align 1
  br label %13

20:                                               ; preds = %13, %1
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_path_from_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cgroup_transfer_tasks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_css(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_task_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @cmppid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = load i32, ptr %0, align 4
  %4 = load i32, ptr %1, align 4
  %5 = sub i32 %3, %4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cgroup_pidlist_destroy_work_fn(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cgroup, ptr %3, i32 0, i32 30
  tail call void @mutex_lock(ptr noundef %4) #19
  %5 = load volatile i32, ptr %0, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -28
  %10 = getelementptr i8, ptr %0, i32 -12
  %11 = getelementptr i8, ptr %0, i32 -8
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  %15 = getelementptr i8, ptr %0, i32 -20
  %16 = load ptr, ptr %15, align 4
  tail call void @kvfree(ptr noundef %16) #19
  br label %17

17:                                               ; preds = %8, %1
  %18 = phi ptr [ null, %1 ], [ %9, %8 ]
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr inbounds %struct.cgroup, ptr %19, i32 0, i32 30
  tail call void @mutex_unlock(ptr noundef %20) #19
  tail call void @kfree(ptr noundef %18) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__cgroup1_procs_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #1 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #19
  store i8 0, ptr %5, align 1, !annotation !14
  %6 = load ptr, ptr %0, align 4
  %7 = tail call ptr @cgroup_kn_lock_live(ptr noundef %6, i1 noundef zeroext false) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %4
  %10 = call ptr @cgroup_procs_write_start(ptr noundef %1, i1 noundef zeroext %3, ptr noundef nonnull %5) #19
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %12 = ptrtoint ptr %10 to i32
  br i1 %11, label %47, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 12
  %17 = load ptr, ptr %16, align 8
  %18 = call ptr @get_task_cred(ptr noundef %10) #19
  %19 = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.cred, ptr %18, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %20, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.cred, ptr %18, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %20, %28
  %30 = select i1 %29, i32 0, i32 -13
  br label %31

31:                                               ; preds = %26, %22, %13
  %32 = phi i1 [ true, %22 ], [ true, %13 ], [ %29, %26 ]
  %33 = phi i32 [ 0, %22 ], [ 0, %13 ], [ %30, %26 ]
  %34 = icmp eq ptr %18, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !35
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %18) #19, !srcloc !15
  %36 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %18, ptr nonnull %18, i32 1, ptr nonnull elementtype(i32) %18) #19, !srcloc !36
  %37 = extractvalue { i32, i32 } %36, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !37
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  call void @__put_cred(ptr noundef nonnull %18) #19
  br label %40

40:                                               ; preds = %39, %35, %31
  br i1 %32, label %41, label %43

41:                                               ; preds = %40
  %42 = call i32 @cgroup_attach_task(ptr noundef nonnull %7, ptr noundef %10, i1 noundef zeroext %3) #19
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i32 [ %33, %40 ], [ %42, %41 ]
  %45 = load i8, ptr %5, align 1, !range !38
  %46 = icmp ne i8 %45, 0
  call void @cgroup_procs_write_finish(ptr noundef %10, i1 noundef zeroext %46) #19
  br label %47

47:                                               ; preds = %43, %9
  %48 = phi i32 [ %12, %9 ], [ %44, %43 ]
  %49 = load ptr, ptr %0, align 4
  call void @cgroup_kn_unlock(ptr noundef %49) #19
  %50 = icmp eq i32 %48, 0
  %51 = select i1 %50, i32 %2, i32 %48
  br label %52

52:                                               ; preds = %47, %4
  %53 = phi i32 [ %51, %47 ], [ -19, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_kn_lock_live(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cgroup_procs_write_start(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_procs_write_finish(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_kn_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @file_ns_capable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #15

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cgroup_remount(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_escape_mem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_break_active_protection(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_cgroup_rename(ptr noundef %0) unnamed_addr #18 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_rename, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #19
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !42
  %16 = tail call i32 @__traceiter_cgroup_rename(ptr noundef null, ptr noundef %0, ptr noundef nonnull @trace_cgroup_path) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !43
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_unbreak_active_protection(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_rename_ns(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cgroup_rename(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_cgroup_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_setup_root(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_free_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind readonly }
attributes #16 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #18 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { cold nounwind }

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
!9 = !{i64 2149235654}
!10 = !{i64 2149231478}
!11 = !{i64 2149231553, i64 2149231580, i64 2149231627, i64 2149231649, i64 2149231677, i64 2149231697}
!12 = !{i64 616433}
!13 = !{i64 2149259798}
!14 = !{!"auto-init"}
!15 = !{i64 587441, i64 2148089007, i64 2148089033, i64 2148089080, i64 2148089102, i64 2148089130, i64 2148089150}
!16 = !{i64 2148153727, i64 2148153759, i64 2148153788, i64 2148153822, i64 2148153853, i64 2148153876}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2153410000}
!20 = !{i64 2153410220}
!21 = !{i64 2148253949}
!22 = !{i64 2148156084, i64 2148156116, i64 2148156145, i64 2148156179, i64 2148156210, i64 2148156233}
!23 = !{i64 2149309569}
!24 = !{i64 2153478167, i64 2153478657, i64 2153478204, i64 2153478260, i64 2153478294, i64 2153478318, i64 2153478359, i64 2153478380, i64 2153478408, i64 2153478442}
!25 = !{!"branch_weights", i32 2002, i32 2000}
!26 = !{i64 2149258657}
!27 = !{i64 2149009455}
!28 = !{i64 616188, i64 616249}
!29 = !{i64 623293}
!30 = !{i64 619205}
!31 = !{i64 2149009672}
!32 = !{i64 2148151776}
!33 = !{i64 574010, i64 574035, i64 574057, i64 574073, i64 574085, i64 574105, i64 574129, i64 574145, i64 574157}
!34 = !{i64 2148151902}
!35 = !{i64 2148252948}
!36 = !{i64 2148155310, i64 2148155342, i64 2148155371, i64 2148155405, i64 2148155436, i64 2148155459}
!37 = !{i64 2148253151}
!38 = !{i8 0, i8 2}
!39 = !{i64 2153270929}
!40 = !{i64 2153271077}
!41 = !{i64 2153510212, i64 2153510703, i64 2153510249, i64 2153510305, i64 2153510339, i64 2153510363, i64 2153510404, i64 2153510425, i64 2153510453, i64 2153510487}
!42 = !{i64 2153338867}
!43 = !{i64 2153339025}
