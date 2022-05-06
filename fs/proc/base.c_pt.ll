; ModuleID = '/llk/IR/fs/proc/base.c_pt.bc'
source_filename = "../fs/proc/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.67, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pid_entry = type { ptr, i32, i16, ptr, ptr, %union.proc_op }
%union.proc_op = type { ptr }
%struct.limit_names = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.56 }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.19, %struct.list_head, %struct.list_head, %union.anon.20 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.11, ptr }
%union.anon.11 = type { i64 }
%struct.lockref = type { %union.anon.13 }
%union.anon.13 = type { i64 }
%union.anon.19 = type { %struct.list_head }
%union.anon.20 = type { %struct.hlist_node }
%struct.anon.1 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.file = type { %union.anon.10, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.10 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.34 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.34 = type { %struct.callback_head }
%struct.proc_inode = type { ptr, i32, %union.proc_op, ptr, ptr, ptr, %struct.hlist_node, ptr, %struct.inode }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.70 = type { %struct.callback_head }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.72 = type { ptr }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.upid = type { i32, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.proc_fs_info = type { ptr, ptr, ptr, %struct.kgid_t, i32, i32 }
%struct.anon.12 = type { i32, i32 }
%struct.dir_context = type { ptr, i64 }
%struct.tgid_iter = type { i32, ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.syscall_info = type { i64, %struct.seccomp_data }
%struct.seccomp_data = type { i32, i32, i64, [6 x i64] }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.2, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.anon.77 = type { %struct.__genradix, [0 x %struct.map_files_info] }
%struct.__genradix = type { ptr }
%struct.map_files_info = type { i32, i32, i32 }

@init_user_ns = external dso_local global %struct.user_namespace, align 4
@proc_pid_link_inode_operations = dso_local constant %struct.inode_operations { ptr null, ptr @proc_pid_get_link, ptr null, ptr null, ptr @proc_pid_readlink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@proc_def_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@pid_dentry_operations = dso_local constant %struct.dentry_operations { ptr @pid_revalidate, ptr null, ptr null, ptr null, ptr @pid_delete_dentry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [12 x i8] undef }, align 64
@proc_tgid_base_operations = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_tgid_base_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"thread-self\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@tid_base_stuff = internal constant [32 x %struct.pid_entry] [%struct.pid_entry { ptr @.str.8, i32 2, i16 16704, ptr @proc_fd_inode_operations, ptr @proc_fd_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.9, i32 6, i16 16749, ptr @proc_fdinfo_inode_operations, ptr @proc_fdinfo_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.10, i32 2, i16 16713, ptr @proc_ns_dir_inode_operations, ptr @proc_ns_dir_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.11, i32 3, i16 16749, ptr @proc_net_inode_operations, ptr @proc_net_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.12, i32 7, i16 -32512, ptr null, ptr @proc_environ_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.13, i32 4, i16 -32512, ptr null, ptr @proc_auxv_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.14, i32 6, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_status } }, %struct.pid_entry { ptr @.str.15, i32 11, i16 -32512, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_personality } }, %struct.pid_entry { ptr @.str.16, i32 6, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_limits } }, %struct.pid_entry { ptr @.str.17, i32 5, i16 -32348, ptr null, ptr @proc_pid_sched_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.18, i32 4, i16 -32348, ptr @proc_tid_comm_inode_operations, ptr @proc_pid_set_comm_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.19, i32 7, i16 -32512, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_syscall } }, %struct.pid_entry { ptr @.str.20, i32 7, i16 -32476, ptr null, ptr @proc_pid_cmdline_ops, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.21, i32 4, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_tid_stat } }, %struct.pid_entry { ptr @.str.22, i32 5, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_statm } }, %struct.pid_entry { ptr @.str.23, i32 4, i16 -32476, ptr null, ptr @proc_pid_maps_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.24, i32 3, i16 -32384, ptr null, ptr @proc_mem_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.25, i32 3, i16 -24065, ptr @proc_pid_link_inode_operations, ptr null, %union.proc_op { ptr @proc_cwd_link } }, %struct.pid_entry { ptr @.str.26, i32 4, i16 -24065, ptr @proc_pid_link_inode_operations, ptr null, %union.proc_op { ptr @proc_root_link } }, %struct.pid_entry { ptr @.str.27, i32 3, i16 -24065, ptr @proc_pid_link_inode_operations, ptr null, %union.proc_op { ptr @proc_exe_link } }, %struct.pid_entry { ptr @.str.28, i32 6, i16 -32476, ptr null, ptr @proc_mounts_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.29, i32 9, i16 -32476, ptr null, ptr @proc_mountinfo_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.30, i32 10, i16 -32640, ptr null, ptr @proc_clear_refs_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.31, i32 5, i16 -32476, ptr null, ptr @proc_pid_smaps_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.32, i32 12, i16 -32476, ptr null, ptr @proc_pid_smaps_rollup_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.33, i32 7, i16 -32512, ptr null, ptr @proc_pagemap_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.34, i32 5, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_wchan } }, %struct.pid_entry { ptr @.str.35, i32 5, i16 -32512, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_stack } }, %struct.pid_entry { ptr @.str.36, i32 6, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_cgroup_show } }, %struct.pid_entry { ptr @.str.37, i32 9, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_oom_score } }, %struct.pid_entry { ptr @.str.38, i32 7, i16 -32348, ptr null, ptr @proc_oom_adj_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.39, i32 13, i16 -32348, ptr null, ptr @proc_oom_score_adj_operations, %union.proc_op zeroinitializer }], align 4
@nlink_tid = internal unnamed_addr global i1 false, section ".data..ro_after_init", align 1
@tgid_base_stuff = internal constant [37 x %struct.pid_entry] [%struct.pid_entry { ptr @.str.80, i32 4, i16 16749, ptr @proc_task_inode_operations, ptr @proc_task_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.8, i32 2, i16 16704, ptr @proc_fd_inode_operations, ptr @proc_fd_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.81, i32 9, i16 16704, ptr @proc_map_files_inode_operations, ptr @proc_map_files_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.9, i32 6, i16 16749, ptr @proc_fdinfo_inode_operations, ptr @proc_fdinfo_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.10, i32 2, i16 16713, ptr @proc_ns_dir_inode_operations, ptr @proc_ns_dir_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.11, i32 3, i16 16749, ptr @proc_net_inode_operations, ptr @proc_net_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.12, i32 7, i16 -32512, ptr null, ptr @proc_environ_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.13, i32 4, i16 -32512, ptr null, ptr @proc_auxv_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.14, i32 6, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_status } }, %struct.pid_entry { ptr @.str.15, i32 11, i16 -32512, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_personality } }, %struct.pid_entry { ptr @.str.16, i32 6, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_limits } }, %struct.pid_entry { ptr @.str.17, i32 5, i16 -32348, ptr null, ptr @proc_pid_sched_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.18, i32 4, i16 -32348, ptr null, ptr @proc_pid_set_comm_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.19, i32 7, i16 -32512, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_syscall } }, %struct.pid_entry { ptr @.str.20, i32 7, i16 -32476, ptr null, ptr @proc_pid_cmdline_ops, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.21, i32 4, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_tgid_stat } }, %struct.pid_entry { ptr @.str.22, i32 5, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_statm } }, %struct.pid_entry { ptr @.str.23, i32 4, i16 -32476, ptr null, ptr @proc_pid_maps_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.24, i32 3, i16 -32384, ptr null, ptr @proc_mem_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.25, i32 3, i16 -24065, ptr @proc_pid_link_inode_operations, ptr null, %union.proc_op { ptr @proc_cwd_link } }, %struct.pid_entry { ptr @.str.26, i32 4, i16 -24065, ptr @proc_pid_link_inode_operations, ptr null, %union.proc_op { ptr @proc_root_link } }, %struct.pid_entry { ptr @.str.27, i32 3, i16 -24065, ptr @proc_pid_link_inode_operations, ptr null, %union.proc_op { ptr @proc_exe_link } }, %struct.pid_entry { ptr @.str.28, i32 6, i16 -32476, ptr null, ptr @proc_mounts_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.29, i32 9, i16 -32476, ptr null, ptr @proc_mountinfo_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.82, i32 10, i16 -32512, ptr null, ptr @proc_mountstats_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.30, i32 10, i16 -32640, ptr null, ptr @proc_clear_refs_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.31, i32 5, i16 -32476, ptr null, ptr @proc_pid_smaps_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.32, i32 12, i16 -32476, ptr null, ptr @proc_pid_smaps_rollup_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.33, i32 7, i16 -32512, ptr null, ptr @proc_pagemap_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.34, i32 5, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_wchan } }, %struct.pid_entry { ptr @.str.35, i32 5, i16 -32512, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_pid_stack } }, %struct.pid_entry { ptr @.str.36, i32 6, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_cgroup_show } }, %struct.pid_entry { ptr @.str.37, i32 9, i16 -32476, ptr null, ptr @proc_single_file_operations, %union.proc_op { ptr @proc_oom_score } }, %struct.pid_entry { ptr @.str.38, i32 7, i16 -32348, ptr null, ptr @proc_oom_adj_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.39, i32 13, i16 -32348, ptr null, ptr @proc_oom_score_adj_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.83, i32 15, i16 -32348, ptr null, ptr @proc_coredump_filter_operations, %union.proc_op zeroinitializer }, %struct.pid_entry { ptr @.str.84, i32 13, i16 -32330, ptr null, ptr @proc_pid_set_timerslack_ns_operations, %union.proc_op zeroinitializer }], align 4
@nlink_tgid = internal unnamed_addr global i1 false, section ".data..ro_after_init", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@proc_tgid_base_inode_operations = internal constant %struct.inode_operations { ptr @proc_tgid_base_lookup, ptr null, ptr @proc_pid_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr @pid_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@.str.8 = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@proc_fd_inode_operations = external dso_local constant %struct.inode_operations, align 64
@proc_fd_operations = external dso_local constant %struct.file_operations, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"fdinfo\00", align 1
@proc_fdinfo_inode_operations = external dso_local constant %struct.inode_operations, align 64
@proc_fdinfo_operations = external dso_local constant %struct.file_operations, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@proc_ns_dir_inode_operations = external dso_local constant %struct.inode_operations, align 64
@proc_ns_dir_operations = external dso_local constant %struct.file_operations, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"net\00", align 1
@proc_net_inode_operations = external dso_local constant %struct.inode_operations, align 64
@proc_net_operations = external dso_local constant %struct.file_operations, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"environ\00", align 1
@proc_environ_operations = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @environ_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @environ_open, ptr null, ptr @mem_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"auxv\00", align 1
@proc_auxv_operations = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @auxv_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @auxv_open, ptr null, ptr @mem_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@proc_single_file_operations = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @proc_single_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"personality\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"limits\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"sched\00", align 1
@proc_pid_sched_operations = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @sched_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sched_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@proc_tid_comm_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr @proc_tid_comm_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@proc_pid_set_comm_operations = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @comm_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @comm_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.19 = private unnamed_addr constant [8 x i8] c"syscall\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"cmdline\00", align 1
@proc_pid_cmdline_ops = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @proc_pid_cmdline_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.21 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"statm\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"maps\00", align 1
@proc_pid_maps_operations = external dso_local constant %struct.file_operations, align 4
@.str.24 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@proc_mem_operations = internal constant %struct.file_operations { ptr null, ptr @mem_lseek, ptr @mem_read, ptr @mem_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mem_open, ptr null, ptr @mem_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"cwd\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"exe\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"mounts\00", align 1
@proc_mounts_operations = external dso_local constant %struct.file_operations, align 4
@.str.29 = private unnamed_addr constant [10 x i8] c"mountinfo\00", align 1
@proc_mountinfo_operations = external dso_local constant %struct.file_operations, align 4
@.str.30 = private unnamed_addr constant [11 x i8] c"clear_refs\00", align 1
@proc_clear_refs_operations = external dso_local constant %struct.file_operations, align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"smaps\00", align 1
@proc_pid_smaps_operations = external dso_local constant %struct.file_operations, align 4
@.str.32 = private unnamed_addr constant [13 x i8] c"smaps_rollup\00", align 1
@proc_pid_smaps_rollup_operations = external dso_local constant %struct.file_operations, align 4
@.str.33 = private unnamed_addr constant [8 x i8] c"pagemap\00", align 1
@proc_pagemap_operations = external dso_local constant %struct.file_operations, align 4
@.str.34 = private unnamed_addr constant [6 x i8] c"wchan\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"cgroup\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"oom_score\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"oom_adj\00", align 1
@proc_oom_adj_operations = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @oom_adj_read, ptr @oom_adj_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.39 = private unnamed_addr constant [14 x i8] c"oom_score_adj\00", align 1
@proc_oom_score_adj_operations = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @oom_score_adj_read, ptr @oom_score_adj_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.40 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@.str.41 = private unnamed_addr constant [80 x i8] c"Limit                     Soft Limit           Hard Limit           Units     \0A\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"%-25s %-20s \00", align 1
@lnames = internal unnamed_addr constant [16 x %struct.limit_names] [%struct.limit_names { ptr @.str.48, ptr @.str.49 }, %struct.limit_names { ptr @.str.50, ptr @.str.51 }, %struct.limit_names { ptr @.str.52, ptr @.str.51 }, %struct.limit_names { ptr @.str.53, ptr @.str.51 }, %struct.limit_names { ptr @.str.54, ptr @.str.51 }, %struct.limit_names { ptr @.str.55, ptr @.str.51 }, %struct.limit_names { ptr @.str.56, ptr @.str.57 }, %struct.limit_names { ptr @.str.58, ptr @.str.59 }, %struct.limit_names { ptr @.str.60, ptr @.str.51 }, %struct.limit_names { ptr @.str.61, ptr @.str.51 }, %struct.limit_names { ptr @.str.62, ptr @.str.63 }, %struct.limit_names { ptr @.str.64, ptr @.str.65 }, %struct.limit_names { ptr @.str.66, ptr @.str.51 }, %struct.limit_names { ptr @.str.67, ptr null }, %struct.limit_names { ptr @.str.68, ptr null }, %struct.limit_names { ptr @.str.69, ptr @.str.70 }], align 4
@.str.43 = private unnamed_addr constant [10 x i8] c"unlimited\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"%-25s %-20lu \00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"%-20s \00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"%-20lu \00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"%-10s\0A\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"Max cpu time\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"seconds\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"Max file size\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"Max data size\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"Max stack size\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"Max core file size\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"Max resident set\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"Max processes\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"processes\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"Max open files\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"Max locked memory\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"Max address space\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"Max file locks\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"locks\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"Max pending signals\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"signals\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"Max msgqueue size\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"Max nice priority\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"Max realtime priority\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c"Max realtime timeout\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"us\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"running\0A\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"%d 0x%llx 0x%llx\0A\00", align 1
@.str.73 = private unnamed_addr constant [60 x i8] c"%d 0x%llx 0x%llx 0x%llx 0x%llx 0x%llx 0x%llx 0x%llx 0x%llx\0A\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"[<0>] %pB\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@total_swap_pages = external dso_local local_unnamed_addr global i32, align 4
@.str.75 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@.str.76 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@oom_adj_mutex = external dso_local global %struct.mutex, align 4
@__set_oom_adj.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.77 = private unnamed_addr constant [87 x i8] c"\014%s (%d): /proc/%d/oom_adj is deprecated, please use /proc/%d/oom_score_adj instead.\0A\00", align 1
@init_task = external dso_local global %struct.task_struct, align 64
@__tracepoint_oom_score_adj_update = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.79 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"task\00", align 1
@proc_task_inode_operations = internal constant %struct.inode_operations { ptr @proc_task_lookup, ptr null, ptr @proc_pid_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr @proc_task_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@proc_task_operations = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_task_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.81 = private unnamed_addr constant [10 x i8] c"map_files\00", align 1
@proc_map_files_inode_operations = internal constant %struct.inode_operations { ptr @proc_map_files_lookup, ptr null, ptr @proc_fd_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@proc_map_files_operations = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_map_files_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.82 = private unnamed_addr constant [11 x i8] c"mountstats\00", align 1
@proc_mountstats_operations = external dso_local constant %struct.file_operations, align 4
@.str.83 = private unnamed_addr constant [16 x i8] c"coredump_filter\00", align 1
@proc_coredump_filter_operations = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @proc_coredump_filter_read, ptr @proc_coredump_filter_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.84 = private unnamed_addr constant [14 x i8] c"timerslack_ns\00", align 1
@proc_pid_set_timerslack_ns_operations = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @timerslack_ns_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @timerslack_ns_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@proc_tid_base_inode_operations = internal constant %struct.inode_operations { ptr @proc_tid_base_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr @pid_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@proc_tid_base_operations = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_tid_base_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@proc_map_files_link_inode_operations = internal constant %struct.inode_operations { ptr null, ptr @proc_map_files_get_link, ptr null, ptr null, ptr @proc_pid_readlink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@tid_map_files_dentry_operations = internal constant %struct.dentry_operations { ptr @map_files_d_revalidate, ptr null, ptr null, ptr null, ptr @pid_delete_dentry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [12 x i8] undef }, align 64
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@.str.85 = private unnamed_addr constant [8 x i8] c"%lx-%lx\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"%08lx\0A\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_setattr(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = load i32, ptr %2, align 8
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %2) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %5, ptr noundef %2) #16
  tail call void @__mark_inode_dirty(ptr noundef %5, i32 noundef 7) #16
  br label %13

13:                                               ; preds = %12, %9, %3
  %14 = phi i32 [ 0, %12 ], [ -1, %3 ], [ %10, %9 ]
  ret i32 %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @proc_mem_open(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -40
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @get_pid_task(ptr noundef %4, i32 noundef 0) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  %8 = or i32 %1, 8
  %9 = tail call ptr @mm_access(ptr noundef nonnull %5, i32 noundef %8) #16
  %10 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #16, !srcloc !9
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #16, !srcloc !10
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = icmp sgt i32 %12, 0
  br i1 %15, label %18, label %16, !prof !11

16:                                               ; preds = %14
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef 3) #16
  br label %18

17:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %5) #16
  br label %18

18:                                               ; preds = %17, %16, %14
  %19 = icmp eq ptr %9, null
  %20 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %21 = or i1 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.anon.1, ptr %9, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #16, !srcloc !9
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #16, !srcloc !13
  tail call void @mmput(ptr noundef nonnull %9) #16
  br label %25

25:                                               ; preds = %22, %18, %2
  %26 = phi ptr [ %9, %18 ], [ %9, %22 ], [ inttoptr (i32 -3 to ptr), %2 ]
  ret ptr %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mm_access(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i64 @mem_lseek(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) #3 {
  switch i32 %2, label %10 [
    i32 0, label %4
    i32 1, label %6
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  store i64 %1, ptr %5, align 8
  br label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  %8 = load i64, ptr %7, align 8
  %9 = add i64 %8, %1
  store i64 %9, ptr %7, align 8
  br label %10

10:                                               ; preds = %6, %4, %3
  %11 = phi i64 [ -22, %3 ], [ %9, %6 ], [ %1, %4 ]
  ret i64 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_pid_get_link(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store i64 0, ptr %4, align 8, !annotation !14
  %5 = icmp eq ptr %0, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %1, i32 -40
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @get_pid_task(ptr noundef %8, i32 noundef 0) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %6
  %12 = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %9, i32 noundef 9) #16
  %13 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #16, !srcloc !9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #16, !srcloc !10
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = icmp sgt i32 %15, 0
  br i1 %18, label %21, label %19, !prof !11

19:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef 3) #16
  br i1 %12, label %22, label %29

20:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %9) #16
  br i1 %12, label %22, label %29

21:                                               ; preds = %17
  br i1 %12, label %22, label %29

22:                                               ; preds = %21, %20, %19
  %23 = getelementptr i8, ptr %1, i32 -32
  %24 = load ptr, ptr %23, align 8
  %25 = call i32 %24(ptr noundef nonnull %0, ptr noundef nonnull %4) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @nd_jump_link(ptr noundef nonnull %4) #16
  br label %29

29:                                               ; preds = %27, %22, %21, %20, %19, %6
  %30 = phi i32 [ %25, %22 ], [ %28, %27 ], [ -13, %21 ], [ -13, %19 ], [ -13, %20 ], [ -13, %6 ]
  %31 = inttoptr i32 %30 to ptr
  br label %32

32:                                               ; preds = %29, %3
  %33 = phi ptr [ %31, %29 ], [ inttoptr (i32 -10 to ptr), %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_pid_readlink(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.path, align 8
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store i64 0, ptr %4, align 8, !annotation !14
  %7 = getelementptr i8, ptr %6, i32 -40
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @get_pid_task(ptr noundef %8, i32 noundef 0) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %65, label %11

11:                                               ; preds = %3
  %12 = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %9, i32 noundef 9) #16
  %13 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #16, !srcloc !9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #16, !srcloc !10
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = icmp sgt i32 %15, 0
  br i1 %18, label %21, label %19, !prof !11

19:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef 3) #16
  br i1 %12, label %22, label %65

20:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %9) #16
  br i1 %12, label %22, label %65

21:                                               ; preds = %17
  br i1 %12, label %22, label %65

22:                                               ; preds = %21, %20, %19
  %23 = getelementptr i8, ptr %6, i32 -32
  %24 = load ptr, ptr %23, align 8
  %25 = call i32 %24(ptr noundef %0, ptr noundef nonnull %4) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %22
  %28 = call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #16
  %29 = inttoptr i32 %28 to ptr
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %63, label %31

31:                                               ; preds = %27
  %32 = call ptr @d_path(ptr noundef nonnull %4, ptr noundef nonnull %29, i32 noundef 4096) #16
  %33 = ptrtoint ptr %32 to i32
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %61, label %35

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %29, i32 4095
  %37 = ptrtoint ptr %36 to i32
  %38 = sub i32 %37, %33
  %39 = call i32 @llvm.smin.i32(i32 %38, i32 %2) #16
  %40 = icmp slt i32 %39, 0
  %41 = load i1, ptr @check_copy_size.__already_done, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %45, !prof !15

44:                                               ; preds = %35
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #16
  br label %45

45:                                               ; preds = %44, %35
  br i1 %40, label %61, label %46, !prof !15

46:                                               ; preds = %45
  %47 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %39, i32 -1090519040) #17, !srcloc !16
  %48 = extractvalue { i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = tail call ptr @llvm.thread.pointer() #16
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %53 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %52) #18, !srcloc !17
  %54 = and i32 %53, -13
  %55 = or i32 %54, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #16, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !19
  %56 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %32, i32 noundef %39) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #16, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !19
  br label %57

57:                                               ; preds = %50, %46
  %58 = phi i32 [ %56, %50 ], [ %39, %46 ]
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i32 %39, i32 -14
  br label %61

61:                                               ; preds = %57, %45, %31
  %62 = phi i32 [ %33, %31 ], [ -14, %45 ], [ %60, %57 ]
  call void @free_pages(i32 noundef %28, i32 noundef 0) #16
  br label %63

63:                                               ; preds = %61, %27
  %64 = phi i32 [ %62, %61 ], [ -12, %27 ]
  call void @path_put(ptr noundef nonnull %4) #16
  br label %65

65:                                               ; preds = %63, %22, %21, %20, %19, %3
  %66 = phi i32 [ %25, %22 ], [ %64, %63 ], [ -13, %21 ], [ -13, %19 ], [ -13, %20 ], [ -13, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @task_dump_owner(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2097152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %34, !prof !11

9:                                                ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %10 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %16 = icmp eq i16 %1, 16749
  br i1 %16, label %34, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %18) #16
  %19 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 37
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.anon.1, ptr %20, i32 0, i32 43
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 3
  %26 = icmp eq i32 %25, 1
  %27 = select i1 %26, i32 %15, i32 0
  %28 = select i1 %26, i32 %13, i32 0
  br label %29

29:                                               ; preds = %22, %17
  %30 = phi i32 [ 0, %17 ], [ %27, %22 ]
  %31 = phi i32 [ 0, %17 ], [ %28, %22 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %32 = load i16, ptr %18, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  br label %34

34:                                               ; preds = %29, %9, %4
  %35 = phi i32 [ 0, %4 ], [ %31, %29 ], [ %13, %9 ]
  %36 = phi i32 [ 0, %4 ], [ %30, %29 ], [ %15, %9 ]
  store i32 %35, ptr %2, align 4
  store i32 %36, ptr %3, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @proc_pid_evict_inode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.proc_inode, ptr %0, i32 0, i32 8
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, -4096
  %6 = icmp eq i16 %5, 16384
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pid, ptr %2, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %8) #16
  %9 = getelementptr inbounds %struct.proc_inode, ptr %0, i32 0, i32 6, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.proc_inode, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  store volatile ptr %14, ptr %10, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.hlist_node, ptr %14, i32 0, i32 1
  store volatile ptr %10, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %12
  store volatile ptr null, ptr %9, align 4
  br label %19

19:                                               ; preds = %18, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %20 = load i16, ptr %8, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  br label %22

22:                                               ; preds = %19, %1
  tail call void @put_pid(ptr noundef %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @proc_pid_make_inode(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = tail call ptr @new_inode(ptr noundef %0) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %66, label %7

7:                                                ; preds = %3
  store i16 %2, ptr %5, align 8
  %8 = tail call i32 @get_next_ino() #16
  %9 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 10
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 15
  %11 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 14
  %12 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %4, ptr noundef nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %11, ptr noundef align 8 dereferenceable(16) %12, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %10, ptr noundef align 8 dereferenceable(16) %12, i32 16, i1 false)
  %13 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 7
  store ptr @proc_def_inode_operations, ptr %13, align 8
  %14 = call ptr @get_task_pid(ptr noundef %1, i32 noundef 0) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %65, label %16

16:                                               ; preds = %7
  %17 = getelementptr i8, ptr %5, i32 -40
  store ptr %14, ptr %17, align 8
  %18 = and i16 %2, -4096
  %19 = icmp eq i16 %18, 16384
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.pid, ptr %14, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %21) #16
  %22 = getelementptr i8, ptr %5, i32 -16
  %23 = getelementptr inbounds %struct.pid, ptr %14, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  store ptr %24, ptr %22, align 4
  %25 = getelementptr i8, ptr %5, i32 -12
  store volatile ptr %23, ptr %25, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !26
  store volatile ptr %22, ptr %23, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.hlist_node, ptr %24, i32 0, i32 1
  store volatile ptr %22, ptr %28, align 4
  br label %29

29:                                               ; preds = %27, %20
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %30 = load i16, ptr %21, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %21, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  br label %32

32:                                               ; preds = %29, %16
  %33 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 2
  %34 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 3
  %35 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 2097152
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %62, !prof !11

39:                                               ; preds = %32
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %40 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 82
  %41 = load volatile ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.cred, ptr %41, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.cred, ptr %41, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %46 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 107
  call void @_raw_spin_lock(ptr noundef %46) #16
  %47 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 37
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.anon.1, ptr %48, i32 0, i32 43
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 3
  %54 = icmp eq i32 %53, 1
  %55 = select i1 %54, i32 %45, i32 0
  %56 = select i1 %54, i32 %43, i32 0
  br label %57

57:                                               ; preds = %50, %39
  %58 = phi i32 [ 0, %39 ], [ %55, %50 ]
  %59 = phi i32 [ 0, %39 ], [ %56, %50 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %60 = load i16, ptr %46, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr %46, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  br label %62

62:                                               ; preds = %57, %32
  %63 = phi i32 [ 0, %32 ], [ %59, %57 ]
  %64 = phi i32 [ 0, %32 ], [ %58, %57 ]
  store i32 %63, ptr %33, align 4
  store i32 %64, ptr %34, align 4
  br label %66

65:                                               ; preds = %7
  call void @iput(ptr noundef nonnull %5) #16
  br label %66

66:                                               ; preds = %65, %62, %3
  %67 = phi ptr [ null, %65 ], [ null, %3 ], [ %5, %62 ]
  ret ptr %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_pid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pid_getattr(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 %3, i32 %4) #0 {
  %6 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 27
  %13 = load ptr, ptr %12, align 4
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %9, ptr noundef %2) #16
  %14 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 9
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 10
  store i32 0, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %16 = getelementptr i8, ptr %9, i32 -40
  %17 = load ptr, ptr %16, align 8
  %18 = tail call ptr @pid_task(ptr noundef %17, i32 noundef 0) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %69, label %20

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.proc_fs_info, ptr %13, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = icmp ult i32 %22, 2
  br i1 %25, label %35, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.proc_fs_info, ptr %13, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = insertvalue [1 x i32] undef, i32 %28, 0
  %30 = tail call i32 @in_group_p([1 x i32] %29) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %20
  %33 = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %18, i32 noundef 9) #16
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  br label %70

35:                                               ; preds = %32, %26, %24
  %36 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 2097152
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %66, !prof !11

40:                                               ; preds = %35
  %41 = load i16, ptr %9, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %42 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 82
  %43 = load volatile ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.cred, ptr %43, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.cred, ptr %43, i32 0, i32 6
  %47 = load i32, ptr %46, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %48 = icmp eq i16 %41, 16749
  br i1 %48, label %66, label %49

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %50) #16
  %51 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 37
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.anon.1, ptr %52, i32 0, i32 43
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 3
  %58 = icmp eq i32 %57, 1
  %59 = select i1 %58, i32 %47, i32 0
  %60 = select i1 %58, i32 %45, i32 0
  br label %61

61:                                               ; preds = %54, %49
  %62 = phi i32 [ 0, %49 ], [ %59, %54 ]
  %63 = phi i32 [ 0, %49 ], [ %60, %54 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %64 = load i16, ptr %50, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %50, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  br label %66

66:                                               ; preds = %61, %40, %35
  %67 = phi i32 [ 0, %35 ], [ %63, %61 ], [ %45, %40 ]
  %68 = phi i32 [ 0, %35 ], [ %62, %61 ], [ %47, %40 ]
  store i32 %67, ptr %14, align 4
  store i32 %68, ptr %15, align 4
  br label %69

69:                                               ; preds = %66, %5
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  br label %70

70:                                               ; preds = %69, %34
  %71 = phi i32 [ 0, %69 ], [ -2, %34 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pid_update_inode(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 2097152
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %33, !prof !11

7:                                                ; preds = %2
  %8 = load i16, ptr %1, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %15 = icmp eq i16 %8, 16749
  br i1 %15, label %33, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %17) #16
  %18 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 37
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.anon.1, ptr %19, i32 0, i32 43
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 3
  %25 = icmp eq i32 %24, 1
  %26 = select i1 %25, i32 %14, i32 0
  %27 = select i1 %25, i32 %12, i32 0
  br label %28

28:                                               ; preds = %21, %16
  %29 = phi i32 [ 0, %16 ], [ %26, %21 ]
  %30 = phi i32 [ 0, %16 ], [ %27, %21 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %31 = load i16, ptr %17, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  br label %33

33:                                               ; preds = %28, %7, %2
  %34 = phi i32 [ 0, %2 ], [ %30, %28 ], [ %12, %7 ]
  %35 = phi i32 [ 0, %2 ], [ %29, %28 ], [ %14, %7 ]
  %36 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %37 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  store i32 %34, ptr %37, align 4
  store i32 %35, ptr %36, align 4
  %38 = load i16, ptr %1, align 8
  %39 = and i16 %38, -3073
  store i16 %39, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @pid_delete_dentry(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -40
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pid, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pid_revalidate(ptr noundef %0, i32 noundef %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %4 = load volatile ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %49, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -40
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @pid_task(ptr noundef %8, i32 noundef 0) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %49, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 2097152
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %42, !prof !11

16:                                               ; preds = %11
  %17 = load i16, ptr %4, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %18 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 82
  %19 = load volatile ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.cred, ptr %19, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.cred, ptr %19, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %24 = icmp eq i16 %17, 16749
  br i1 %24, label %42, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %26) #16
  %27 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 37
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.anon.1, ptr %28, i32 0, i32 43
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 3
  %34 = icmp eq i32 %33, 1
  %35 = select i1 %34, i32 %23, i32 0
  %36 = select i1 %34, i32 %21, i32 0
  br label %37

37:                                               ; preds = %30, %25
  %38 = phi i32 [ 0, %25 ], [ %35, %30 ]
  %39 = phi i32 [ 0, %25 ], [ %36, %30 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %40 = load i16, ptr %26, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  br label %42

42:                                               ; preds = %37, %16, %11
  %43 = phi i32 [ 0, %11 ], [ %39, %37 ], [ %21, %16 ]
  %44 = phi i32 [ 0, %11 ], [ %38, %37 ], [ %23, %16 ]
  %45 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 3
  %46 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 2
  store i32 %43, ptr %46, align 4
  store i32 %44, ptr %45, align 4
  %47 = load i16, ptr %4, align 8
  %48 = and i16 %47, -3073
  store i16 %48, ptr %4, align 8
  br label %49

49:                                               ; preds = %42, %6, %2
  %50 = phi i32 [ 1, %42 ], [ 0, %6 ], [ 0, %2 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @proc_fill_cache(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.qstr, align 8
  %9 = alloca %struct.wait_queue_head, align 4
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #16
  %12 = getelementptr inbounds %struct.anon.12, ptr %8, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store i32 %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.qstr, ptr %8, i32 0, i32 1
  store ptr %2, ptr %13, align 8
  %14 = call ptr @d_hash_and_lookup(ptr noundef %11, ptr noundef nonnull %8) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %41

16:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  %17 = getelementptr inbounds %struct.wait_queue_head, ptr %9, i32 0, i32 1
  store i32 0, ptr %9, align 4
  store ptr %17, ptr %17, align 4
  %18 = getelementptr inbounds %struct.wait_queue_head, ptr %9, i32 0, i32 1, i32 1
  store ptr %17, ptr %18, align 4
  %19 = call ptr @d_alloc_parallel(ptr noundef %11, ptr noundef nonnull %8, ptr noundef nonnull %9) #16
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %40, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %19, align 8
  %23 = and i32 %22, 268435456
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %21
  %26 = call ptr %4(ptr noundef %19, ptr noundef %5, ptr noundef %6) #16
  %27 = load i32, ptr %19, align 8
  %28 = and i32 %27, 268435456
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !11

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %31) #16
  call void @__d_lookup_done(ptr noundef %19) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %32 = load i16, ptr %31, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %31, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  br label %34

34:                                               ; preds = %30, %25
  %35 = icmp eq ptr %26, null
  br i1 %35, label %38, label %36, !prof !11

36:                                               ; preds = %34
  call void @dput(ptr noundef %19) #16
  %37 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %40, label %38

38:                                               ; preds = %36, %34, %21
  %39 = phi ptr [ %19, %21 ], [ %26, %36 ], [ %19, %34 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  br label %41

40:                                               ; preds = %36, %16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  br label %50

41:                                               ; preds = %38, %7
  %42 = phi ptr [ %14, %7 ], [ %39, %38 ]
  %43 = getelementptr inbounds %struct.dentry, ptr %42, i32 0, i32 5
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 10
  %46 = load i32, ptr %45, align 4
  %47 = load i16, ptr %44, align 8
  %48 = lshr i16 %47, 12
  %49 = zext i16 %48 to i32
  call void @dput(ptr noundef %42) #16
  br label %50

50:                                               ; preds = %41, %40
  %51 = phi i32 [ %49, %41 ], [ 0, %40 ]
  %52 = phi i32 [ %46, %41 ], [ 1, %40 ]
  %53 = zext i32 %52 to i64
  %54 = load ptr, ptr %1, align 8
  %55 = getelementptr inbounds %struct.dir_context, ptr %1, i32 0, i32 1
  %56 = load i64, ptr %55, align 8
  %57 = call i32 %54(ptr noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %56, i64 noundef %53, i32 noundef %51) #16
  %58 = icmp eq i32 %57, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #16
  ret i1 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_hash_and_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_parallel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @tgid_pidfd_to_pid(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @proc_tgid_base_operations
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 -40
  %9 = load ptr, ptr %8, align 8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi ptr [ %9, %5 ], [ inttoptr (i32 -9 to ptr), %1 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @proc_flush_pid(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pid, ptr %0, i32 0, i32 4
  %3 = getelementptr inbounds %struct.pid, ptr %0, i32 0, i32 2
  tail call void @proc_invalidate_siblings_dcache(ptr noundef %2, ptr noundef %3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_invalidate_siblings_dcache(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @proc_pid_lookup(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4
  %4 = tail call i32 @name_to_int(ptr noundef %3) #16
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %43, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %12 = tail call ptr @find_task_by_pid_ns(i32 noundef %4, ptr noundef %11) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %42, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #16, !srcloc !9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #16, !srcloc !27
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !15

19:                                               ; preds = %14
  %20 = add i32 %17, 1
  %21 = or i32 %20, %17
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %25, label %23, !prof !11

23:                                               ; preds = %19, %14
  %24 = phi i32 [ 2, %14 ], [ 1, %19 ]
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef %24) #16
  br label %25

25:                                               ; preds = %23, %19
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %26 = getelementptr inbounds %struct.proc_fs_info, ptr %10, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %12, i32 noundef 9) #16
  br i1 %30, label %31, label %33

31:                                               ; preds = %29, %25
  %32 = tail call ptr @proc_pid_instantiate(ptr noundef %0, ptr noundef nonnull %12, ptr noundef null)
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi ptr [ %32, %31 ], [ inttoptr (i32 -2 to ptr), %29 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #16, !srcloc !9
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #16, !srcloc !10
  %36 = extractvalue { i32, i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = icmp sgt i32 %36, 0
  br i1 %39, label %43, label %40, !prof !11

40:                                               ; preds = %38
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 3) #16
  br label %43

41:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %12) #16
  br label %43

42:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  br label %43

43:                                               ; preds = %42, %41, %40, %38, %2
  %44 = phi ptr [ inttoptr (i32 -2 to ptr), %2 ], [ inttoptr (i32 -2 to ptr), %42 ], [ %34, %38 ], [ %34, %40 ], [ %34, %41 ]
  ret ptr %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @name_to_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_pid_ns(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_pid_instantiate(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @proc_pid_make_inode(ptr noundef %5, ptr noundef %1, i16 noundef zeroext 16749)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %54, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 7
  store ptr @proc_tgid_base_inode_operations, ptr %9, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 39
  store ptr @proc_tgid_base_operations, ptr %10, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 8
  store i32 %13, ptr %11, align 4
  %14 = load i1, ptr @nlink_tgid, align 1
  %15 = select i1 %14, i32 8, i32 0
  tail call void @set_nlink(ptr noundef nonnull %6, i32 noundef %15) #16
  %16 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 2097152
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %46, !prof !11

20:                                               ; preds = %8
  %21 = load i16, ptr %6, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %22 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 82
  %23 = load volatile ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %28 = icmp eq i16 %21, 16749
  br i1 %28, label %46, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %30) #16
  %31 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 37
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.anon.1, ptr %32, i32 0, i32 43
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 3
  %38 = icmp eq i32 %37, 1
  %39 = select i1 %38, i32 %27, i32 0
  %40 = select i1 %38, i32 %25, i32 0
  br label %41

41:                                               ; preds = %34, %29
  %42 = phi i32 [ 0, %29 ], [ %39, %34 ]
  %43 = phi i32 [ 0, %29 ], [ %40, %34 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %44 = load i16, ptr %30, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  br label %46

46:                                               ; preds = %41, %20, %8
  %47 = phi i32 [ 0, %8 ], [ %43, %41 ], [ %25, %20 ]
  %48 = phi i32 [ 0, %8 ], [ %42, %41 ], [ %27, %20 ]
  %49 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 3
  %50 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 2
  store i32 %47, ptr %50, align 4
  store i32 %48, ptr %49, align 4
  %51 = load i16, ptr %6, align 8
  %52 = and i16 %51, -3073
  store i16 %52, ptr %6, align 8
  tail call void @d_set_d_op(ptr noundef %0, ptr noundef nonnull @pid_dentry_operations) #16
  %53 = tail call ptr @d_splice_alias(ptr noundef nonnull %6, ptr noundef %0) #16
  br label %54

54:                                               ; preds = %46, %3
  %55 = phi ptr [ %53, %46 ], [ inttoptr (i32 -2 to ptr), %3 ]
  ret ptr %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_pid_readdir(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.tgid_iter, align 4
  %4 = alloca [11 x i8], align 1
  %5 = alloca %struct.tgid_iter, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dir_context, ptr %1, i32 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = icmp sgt i64 %14, 33025
  br i1 %15, label %97, label %16

16:                                               ; preds = %2
  %17 = icmp eq i64 %14, 256
  br i1 %17, label %18, label %30

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.proc_fs_info, ptr %11, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 10
  %24 = load i32, ptr %23, align 4
  %25 = zext i32 %24 to i64
  %26 = load ptr, ptr %1, align 8
  %27 = tail call i32 %26(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 4, i64 noundef 256, i64 noundef %25, i32 noundef 10) #16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %97

29:                                               ; preds = %18
  store i64 257, ptr %13, align 8
  br label %33

30:                                               ; preds = %16
  %31 = icmp eq i64 %14, 257
  %32 = trunc i64 %14 to i32
  br i1 %31, label %33, label %45

33:                                               ; preds = %30, %29
  %34 = getelementptr inbounds %struct.proc_fs_info, ptr %11, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.dentry, ptr %35, i32 0, i32 5
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 10
  %39 = load i32, ptr %38, align 4
  %40 = zext i32 %39 to i64
  %41 = load ptr, ptr %1, align 8
  %42 = tail call i32 %41(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 11, i64 noundef 257, i64 noundef %40, i32 noundef 10) #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %97

44:                                               ; preds = %33
  store i64 258, ptr %13, align 8
  br label %45

45:                                               ; preds = %44, %30
  %46 = phi i32 [ %32, %30 ], [ 258, %44 ]
  %47 = add i32 %46, -258
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %48 = insertvalue [2 x i32] poison, i32 %47, 0
  %49 = insertvalue [2 x i32] %48, i32 0, 1
  call fastcc void @next_tgid(ptr nonnull sret(%struct.tgid_iter) align 4 %3, ptr noundef %12, [2 x i32] %49)
  %50 = load i32, ptr %3, align 4
  %51 = getelementptr inbounds i8, ptr %3, i32 4
  %52 = load ptr, ptr %51, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  %53 = icmp eq ptr %52, null
  br i1 %53, label %96, label %54

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.proc_fs_info, ptr %11, i32 0, i32 4
  %56 = getelementptr inbounds %struct.proc_fs_info, ptr %11, i32 0, i32 3
  %57 = getelementptr inbounds i8, ptr %5, i32 4
  br label %58

58:                                               ; preds = %88, %54
  %59 = phi i32 [ %50, %54 ], [ %93, %88 ]
  %60 = phi ptr [ %52, %54 ], [ %94, %88 ]
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %4, i8 0, i32 11, i1 false), !annotation !14
  %61 = call i32 @__cond_resched() #16
  %62 = load i32, ptr %55, align 4
  %63 = icmp eq i32 %62, 4
  br i1 %63, label %71, label %64

64:                                               ; preds = %58
  %65 = icmp ult i32 %62, 2
  br i1 %65, label %73, label %66

66:                                               ; preds = %64
  %67 = load i32, ptr %56, align 4
  %68 = insertvalue [1 x i32] undef, i32 %67, 0
  %69 = call i32 @in_group_p([1 x i32] %68) #16
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66, %58
  %72 = call zeroext i1 @ptrace_may_access(ptr noundef nonnull %60, i32 noundef 9) #16
  br i1 %72, label %73, label %88

73:                                               ; preds = %71, %66, %64
  %74 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 11, ptr noundef nonnull @.str.3, i32 noundef %59)
  %75 = add i32 %59, 258
  %76 = zext i32 %75 to i64
  store i64 %76, ptr %13, align 8
  %77 = call zeroext i1 @proc_fill_cache(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef %74, ptr noundef nonnull @proc_pid_instantiate, ptr noundef nonnull %60, ptr noundef null)
  br i1 %77, label %88, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %79) #16, !srcloc !9
  %80 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %79, ptr %79, i32 1, ptr elementtype(i32) %79) #16, !srcloc !10
  %81 = extractvalue { i32, i32, i32 } %80, 0
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = icmp sgt i32 %81, 0
  br i1 %84, label %87, label %85, !prof !11

85:                                               ; preds = %83
  call void @refcount_warn_saturate(ptr noundef %79, i32 noundef 3) #16
  br label %87

86:                                               ; preds = %78
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  call void @__put_task_struct(ptr noundef nonnull %60) #16
  br label %87

87:                                               ; preds = %86, %85, %83
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %4) #16
  br label %97

88:                                               ; preds = %73, %71
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %4) #16
  %89 = add i32 %59, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %90 = insertvalue [2 x i32] poison, i32 %89, 0
  %91 = ptrtoint ptr %60 to i32
  %92 = insertvalue [2 x i32] %90, i32 %91, 1
  call fastcc void @next_tgid(ptr nonnull sret(%struct.tgid_iter) align 4 %5, ptr noundef %12, [2 x i32] %92)
  %93 = load i32, ptr %5, align 4
  %94 = load ptr, ptr %57, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %58

96:                                               ; preds = %88, %45
  store i64 33026, ptr %13, align 8
  br label %97

97:                                               ; preds = %96, %87, %33, %18, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @next_tgid(ptr noalias nocapture writeonly sret(%struct.tgid_iter) align 4 %0, ptr noundef %1, [2 x i32] %2) unnamed_addr #0 {
  %4 = extractvalue [2 x i32] %2, 0
  %5 = extractvalue [2 x i32] %2, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = inttoptr i32 %5 to ptr
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #16, !srcloc !9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #16, !srcloc !10
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %17, label %15, !prof !11

15:                                               ; preds = %13
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 3) #16
  br label %17

16:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %8) #16
  br label %17

17:                                               ; preds = %16, %15, %13, %3
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %18 = tail call ptr @find_ge_pid(i32 noundef %4, ptr noundef %1) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %25, %17
  %21 = phi ptr [ %27, %25 ], [ %18, %17 ]
  %22 = tail call i32 @pid_nr_ns(ptr noundef nonnull %21, ptr noundef %1) #16
  %23 = tail call ptr @pid_task(ptr noundef nonnull %21, i32 noundef 1) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = add i32 %22, 1
  %27 = tail call ptr @find_ge_pid(i32 noundef %26, ptr noundef %1) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %20

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #16, !srcloc !9
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #16, !srcloc !27
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34, !prof !15

34:                                               ; preds = %29
  %35 = add i32 %32, 1
  %36 = or i32 %35, %32
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %40, label %38, !prof !11

38:                                               ; preds = %34, %29
  %39 = phi i32 [ 2, %29 ], [ 1, %34 ]
  tail call void @refcount_warn_saturate(ptr noundef %30, i32 noundef %39) #16
  br label %40

40:                                               ; preds = %38, %34, %25, %17
  %41 = phi i32 [ %22, %34 ], [ %22, %38 ], [ %4, %17 ], [ %26, %25 ]
  %42 = phi ptr [ %23, %34 ], [ %23, %38 ], [ null, %17 ], [ null, %25 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  store i32 %41, ptr %0, align 4
  %43 = getelementptr inbounds i8, ptr %0, i32 4
  store ptr %42, ptr %43, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong writeonly uwtable(sync)
define dso_local void @set_proc_pid_nlink() local_unnamed_addr #8 section ".init.text" {
  store i1 true, ptr @nlink_tid, align 1
  store i1 true, ptr @nlink_tgid, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nd_jump_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptrace_may_access(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__d_lookup_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_tgid_base_readdir(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @proc_pident_readdir(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @tgid_base_stuff, i32 noundef 37)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @proc_pident_readdir(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -40
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @get_pid_task(ptr noundef %8, i32 noundef 0) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %74, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.dir_context, ptr %1, i32 0, i32 1
  %13 = load i64, ptr %12, align 8
  switch i64 %13, label %43 [
    i64 0, label %14
    i64 1, label %26
  ]

14:                                               ; preds = %11
  %15 = load ptr, ptr %1, align 8
  %16 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 10
  %21 = load i32, ptr %20, align 4
  %22 = zext i32 %21 to i64
  %23 = tail call i32 %15(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef 1, i64 noundef 0, i64 noundef %22, i32 noundef 4) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %65

25:                                               ; preds = %14
  store i64 1, ptr %12, align 8
  br label %26

26:                                               ; preds = %25, %11
  %27 = load ptr, ptr %1, align 8
  %28 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %30) #16
  %31 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 10
  %36 = load i32, ptr %35, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %37 = load i16, ptr %30, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  %39 = zext i32 %36 to i64
  %40 = tail call i32 %27(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef 2, i64 noundef 1, i64 noundef %39, i32 noundef 4) #16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %26
  store i64 2, ptr %12, align 8
  br label %43

43:                                               ; preds = %42, %11
  %44 = phi i64 [ 2, %42 ], [ %13, %11 ]
  %45 = add i32 %3, 2
  %46 = zext i32 %45 to i64
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  %49 = trunc i64 %44 to i32
  %50 = add i32 %49, -2
  %51 = getelementptr %struct.pid_entry, ptr %2, i32 %50
  %52 = getelementptr %struct.pid_entry, ptr %2, i32 %3
  %53 = icmp ult ptr %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %60, %48
  %55 = phi ptr [ %63, %60 ], [ %51, %48 ]
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.pid_entry, ptr %55, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = tail call zeroext i1 @proc_fill_cache(ptr noundef %0, ptr noundef %1, ptr noundef %56, i32 noundef %58, ptr noundef nonnull @proc_pident_instantiate, ptr noundef nonnull %9, ptr noundef %55)
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i64, ptr %12, align 8
  %62 = add i64 %61, 1
  store i64 %62, ptr %12, align 8
  %63 = getelementptr %struct.pid_entry, ptr %55, i32 1
  %64 = icmp ult ptr %63, %52
  br i1 %64, label %54, label %65

65:                                               ; preds = %60, %54, %48, %43, %26, %14
  %66 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %66) #16, !srcloc !9
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %66, ptr %66, i32 1, ptr elementtype(i32) %66) #16, !srcloc !10
  %68 = extractvalue { i32, i32, i32 } %67, 0
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = icmp sgt i32 %68, 0
  br i1 %71, label %74, label %72, !prof !11

72:                                               ; preds = %70
  tail call void @refcount_warn_saturate(ptr noundef %66, i32 noundef 3) #16
  br label %74

73:                                               ; preds = %65
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %9) #16
  br label %74

74:                                               ; preds = %73, %72, %70, %4
  %75 = phi i32 [ -2, %4 ], [ 0, %70 ], [ 0, %72 ], [ 0, %73 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_pident_instantiate(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pid_entry, ptr %2, i32 0, i32 2
  %7 = load i16, ptr %6, align 4
  %8 = tail call ptr @proc_pid_make_inode(ptr noundef %5, ptr noundef %1, i16 noundef zeroext %7)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %69, label %10

10:                                               ; preds = %3
  %11 = load i16, ptr %8, align 8
  %12 = and i16 %11, -4096
  %13 = icmp eq i16 %12, 16384
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @set_nlink(ptr noundef nonnull %8, i32 noundef 2) #16
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.pid_entry, ptr %2, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 7
  store ptr %17, ptr %20, align 8
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.pid_entry, ptr %2, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 39
  store ptr %23, ptr %26, align 8
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr i8, ptr %8, i32 -32
  %29 = getelementptr inbounds %struct.pid_entry, ptr %2, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %28, align 8
  %31 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 2097152
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %61, !prof !11

35:                                               ; preds = %27
  %36 = load i16, ptr %8, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %37 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 82
  %38 = load volatile ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.cred, ptr %38, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.cred, ptr %38, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %43 = icmp eq i16 %36, 16749
  br i1 %43, label %61, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %45) #16
  %46 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 37
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.anon.1, ptr %47, i32 0, i32 43
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 3
  %53 = icmp eq i32 %52, 1
  %54 = select i1 %53, i32 %42, i32 0
  %55 = select i1 %53, i32 %40, i32 0
  br label %56

56:                                               ; preds = %49, %44
  %57 = phi i32 [ 0, %44 ], [ %54, %49 ]
  %58 = phi i32 [ 0, %44 ], [ %55, %49 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %59 = load i16, ptr %45, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %45, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  br label %61

61:                                               ; preds = %56, %35, %27
  %62 = phi i32 [ 0, %27 ], [ %58, %56 ], [ %40, %35 ]
  %63 = phi i32 [ 0, %27 ], [ %57, %56 ], [ %42, %35 ]
  %64 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 3
  %65 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 2
  store i32 %62, ptr %65, align 4
  store i32 %63, ptr %64, align 4
  %66 = load i16, ptr %8, align 8
  %67 = and i16 %66, -3073
  store i16 %67, ptr %8, align 8
  tail call void @d_set_d_op(ptr noundef %0, ptr noundef nonnull @pid_dentry_operations) #16
  %68 = tail call ptr @d_splice_alias(ptr noundef nonnull %8, ptr noundef %0) #16
  br label %69

69:                                               ; preds = %61, %3
  %70 = phi ptr [ %68, %61 ], [ inttoptr (i32 -2 to ptr), %3 ]
  ret ptr %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_set_d_op(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_tgid_base_lookup(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call fastcc ptr @proc_pident_lookup(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @tgid_base_stuff, ptr noundef getelementptr inbounds ([37 x %struct.pid_entry], ptr @tgid_base_stuff, i32 1, i32 0))
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_pid_permission(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %1, i32 -40
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @get_pid_task(ptr noundef %9, i32 noundef 0) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %40, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.proc_fs_info, ptr %7, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %15 [
    i32 4, label %21
    i32 0, label %23
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.proc_fs_info, ptr %7, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = insertvalue [1 x i32] undef, i32 %17, 0
  %19 = tail call i32 @in_group_p([1 x i32] %18) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15, %12
  %22 = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %10, i32 noundef 9) #16
  br label %23

23:                                               ; preds = %21, %15, %12
  %24 = phi i1 [ true, %15 ], [ %22, %21 ], [ true, %12 ]
  %25 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #16, !srcloc !9
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #16, !srcloc !10
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = icmp sgt i32 %27, 0
  br i1 %30, label %33, label %31, !prof !11

31:                                               ; preds = %29
  tail call void @refcount_warn_saturate(ptr noundef %25, i32 noundef 3) #16
  br label %33

32:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %10) #16
  br label %33

33:                                               ; preds = %32, %31, %29
  br i1 %24, label %38, label %34

34:                                               ; preds = %33
  %35 = load i32, ptr %13, align 4
  %36 = icmp eq i32 %35, 2
  %37 = select i1 %36, i32 -2, i32 -1
  br label %40

38:                                               ; preds = %33
  %39 = tail call i32 @generic_permission(ptr noundef nonnull @init_user_ns, ptr noundef %1, i32 noundef %2) #16
  br label %40

40:                                               ; preds = %38, %34, %3
  %41 = phi i32 [ %39, %38 ], [ -3, %3 ], [ %37, %34 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @proc_pident_lookup(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef readnone %3) unnamed_addr #0 {
  %5 = getelementptr i8, ptr %0, i32 -40
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @get_pid_task(ptr noundef %6, i32 noundef 0) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %4
  %10 = icmp ult ptr %2, %3
  br i1 %10, label %11, label %31

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %13 = getelementptr inbounds %struct.anon.12, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  br label %16

16:                                               ; preds = %28, %11
  %17 = phi ptr [ %2, %11 ], [ %29, %28 ]
  %18 = getelementptr inbounds %struct.pid_entry, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %14
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load ptr, ptr %15, align 8
  %23 = load ptr, ptr %17, align 4
  %24 = tail call i32 @bcmp(ptr %22, ptr %23, i32 %14)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = tail call ptr @proc_pident_instantiate(ptr noundef %1, ptr noundef nonnull %7, ptr noundef %17)
  br label %31

28:                                               ; preds = %21, %16
  %29 = getelementptr %struct.pid_entry, ptr %17, i32 1
  %30 = icmp ult ptr %29, %3
  br i1 %30, label %16, label %31

31:                                               ; preds = %28, %26, %9
  %32 = phi ptr [ %27, %26 ], [ inttoptr (i32 -2 to ptr), %9 ], [ inttoptr (i32 -2 to ptr), %28 ]
  %33 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #16, !srcloc !9
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #16, !srcloc !10
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %41, label %39, !prof !11

39:                                               ; preds = %37
  tail call void @refcount_warn_saturate(ptr noundef %33, i32 noundef 3) #16
  br label %41

40:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %7) #16
  br label %41

41:                                               ; preds = %40, %39, %37, %4
  %42 = phi ptr [ inttoptr (i32 -2 to ptr), %4 ], [ %32, %37 ], [ %32, %39 ], [ %32, %40 ]
  ret ptr %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_ge_pid(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_nr_ns(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_pid_status(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_pid_personality(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 93
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.signal_struct, ptr %6, i32 0, i32 56
  %8 = tail call i32 @down_read_killable(ptr noundef %7) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = tail call zeroext i1 @ptrace_may_access(ptr noundef %3, i32 noundef 10) #16
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 46
  %14 = load i32, ptr %13, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %14) #16
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi i32 [ 0, %12 ], [ -1, %10 ]
  %17 = load ptr, ptr %5, align 16
  %18 = getelementptr inbounds %struct.signal_struct, ptr %17, i32 0, i32 56
  tail call void @up_read(ptr noundef %18) #16
  br label %19

19:                                               ; preds = %15, %4
  %20 = phi i32 [ %8, %4 ], [ %16, %15 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_pid_limits(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca [16 x %struct.rlimit], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !14
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #16
  %7 = call ptr @__lock_task_sighand(ptr noundef %3, ptr noundef nonnull %5) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 93
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr inbounds %struct.signal_struct, ptr %11, i32 0, i32 50
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %6, ptr noundef align 8 dereferenceable(128) %12, i32 128, i1 false)
  %13 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 94
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %5, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #16
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.41) #16
  br label %16

16:                                               ; preds = %38, %9
  %17 = phi i32 [ 0, %9 ], [ %39, %38 ]
  %18 = getelementptr [16 x %struct.rlimit], ptr %6, i32 0, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, -1
  %21 = getelementptr [16 x %struct.limit_names], ptr @lnames, i32 0, i32 %17
  %22 = load ptr, ptr %21, align 4
  br i1 %20, label %23, label %24

23:                                               ; preds = %16
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef %22, ptr noundef nonnull @.str.43) #16
  br label %25

24:                                               ; preds = %16
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef %22, i32 noundef %19) #16
  br label %25

25:                                               ; preds = %24, %23
  %26 = getelementptr [16 x %struct.rlimit], ptr %6, i32 0, i32 %17, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43) #16
  br label %31

30:                                               ; preds = %25
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef %27) #16
  br label %31

31:                                               ; preds = %30, %29
  %32 = add nsw i32 %17, -13
  %33 = icmp ult i32 %32, 2
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = getelementptr [16 x %struct.limit_names], ptr @lnames, i32 0, i32 %17, i32 1
  %36 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef %36) #16
  br label %38

37:                                               ; preds = %31
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #16
  br label %38

38:                                               ; preds = %37, %34
  %39 = add nuw nsw i32 %17, 1
  %40 = icmp eq i32 %39, 16
  br i1 %40, label %41, label %16

41:                                               ; preds = %38, %4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_pid_syscall(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = alloca %struct.syscall_info, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %5, i8 0, i32 72, i1 false), !annotation !14
  %6 = getelementptr inbounds %struct.syscall_info, ptr %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.syscall_info, ptr %5, i32 0, i32 1, i32 3
  %8 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 93
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 56
  %11 = tail call i32 @down_read_killable(ptr noundef %10) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %4
  %14 = tail call zeroext i1 @ptrace_may_access(ptr noundef %3, i32 noundef 10) #16
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr %8, align 16
  %17 = getelementptr inbounds %struct.signal_struct, ptr %16, i32 0, i32 56
  tail call void @up_read(ptr noundef %17) #16
  br label %47

18:                                               ; preds = %13
  %19 = call i32 @task_current_syscall(ptr noundef %3, ptr noundef nonnull %5) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.71) #16
  br label %44

22:                                               ; preds = %18
  %23 = load i32, ptr %6, align 8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i64, ptr %5, align 8
  %27 = getelementptr inbounds %struct.syscall_info, ptr %5, i32 0, i32 1, i32 2
  %28 = load i64, ptr %27, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.72, i32 noundef %23, i64 noundef %26, i64 noundef %28) #16
  br label %44

29:                                               ; preds = %22
  %30 = load i64, ptr %7, align 8
  %31 = getelementptr inbounds %struct.syscall_info, ptr %5, i32 0, i32 1, i32 3, i32 1
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds %struct.syscall_info, ptr %5, i32 0, i32 1, i32 3, i32 2
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds %struct.syscall_info, ptr %5, i32 0, i32 1, i32 3, i32 3
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds %struct.syscall_info, ptr %5, i32 0, i32 1, i32 3, i32 4
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds %struct.syscall_info, ptr %5, i32 0, i32 1, i32 3, i32 5
  %40 = load i64, ptr %39, align 8
  %41 = load i64, ptr %5, align 8
  %42 = getelementptr inbounds %struct.syscall_info, ptr %5, i32 0, i32 1, i32 2
  %43 = load i64, ptr %42, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.73, i32 noundef %23, i64 noundef %30, i64 noundef %32, i64 noundef %34, i64 noundef %36, i64 noundef %38, i64 noundef %40, i64 noundef %41, i64 noundef %43) #16
  br label %44

44:                                               ; preds = %29, %25, %21
  %45 = load ptr, ptr %8, align 16
  %46 = getelementptr inbounds %struct.signal_struct, ptr %45, i32 0, i32 56
  call void @up_read(ptr noundef %46) #16
  br label %47

47:                                               ; preds = %44, %15, %4
  %48 = phi i32 [ 0, %44 ], [ %11, %4 ], [ -1, %15 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #16
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_tid_stat(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_pid_statm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_cwd_link(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -40
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @get_pid_task(ptr noundef %6, i32 noundef 0) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %10) #16
  %11 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 89
  %12 = load ptr, ptr %11, align 64
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.fs_struct, ptr %12, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %15) #16
  %16 = getelementptr inbounds %struct.fs_struct, ptr %12, i32 0, i32 6
  %17 = load i64, ptr %16, align 4
  store i64 %17, ptr %1, align 4
  tail call void @path_get(ptr noundef %1) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %18 = load i16, ptr %15, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  br label %20

20:                                               ; preds = %14, %9
  %21 = phi i32 [ 0, %14 ], [ -2, %9 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %22 = load i16, ptr %10, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  %24 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #16, !srcloc !9
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #16, !srcloc !10
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = icmp sgt i32 %26, 0
  br i1 %29, label %32, label %30, !prof !11

30:                                               ; preds = %28
  tail call void @refcount_warn_saturate(ptr noundef %24, i32 noundef 3) #16
  br label %32

31:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %7) #16
  br label %32

32:                                               ; preds = %31, %30, %28, %2
  %33 = phi i32 [ -2, %2 ], [ %21, %28 ], [ %21, %30 ], [ %21, %31 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_root_link(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -40
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @get_pid_task(ptr noundef %6, i32 noundef 0) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %10) #16
  %11 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 89
  %12 = load ptr, ptr %11, align 64
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.fs_struct, ptr %12, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %15) #16
  %16 = getelementptr inbounds %struct.fs_struct, ptr %12, i32 0, i32 5
  %17 = load i64, ptr %16, align 4
  store i64 %17, ptr %1, align 4
  tail call void @path_get(ptr noundef %1) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %18 = load i16, ptr %15, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  br label %20

20:                                               ; preds = %14, %9
  %21 = phi i32 [ 0, %14 ], [ -2, %9 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %22 = load i16, ptr %10, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  %24 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #16, !srcloc !9
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #16, !srcloc !10
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = icmp sgt i32 %26, 0
  br i1 %29, label %32, label %30, !prof !11

30:                                               ; preds = %28
  tail call void @refcount_warn_saturate(ptr noundef %24, i32 noundef 3) #16
  br label %32

31:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %7) #16
  br label %32

32:                                               ; preds = %31, %30, %28, %2
  %33 = phi i32 [ -2, %2 ], [ %21, %28 ], [ %21, %30 ], [ %21, %31 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_exe_link(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -40
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @get_pid_task(ptr noundef %6, i32 noundef 0) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @get_task_exe_file(ptr noundef nonnull %7) #16
  %11 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #16, !srcloc !9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #16, !srcloc !10
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = icmp sgt i32 %13, 0
  br i1 %16, label %19, label %17, !prof !11

17:                                               ; preds = %15
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #16
  br label %19

18:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %7) #16
  br label %19

19:                                               ; preds = %18, %17, %15
  %20 = icmp eq ptr %10, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 1
  %23 = load i64, ptr %22, align 8
  store i64 %23, ptr %1, align 4
  tail call void @path_get(ptr noundef %22) #16
  tail call void @fput(ptr noundef nonnull %10) #16
  br label %24

24:                                               ; preds = %21, %19, %2
  %25 = phi i32 [ 0, %21 ], [ -2, %2 ], [ -2, %19 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_pid_wchan(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %5, i8 0, i32 128, i1 false), !annotation !14
  %6 = tail call zeroext i1 @ptrace_may_access(ptr noundef %3, i32 noundef 9) #16
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = tail call i32 @get_wchan(ptr noundef %3) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = call i32 @lookup_symbol_name(i32 noundef %8, ptr noundef nonnull %5) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull %5) #16
  br label %15

14:                                               ; preds = %10, %7, %4
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 48) #16
  br label %15

15:                                               ; preds = %14, %13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_pid_stack(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = tail call zeroext i1 @file_ns_capable(ptr noundef %6, ptr noundef nonnull @init_user_ns, i32 noundef 21) #16
  br i1 %7, label %8, label %36

8:                                                ; preds = %4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 256) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %36, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 93
  %14 = load ptr, ptr %13, align 16
  %15 = getelementptr inbounds %struct.signal_struct, ptr %14, i32 0, i32 56
  %16 = tail call i32 @down_read_killable(ptr noundef %15) #16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = tail call zeroext i1 @ptrace_may_access(ptr noundef %3, i32 noundef 10) #16
  br i1 %19, label %20, label %30

20:                                               ; preds = %18
  %21 = tail call i32 @stack_trace_save_tsk(ptr noundef %3, ptr noundef nonnull %10, i32 noundef 64, i32 noundef 0) #16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %23, %20
  %24 = phi i32 [ %28, %23 ], [ 0, %20 ]
  %25 = getelementptr i32, ptr %10, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = inttoptr i32 %26 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.74, ptr noundef %27) #16
  %28 = add nuw i32 %24, 1
  %29 = icmp eq i32 %28, %21
  br i1 %29, label %30, label %23

30:                                               ; preds = %23, %20, %18
  %31 = phi i32 [ -1, %18 ], [ 0, %20 ], [ 0, %23 ]
  %32 = load ptr, ptr %13, align 16
  %33 = getelementptr inbounds %struct.signal_struct, ptr %32, i32 0, i32 56
  tail call void @up_read(ptr noundef %33) #16
  br label %34

34:                                               ; preds = %30, %12
  %35 = phi i32 [ %16, %12 ], [ %31, %30 ]
  tail call void @kfree(ptr noundef nonnull %10) #16
  br label %36

36:                                               ; preds = %34, %8, %4
  %37 = phi i32 [ %35, %34 ], [ -13, %4 ], [ -12, %8 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_cgroup_show(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_oom_score(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = load volatile i32, ptr @_totalram_pages, align 4
  %6 = load i32, ptr @total_swap_pages, align 4
  %7 = add i32 %6, %5
  %8 = tail call i32 @oom_badness(ptr noundef %3, i32 noundef %7) #16
  %9 = icmp eq i32 %8, -2147483648
  br i1 %9, label %16, label %10

10:                                               ; preds = %4
  %11 = mul i32 %8, 1000
  %12 = sdiv i32 %11, %7
  %13 = shl i32 %12, 1
  %14 = add i32 %13, 2000
  %15 = sdiv i32 %14, 3
  br label %16

16:                                               ; preds = %10, %4
  %17 = phi i32 [ %15, %10 ], [ 0, %4 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %17) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @environ_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = load i64, ptr %3, align 8
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %71, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.anon.1, ptr %8, i32 0, i32 38
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %71, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #16
  %16 = inttoptr i32 %15 to ptr
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %71, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.anon.1, ptr %8, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #16, !srcloc !9
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 0, i32 1, ptr elementtype(i32) %19) #16, !srcloc !29
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %69, label %23

23:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !30
  %24 = getelementptr inbounds %struct.anon.1, ptr %8, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %24) #16
  %25 = getelementptr inbounds %struct.anon.1, ptr %8, i32 0, i32 37
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %11, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %28 = load i16, ptr %24, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  %30 = sub i32 %27, %26
  %31 = icmp ne i32 %2, 0
  %32 = icmp ugt i32 %30, %6
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %65

34:                                               ; preds = %57, %23
  %35 = phi ptr [ %60, %57 ], [ %1, %23 ]
  %36 = phi i32 [ %61, %57 ], [ %2, %23 ]
  %37 = phi i32 [ %59, %57 ], [ %6, %23 ]
  %38 = phi i32 [ %58, %57 ], [ 0, %23 ]
  %39 = add i32 %37, %26
  %40 = sub i32 %27, %39
  %41 = tail call i32 @llvm.umin.i32(i32 %36, i32 %40)
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 4096)
  %43 = tail call i32 @access_remote_vm(ptr noundef nonnull %8, i32 noundef %39, ptr noundef nonnull %16, i32 noundef %42, i32 noundef 32768) #16
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %65, label %45

45:                                               ; preds = %34
  %46 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %35, i32 %43, i32 -1090519040) #17, !srcloc !16
  %47 = extractvalue { i32, i32 } %46, 0
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %45
  %50 = tail call ptr @llvm.thread.pointer() #16
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %52 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %51) #18, !srcloc !17
  %53 = and i32 %52, -13
  %54 = or i32 %53, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #16, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !19
  %55 = tail call i32 @arm_copy_to_user(ptr noundef %35, ptr noundef nonnull %16, i32 noundef %43) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #16, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !19
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %49
  %58 = add i32 %43, %38
  %59 = add i32 %43, %37
  %60 = getelementptr i8, ptr %35, i32 %43
  %61 = sub i32 %36, %43
  %62 = icmp ne i32 %61, 0
  %63 = icmp ult i32 %59, %30
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %34, label %65

65:                                               ; preds = %57, %49, %45, %34, %23
  %66 = phi i32 [ %6, %23 ], [ %59, %57 ], [ %37, %34 ], [ %37, %49 ], [ %37, %45 ]
  %67 = phi i32 [ 0, %23 ], [ %58, %57 ], [ %43, %34 ], [ -14, %49 ], [ -14, %45 ]
  %68 = zext i32 %66 to i64
  store i64 %68, ptr %3, align 8
  tail call void @mmput(ptr noundef nonnull %8) #16
  br label %69

69:                                               ; preds = %65, %18
  %70 = phi i32 [ %67, %65 ], [ 0, %18 ]
  tail call void @free_pages(i32 noundef %15, i32 noundef 0) #16
  br label %71

71:                                               ; preds = %69, %14, %10, %4
  %72 = phi i32 [ %70, %69 ], [ 0, %10 ], [ 0, %4 ], [ -12, %14 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @environ_open(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call ptr @proc_mem_open(ptr noundef %0, i32 noundef 1) #16
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  br label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %3, ptr %8, align 8
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %6, %5 ], [ 0, %7 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mem_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.anon.1, ptr %4, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !31
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #16, !srcloc !9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #16, !srcloc !32
  %9 = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !33
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !15

11:                                               ; preds = %6
  tail call void @__mmdrop(ptr noundef nonnull %4) #16
  br label %12

12:                                               ; preds = %11, %6, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @access_remote_vm(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @auxv_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %8, %4
  %9 = phi i32 [ %10, %8 ], [ 0, %4 ]
  %10 = add i32 %9, 2
  %11 = getelementptr %struct.anon.1, ptr %6, i32 0, i32 39, i32 %9
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %8

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.anon.1, ptr %6, i32 0, i32 39
  %16 = shl i32 %10, 2
  %17 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %15, i32 noundef %16) #16
  br label %18

18:                                               ; preds = %14, %4
  %19 = phi i32 [ %17, %14 ], [ 0, %4 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @auxv_open(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call ptr @proc_mem_open(ptr noundef %0, i32 noundef 9) #16
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  br label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %3, ptr %8, align 8
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %6, %5 ], [ 0, %7 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_single_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @proc_single_show, ptr noundef %0) #16
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_single_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %4, i32 -40
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @get_pid_task(ptr noundef %11, i32 noundef 0) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %4, i32 -32
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 %16(ptr noundef %0, ptr noundef %9, ptr noundef %11, ptr noundef nonnull %12) #16
  %18 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #16, !srcloc !9
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #16, !srcloc !10
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = icmp sgt i32 %20, 0
  br i1 %23, label %26, label %24, !prof !11

24:                                               ; preds = %22
  tail call void @refcount_warn_saturate(ptr noundef %18, i32 noundef 3) #16
  br label %26

25:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %12) #16
  br label %26

26:                                               ; preds = %25, %24, %22, %2
  %27 = phi i32 [ -3, %2 ], [ %17, %22 ], [ %17, %24 ], [ %17, %25 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__lock_task_sighand(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sched_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -40
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @get_pid_task(ptr noundef %8, i32 noundef 0) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %4
  tail call void @proc_sched_set_task(ptr noundef nonnull %9) #16
  %12 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #16, !srcloc !9
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #16, !srcloc !10
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %20, label %18, !prof !11

18:                                               ; preds = %16
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 3) #16
  br label %20

19:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %9) #16
  br label %20

20:                                               ; preds = %19, %18, %16, %4
  %21 = phi i32 [ -3, %4 ], [ %2, %16 ], [ %2, %18 ], [ %2, %19 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sched_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @sched_show, ptr noundef %0) #16
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_sched_set_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sched_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %4, i32 -40
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @get_pid_task(ptr noundef %11, i32 noundef 0) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  tail call void @proc_sched_show_task(ptr noundef nonnull %12, ptr noundef %9, ptr noundef %0) #16
  %15 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #16, !srcloc !9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #16, !srcloc !10
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = icmp sgt i32 %17, 0
  br i1 %20, label %23, label %21, !prof !11

21:                                               ; preds = %19
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 3) #16
  br label %23

22:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %12) #16
  br label %23

23:                                               ; preds = %22, %21, %19, %2
  %24 = phi i32 [ -3, %2 ], [ 0, %19 ], [ 0, %21 ], [ 0, %22 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_sched_show_task(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_tid_comm_permission(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 -40
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @get_pid_task(ptr noundef %5, i32 noundef 0) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @llvm.thread.pointer() #16
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 93
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 93
  %13 = load ptr, ptr %12, align 16
  %14 = icmp eq ptr %11, %13
  %15 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #16, !srcloc !9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #16, !srcloc !10
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %8
  %20 = icmp sgt i32 %17, 0
  br i1 %20, label %23, label %21, !prof !11

21:                                               ; preds = %19
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 3) #16
  br label %23

22:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %6) #16
  br label %23

23:                                               ; preds = %22, %21, %19
  %24 = and i32 %2, 1
  %25 = icmp eq i32 %24, 0
  %26 = and i1 %25, %14
  br i1 %26, label %29, label %27, !prof !11

27:                                               ; preds = %23
  %28 = tail call i32 @generic_permission(ptr noundef nonnull @init_user_ns, ptr noundef %1, i32 noundef %2) #16
  br label %29

29:                                               ; preds = %27, %23, %3
  %30 = phi i32 [ %28, %27 ], [ -3, %3 ], [ 0, %23 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @comm_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [16 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %8 = tail call i32 @llvm.umin.i32(i32 %2, i32 15)
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %8, i32 -1090519040) #17, !srcloc !34
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br i1 %11, label %12, label %19, !prof !11

12:                                               ; preds = %4
  %13 = tail call ptr @llvm.thread.pointer() #16
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #18, !srcloc !17
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #16, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !19
  %18 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %8) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #16, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !19
  br label %19

19:                                               ; preds = %12, %4
  %20 = phi i32 [ %18, %12 ], [ %8, %4 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22, !prof !11

22:                                               ; preds = %19
  %23 = sub i32 %8, %20
  %24 = getelementptr i8, ptr %5, i32 %23
  call void @llvm.memset.p0.i32(ptr align 1 %24, i8 0, i32 %20, i1 false) #16
  br label %48

25:                                               ; preds = %19
  %26 = getelementptr i8, ptr %7, i32 -40
  %27 = load ptr, ptr %26, align 8
  %28 = call ptr @get_pid_task(ptr noundef %27, i32 noundef 0) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %48, label %30

30:                                               ; preds = %25
  %31 = tail call ptr @llvm.thread.pointer() #16
  %32 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 93
  %33 = load ptr, ptr %32, align 16
  %34 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 93
  %35 = load ptr, ptr %34, align 16
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  call void @__set_task_comm(ptr noundef nonnull %28, ptr noundef nonnull %5, i1 noundef zeroext false) #16
  br label %38

38:                                               ; preds = %37, %30
  %39 = phi i32 [ %2, %37 ], [ -22, %30 ]
  %40 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #16, !srcloc !9
  %41 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #16, !srcloc !10
  %42 = extractvalue { i32, i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = icmp sgt i32 %42, 0
  br i1 %45, label %48, label %46, !prof !11

46:                                               ; preds = %44
  call void @refcount_warn_saturate(ptr noundef %40, i32 noundef 3) #16
  br label %48

47:                                               ; preds = %38
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  call void @__put_task_struct(ptr noundef nonnull %28) #16
  br label %48

48:                                               ; preds = %47, %46, %44, %25, %22
  %49 = phi i32 [ -3, %25 ], [ %39, %44 ], [ %39, %46 ], [ %39, %47 ], [ -14, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @comm_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @comm_show, ptr noundef %0) #16
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_task_comm(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @comm_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -40
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @get_pid_task(ptr noundef %6, i32 noundef 0) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  tail call void @proc_task_name(ptr noundef %0, ptr noundef nonnull %7, i1 noundef zeroext false) #16
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #16
  %10 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #16, !srcloc !9
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #16, !srcloc !10
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %12, 0
  br i1 %15, label %18, label %16, !prof !11

16:                                               ; preds = %14
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef 3) #16
  br label %18

17:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %7) #16
  br label %18

18:                                               ; preds = %17, %16, %14, %2
  %19 = phi i32 [ -3, %2 ], [ 0, %14 ], [ 0, %16 ], [ 0, %17 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_task_name(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_current_syscall(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_pid_cmdline_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = load i64, ptr %3, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9, !prof !15

8:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/proc/base.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 364, 0\0A.popsection", ""() #16, !srcloc !35
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %11, i32 -40
  %13 = load ptr, ptr %12, align 8
  %14 = tail call ptr @get_pid_task(ptr noundef %13, i32 noundef 0) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %160, label %16

16:                                               ; preds = %9
  %17 = tail call ptr @get_task_mm(ptr noundef nonnull %14) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %144, label %19

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  store i8 0, ptr %5, align 1, !annotation !14
  %20 = getelementptr inbounds %struct.anon.1, ptr %17, i32 0, i32 38
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %142, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.anon.1, ptr %17, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %24) #16
  %25 = getelementptr inbounds %struct.anon.1, ptr %17, i32 0, i32 35
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.anon.1, ptr %17, i32 0, i32 36
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.anon.1, ptr %17, i32 0, i32 37
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %20, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %32 = load i16, ptr %24, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  %34 = icmp ult i32 %26, %28
  br i1 %34, label %35, label %142

35:                                               ; preds = %23
  %36 = icmp ne i32 %30, %28
  %37 = icmp ult i32 %31, %30
  %38 = select i1 %36, i1 true, i1 %37
  %39 = select i1 %38, i32 %28, i32 %31
  %40 = sub i32 %39, %26
  %41 = load i64, ptr %3, align 8
  %42 = trunc i64 %41 to i32
  %43 = icmp ugt i32 %40, %42
  br i1 %43, label %44, label %142

44:                                               ; preds = %35
  %45 = sub i32 %40, %42
  %46 = tail call i32 @llvm.umin.i32(i32 %45, i32 %2) #16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %142, label %48

48:                                               ; preds = %44
  %49 = add i32 %28, -1
  %50 = call i32 @access_remote_vm(ptr noundef nonnull %17, i32 noundef %49, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 32768) #16
  %51 = icmp eq i32 %50, 1
  %52 = load i8, ptr %5, align 1
  %53 = icmp ne i8 %52, 0
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %96

55:                                               ; preds = %48
  %56 = icmp ugt i32 %42, 4095
  br i1 %56, label %142, label %57

57:                                               ; preds = %55
  %58 = call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #16
  %59 = inttoptr i32 %58 to ptr
  %60 = icmp eq i32 %58, 0
  br i1 %60, label %142, label %61

61:                                               ; preds = %57
  %62 = call i32 @access_remote_vm(ptr noundef nonnull %17, i32 noundef %26, ptr noundef nonnull %59, i32 noundef 4096, i32 noundef 32768) #16
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %139

64:                                               ; preds = %61
  %65 = call i32 @strnlen(ptr noundef nonnull %59, i32 noundef %62) #16
  %66 = icmp slt i32 %65, %62
  %67 = zext i1 %66 to i32
  %68 = add i32 %65, %67
  %69 = icmp ugt i32 %68, %42
  br i1 %69, label %70, label %139

70:                                               ; preds = %64
  %71 = sub i32 %68, %42
  %72 = call i32 @llvm.umin.i32(i32 %71, i32 %46) #16
  %73 = getelementptr i8, ptr %59, i32 %42
  %74 = icmp slt i32 %72, 0
  %75 = load i1, ptr @check_copy_size.__already_done, align 1
  %76 = xor i1 %75, true
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %79, !prof !15

78:                                               ; preds = %70
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #16
  br label %79

79:                                               ; preds = %78, %70
  br i1 %74, label %91, label %80, !prof !15

80:                                               ; preds = %79
  %81 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %72, i32 -1090519040) #17, !srcloc !16
  %82 = extractvalue { i32, i32 } %81, 0
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = tail call ptr @llvm.thread.pointer() #16
  %86 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 3
  %87 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %86) #18, !srcloc !17
  %88 = and i32 %87, -13
  %89 = or i32 %88, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %89) #16, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !19
  %90 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %73, i32 noundef %72) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %87) #16, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !19
  br label %91

91:                                               ; preds = %84, %80, %79
  %92 = phi i32 [ %72, %79 ], [ %90, %84 ], [ %72, %80 ]
  %93 = sub i32 %72, %92
  %94 = icmp eq i32 %72, %92
  %95 = select i1 %94, i32 -14, i32 %93
  br label %139

96:                                               ; preds = %48
  %97 = add i32 %26, %42
  %98 = icmp uge i32 %97, %26
  %99 = icmp ugt i32 %28, %97
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %101, label %142

101:                                              ; preds = %96
  %102 = call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #16
  %103 = inttoptr i32 %102 to ptr
  %104 = icmp eq i32 %102, 0
  br i1 %104, label %142, label %105

105:                                              ; preds = %101
  %106 = sub i32 %28, %97
  %107 = call i32 @llvm.umin.i32(i32 %46, i32 %106) #16
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %139, label %109

109:                                              ; preds = %132, %105
  %110 = phi ptr [ %135, %132 ], [ %1, %105 ]
  %111 = phi i32 [ %137, %132 ], [ %107, %105 ]
  %112 = phi i32 [ %136, %132 ], [ 0, %105 ]
  %113 = phi i32 [ %134, %132 ], [ %97, %105 ]
  %114 = call i32 @llvm.umin.i32(i32 %111, i32 4096) #16
  %115 = call i32 @access_remote_vm(ptr noundef nonnull %17, i32 noundef %113, ptr noundef nonnull %103, i32 noundef %114, i32 noundef 32768) #16
  %116 = icmp slt i32 %115, 1
  br i1 %116, label %139, label %117

117:                                              ; preds = %109
  %118 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %110, i32 %115, i32 -1090519040) #17, !srcloc !16
  %119 = extractvalue { i32, i32 } %118, 0
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = tail call ptr @llvm.thread.pointer() #16
  %123 = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 3
  %124 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %123) #18, !srcloc !17
  %125 = and i32 %124, -13
  %126 = or i32 %125, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %126) #16, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !19
  %127 = call i32 @arm_copy_to_user(ptr noundef %110, ptr noundef nonnull %103, i32 noundef %115) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %124) #16, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !19
  %128 = icmp eq i32 %115, %127
  br i1 %128, label %129, label %132, !prof !15

129:                                              ; preds = %121, %117
  %130 = icmp eq i32 %112, 0
  %131 = select i1 %130, i32 -14, i32 %112
  br label %139

132:                                              ; preds = %121
  %133 = sub i32 %115, %127
  %134 = add i32 %133, %113
  %135 = getelementptr i8, ptr %110, i32 %133
  %136 = add i32 %133, %112
  %137 = sub i32 %111, %133
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %109

139:                                              ; preds = %132, %129, %109, %105, %91, %64, %61
  %140 = phi i32 [ %58, %91 ], [ %58, %64 ], [ %58, %61 ], [ %102, %105 ], [ %102, %129 ], [ %102, %109 ], [ %102, %132 ]
  %141 = phi i32 [ %95, %91 ], [ 0, %64 ], [ 0, %61 ], [ 0, %105 ], [ %131, %129 ], [ %136, %132 ], [ %112, %109 ]
  call void @free_pages(i32 noundef %140, i32 noundef 0) #16
  br label %142

142:                                              ; preds = %139, %101, %96, %57, %55, %44, %35, %23, %19
  %143 = phi i32 [ 0, %19 ], [ 0, %23 ], [ 0, %35 ], [ 0, %44 ], [ 0, %96 ], [ -12, %101 ], [ 0, %55 ], [ -12, %57 ], [ %141, %139 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  call void @mmput(ptr noundef nonnull %17) #16
  br label %144

144:                                              ; preds = %142, %16
  %145 = phi i32 [ %143, %142 ], [ 0, %16 ]
  %146 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %146) #16, !srcloc !9
  %147 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %146, ptr %146, i32 1, ptr elementtype(i32) %146) #16, !srcloc !10
  %148 = extractvalue { i32, i32, i32 } %147, 0
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %153, label %150

150:                                              ; preds = %144
  %151 = icmp sgt i32 %148, 0
  br i1 %151, label %154, label %152, !prof !11

152:                                              ; preds = %150
  call void @refcount_warn_saturate(ptr noundef %146, i32 noundef 3) #16
  br label %154

153:                                              ; preds = %144
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  call void @__put_task_struct(ptr noundef nonnull %14) #16
  br label %154

154:                                              ; preds = %153, %152, %150
  %155 = icmp sgt i32 %145, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %154
  %157 = zext i32 %145 to i64
  %158 = load i64, ptr %3, align 8
  %159 = add i64 %158, %157
  store i64 %159, ptr %3, align 8
  br label %160

160:                                              ; preds = %156, %154, %9
  %161 = phi i32 [ -3, %9 ], [ %145, %156 ], [ %145, %154 ]
  ret i32 %161
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mem_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = tail call fastcc i32 @mem_rw(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 0)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mem_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = tail call fastcc i32 @mem_rw(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 1)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mem_open(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = tail call ptr @proc_mem_open(ptr noundef %0, i32 noundef 2) #16
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  br label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %3, ptr %8, align 8
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %6, %5 ], [ 0, %7 ]
  %11 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %12 = load i32, ptr %11, align 8
  %13 = or i32 %12, 8192
  store i32 %13, ptr %11, align 8
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mem_rw(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = load i64, ptr %3, align 8
  %9 = trunc i64 %8 to i32
  %10 = icmp eq ptr %7, null
  br i1 %10, label %89, label %11

11:                                               ; preds = %5
  %12 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #16
  %13 = inttoptr i32 %12 to ptr
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %89, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.anon.1, ptr %7, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #16, !srcloc !9
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 0, i32 1, ptr elementtype(i32) %16) #16, !srcloc !29
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %87, label %20

20:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !30
  %21 = icmp eq i32 %4, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = or i32 %23, 16
  %25 = icmp eq i32 %2, 0
  br i1 %25, label %83, label %26

26:                                               ; preds = %76, %20
  %27 = phi ptr [ %78, %76 ], [ %1, %20 ]
  %28 = phi i32 [ %81, %76 ], [ %2, %20 ]
  %29 = phi i32 [ %80, %76 ], [ 0, %20 ]
  %30 = phi i32 [ %79, %76 ], [ %9, %20 ]
  %31 = tail call i32 @llvm.umin.i32(i32 %28, i32 4096)
  br i1 %21, label %48, label %32

32:                                               ; preds = %26
  %33 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %27, i32 %31, i32 -1090519040) #17, !srcloc !34
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44, !prof !11

36:                                               ; preds = %32
  %37 = tail call ptr @llvm.thread.pointer() #16
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %39 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %38) #18, !srcloc !17
  %40 = and i32 %39, -13
  %41 = or i32 %40, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #16, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !19
  %42 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %13, ptr noundef %27, i32 noundef %31) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #16, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !19
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %51, label %44, !prof !11

44:                                               ; preds = %36, %32
  %45 = phi i32 [ %42, %36 ], [ %31, %32 ]
  %46 = sub i32 %31, %45
  %47 = getelementptr i8, ptr %13, i32 %46
  tail call void @llvm.memset.p0.i32(ptr align 1 %47, i8 0, i32 %45, i1 false) #16
  br label %83

48:                                               ; preds = %26
  %49 = tail call i32 @access_remote_vm(ptr noundef nonnull %7, i32 noundef %30, ptr noundef nonnull %13, i32 noundef %31, i32 noundef %24) #16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %57

51:                                               ; preds = %36
  %52 = tail call i32 @access_remote_vm(ptr noundef nonnull %7, i32 noundef %30, ptr noundef nonnull %13, i32 noundef %31, i32 noundef %24) #16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %51, %48
  %55 = icmp eq i32 %29, 0
  %56 = select i1 %55, i32 -5, i32 %29
  br label %83

57:                                               ; preds = %48
  %58 = icmp slt i32 %49, 0
  %59 = load i1, ptr @check_copy_size.__already_done, align 1
  %60 = xor i1 %59, true
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %63, !prof !15

62:                                               ; preds = %57
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #16
  br label %63

63:                                               ; preds = %62, %57
  br i1 %58, label %83, label %64, !prof !15

64:                                               ; preds = %63
  %65 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %27, i32 %49, i32 -1090519040) #17, !srcloc !16
  %66 = extractvalue { i32, i32 } %65, 0
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %64
  %69 = tail call ptr @llvm.thread.pointer() #16
  %70 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 3
  %71 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %70) #18, !srcloc !17
  %72 = and i32 %71, -13
  %73 = or i32 %72, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %73) #16, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !19
  %74 = tail call i32 @arm_copy_to_user(ptr noundef %27, ptr noundef nonnull %13, i32 noundef %49) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %71) #16, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !19
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %68, %51
  %77 = phi i32 [ %49, %68 ], [ %52, %51 ]
  %78 = getelementptr i8, ptr %27, i32 %77
  %79 = add i32 %77, %30
  %80 = add i32 %77, %29
  %81 = sub i32 %28, %77
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %26

83:                                               ; preds = %76, %68, %64, %63, %54, %44, %20
  %84 = phi i32 [ %30, %54 ], [ %30, %44 ], [ %9, %20 ], [ %79, %76 ], [ %30, %68 ], [ %30, %63 ], [ %30, %64 ]
  %85 = phi i32 [ %56, %54 ], [ -14, %44 ], [ 0, %20 ], [ %80, %76 ], [ -14, %68 ], [ -14, %63 ], [ -14, %64 ]
  %86 = zext i32 %84 to i64
  store i64 %86, ptr %3, align 8
  tail call void @mmput(ptr noundef nonnull %7) #16
  br label %87

87:                                               ; preds = %83, %15
  %88 = phi i32 [ %85, %83 ], [ 0, %15 ]
  tail call void @free_pages(i32 noundef %12, i32 noundef 0) #16
  br label %89

89:                                               ; preds = %87, %11, %5
  %90 = phi i32 [ %88, %87 ], [ 0, %5 ], [ -12, %11 ]
  ret i32 %90
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_exe_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_wchan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lookup_symbol_name(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @file_ns_capable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_trace_save_tsk(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oom_badness(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @oom_adj_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [13 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 -40
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @get_pid_task(ptr noundef %9, i32 noundef 0) #16
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(13) %5, i8 0, i32 13, i1 false), !annotation !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 93
  %14 = load ptr, ptr %13, align 16
  %15 = getelementptr inbounds %struct.signal_struct, ptr %14, i32 0, i32 52
  %16 = load i16, ptr %15, align 2
  %17 = icmp eq i16 %16, 1000
  %18 = sext i16 %16 to i32
  %19 = mul nsw i32 %18, 17
  %20 = sdiv i32 %19, 1000
  %21 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #16, !srcloc !9
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #16, !srcloc !10
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %28, label %25

25:                                               ; preds = %12
  %26 = icmp sgt i32 %23, 0
  br i1 %26, label %29, label %27, !prof !11

27:                                               ; preds = %25
  tail call void @refcount_warn_saturate(ptr noundef %21, i32 noundef 3) #16
  br label %29

28:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %10) #16
  br label %29

29:                                               ; preds = %28, %27, %25
  %30 = tail call i32 @llvm.smin.i32(i32 %20, i32 15)
  %31 = select i1 %17, i32 15, i32 %30
  %32 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 13, ptr noundef nonnull @.str.76, i32 noundef %31)
  %33 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %32) #16
  br label %34

34:                                               ; preds = %29, %4
  %35 = phi i32 [ %33, %29 ], [ -3, %4 ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %5) #16
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @oom_adj_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [13 x i8], align 1
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(13) %5, i8 0, i32 13, i1 false)
  %7 = tail call i32 @llvm.umin.i32(i32 %2, i32 12)
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %7, i32 -1090519040) #17, !srcloc !34
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18, !prof !11

11:                                               ; preds = %4
  %12 = tail call ptr @llvm.thread.pointer() #16
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #18, !srcloc !17
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #16, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !19
  %17 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %7) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #16, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !19
  br label %18

18:                                               ; preds = %11, %4
  %19 = phi i32 [ %17, %11 ], [ %7, %4 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21, !prof !11

21:                                               ; preds = %18
  %22 = sub i32 %7, %19
  %23 = getelementptr i8, ptr %5, i32 %22
  call void @llvm.memset.p0.i32(ptr align 1 %23, i8 0, i32 %19, i1 false) #16
  br label %43

24:                                               ; preds = %18
  %25 = call ptr @strim(ptr noundef nonnull %5) #16
  %26 = call i32 @kstrtoint(ptr noundef %25, i32 noundef 0, ptr noundef nonnull %6) #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i32, ptr %6, align 4
  %30 = add i32 %29, -16
  %31 = icmp ult i32 %30, -33
  br i1 %31, label %43, label %32

32:                                               ; preds = %28
  %33 = icmp eq i32 %29, 15
  %34 = trunc i32 %29 to i16
  %35 = mul nsw i16 %34, 1000
  %36 = sdiv i16 %35, 17
  %37 = sext i16 %36 to i32
  %38 = select i1 %33, i32 1000, i32 %37
  store i32 %38, ptr %6, align 4
  %39 = call fastcc i32 @__set_oom_adj(ptr noundef %0, i32 noundef %38, i1 noundef zeroext true)
  br label %40

40:                                               ; preds = %32, %24
  %41 = phi i32 [ %26, %24 ], [ %39, %32 ]
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %28, %21
  %44 = phi i32 [ %41, %40 ], [ -22, %28 ], [ -14, %21 ]
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi i32 [ %44, %43 ], [ %7, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %5) #16
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__set_oom_adj(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -40
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @get_pid_task(ptr noundef %7, i32 noundef 0) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %153, label %10

10:                                               ; preds = %3
  tail call void @mutex_lock(ptr noundef nonnull @oom_adj_mutex) #16
  br i1 %2, label %11, label %30

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 93
  %13 = load ptr, ptr %12, align 16
  %14 = getelementptr inbounds %struct.signal_struct, ptr %13, i32 0, i32 52
  %15 = load i16, ptr %14, align 2
  %16 = sext i16 %15 to i32
  %17 = icmp sgt i32 %16, %1
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = tail call zeroext i1 @capable(i32 noundef 24) #16
  br i1 %19, label %20, label %143

20:                                               ; preds = %18, %11
  %21 = load i1, ptr @__set_oom_adj.__already_done, align 1
  br i1 %21, label %41, label %22, !prof !11

22:                                               ; preds = %20
  store i1 true, ptr @__set_oom_adj.__already_done, align 1
  %23 = tail call ptr @llvm.thread.pointer() #16
  %24 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 85
  %25 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 52
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 52
  %28 = load i32, ptr %27, align 8
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %28) #20
  br label %41

30:                                               ; preds = %10
  %31 = shl i32 %1, 16
  %32 = ashr exact i32 %31, 16
  %33 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 93
  %34 = load ptr, ptr %33, align 16
  %35 = getelementptr inbounds %struct.signal_struct, ptr %34, i32 0, i32 53
  %36 = load i16, ptr %35, align 4
  %37 = sext i16 %36 to i32
  %38 = icmp slt i32 %32, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = tail call zeroext i1 @capable(i32 noundef 24) #16
  br i1 %40, label %41, label %143

41:                                               ; preds = %39, %30, %22, %20
  %42 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 66
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %63

45:                                               ; preds = %41
  %46 = tail call ptr @find_lock_task_mm(ptr noundef nonnull %8) #16
  %47 = icmp eq ptr %46, null
  br i1 %47, label %63, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 37
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.anon.1, ptr %50, i32 0, i32 43
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %52, 134217728
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.anon.1, ptr %50, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #16, !srcloc !9
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #16, !srcloc !13
  br label %58

58:                                               ; preds = %55, %48
  %59 = phi ptr [ %50, %55 ], [ null, %48 ]
  %60 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 107
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %61 = load i16, ptr %60, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %60, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  br label %63

63:                                               ; preds = %58, %45, %41
  %64 = phi ptr [ null, %41 ], [ %59, %58 ], [ null, %45 ]
  %65 = trunc i32 %1 to i16
  %66 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 93
  %67 = load ptr, ptr %66, align 16
  %68 = getelementptr inbounds %struct.signal_struct, ptr %67, i32 0, i32 52
  store i16 %65, ptr %68, align 2
  br i1 %2, label %75, label %69

69:                                               ; preds = %63
  %70 = tail call ptr @llvm.thread.pointer() #16
  %71 = tail call zeroext i1 @has_capability_noaudit(ptr noundef %70, i32 noundef 24) #16
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load ptr, ptr %66, align 16
  %74 = getelementptr inbounds %struct.signal_struct, ptr %73, i32 0, i32 53
  store i16 %65, ptr %74, align 4
  br label %75

75:                                               ; preds = %72, %69, %63
  %76 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_oom_score_adj_update, i32 0, i32 1), align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = tail call ptr @llvm.thread.pointer() #16
  %80 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 2
  %81 = load i32, ptr %80, align 8
  %82 = lshr i32 %81, 5
  %83 = getelementptr i32, ptr @__cpu_online_mask, i32 %82
  %84 = load volatile i32, ptr %83, align 4
  %85 = and i32 %81, 31
  %86 = shl nuw i32 1, %85
  %87 = and i32 %86, %84
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %78
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !36
  %90 = tail call i32 @__traceiter_oom_score_adj_update(ptr noundef null, ptr noundef nonnull %8) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !37
  br label %91

91:                                               ; preds = %89, %78, %75
  %92 = icmp eq ptr %64, null
  br i1 %92, label %143, label %93

93:                                               ; preds = %91
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %94 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %95 = getelementptr i8, ptr %94, i32 -1116
  %96 = icmp eq ptr %95, @init_task
  br i1 %96, label %137, label %97

97:                                               ; preds = %113, %93
  %98 = phi ptr [ %116, %113 ], [ %95, %93 ]
  %99 = phi ptr [ %115, %113 ], [ %94, %93 ]
  %100 = load ptr, ptr %66, align 16
  %101 = getelementptr i8, ptr %99, i32 500
  %102 = load ptr, ptr %101, align 16
  %103 = icmp eq ptr %100, %102
  br i1 %103, label %113, label %104

104:                                              ; preds = %97
  %105 = getelementptr i8, ptr %99, i32 -568
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, 2097152
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = getelementptr i8, ptr %99, i32 176
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %118

113:                                              ; preds = %134, %109, %104, %97
  %114 = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 34
  %115 = load volatile ptr, ptr %114, align 4
  %116 = getelementptr i8, ptr %115, i32 -1116
  %117 = icmp eq ptr %116, @init_task
  br i1 %117, label %137, label %97

118:                                              ; preds = %109
  %119 = getelementptr i8, ptr %99, i32 596
  tail call void @_raw_spin_lock(ptr noundef %119) #16
  %120 = getelementptr i8, ptr %99, i32 280
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %134

123:                                              ; preds = %118
  %124 = tail call zeroext i1 @process_shares_mm(ptr noundef %98, ptr noundef nonnull %64) #16
  br i1 %124, label %125, label %134

125:                                              ; preds = %123
  %126 = load ptr, ptr %101, align 16
  %127 = getelementptr inbounds %struct.signal_struct, ptr %126, i32 0, i32 52
  store i16 %65, ptr %127, align 2
  br i1 %2, label %134, label %128

128:                                              ; preds = %125
  %129 = tail call ptr @llvm.thread.pointer() #16
  %130 = tail call zeroext i1 @has_capability_noaudit(ptr noundef %129, i32 noundef 24) #16
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load ptr, ptr %101, align 16
  %133 = getelementptr inbounds %struct.signal_struct, ptr %132, i32 0, i32 53
  store i16 %65, ptr %133, align 4
  br label %134

134:                                              ; preds = %131, %128, %125, %123, %118
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %135 = load i16, ptr %119, align 4
  %136 = add i16 %135, 1
  store i16 %136, ptr %119, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  br label %113

137:                                              ; preds = %113, %93
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %138 = getelementptr inbounds %struct.anon.1, ptr %64, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !31
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %138) #16, !srcloc !9
  %139 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %138, ptr %138, i32 1, ptr elementtype(i32) %138) #16, !srcloc !32
  %140 = extractvalue { i32, i32 } %139, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !33
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143, !prof !15

142:                                              ; preds = %137
  tail call void @__mmdrop(ptr noundef nonnull %64) #16
  br label %143

143:                                              ; preds = %142, %137, %91, %39, %18
  %144 = phi i32 [ 0, %91 ], [ -13, %18 ], [ -13, %39 ], [ 0, %137 ], [ 0, %142 ]
  tail call void @mutex_unlock(ptr noundef nonnull @oom_adj_mutex) #16
  %145 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %145) #16, !srcloc !9
  %146 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %145, ptr %145, i32 1, ptr elementtype(i32) %145) #16, !srcloc !10
  %147 = extractvalue { i32, i32, i32 } %146, 0
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %152, label %149

149:                                              ; preds = %143
  %150 = icmp sgt i32 %147, 0
  br i1 %150, label %153, label %151, !prof !11

151:                                              ; preds = %149
  tail call void @refcount_warn_saturate(ptr noundef %145, i32 noundef 3) #16
  br label %153

152:                                              ; preds = %143
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %8) #16
  br label %153

153:                                              ; preds = %152, %151, %149, %3
  %154 = phi i32 [ -3, %3 ], [ %144, %149 ], [ %144, %151 ], [ %144, %152 ]
  ret i32 %154
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_lock_task_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @has_capability_noaudit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @process_shares_mm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_oom_score_adj_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @oom_score_adj_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [13 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 -40
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @get_pid_task(ptr noundef %9, i32 noundef 0) #16
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(13) %5, i8 0, i32 13, i1 false), !annotation !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 93
  %14 = load ptr, ptr %13, align 16
  %15 = getelementptr inbounds %struct.signal_struct, ptr %14, i32 0, i32 52
  %16 = load i16, ptr %15, align 2
  %17 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #16, !srcloc !9
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #16, !srcloc !10
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = icmp sgt i32 %19, 0
  br i1 %22, label %25, label %23, !prof !11

23:                                               ; preds = %21
  tail call void @refcount_warn_saturate(ptr noundef %17, i32 noundef 3) #16
  br label %25

24:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %10) #16
  br label %25

25:                                               ; preds = %24, %23, %21
  %26 = sext i16 %16 to i32
  %27 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 13, ptr noundef nonnull @.str.79, i32 noundef %26)
  %28 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %27) #16
  br label %29

29:                                               ; preds = %25, %4
  %30 = phi i32 [ %28, %25 ], [ -3, %4 ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %5) #16
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @oom_score_adj_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [13 x i8], align 1
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(13) %5, i8 0, i32 13, i1 false)
  %7 = tail call i32 @llvm.umin.i32(i32 %2, i32 12)
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %7, i32 -1090519040) #17, !srcloc !34
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18, !prof !11

11:                                               ; preds = %4
  %12 = tail call ptr @llvm.thread.pointer() #16
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #18, !srcloc !17
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #16, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !19
  %17 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %7) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #16, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !19
  br label %18

18:                                               ; preds = %11, %4
  %19 = phi i32 [ %17, %11 ], [ %7, %4 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21, !prof !11

21:                                               ; preds = %18
  %22 = sub i32 %7, %19
  %23 = getelementptr i8, ptr %5, i32 %22
  call void @llvm.memset.p0.i32(ptr align 1 %23, i8 0, i32 %19, i1 false) #16
  br label %37

24:                                               ; preds = %18
  %25 = call ptr @strim(ptr noundef nonnull %5) #16
  %26 = call i32 @kstrtoint(ptr noundef %25, i32 noundef 0, ptr noundef nonnull %6) #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, ptr %6, align 4
  %30 = add i32 %29, -1001
  %31 = icmp ult i32 %30, -2001
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = call fastcc i32 @__set_oom_adj(ptr noundef %0, i32 noundef %29, i1 noundef zeroext false)
  br label %34

34:                                               ; preds = %32, %24
  %35 = phi i32 [ %26, %24 ], [ %33, %32 ]
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %28, %21
  %38 = phi i32 [ %35, %34 ], [ -22, %28 ], [ -14, %21 ]
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi i32 [ %38, %37 ], [ %7, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %5) #16
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_tgid_stat(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_task_lookup(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -40
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @get_pid_task(ptr noundef %5, i32 noundef 0) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %59, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %10 = tail call i32 @name_to_int(ptr noundef %9) #16
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %49, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %18 = tail call ptr @find_task_by_pid_ns(i32 noundef %10, ptr noundef %17) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %48, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #16, !srcloc !9
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #16, !srcloc !27
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25, !prof !15

25:                                               ; preds = %20
  %26 = add i32 %23, 1
  %27 = or i32 %26, %23
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %31, label %29, !prof !11

29:                                               ; preds = %25, %20
  %30 = phi i32 [ 2, %20 ], [ 1, %25 ]
  tail call void @refcount_warn_saturate(ptr noundef %21, i32 noundef %30) #16
  br label %31

31:                                               ; preds = %29, %25
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %32 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 93
  %33 = load ptr, ptr %32, align 16
  %34 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 93
  %35 = load ptr, ptr %34, align 16
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = tail call ptr @proc_task_instantiate(ptr noundef %1, ptr noundef nonnull %18, ptr noundef null)
  br label %39

39:                                               ; preds = %37, %31
  %40 = phi ptr [ %38, %37 ], [ inttoptr (i32 -2 to ptr), %31 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #16, !srcloc !9
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #16, !srcloc !10
  %42 = extractvalue { i32, i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = icmp sgt i32 %42, 0
  br i1 %45, label %49, label %46, !prof !11

46:                                               ; preds = %44
  tail call void @refcount_warn_saturate(ptr noundef %21, i32 noundef 3) #16
  br label %49

47:                                               ; preds = %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %18) #16
  br label %49

48:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  br label %49

49:                                               ; preds = %48, %47, %46, %44, %8
  %50 = phi ptr [ inttoptr (i32 -2 to ptr), %8 ], [ inttoptr (i32 -2 to ptr), %48 ], [ %40, %44 ], [ %40, %46 ], [ %40, %47 ]
  %51 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #16, !srcloc !9
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #16, !srcloc !10
  %53 = extractvalue { i32, i32, i32 } %52, 0
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = icmp sgt i32 %53, 0
  br i1 %56, label %59, label %57, !prof !11

57:                                               ; preds = %55
  tail call void @refcount_warn_saturate(ptr noundef %51, i32 noundef 3) #16
  br label %59

58:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %6) #16
  br label %59

59:                                               ; preds = %58, %57, %55, %3
  %60 = phi ptr [ inttoptr (i32 -2 to ptr), %3 ], [ %50, %55 ], [ %50, %57 ], [ %50, %58 ]
  ret ptr %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_task_getattr(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 -40
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @get_pid_task(ptr noundef %11, i32 noundef 0) #16
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %9, ptr noundef %2) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 93
  %16 = load ptr, ptr %15, align 16
  %17 = getelementptr inbounds %struct.signal_struct, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = add i32 %20, %18
  store i32 %21, ptr %19, align 8
  %22 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #16, !srcloc !9
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #16, !srcloc !10
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %14
  %27 = icmp sgt i32 %24, 0
  br i1 %27, label %30, label %28, !prof !11

28:                                               ; preds = %26
  tail call void @refcount_warn_saturate(ptr noundef %22, i32 noundef 3) #16
  br label %30

29:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %12) #16
  br label %30

30:                                               ; preds = %29, %28, %26, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_task_instantiate(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @proc_pid_make_inode(ptr noundef %5, ptr noundef %1, i16 noundef zeroext 16749)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %54, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 7
  store ptr @proc_tid_base_inode_operations, ptr %9, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 39
  store ptr @proc_tid_base_operations, ptr %10, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 8
  store i32 %13, ptr %11, align 4
  %14 = load i1, ptr @nlink_tid, align 1
  %15 = select i1 %14, i32 6, i32 0
  tail call void @set_nlink(ptr noundef nonnull %6, i32 noundef %15) #16
  %16 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 2097152
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %46, !prof !11

20:                                               ; preds = %8
  %21 = load i16, ptr %6, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %22 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 82
  %23 = load volatile ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %28 = icmp eq i16 %21, 16749
  br i1 %28, label %46, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %30) #16
  %31 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 37
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.anon.1, ptr %32, i32 0, i32 43
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 3
  %38 = icmp eq i32 %37, 1
  %39 = select i1 %38, i32 %27, i32 0
  %40 = select i1 %38, i32 %25, i32 0
  br label %41

41:                                               ; preds = %34, %29
  %42 = phi i32 [ 0, %29 ], [ %39, %34 ]
  %43 = phi i32 [ 0, %29 ], [ %40, %34 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %44 = load i16, ptr %30, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  br label %46

46:                                               ; preds = %41, %20, %8
  %47 = phi i32 [ 0, %8 ], [ %43, %41 ], [ %25, %20 ]
  %48 = phi i32 [ 0, %8 ], [ %42, %41 ], [ %27, %20 ]
  %49 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 3
  %50 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 2
  store i32 %47, ptr %50, align 4
  store i32 %48, ptr %49, align 4
  %51 = load i16, ptr %6, align 8
  %52 = and i16 %51, -3073
  store i16 %52, ptr %6, align 8
  tail call void @d_set_d_op(ptr noundef %0, ptr noundef nonnull @pid_dentry_operations) #16
  %53 = tail call ptr @d_splice_alias(ptr noundef nonnull %6, ptr noundef %0) #16
  br label %54

54:                                               ; preds = %46, %3
  %55 = phi ptr [ %53, %46 ], [ inttoptr (i32 -2 to ptr), %3 ]
  ret ptr %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_tid_base_lookup(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call fastcc ptr @proc_pident_lookup(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @tid_base_stuff, ptr noundef getelementptr inbounds ([32 x %struct.pid_entry], ptr @tid_base_stuff, i32 1, i32 0))
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_tid_base_readdir(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @proc_pident_readdir(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @tid_base_stuff, i32 noundef 32)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_task_readdir(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = alloca [11 x i8], align 1
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -40
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pid, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %161, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dir_context, ptr %1, i32 0, i32 1
  %13 = load i64, ptr %12, align 8
  switch i64 %13, label %43 [
    i64 0, label %14
    i64 1, label %26
  ]

14:                                               ; preds = %11
  %15 = load ptr, ptr %1, align 8
  %16 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 10
  %21 = load i32, ptr %20, align 4
  %22 = zext i32 %21 to i64
  %23 = tail call i32 %15(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef 1, i64 noundef 0, i64 noundef %22, i32 noundef 4) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %161

25:                                               ; preds = %14
  store i64 1, ptr %12, align 8
  br label %26

26:                                               ; preds = %25, %11
  %27 = load ptr, ptr %1, align 8
  %28 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %30) #16
  %31 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 10
  %36 = load i32, ptr %35, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %37 = load i16, ptr %30, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  %39 = zext i32 %36 to i64
  %40 = tail call i32 %27(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef 2, i64 noundef 1, i64 noundef %39, i32 noundef 4) #16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %161

42:                                               ; preds = %26
  store i64 2, ptr %12, align 8
  br label %43

43:                                               ; preds = %42, %11
  %44 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 27
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 14
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i32
  store i64 0, ptr %49, align 8
  %52 = load i64, ptr %12, align 8
  %53 = add i64 %52, -2
  %54 = trunc i64 %53 to i32
  %55 = icmp ult i64 %53, 4294967296
  br i1 %55, label %56, label %161

56:                                               ; preds = %43
  %57 = load ptr, ptr %6, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %58 = tail call ptr @pid_task(ptr noundef %57, i32 noundef 0) #16
  %59 = icmp eq ptr %58, null
  br i1 %59, label %104, label %60

60:                                               ; preds = %56
  %61 = icmp ne i32 %51, 0
  %62 = icmp ne i32 %54, 0
  %63 = and i1 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = tail call ptr @find_task_by_pid_ns(i32 noundef %51, ptr noundef %48) #16
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 93
  %69 = load ptr, ptr %68, align 16
  %70 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 93
  %71 = load ptr, ptr %70, align 16
  %72 = icmp eq ptr %69, %71
  br i1 %72, label %92, label %73

73:                                               ; preds = %67, %64, %60
  %74 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 93
  %75 = load ptr, ptr %74, align 16
  %76 = getelementptr inbounds %struct.signal_struct, ptr %75, i32 0, i32 2
  %77 = load i32, ptr %76, align 8
  %78 = icmp ugt i32 %77, %54
  br i1 %78, label %79, label %104

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 59
  %81 = load ptr, ptr %80, align 4
  br label %82

82:                                               ; preds = %86, %79
  %83 = phi ptr [ %81, %79 ], [ %90, %86 ]
  %84 = phi i32 [ %54, %79 ], [ %87, %86 ]
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %82
  %87 = add i32 %84, -1
  %88 = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 64
  %89 = load volatile ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %89, i32 -1380
  %91 = icmp eq ptr %90, %81
  br i1 %91, label %104, label %82

92:                                               ; preds = %82, %67
  %93 = phi ptr [ %65, %67 ], [ %83, %82 ]
  %94 = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %94) #16, !srcloc !9
  %95 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %94, ptr %94, i32 1, ptr elementtype(i32) %94) #16, !srcloc !27
  %96 = extractvalue { i32, i32, i32 } %95, 0
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98, !prof !15

98:                                               ; preds = %92
  %99 = add i32 %96, 1
  %100 = or i32 %99, %96
  %101 = icmp sgt i32 %100, -1
  br i1 %101, label %105, label %102, !prof !11

102:                                              ; preds = %98, %92
  %103 = phi i32 [ 2, %92 ], [ 1, %98 ]
  tail call void @refcount_warn_saturate(ptr noundef %94, i32 noundef %103) #16
  br label %105

104:                                              ; preds = %86, %73, %56
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  br label %161

105:                                              ; preds = %102, %98
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %106 = icmp eq ptr %93, null
  br i1 %106, label %161, label %107

107:                                              ; preds = %157, %105
  %108 = phi ptr [ %148, %157 ], [ %93, %105 ]
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %3, i8 0, i32 11, i1 false), !annotation !14
  %109 = call i32 @__task_pid_nr_ns(ptr noundef nonnull %108, i32 noundef 0, ptr noundef %48) #16
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %125, label %111

111:                                              ; preds = %107
  %112 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 11, ptr noundef nonnull @.str.3, i32 noundef %109)
  %113 = call zeroext i1 @proc_fill_cache(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef %112, ptr noundef nonnull @proc_task_instantiate, ptr noundef nonnull %108, ptr noundef null)
  br i1 %113, label %125, label %114

114:                                              ; preds = %111
  %115 = sext i32 %109 to i64
  store i64 %115, ptr %49, align 8
  %116 = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %116) #16, !srcloc !9
  %117 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %116, ptr %116, i32 1, ptr elementtype(i32) %116) #16, !srcloc !10
  %118 = extractvalue { i32, i32, i32 } %117, 0
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %123, label %120

120:                                              ; preds = %114
  %121 = icmp sgt i32 %118, 0
  br i1 %121, label %124, label %122, !prof !11

122:                                              ; preds = %120
  call void @refcount_warn_saturate(ptr noundef %116, i32 noundef 3) #16
  br label %124

123:                                              ; preds = %114
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  call void @__put_task_struct(ptr noundef nonnull %108) #16
  br label %124

124:                                              ; preds = %123, %122, %120
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #16
  br label %161

125:                                              ; preds = %111, %107
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %126 = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 62
  %127 = load ptr, ptr %126, align 64
  %128 = icmp eq ptr %127, null
  br i1 %128, label %147, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 64
  %131 = load volatile ptr, ptr %130, align 4
  %132 = getelementptr i8, ptr %131, i32 -1380
  %133 = getelementptr i8, ptr %131, i32 -160
  %134 = load i32, ptr %133, align 4
  %135 = icmp sgt i32 %134, -1
  br i1 %135, label %147, label %136

136:                                              ; preds = %129
  %137 = getelementptr i8, ptr %131, i32 -836
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %137) #16, !srcloc !9
  %138 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %137, ptr %137, i32 1, ptr elementtype(i32) %137) #16, !srcloc !27
  %139 = extractvalue { i32, i32, i32 } %138, 0
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %145, label %141, !prof !15

141:                                              ; preds = %136
  %142 = add i32 %139, 1
  %143 = or i32 %142, %139
  %144 = icmp sgt i32 %143, -1
  br i1 %144, label %147, label %145, !prof !11

145:                                              ; preds = %141, %136
  %146 = phi i32 [ 2, %136 ], [ 1, %141 ]
  call void @refcount_warn_saturate(ptr noundef %137, i32 noundef %146) #16
  br label %147

147:                                              ; preds = %145, %141, %129, %125
  %148 = phi ptr [ null, %125 ], [ null, %129 ], [ %132, %141 ], [ %132, %145 ]
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %149 = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %149) #16, !srcloc !9
  %150 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %149, ptr %149, i32 1, ptr elementtype(i32) %149) #16, !srcloc !10
  %151 = extractvalue { i32, i32, i32 } %150, 0
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %156, label %153

153:                                              ; preds = %147
  %154 = icmp sgt i32 %151, 0
  br i1 %154, label %157, label %155, !prof !11

155:                                              ; preds = %153
  call void @refcount_warn_saturate(ptr noundef %149, i32 noundef 3) #16
  br label %157

156:                                              ; preds = %147
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  call void @__put_task_struct(ptr noundef nonnull %108) #16
  br label %157

157:                                              ; preds = %156, %155, %153
  %158 = load i64, ptr %12, align 8
  %159 = add i64 %158, 1
  store i64 %159, ptr %12, align 8
  %160 = icmp eq ptr %148, null
  br i1 %160, label %161, label %107

161:                                              ; preds = %157, %124, %105, %104, %43, %26, %14, %2
  %162 = phi i32 [ -2, %2 ], [ 0, %14 ], [ 0, %26 ], [ 0, %124 ], [ 0, %105 ], [ 0, %104 ], [ 0, %43 ], [ 0, %157 ]
  ret i32 %162
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_map_files_lookup(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = getelementptr i8, ptr %0, i32 -40
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @get_pid_task(ptr noundef %7, i32 noundef 0) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %106, label %10

10:                                               ; preds = %3
  %11 = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %8, i32 noundef 9) #16
  br i1 %11, label %12, label %96

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %14 = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store i64 0, ptr %4, align 8, !annotation !14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store i64 0, ptr %5, align 8, !annotation !14
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 48
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %14, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 45
  br i1 %20, label %21, label %49

21:                                               ; preds = %17, %12
  %22 = call i32 @_parse_integer(ptr noundef %14, i32 noundef 16, ptr noundef nonnull %4) #16
  %23 = icmp sgt i32 %22, -1
  %24 = load i64, ptr %4, align 8
  %25 = icmp ult i64 %24, 4294967296
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %49

27:                                               ; preds = %21
  %28 = getelementptr i8, ptr %14, i32 %22
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 45
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %28, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 48
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %32, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %35, %31
  %40 = call i32 @_parse_integer(ptr noundef %32, i32 noundef 16, ptr noundef nonnull %5) #16
  %41 = icmp sgt i32 %40, -1
  %42 = load i64, ptr %5, align 8
  %43 = icmp ult i64 %42, 4294967296
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = getelementptr i8, ptr %32, i32 %40
  %47 = load i8, ptr %46, align 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45, %39, %35, %27, %21, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %96

50:                                               ; preds = %45
  %51 = load i64, ptr %4, align 8
  %52 = trunc i64 %51 to i32
  %53 = trunc i64 %42 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  %54 = call ptr @get_task_mm(ptr noundef nonnull %8) #16
  %55 = icmp eq ptr %54, null
  br i1 %55, label %96, label %56

56:                                               ; preds = %50
  %57 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %54, i1 noundef zeroext false) #16
  br label %60

60:                                               ; preds = %59, %56
  %61 = getelementptr inbounds %struct.anon.1, ptr %54, i32 0, i32 15
  %62 = call i32 @down_read_killable(ptr noundef %61) #16
  %63 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = icmp eq i32 %62, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %54, i1 noundef zeroext false, i1 noundef zeroext %66) #16
  br label %67

67:                                               ; preds = %65, %60
  %68 = icmp eq i32 %62, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %67
  %70 = call ptr @find_vma(ptr noundef nonnull %54, i32 noundef %52) #16
  %71 = icmp eq ptr %70, null
  br i1 %71, label %88, label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %70, align 4
  %74 = icmp eq i32 %73, %52
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.vm_area_struct, ptr %70, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, %53
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.vm_area_struct, ptr %70, i32 0, i32 14
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.file, ptr %81, i32 0, i32 8
  %85 = load i32, ptr %84, align 8
  %86 = inttoptr i32 %85 to ptr
  %87 = call ptr @proc_map_files_instantiate(ptr noundef %1, ptr noundef nonnull %8, ptr noundef %86)
  br label %88

88:                                               ; preds = %83, %79, %75, %72, %69
  %89 = phi ptr [ %87, %83 ], [ inttoptr (i32 -2 to ptr), %79 ], [ inttoptr (i32 -2 to ptr), %69 ], [ inttoptr (i32 -2 to ptr), %75 ], [ inttoptr (i32 -2 to ptr), %72 ]
  %90 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  call void @__mmap_lock_do_trace_released(ptr noundef nonnull %54, i1 noundef zeroext false) #16
  br label %93

93:                                               ; preds = %92, %88
  call void @up_read(ptr noundef %61) #16
  br label %94

94:                                               ; preds = %93, %67
  %95 = phi ptr [ inttoptr (i32 -4 to ptr), %67 ], [ %89, %93 ]
  call void @mmput(ptr noundef nonnull %54) #16
  br label %96

96:                                               ; preds = %94, %50, %49, %10
  %97 = phi ptr [ %95, %94 ], [ inttoptr (i32 -2 to ptr), %50 ], [ inttoptr (i32 -13 to ptr), %10 ], [ inttoptr (i32 -2 to ptr), %49 ]
  %98 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %98) #16, !srcloc !9
  %99 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %98, ptr %98, i32 1, ptr elementtype(i32) %98) #16, !srcloc !10
  %100 = extractvalue { i32, i32, i32 } %99, 0
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %105, label %102

102:                                              ; preds = %96
  %103 = icmp sgt i32 %100, 0
  br i1 %103, label %106, label %104, !prof !11

104:                                              ; preds = %102
  call void @refcount_warn_saturate(ptr noundef %98, i32 noundef 3) #16
  br label %106

105:                                              ; preds = %96
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  call void @__put_task_struct(ptr noundef nonnull %8) #16
  br label %106

106:                                              ; preds = %105, %104, %102, %3
  %107 = phi ptr [ inttoptr (i32 -2 to ptr), %3 ], [ %97, %102 ], [ %97, %104 ], [ %97, %105 ]
  ret ptr %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_fd_permission(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_map_files_instantiate(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = ptrtoint ptr %2 to i32
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = trunc i32 %4 to i9
  %8 = tail call i9 @llvm.bitreverse.i9(i9 %7)
  %9 = and i9 %8, -128
  %10 = zext i9 %9 to i16
  %11 = or i16 %10, -24576
  %12 = tail call ptr @proc_pid_make_inode(ptr noundef %6, ptr noundef %1, i16 noundef zeroext %11)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = getelementptr i8, ptr %12, i32 -32
  store ptr @map_files_get_link, ptr %15, align 8
  %16 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 7
  store ptr @proc_map_files_link_inode_operations, ptr %16, align 8
  %17 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 13
  store i64 64, ptr %17, align 8
  tail call void @d_set_d_op(ptr noundef %0, ptr noundef nonnull @tid_map_files_dentry_operations) #16
  %18 = tail call ptr @d_splice_alias(ptr noundef nonnull %12, ptr noundef %0) #16
  br label %19

19:                                               ; preds = %14, %3
  %20 = phi ptr [ %18, %14 ], [ inttoptr (i32 -2 to ptr), %3 ]
  ret ptr %20
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmap_read_unlock(ptr noundef %0) unnamed_addr #13 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @__mmap_lock_do_trace_released(ptr noundef %0, i1 noundef zeroext false) #16
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 15
  tail call void @up_read(ptr noundef %6) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_parse_integer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @map_files_get_link(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -40
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @get_pid_task(ptr noundef %8, i32 noundef 0) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %102, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @get_task_mm(ptr noundef nonnull %9) #16
  %13 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #16, !srcloc !9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #16, !srcloc !10
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = icmp sgt i32 %15, 0
  br i1 %18, label %21, label %19, !prof !11

19:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef 3) #16
  br label %21

20:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %9) #16
  br label %21

21:                                               ; preds = %20, %19, %17
  %22 = icmp eq ptr %12, null
  br i1 %22, label %102, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4, i32 1
  %25 = load ptr, ptr %24, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8, !annotation !14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store i64 0, ptr %4, align 8, !annotation !14
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 48
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %25, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 45
  br i1 %31, label %32, label %60

32:                                               ; preds = %28, %23
  %33 = call i32 @_parse_integer(ptr noundef %25, i32 noundef 16, ptr noundef nonnull %3) #16
  %34 = icmp sgt i32 %33, -1
  %35 = load i64, ptr %3, align 8
  %36 = icmp ult i64 %35, 4294967296
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %60

38:                                               ; preds = %32
  %39 = getelementptr i8, ptr %25, i32 %33
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 45
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %39, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 48
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %43, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %46, %42
  %51 = call i32 @_parse_integer(ptr noundef %43, i32 noundef 16, ptr noundef nonnull %4) #16
  %52 = icmp sgt i32 %51, -1
  %53 = load i64, ptr %4, align 8
  %54 = icmp ult i64 %53, 4294967296
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = getelementptr i8, ptr %43, i32 %51
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56, %50, %46, %38, %32, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %100

61:                                               ; preds = %56
  %62 = load i64, ptr %3, align 8
  %63 = trunc i64 %62 to i32
  %64 = trunc i64 %53 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  %65 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %12, i1 noundef zeroext false) #16
  br label %68

68:                                               ; preds = %67, %61
  %69 = getelementptr inbounds %struct.anon.1, ptr %12, i32 0, i32 15
  %70 = call i32 @down_read_killable(ptr noundef %69) #16
  %71 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = icmp eq i32 %70, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %12, i1 noundef zeroext false, i1 noundef zeroext %74) #16
  br label %75

75:                                               ; preds = %73, %68
  %76 = icmp eq i32 %70, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %75
  %78 = call ptr @find_vma(ptr noundef nonnull %12, i32 noundef %63) #16
  %79 = icmp eq ptr %78, null
  br i1 %79, label %94, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr %78, align 4
  %82 = icmp eq i32 %81, %63
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.vm_area_struct, ptr %78, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, %64
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.vm_area_struct, ptr %78, i32 0, i32 14
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.file, ptr %89, i32 0, i32 1
  %93 = load i64, ptr %92, align 8
  store i64 %93, ptr %1, align 4
  call void @path_get(ptr noundef %1) #16
  br label %94

94:                                               ; preds = %91, %87, %83, %80, %77
  %95 = phi i32 [ 0, %91 ], [ -2, %87 ], [ -2, %77 ], [ -2, %83 ], [ -2, %80 ]
  %96 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  call void @__mmap_lock_do_trace_released(ptr noundef nonnull %12, i1 noundef zeroext false) #16
  br label %99

99:                                               ; preds = %98, %94
  call void @up_read(ptr noundef %69) #16
  br label %100

100:                                              ; preds = %99, %75, %60
  %101 = phi i32 [ %70, %75 ], [ %95, %99 ], [ -22, %60 ]
  call void @mmput(ptr noundef nonnull %12) #16
  br label %102

102:                                              ; preds = %100, %21, %2
  %103 = phi i32 [ %101, %100 ], [ -2, %21 ], [ -2, %2 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_map_files_get_link(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call zeroext i1 @ns_capable(ptr noundef nonnull @init_user_ns, i32 noundef 40) #16
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call zeroext i1 @ns_capable(ptr noundef nonnull @init_user_ns, i32 noundef 21) #16
  br i1 %6, label %7, label %9

7:                                                ; preds = %5, %3
  %8 = tail call ptr @proc_pid_get_link(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %8, %7 ], [ inttoptr (i32 -1 to ptr), %5 ]
  ret ptr %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @map_files_d_revalidate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = and i32 %1, 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %136

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 -40
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @get_pid_task(ptr noundef %11, i32 noundef 0) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %136, label %14

14:                                               ; preds = %7
  %15 = tail call ptr @mm_access(ptr noundef nonnull %12, i32 noundef 9) #16
  %16 = icmp eq ptr %15, null
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %18 = or i1 %16, %17
  br i1 %18, label %126, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4, i32 1
  %21 = load ptr, ptr %20, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8, !annotation !14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store i64 0, ptr %4, align 8, !annotation !14
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 48
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %21, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 45
  br i1 %27, label %28, label %56

28:                                               ; preds = %24, %19
  %29 = call i32 @_parse_integer(ptr noundef %21, i32 noundef 16, ptr noundef nonnull %3) #16
  %30 = icmp sgt i32 %29, -1
  %31 = load i64, ptr %3, align 8
  %32 = icmp ult i64 %31, 4294967296
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %56

34:                                               ; preds = %28
  %35 = getelementptr i8, ptr %21, i32 %29
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 45
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %35, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 48
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %39, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %42, %38
  %47 = call i32 @_parse_integer(ptr noundef %39, i32 noundef 16, ptr noundef nonnull %4) #16
  %48 = icmp sgt i32 %47, -1
  %49 = load i64, ptr %4, align 8
  %50 = icmp ult i64 %49, 4294967296
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = getelementptr i8, ptr %39, i32 %47
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52, %46, %42, %34, %28, %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %90

57:                                               ; preds = %52
  %58 = load i64, ptr %3, align 8
  %59 = trunc i64 %58 to i32
  %60 = trunc i64 %49 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  %61 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %15, i1 noundef zeroext false) #16
  br label %64

64:                                               ; preds = %63, %57
  %65 = getelementptr inbounds %struct.anon.1, ptr %15, i32 0, i32 15
  %66 = call i32 @down_read_killable(ptr noundef %65) #16
  %67 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = icmp eq i32 %66, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %15, i1 noundef zeroext false, i1 noundef zeroext %70) #16
  br label %71

71:                                               ; preds = %69, %64
  %72 = icmp eq i32 %66, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %71
  %74 = call ptr @find_vma(ptr noundef nonnull %15, i32 noundef %59) #16
  %75 = icmp eq ptr %74, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %73
  %77 = load i32, ptr %74, align 4
  %78 = icmp eq i32 %77, %59
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.vm_area_struct, ptr %74, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, %60
  br i1 %82, label %84, label %83

83:                                               ; preds = %79, %76
  br label %84

84:                                               ; preds = %83, %79, %73
  %85 = phi ptr [ null, %83 ], [ %74, %79 ], [ null, %73 ]
  %86 = icmp eq ptr %85, null
  %87 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  call void @__mmap_lock_do_trace_released(ptr noundef nonnull %15, i1 noundef zeroext false) #16
  br label %92

90:                                               ; preds = %71, %56
  %91 = phi i32 [ 0, %56 ], [ %66, %71 ]
  call void @mmput(ptr noundef nonnull %15) #16
  br label %126

92:                                               ; preds = %89, %84
  call void @up_read(ptr noundef %65) #16
  call void @mmput(ptr noundef nonnull %15) #16
  br i1 %86, label %126, label %93

93:                                               ; preds = %92
  %94 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 2
  %95 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 3
  %96 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, 2097152
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %123, !prof !11

100:                                              ; preds = %93
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %101 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 82
  %102 = load volatile ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.cred, ptr %102, i32 0, i32 5
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr inbounds %struct.cred, ptr %102, i32 0, i32 6
  %106 = load i32, ptr %105, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %107 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 107
  call void @_raw_spin_lock(ptr noundef %107) #16
  %108 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 37
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %118, label %111

111:                                              ; preds = %100
  %112 = getelementptr inbounds %struct.anon.1, ptr %109, i32 0, i32 43
  %113 = load i32, ptr %112, align 8
  %114 = and i32 %113, 3
  %115 = icmp eq i32 %114, 1
  %116 = select i1 %115, i32 %106, i32 0
  %117 = select i1 %115, i32 %104, i32 0
  br label %118

118:                                              ; preds = %111, %100
  %119 = phi i32 [ 0, %100 ], [ %116, %111 ]
  %120 = phi i32 [ 0, %100 ], [ %117, %111 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %121 = load i16, ptr %107, align 4
  %122 = add i16 %121, 1
  store i16 %122, ptr %107, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  br label %123

123:                                              ; preds = %118, %93
  %124 = phi i32 [ 0, %93 ], [ %120, %118 ]
  %125 = phi i32 [ 0, %93 ], [ %119, %118 ]
  store i32 %124, ptr %94, align 4
  store i32 %125, ptr %95, align 4
  br label %126

126:                                              ; preds = %123, %92, %90, %14
  %127 = phi i32 [ 0, %14 ], [ 1, %123 ], [ 0, %92 ], [ %91, %90 ]
  %128 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %128) #16, !srcloc !9
  %129 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %128, ptr %128, i32 1, ptr elementtype(i32) %128) #16, !srcloc !10
  %130 = extractvalue { i32, i32, i32 } %129, 0
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %135, label %132

132:                                              ; preds = %126
  %133 = icmp sgt i32 %130, 0
  br i1 %133, label %136, label %134, !prof !11

134:                                              ; preds = %132
  call void @refcount_warn_saturate(ptr noundef %128, i32 noundef 3) #16
  br label %136

135:                                              ; preds = %126
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  call void @__put_task_struct(ptr noundef nonnull %12) #16
  br label %136

136:                                              ; preds = %135, %134, %132, %7, %2
  %137 = phi i32 [ -10, %2 ], [ 0, %7 ], [ %127, %132 ], [ %127, %134 ], [ %127, %135 ]
  ret i32 %137
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_map_files_readdir(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.anon.77, align 4
  %4 = alloca [18 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store ptr null, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -40
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @get_pid_task(ptr noundef %8, i32 noundef 0) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %145, label %11

11:                                               ; preds = %2
  %12 = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %9, i32 noundef 9) #16
  br i1 %12, label %13, label %135

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.dir_context, ptr %1, i32 0, i32 1
  %15 = load i64, ptr %14, align 8
  switch i64 %15, label %45 [
    i64 0, label %16
    i64 1, label %28
  ]

16:                                               ; preds = %13
  %17 = load ptr, ptr %1, align 8
  %18 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 5
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = zext i32 %23 to i64
  %25 = tail call i32 %17(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef 1, i64 noundef 0, i64 noundef %24, i32 noundef 4) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %135

27:                                               ; preds = %16
  store i64 1, ptr %14, align 8
  br label %28

28:                                               ; preds = %27, %13
  %29 = load ptr, ptr %1, align 8
  %30 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %32) #16
  %33 = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 3
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.dentry, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 10
  %38 = load i32, ptr %37, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %39 = load i16, ptr %32, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  %41 = zext i32 %38 to i64
  %42 = tail call i32 %29(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef 2, i64 noundef 1, i64 noundef %41, i32 noundef 4) #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %135

44:                                               ; preds = %28
  store i64 2, ptr %14, align 8
  br label %45

45:                                               ; preds = %44, %13
  %46 = tail call ptr @get_task_mm(ptr noundef nonnull %9) #16
  %47 = icmp eq ptr %46, null
  br i1 %47, label %135, label %48

48:                                               ; preds = %45
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %46, i1 noundef zeroext false) #16
  br label %52

52:                                               ; preds = %51, %48
  %53 = getelementptr inbounds %struct.anon.1, ptr %46, i32 0, i32 15
  %54 = tail call i32 @down_read_killable(ptr noundef %53) #16
  %55 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = icmp eq i32 %54, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %46, i1 noundef zeroext false, i1 noundef zeroext %58) #16
  br label %59

59:                                               ; preds = %57, %52
  %60 = icmp eq i32 %54, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load ptr, ptr %46, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %104, label %65

64:                                               ; preds = %59
  tail call void @mmput(ptr noundef nonnull %46) #16
  br label %135

65:                                               ; preds = %98, %61
  %66 = phi ptr [ %102, %98 ], [ %62, %61 ]
  %67 = phi i32 [ %100, %98 ], [ 2, %61 ]
  %68 = phi i32 [ %99, %98 ], [ 0, %61 ]
  %69 = getelementptr inbounds %struct.vm_area_struct, ptr %66, i32 0, i32 14
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %98, label %72

72:                                               ; preds = %65
  %73 = add i32 %67, 1
  %74 = zext i32 %73 to i64
  %75 = load i64, ptr %14, align 8
  %76 = icmp slt i64 %75, %74
  br i1 %76, label %77, label %98

77:                                               ; preds = %72
  %78 = freeze i32 %68
  %79 = udiv i32 %78, 341
  %80 = shl i32 %79, 12
  %81 = mul i32 %79, 341
  %82 = sub i32 %78, %81
  %83 = mul nuw nsw i32 %82, 12
  %84 = add nuw i32 %80, %83
  %85 = call ptr @__genradix_ptr_alloc(ptr noundef nonnull %3, i32 noundef %84, i32 noundef 3264) #16
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  call fastcc void @mmap_read_unlock(ptr noundef nonnull %46)
  call void @mmput(ptr noundef nonnull %46) #16
  br label %135

88:                                               ; preds = %77
  %89 = add i32 %68, 1
  %90 = load i32, ptr %66, align 4
  store i32 %90, ptr %85, align 4
  %91 = getelementptr inbounds %struct.vm_area_struct, ptr %66, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.map_files_info, ptr %85, i32 0, i32 1
  store i32 %92, ptr %93, align 4
  %94 = load ptr, ptr %69, align 4
  %95 = getelementptr inbounds %struct.file, ptr %94, i32 0, i32 8
  %96 = load i32, ptr %95, align 8
  %97 = getelementptr inbounds %struct.map_files_info, ptr %85, i32 0, i32 2
  store i32 %96, ptr %97, align 4
  br label %98

98:                                               ; preds = %88, %72, %65
  %99 = phi i32 [ %68, %72 ], [ %89, %88 ], [ %68, %65 ]
  %100 = phi i32 [ %73, %72 ], [ %73, %88 ], [ %67, %65 ]
  %101 = getelementptr inbounds %struct.vm_area_struct, ptr %66, i32 0, i32 2
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %65

104:                                              ; preds = %98, %61
  %105 = phi i32 [ 0, %61 ], [ %99, %98 ]
  %106 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  call void @__mmap_lock_do_trace_released(ptr noundef nonnull %46, i1 noundef zeroext false) #16
  br label %109

109:                                              ; preds = %108, %104
  call void @up_read(ptr noundef %53) #16
  call void @mmput(ptr noundef nonnull %46) #16
  %110 = icmp eq i32 %105, 0
  br i1 %110, label %135, label %111

111:                                              ; preds = %130, %109
  %112 = phi i32 [ %133, %130 ], [ 0, %109 ]
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(18) %4, i8 0, i32 18, i1 false), !annotation !14
  %113 = freeze i32 %112
  %114 = udiv i32 %113, 341
  %115 = shl i32 %114, 12
  %116 = mul i32 %114, 341
  %117 = sub i32 %113, %116
  %118 = mul nuw nsw i32 %117, 12
  %119 = add nuw i32 %115, %118
  %120 = call ptr @__genradix_ptr(ptr noundef nonnull %3, i32 noundef %119) #16
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds %struct.map_files_info, ptr %120, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 18, ptr noundef nonnull @.str.85, i32 noundef %121, i32 noundef %123)
  %125 = getelementptr inbounds %struct.map_files_info, ptr %120, i32 0, i32 2
  %126 = load i32, ptr %125, align 4
  %127 = inttoptr i32 %126 to ptr
  %128 = call zeroext i1 @proc_fill_cache(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef %124, ptr noundef nonnull @proc_map_files_instantiate, ptr noundef nonnull %9, ptr noundef %127)
  br i1 %128, label %130, label %129

129:                                              ; preds = %111
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %4) #16
  br label %135

130:                                              ; preds = %111
  %131 = load i64, ptr %14, align 8
  %132 = add i64 %131, 1
  store i64 %132, ptr %14, align 8
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %4) #16
  %133 = add nuw i32 %112, 1
  %134 = icmp eq i32 %133, %105
  br i1 %134, label %135, label %111

135:                                              ; preds = %130, %129, %109, %87, %64, %45, %28, %16, %11
  %136 = phi i32 [ %54, %64 ], [ -12, %87 ], [ 0, %129 ], [ 0, %45 ], [ -13, %11 ], [ 0, %16 ], [ 0, %28 ], [ 0, %109 ], [ 0, %130 ]
  %137 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %137) #16, !srcloc !9
  %138 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %137, ptr %137, i32 1, ptr elementtype(i32) %137) #16, !srcloc !10
  %139 = extractvalue { i32, i32, i32 } %138, 0
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %144, label %141

141:                                              ; preds = %135
  %142 = icmp sgt i32 %139, 0
  br i1 %142, label %145, label %143, !prof !11

143:                                              ; preds = %141
  call void @refcount_warn_saturate(ptr noundef %137, i32 noundef 3) #16
  br label %145

144:                                              ; preds = %135
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  call void @__put_task_struct(ptr noundef nonnull %9) #16
  br label %145

145:                                              ; preds = %144, %143, %141, %2
  %146 = phi i32 [ -2, %2 ], [ %136, %141 ], [ %136, %143 ], [ %136, %144 ]
  call void @__genradix_free(ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %146
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__genradix_ptr_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__genradix_ptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__genradix_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_coredump_filter_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [13 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 -40
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @get_pid_task(ptr noundef %9, i32 noundef 0) #16
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(13) %5, i8 0, i32 13, i1 false), !annotation !14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %4
  %13 = tail call ptr @get_task_mm(ptr noundef nonnull %10) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.anon.1, ptr %13, i32 0, i32 43
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 2
  %19 = and i32 %18, 511
  %20 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 13, ptr noundef nonnull @.str.86, i32 noundef %19)
  tail call void @mmput(ptr noundef nonnull %13) #16
  %21 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %20) #16
  br label %22

22:                                               ; preds = %15, %12
  %23 = phi i32 [ %21, %15 ], [ 0, %12 ]
  %24 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #16, !srcloc !9
  %25 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #16, !srcloc !10
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = icmp sgt i32 %26, 0
  br i1 %29, label %32, label %30, !prof !11

30:                                               ; preds = %28
  call void @refcount_warn_saturate(ptr noundef %24, i32 noundef 3) #16
  br label %32

31:                                               ; preds = %22
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  call void @__put_task_struct(ptr noundef nonnull %10) #16
  br label %32

32:                                               ; preds = %31, %30, %28, %4
  %33 = phi i32 [ -3, %4 ], [ %23, %28 ], [ %23, %30 ], [ %23, %31 ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %5) #16
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_coredump_filter_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !14
  %6 = call i32 @kstrtouint_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %5) #16
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %87, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %10, i32 -40
  %12 = load ptr, ptr %11, align 8
  %13 = call ptr @get_pid_task(ptr noundef %12, i32 noundef 0) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %85, label %15

15:                                               ; preds = %8
  %16 = call ptr @get_task_mm(ptr noundef nonnull %13) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %74, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.anon.1, ptr %16, i32 0, i32 43
  %20 = load i32, ptr %5, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  call void @_set_bit(i32 noundef 2, ptr noundef %19) #16
  br label %25

24:                                               ; preds = %18
  call void @_clear_bit(i32 noundef 2, ptr noundef %19) #16
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, ptr %5, align 4
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  call void @_set_bit(i32 noundef 3, ptr noundef %19) #16
  br label %31

30:                                               ; preds = %25
  call void @_clear_bit(i32 noundef 3, ptr noundef %19) #16
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32, ptr %5, align 4
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  call void @_set_bit(i32 noundef 4, ptr noundef %19) #16
  br label %37

36:                                               ; preds = %31
  call void @_clear_bit(i32 noundef 4, ptr noundef %19) #16
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, ptr %5, align 4
  %39 = and i32 %38, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  call void @_set_bit(i32 noundef 5, ptr noundef %19) #16
  br label %43

42:                                               ; preds = %37
  call void @_clear_bit(i32 noundef 5, ptr noundef %19) #16
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i32, ptr %5, align 4
  %45 = and i32 %44, 16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  call void @_set_bit(i32 noundef 6, ptr noundef %19) #16
  br label %49

48:                                               ; preds = %43
  call void @_clear_bit(i32 noundef 6, ptr noundef %19) #16
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i32, ptr %5, align 4
  %51 = and i32 %50, 32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  call void @_set_bit(i32 noundef 7, ptr noundef %19) #16
  br label %55

54:                                               ; preds = %49
  call void @_clear_bit(i32 noundef 7, ptr noundef %19) #16
  br label %55

55:                                               ; preds = %54, %53
  %56 = load i32, ptr %5, align 4
  %57 = and i32 %56, 64
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  call void @_set_bit(i32 noundef 8, ptr noundef %19) #16
  br label %61

60:                                               ; preds = %55
  call void @_clear_bit(i32 noundef 8, ptr noundef %19) #16
  br label %61

61:                                               ; preds = %60, %59
  %62 = load i32, ptr %5, align 4
  %63 = and i32 %62, 128
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  call void @_set_bit(i32 noundef 9, ptr noundef %19) #16
  br label %67

66:                                               ; preds = %61
  call void @_clear_bit(i32 noundef 9, ptr noundef %19) #16
  br label %67

67:                                               ; preds = %66, %65
  %68 = load i32, ptr %5, align 4
  %69 = and i32 %68, 256
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  call void @_set_bit(i32 noundef 10, ptr noundef %19) #16
  br label %73

72:                                               ; preds = %67
  call void @_clear_bit(i32 noundef 10, ptr noundef %19) #16
  br label %73

73:                                               ; preds = %72, %71
  call void @mmput(ptr noundef nonnull %16) #16
  br label %74

74:                                               ; preds = %73, %15
  %75 = phi i32 [ 0, %73 ], [ -3, %15 ]
  %76 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %76) #16, !srcloc !9
  %77 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %76, ptr %76, i32 1, ptr elementtype(i32) %76) #16, !srcloc !10
  %78 = extractvalue { i32, i32, i32 } %77, 0
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = icmp sgt i32 %78, 0
  br i1 %81, label %84, label %82, !prof !11

82:                                               ; preds = %80
  call void @refcount_warn_saturate(ptr noundef %76, i32 noundef 3) #16
  br label %84

83:                                               ; preds = %74
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  call void @__put_task_struct(ptr noundef nonnull %13) #16
  br label %84

84:                                               ; preds = %83, %82, %80
  br i1 %17, label %85, label %87

85:                                               ; preds = %84, %8
  %86 = phi i32 [ %75, %84 ], [ -3, %8 ]
  br label %87

87:                                               ; preds = %85, %84, %4
  %88 = phi i32 [ %6, %4 ], [ %86, %85 ], [ %2, %84 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @timerslack_ns_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store i64 0, ptr %5, align 8, !annotation !14
  %8 = call i32 @kstrtoull_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 10, ptr noundef nonnull %5) #16
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %49, label %10

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %7, i32 -40
  %12 = load ptr, ptr %11, align 8
  %13 = call ptr @get_pid_task(ptr noundef %12, i32 noundef 0) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %49, label %15

15:                                               ; preds = %10
  %16 = tail call ptr @llvm.thread.pointer() #16
  %17 = icmp eq ptr %13, %16
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %19 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 82
  %20 = load volatile ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 21
  %22 = load ptr, ptr %21, align 4
  %23 = call zeroext i1 @ns_capable(ptr noundef %22, i32 noundef 23) #16
  call void asm sideeffect "", "~{memory}"() #16
  br i1 %23, label %24, label %39

24:                                               ; preds = %18
  %25 = call i32 @cap_task_setscheduler(ptr noundef nonnull %13) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %24, %15
  %28 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 107
  call void @_raw_spin_lock(ptr noundef %28) #16
  %29 = load i64, ptr %5, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 144
  %33 = load i64, ptr %32, align 64
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i64 [ %33, %31 ], [ %29, %27 ]
  %36 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 143
  store i64 %35, ptr %36, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %37 = load i16, ptr %28, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %28, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  br label %39

39:                                               ; preds = %34, %24, %18
  %40 = phi i32 [ %2, %34 ], [ %25, %24 ], [ -1, %18 ]
  %41 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #16, !srcloc !9
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #16, !srcloc !10
  %43 = extractvalue { i32, i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = icmp sgt i32 %43, 0
  br i1 %46, label %49, label %47, !prof !11

47:                                               ; preds = %45
  call void @refcount_warn_saturate(ptr noundef %41, i32 noundef 3) #16
  br label %49

48:                                               ; preds = %39
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  call void @__put_task_struct(ptr noundef nonnull %13) #16
  br label %49

49:                                               ; preds = %48, %47, %45, %10, %4
  %50 = phi i32 [ %8, %4 ], [ -3, %10 ], [ %40, %45 ], [ %40, %47 ], [ %40, %48 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @timerslack_ns_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @timerslack_ns_show, ptr noundef %0) #16
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_task_setscheduler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @timerslack_ns_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -40
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @get_pid_task(ptr noundef %6, i32 noundef 0) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @llvm.thread.pointer() #16
  %11 = icmp eq ptr %7, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %13 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 82
  %14 = load volatile ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.cred, ptr %14, i32 0, i32 21
  %16 = load ptr, ptr %15, align 4
  %17 = tail call zeroext i1 @ns_capable(ptr noundef %16, i32 noundef 23) #16
  tail call void asm sideeffect "", "~{memory}"() #16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12, %9
  %19 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %19) #16
  %20 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 143
  %21 = load i64, ptr %20, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.87, i64 noundef %21) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %22 = load i16, ptr %19, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  br label %24

24:                                               ; preds = %18, %12
  %25 = phi i32 [ 0, %18 ], [ -1, %12 ]
  %26 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #16, !srcloc !9
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #16, !srcloc !10
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = icmp sgt i32 %28, 0
  br i1 %31, label %34, label %32, !prof !11

32:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 3) #16
  br label %34

33:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void @__put_task_struct(ptr noundef nonnull %7) #16
  br label %34

34:                                               ; preds = %33, %32, %30, %2
  %35 = phi i32 [ -3, %2 ], [ %25, %30 ], [ %25, %32 ], [ %25, %33 ]
  ret i32 %35
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i9 @llvm.bitreverse.i9(i9) #15

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind readonly }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold nounwind }

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
!8 = !{i64 2148299492}
!9 = !{i64 632984, i64 2148134550, i64 2148134576, i64 2148134623, i64 2148134645, i64 2148134673, i64 2148134693}
!10 = !{i64 2148201627, i64 2148201659, i64 2148201688, i64 2148201722, i64 2148201753, i64 2148201776}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149345022}
!13 = !{i64 2148197812, i64 2148197838, i64 2148197867, i64 2148197901, i64 2148197932, i64 2148197955}
!14 = !{!"auto-init"}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2149997843, i64 2149997868}
!17 = !{i64 2493377}
!18 = !{i64 2493574}
!19 = !{i64 2149978853}
!20 = !{i64 2149044908}
!21 = !{i64 2149045125}
!22 = !{i64 2149271107}
!23 = !{i64 2149266931}
!24 = !{i64 2149267006, i64 2149267033, i64 2149267080, i64 2149267102, i64 2149267130, i64 2149267150}
!25 = !{i64 2149294110}
!26 = !{i64 2149146212}
!27 = !{i64 2148199270, i64 2148199302, i64 2148199331, i64 2148199365, i64 2148199396, i64 2148199419}
!28 = !{i64 2148197319}
!29 = !{i64 619553, i64 619578, i64 619600, i64 619616, i64 619628, i64 619648, i64 619672, i64 619688, i64 619700}
!30 = !{i64 2148197445}
!31 = !{i64 2148298491}
!32 = !{i64 2148200853, i64 2148200885, i64 2148200914, i64 2148200948, i64 2148200979, i64 2148201002}
!33 = !{i64 2148298694}
!34 = !{i64 2149997265, i64 2149997290}
!35 = !{i64 2154331185, i64 2154331664, i64 2154331222, i64 2154331278, i64 2154331312, i64 2154331336, i64 2154331377, i64 2154331398, i64 2154331426, i64 2154331460}
!36 = !{i64 2154167767}
!37 = !{i64 2154167927}
