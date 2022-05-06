; ModuleID = '/llk/IR/kernel/fork.c_pt.bc'
source_filename = "../kernel/fork.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_task:\09\09\09\09\09"
module asm "\09.asciz \09\22free_task\22\09\09\09\09\09"
module asm "__kstrtabns_free_task:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mmdrop:\09\09\09\09\09"
module asm "\09.asciz \09\22__mmdrop\22\09\09\09\09\09"
module asm "__kstrtabns___mmdrop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___put_task_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22__put_task_struct\22\09\09\09\09\09"
module asm "__kstrtabns___put_task_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmput:\09\09\09\09\09"
module asm "\09.asciz \09\22mmput\22\09\09\09\09\09"
module asm "__kstrtabns_mmput:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_task_mm:\09\09\09\09\09"
module asm "\09.asciz \09\22get_task_mm\22\09\09\09\09\09"
module asm "__kstrtabns_get_task_mm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.31, %struct.trace_event, ptr, ptr, %union.anon.32, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.31 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.32 = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mm_struct = type { %struct.anon, [0 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.94, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.84 }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.94 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.14 }
%union.anon.14 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.24, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.upid = type { i32, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, %struct.zone_padding, %struct.lruvec, i32, [56 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [28 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.lock_class_key = type {}
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i32, %struct.atomic_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_task_newtask = type { %struct.trace_entry, i32, [16 x i8], i32, i16, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.rlimit = type { i32, i32 }
%struct.trace_event_raw_task_rename = type { %struct.trace_entry, i32, [16 x i8], [16 x i8], i16, [0 x i8] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.0, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.page = type { i32, %union.anon.5, %union.anon.71, %struct.atomic_t }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.71 = type { %struct.atomic_t }
%struct.file = type { %union.anon.8, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.98, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.99, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.100, ptr, %struct.address_space, %struct.list_head, %union.anon.101, i32, i32, ptr, ptr }
%union.anon.98 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.99 = type { %struct.callback_head }
%union.anon.100 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.101 = type { ptr }
%struct.linux_binfmt = type { %struct.list_head, ptr, ptr, ptr, ptr, i32 }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i32, ptr, %struct.sigset_t }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
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
%struct.kernel_clone_args = type { i64, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr }
%struct.multiprocess_signals = type { %struct.sigset_t, %struct.hlist_node }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.26 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.26 = type { %struct.callback_head }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.90, %struct.anon.91, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.90 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.91 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.clone_args = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@__tpstrtab_task_newtask = internal constant [13 x i8] c"task_newtask\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_task_newtask = dso_local global %struct.static_call_key { ptr @__traceiter_task_newtask }, align 4
@__tracepoint_task_newtask = dso_local global %struct.tracepoint { ptr @__tpstrtab_task_newtask, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_task_newtask, ptr null, ptr @__traceiter_task_newtask, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_task_newtask = internal constant ptr @__tracepoint_task_newtask, section "__tracepoints_ptrs", align 4
@__tpstrtab_task_rename = internal constant [12 x i8] c"task_rename\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_task_rename = dso_local global %struct.static_call_key { ptr @__traceiter_task_rename }, align 4
@__tracepoint_task_rename = dso_local global %struct.tracepoint { ptr @__tpstrtab_task_rename, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_task_rename, ptr null, ptr @__traceiter_task_rename, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_task_rename = internal constant ptr @__tracepoint_task_rename, section "__tracepoints_ptrs", align 4
@str__task__trace_system_name = internal constant [5 x i8] c"task\00", align 1
@trace_event_fields_task_newtask = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.29 { %struct.anon.30 { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.29 { %struct.anon.30 { ptr @.str.12, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.29 { %struct.anon.30 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.29 { %struct.anon.30 { ptr @.str.16, i32 2, i32 2, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_task_newtask = internal global %struct.trace_event_class { ptr @str__task__trace_system_name, ptr @trace_event_raw_event_task_newtask, ptr @perf_trace_task_newtask, ptr @trace_event_reg, ptr @trace_event_fields_task_newtask, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_task_newtask, i64 24), ptr getelementptr (i8, ptr @event_class_task_newtask, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_task_newtask = internal global %struct.trace_event_functions { ptr @trace_raw_output_task_newtask, ptr null, ptr null, ptr null }, align 4
@print_fmt_task_newtask = internal global [110 x i8] c"\22pid=%d comm=%s clone_flags=%lx oom_score_adj=%hd\22, REC->pid, REC->comm, REC->clone_flags, REC->oom_score_adj\00", align 1
@event_task_newtask = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_task_newtask, %union.anon.31 { ptr @__tracepoint_task_newtask }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_task_newtask }, ptr @print_fmt_task_newtask, ptr null, %union.anon.32 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_task_newtask = internal global ptr @event_task_newtask, section "_ftrace_events", align 4
@trace_event_fields_task_rename = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.29 { %struct.anon.30 { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.29 { %struct.anon.30 { ptr @.str.18, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.29 { %struct.anon.30 { ptr @.str.19, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.29 { %struct.anon.30 { ptr @.str.16, i32 2, i32 2, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_task_rename = internal global %struct.trace_event_class { ptr @str__task__trace_system_name, ptr @trace_event_raw_event_task_rename, ptr @perf_trace_task_rename, ptr @trace_event_reg, ptr @trace_event_fields_task_rename, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_task_rename, i64 24), ptr getelementptr (i8, ptr @event_class_task_rename, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_task_rename = internal global %struct.trace_event_functions { ptr @trace_raw_output_task_rename, ptr null, ptr null, ptr null }, align 4
@print_fmt_task_rename = internal global [107 x i8] c"\22pid=%d oldcomm=%s newcomm=%s oom_score_adj=%hd\22, REC->pid, REC->oldcomm, REC->newcomm, REC->oom_score_adj\00", align 1
@event_task_rename = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_task_rename, %union.anon.31 { ptr @__tracepoint_task_rename }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_task_rename }, ptr @print_fmt_task_rename, ptr null, %union.anon.32 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_task_rename = internal global ptr @event_task_rename, section "_ftrace_events", align 4
@process_counts = dso_local global i32 0, section ".data..percpu", align 4
@tasklist_lock = dso_local global %struct.rwlock_t zeroinitializer, section ".data..cacheline_aligned", align 64
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@vm_area_cachep = internal unnamed_addr global ptr null, align 4
@free_task.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [14 x i8] c"kernel/fork.c\00", align 1
@__kstrtab_free_task = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_task = external dso_local constant [0 x i8], align 1
@__ksymtab_free_task = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_task to i32), ptr @__kstrtab_free_task, ptr @__kstrtabns_free_task }, section "___ksymtab+free_task", align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@__mmdrop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__mmdrop.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@mm_cachep = internal unnamed_addr global ptr null, align 4
@__kstrtab___mmdrop = external dso_local constant [0 x i8], align 1
@__kstrtabns___mmdrop = external dso_local constant [0 x i8], align 1
@__ksymtab___mmdrop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mmdrop to i32), ptr @__kstrtab___mmdrop, ptr @__kstrtabns___mmdrop }, section "___ksymtab_gpl+__mmdrop", align 4
@__kstrtab___put_task_struct = external dso_local constant [0 x i8], align 1
@__kstrtabns___put_task_struct = external dso_local constant [0 x i8], align 1
@__ksymtab___put_task_struct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__put_task_struct to i32), ptr @__kstrtab___put_task_struct, ptr @__kstrtabns___put_task_struct }, section "___ksymtab_gpl+__put_task_struct", align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"task_struct\00", align 1
@task_struct_cachep = internal unnamed_addr global ptr null, align 4
@max_threads = internal unnamed_addr global i32 0, align 4
@init_task = external dso_local global %struct.task_struct, align 64
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@mmlist_lock = dso_local global %struct.spinlock zeroinitializer, section ".data..cacheline_aligned", align 64
@__setup_str_coredump_filter_setup = internal constant [17 x i8] c"coredump_filter=\00", section ".init.rodata", align 1
@__setup_coredump_filter_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_coredump_filter_setup, ptr @coredump_filter_setup, i32 0 }, section ".init.setup", align 4
@__kstrtab_mmput = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmput = external dso_local constant [0 x i8], align 1
@__ksymtab_mmput = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmput to i32), ptr @__kstrtab_mmput, ptr @__kstrtabns_mmput }, section "___ksymtab_gpl+mmput", align 4
@__kstrtab_get_task_mm = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_task_mm = external dso_local constant [0 x i8], align 1
@__ksymtab_get_task_mm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_task_mm to i32), ptr @__kstrtab_get_task_mm, ptr @__kstrtabns_get_task_mm }, section "___ksymtab_gpl+get_task_mm", align 4
@sighand_cachep = dso_local local_unnamed_addr global ptr null, align 4
@pidfd_fops = dso_local constant %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pidfd_poll, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @pidfd_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pidfd_show_fdinfo, ptr null, ptr null, ptr null }, align 4
@init_struct_pid = external dso_local global %struct.pid, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"sighand_cache\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"signal_cache\00", align 1
@signal_cachep = internal unnamed_addr global ptr null, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"files_cache\00", align 1
@files_cachep = dso_local local_unnamed_addr global ptr null, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"fs_cache\00", align 1
@fs_cachep = dso_local local_unnamed_addr global ptr null, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"mm_struct\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"vm_area_struct\00", align 1
@total_forks = dso_local local_unnamed_addr global i32 0, align 4
@nr_threads = dso_local local_unnamed_addr global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"pid_t\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"char[TASK_COMM_LEN]\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"clone_flags\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"oom_score_adj\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"pid=%d comm=%s clone_flags=%lx oom_score_adj=%hd\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"oldcomm\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"newcomm\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"pid=%d oldcomm=%s newcomm=%s oom_score_adj=%hd\0A\00", align 1
@vma_init.dummy_vm_ops = internal constant %struct.vm_operations_struct zeroinitializer, align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.21 = private unnamed_addr constant [52 x i8] c"\011BUG: Bad rss-counter state mm:%p type:%s val:%ld\0A\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"\011BUG: non-zero pgtables_bytes on freeing mm: %ld\0A\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"MM_FILEPAGES\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"MM_ANONPAGES\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"MM_SWAPENTS\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"MM_SHMEMPAGES\00", align 1
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@default_dump_filter = internal unnamed_addr global i32 204, align 4
@mmap_init_lock.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"&mm->mmap_lock\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"Pid:\09\00", align 1
@root_user = external dso_local global %struct.user_struct, align 8
@.str.29 = private unnamed_addr constant [8 x i8] c"[pidfd]\00", align 1
@copy_signal.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"&sig->wait_chldexit\00", align 1
@copy_signal.__key.32 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"&sig->cred_guard_mutex\00", align 1
@copy_signal.__key.34 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"&sig->exec_update_lock\00", align 1
@futex_init_task.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"&tsk->futex_exit_mutex\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@oom_adj_mutex = external dso_local global %struct.mutex, align 4
@dup_mm_exe_file.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"\014deny_write_access() failed in %s\0A\00", align 1
@__func__.dup_mm_exe_file = private unnamed_addr constant [16 x i8] c"dup_mm_exe_file\00", align 1
@vm_committed_as = external dso_local global %struct.percpu_counter, align 8
@vm_committed_as_batch = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_sched_process_fork = external dso_local global %struct.tracepoint, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@sighand_ctor.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"&sighand->signalfd_wqh\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @__event_task_newtask, ptr @__event_task_rename, ptr @__ksymtab___mmdrop, ptr @__ksymtab___put_task_struct, ptr @__ksymtab_free_task, ptr @__ksymtab_get_task_mm, ptr @__ksymtab_mmput, ptr @__setup_coredump_filter_setup, ptr @__tracepoint_ptr_task_newtask, ptr @__tracepoint_ptr_task_rename, ptr @__tracepoint_task_newtask, ptr @__tracepoint_task_rename, ptr @event_class_task_newtask, ptr @event_class_task_rename, ptr @event_task_newtask, ptr @event_task_rename], section "llvm.metadata"

@sys_set_tid_address = dso_local alias i32 (ptr), ptr @__se_sys_set_tid_address
@sys_clone = dso_local alias i32 (i32, i32, ptr, i32, ptr), ptr @__se_sys_clone
@sys_clone3 = dso_local alias i32 (ptr, i32), ptr @__se_sys_clone3
@sys_unshare = dso_local alias i32 (i32), ptr @__se_sys_unshare

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_task_newtask(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_task_newtask, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #17
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
define dso_local i32 @__traceiter_task_rename(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_task_rename, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #17
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_task_newtask(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #17
  br i1 %13, label %29, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 36) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %15, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %15, i32 0, i32 2
  %22 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %21, ptr noundef align 32 dereferenceable(16) %22, i32 16, i1 false)
  %23 = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %15, i32 0, i32 3
  store i32 %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 93
  %25 = load ptr, ptr %24, align 16
  %26 = getelementptr inbounds %struct.signal_struct, ptr %25, i32 0, i32 52
  %27 = load i16, ptr %26, align 2
  %28 = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %15, i32 0, i32 4
  store i16 %27, ptr %28, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #17
  br label %29

29:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_task_newtask(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #13, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #17
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #17
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %21, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %21, i32 0, i32 2
  %38 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %37, ptr noundef align 32 dereferenceable(16) %38, i32 16, i1 false)
  %39 = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %21, i32 0, i32 3
  store i32 %2, ptr %39, align 4
  %40 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 93
  %41 = load ptr, ptr %40, align 16
  %42 = getelementptr inbounds %struct.signal_struct, ptr %41, i32 0, i32 52
  %43 = load i16, ptr %42, align 2
  %44 = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %21, i32 0, i32 4
  store i16 %43, ptr %44, align 4
  %45 = load i32, ptr %5, align 4
  %46 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 36, i32 noundef %45, ptr noundef %0, i64 noundef 1, ptr noundef %46, ptr noundef %13, ptr noundef null) #17
  br label %47

47:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_task_rename(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #17
  br i1 %13, label %30, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 48) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %15, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %15, i32 0, i32 2
  %22 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %21, ptr noundef align 32 dereferenceable(16) %22, i32 16, i1 false)
  %23 = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %15, i32 0, i32 3
  %24 = call i32 @strlcpy(ptr noundef %23, ptr noundef %2, i32 noundef 16) #17
  %25 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 93
  %26 = load ptr, ptr %25, align 16
  %27 = getelementptr inbounds %struct.signal_struct, ptr %26, i32 0, i32 52
  %28 = load i16, ptr %27, align 2
  %29 = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %15, i32 0, i32 4
  store i16 %28, ptr %29, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #17
  br label %30

30:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_task_rename(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #13, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %48, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %48, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #17
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #17
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %21, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %21, i32 0, i32 2
  %38 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %37, ptr noundef align 32 dereferenceable(16) %38, i32 16, i1 false)
  %39 = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %21, i32 0, i32 3
  %40 = call i32 @strlcpy(ptr noundef %39, ptr noundef %2, i32 noundef 16) #17
  %41 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 93
  %42 = load ptr, ptr %41, align 16
  %43 = getelementptr inbounds %struct.signal_struct, ptr %42, i32 0, i32 52
  %44 = load i16, ptr %43, align 2
  %45 = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %21, i32 0, i32 4
  store i16 %44, ptr %45, align 4
  %46 = load i32, ptr %5, align 4
  %47 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 52, i32 noundef %46, ptr noundef %0, i64 noundef 1, ptr noundef %47, ptr noundef %13, ptr noundef null) #17
  br label %48

48:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @nr_processes() local_unnamed_addr #3 {
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  %3 = icmp ult i32 %2, %1
  br i1 %3, label %4, label %15

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %13, %4 ], [ %2, %0 ]
  %6 = phi i32 [ %12, %4 ], [ 0, %0 ]
  %7 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, ptrtoint (ptr @process_counts to i32)
  %10 = inttoptr i32 %9 to ptr
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %6
  %13 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #18
  %14 = icmp ult i32 %13, %1
  br i1 %14, label %4, label %15

15:                                               ; preds = %4, %0
  %16 = phi i32 [ 0, %0 ], [ %12, %4 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @arch_release_task_struct(ptr noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vm_area_alloc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @vm_area_cachep, align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3264) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(92) %3, i8 0, i32 92, i1 false) #17
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 6
  store ptr %0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 12
  store ptr @vma_init.dummy_vm_ops, ptr %7, align 8
  %8 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 10
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 10, i32 1
  store ptr %8, ptr %9, align 8
  br label %10

10:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vm_area_dup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @vm_area_cachep, align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3264) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(92) %3, ptr noundef align 4 dereferenceable(92) %0, i32 92, i1 false)
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 10
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 10, i32 1
  store ptr %6, ptr %7, align 8
  %8 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 3
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 2
  store ptr null, ptr %9, align 8
  br label %10

10:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vm_area_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @vm_area_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_task_stack(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 151
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #17, !srcloc !14
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #17, !srcloc !15
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %29, label %8, !prof !10

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #17
  br label %29

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  %10 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 1
  %11 = load volatile i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 128
  br i1 %12, label %14, label %13, !prof !10

13:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 430, i32 noundef 9, ptr noundef null) #17
  br label %29

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr @mem_map, align 4
  %18 = ptrtoint ptr %16 to i32
  %19 = add i32 %18, 1073741824
  %20 = lshr i32 %19, 12
  %21 = getelementptr %struct.page, ptr %17, i32 %20, i32 1
  %22 = load volatile i32, ptr %21, align 4
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 37, i32 noundef -8) #17
  %23 = load ptr, ptr @mem_map, align 4
  %24 = load ptr, ptr %15, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = add i32 %25, 1073741824
  %27 = lshr i32 %26, 12
  %28 = getelementptr %struct.page, ptr %23, i32 %27
  tail call void @__free_pages(ptr noundef %28, i32 noundef 1) #17
  store ptr null, ptr %15, align 4
  br label %29

29:                                               ; preds = %14, %13, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_task(ptr noundef %0) #0 {
  tail call void @release_user_cpus_ptr(ptr noundef %0) #17
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 151
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp ne i32 %3, 0
  %5 = load i1, ptr @free_task.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %1
  store i1 true, ptr @free_task.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #17
  br label %9

9:                                                ; preds = %8, %1
  tail call void @arch_release_task_struct(ptr noundef %0)
  %10 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 2097152
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @free_kthread_struct(ptr noundef %0) #17
  br label %15

15:                                               ; preds = %14, %9
  %16 = load ptr, ptr @task_struct_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %16, ptr noundef %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_user_cpus_ptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_kthread_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__mmdrop(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, @init_mm
  br i1 %2, label %3, label %4, !prof !11

3:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/fork.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #17, !srcloc !17
  unreachable

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #17
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 37
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %0
  %9 = load i1, ptr @__mmdrop.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !11

12:                                               ; preds = %4
  store i1 true, ptr @__mmdrop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 699, i32 noundef 9, ptr noundef null) #17
  br label %13

13:                                               ; preds = %12, %4
  %14 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 38
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, %0
  %17 = load i1, ptr @__mmdrop.__already_done.1, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !11

20:                                               ; preds = %13
  store i1 true, ptr @__mmdrop.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 700, i32 noundef 9, ptr noundef null) #17
  br label %21

21:                                               ; preds = %20, %13
  %22 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  tail call void @pgd_free(ptr noundef %0, ptr noundef %23) #17
  %24 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 40
  %25 = load volatile i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27, !prof !10

27:                                               ; preds = %21
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %25) #19
  br label %29

29:                                               ; preds = %27, %21
  %30 = getelementptr %struct.anon, ptr %0, i32 0, i32 40, i32 0, i32 1
  %31 = load volatile i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33, !prof !10

33:                                               ; preds = %29
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %31) #19
  br label %35

35:                                               ; preds = %33, %29
  %36 = getelementptr %struct.anon, ptr %0, i32 0, i32 40, i32 0, i32 2
  %37 = load volatile i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39, !prof !10

39:                                               ; preds = %35
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %37) #19
  br label %41

41:                                               ; preds = %39, %35
  %42 = getelementptr %struct.anon, ptr %0, i32 0, i32 40, i32 0, i32 3
  %43 = load volatile i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45, !prof !10

45:                                               ; preds = %41
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %43) #19
  br label %47

47:                                               ; preds = %45, %41
  %48 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 12
  %49 = load volatile i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load volatile i32, ptr %48, align 4
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %52) #19
  br label %54

54:                                               ; preds = %51, %47
  %55 = load ptr, ptr @mm_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %55, ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__put_task_struct(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 41
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 747, i32 noundef 9, ptr noundef null) #17
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !10

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 748, i32 noundef 9, ptr noundef null) #17
  br label %11

11:                                               ; preds = %10, %6
  %12 = tail call ptr @llvm.thread.pointer() #17
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %15, !prof !11

14:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 749, i32 noundef 9, ptr noundef null) #17
  br label %15

15:                                               ; preds = %14, %11
  %16 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 91
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @__io_uring_free(ptr noundef %0) #17
  br label %20

20:                                               ; preds = %19, %15
  tail call void @cgroup_free(ptr noundef %0) #17
  tail call void @exit_creds(ptr noundef %0) #17
  %21 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %22 = load ptr, ptr %21, align 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #17, !srcloc !14
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #17, !srcloc !15
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = icmp sgt i32 %24, 0
  br i1 %27, label %47, label %28, !prof !10

28:                                               ; preds = %26
  tail call void @refcount_warn_saturate(ptr noundef %22, i32 noundef 3) #17
  br label %47

29:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  %30 = getelementptr inbounds %struct.signal_struct, ptr %22, i32 0, i32 54
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.anon, ptr %31, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #17, !srcloc !14
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #17, !srcloc !19
  %36 = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !20
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45, !prof !11

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.anon, ptr %31, i32 0, i32 50
  store i32 -32, ptr %39, align 4
  %40 = getelementptr inbounds %struct.anon, ptr %31, i32 0, i32 50, i32 1
  store volatile ptr %40, ptr %40, align 4
  %41 = getelementptr inbounds %struct.anon, ptr %31, i32 0, i32 50, i32 1, i32 1
  store ptr %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.anon, ptr %31, i32 0, i32 50, i32 2
  store ptr @mmdrop_async_fn, ptr %42, align 4
  %43 = load ptr, ptr @system_wq, align 4
  %44 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %43, ptr noundef %39) #17
  br label %45

45:                                               ; preds = %38, %33, %29
  %46 = load ptr, ptr @signal_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %46, ptr noundef %22) #17
  br label %47

47:                                               ; preds = %45, %28, %26
  tail call void @release_user_cpus_ptr(ptr noundef %0) #17
  %48 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 151
  %49 = load volatile i32, ptr %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = load i1, ptr @free_task.__already_done, align 1
  %52 = xor i1 %51, true
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %55, !prof !11

54:                                               ; preds = %47
  store i1 true, ptr @free_task.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #17
  br label %55

55:                                               ; preds = %54, %47
  tail call void @arch_release_task_struct(ptr noundef %0) #17
  %56 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 2097152
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  tail call void @free_kthread_struct(ptr noundef %0) #17
  br label %61

61:                                               ; preds = %60, %55
  %62 = load ptr, ptr @task_struct_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %62, ptr noundef %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define weak dso_local void @arch_task_cache_init() local_unnamed_addr #7 section ".init.text" {
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @fork_init() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.2, i32 noundef 2176, i32 noundef 64, i32 noundef 262144, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  store ptr %1, ptr @task_struct_cachep, align 4
  tail call void @arch_task_cache_init() #20
  %2 = load volatile i32, ptr @_totalram_pages, align 4
  %3 = zext i32 %2 to i64
  %4 = shl nuw nsw i64 %3, 12
  %5 = tail call i64 @div64_u64(i64 noundef %4, i64 noundef 65536) #17
  %6 = tail call i64 @llvm.umin.i64(i64 %5, i64 1073741823) #17
  %7 = tail call i64 @llvm.umax.i64(i64 %6, i64 20) #17
  %8 = trunc i64 %7 to i32
  store i32 %8, ptr @max_threads, align 4
  %9 = lshr i32 %8, 1
  %10 = load ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 93), align 16
  %11 = getelementptr %struct.signal_struct, ptr %10, i32 0, i32 50, i32 6
  store i32 %9, ptr %11, align 8
  %12 = load ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 93), align 16
  %13 = getelementptr %struct.signal_struct, ptr %12, i32 0, i32 50, i32 6, i32 1
  store i32 %9, ptr %13, align 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 93), align 16
  %15 = getelementptr %struct.signal_struct, ptr %14, i32 0, i32 50, i32 11
  %16 = getelementptr %struct.signal_struct, ptr %14, i32 0, i32 50, i32 6
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %15, align 8
  br label %18

18:                                               ; preds = %18, %0
  %19 = phi i32 [ 0, %0 ], [ %21, %18 ]
  %20 = getelementptr %struct.user_namespace, ptr @init_user_ns, i32 0, i32 17, i32 %19
  store i32 %9, ptr %20, align 4
  %21 = add nuw nsw i32 %19, 1
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %18

23:                                               ; preds = %18
  store i32 2147483647, ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 17, i32 10), align 4
  store i32 2147483647, ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 17, i32 11), align 4
  store i32 2147483647, ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 17, i32 12), align 4
  store i32 2147483647, ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 17, i32 13), align 4
  tail call void @uprobes_init() #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @uprobes_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @arch_dup_task_struct(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(2176) %0, ptr noundef align 64 dereferenceable(2176) %1, i32 2176, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @set_task_stack_end_magic(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  store i32 1470918301, ptr %3, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @coredump_filter_setup(ptr noundef %0) #7 section ".init.text" {
  %2 = tail call i32 @simple_strtoul(ptr noundef %0, ptr noundef null, i32 noundef 0) #17
  %3 = shl i32 %2, 2
  %4 = and i32 %3, 2044
  store i32 %4, ptr @default_dump_filter, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mm_alloc() local_unnamed_addr #0 {
  %1 = load ptr, ptr @mm_cachep, align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 3264) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(448) %2, i8 0, i32 448, i1 false)
  %5 = tail call fastcc ptr @mm_init(ptr noundef nonnull %2)
  br label %6

6:                                                ; preds = %4, %0
  %7 = phi ptr [ %5, %4 ], [ null, %0 ]
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @mm_init(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store volatile i32 1, ptr %2, align 4
  %3 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 11
  store volatile i32 1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 26
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 15
  tail call void @__init_rwsem(ptr noundef %5, ptr noundef nonnull @.str.27, ptr noundef nonnull @mmap_init_lock.__key) #17
  %6 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 16
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 16, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 12
  store volatile i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 13
  store i32 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 20
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #17, !srcloc !14
  %12 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %11, ptr %11, i64 0) #17, !srcloc !21
  %13 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 40
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %13, i8 0, i32 16, i1 false)
  %14 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 14
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 27
  store i32 0, ptr %15, align 4
  %16 = ptrtoint ptr %0 to i32
  %17 = add i32 %16, 448
  %18 = inttoptr i32 %17 to ptr
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 44
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 45
  store ptr null, ptr %20, align 8
  %21 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 51
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 47
  store volatile ptr null, ptr %22, align 8
  %23 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 48
  store volatile i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 49
  store ptr null, ptr %24, align 8
  %25 = tail call ptr @llvm.thread.pointer() #17
  %26 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 37
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.anon, ptr %27, i32 0, i32 43
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 16779263
  %33 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 43
  store i32 %32, ptr %33, align 8
  %34 = load ptr, ptr %26, align 4
  %35 = getelementptr inbounds %struct.anon, ptr %34, i32 0, i32 25
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 1073741824
  br label %41

38:                                               ; preds = %1
  %39 = load i32, ptr @default_dump_filter, align 4
  %40 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 43
  store i32 %39, ptr %40, align 8
  br label %41

41:                                               ; preds = %38, %29
  %42 = phi i32 [ 0, %38 ], [ %37, %29 ]
  %43 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 25
  store i32 %42, ptr %43, align 4
  %44 = tail call ptr @pgd_alloc(ptr noundef %0) #17
  %45 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 8
  store ptr %44, ptr %45, align 4
  %46 = icmp eq ptr %44, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #17, !srcloc !14
  %49 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %48, ptr %48, i64 0) #17, !srcloc !21
  %50 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 46
  store ptr @init_user_ns, ptr %50, align 4
  br label %53

51:                                               ; preds = %41
  %52 = load ptr, ptr @mm_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %52, ptr noundef %0) #17
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi ptr [ null, %51 ], [ %0, %47 ]
  ret ptr %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmput(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #17, !srcloc !14
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #17, !srcloc !19
  %4 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call fastcc void @__mmput(ptr noundef %0)
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__mmput(ptr noundef %0) unnamed_addr #10 {
  tail call void @uprobe_clear_state(ptr noundef %0) #17
  tail call void @exit_aio(ptr noundef %0) #17
  tail call void @exit_mmap(ptr noundef %0) #17
  %2 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 47
  %3 = load volatile ptr, ptr %2, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  store volatile ptr null, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 37
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #17, !srcloc !14
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #17, !srcloc !23
  tail call void @fput(ptr noundef nonnull %3) #17
  br label %10

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 16
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  tail call void @_raw_spin_lock(ptr noundef nonnull @mmlist_lock) #17
  %15 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 16, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %11, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %19 = load i16, ptr @mmlist_lock, align 64
  %20 = add i16 %19, 1
  store i16 %20, ptr @mmlist_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  br label %21

21:                                               ; preds = %14, %10
  %22 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 41
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.linux_binfmt, ptr %23, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void @module_put(ptr noundef %27) #17
  br label %28

28:                                               ; preds = %25, %21
  %29 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #17, !srcloc !14
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #17, !srcloc !19
  %31 = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !20
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34, !prof !11

33:                                               ; preds = %28
  tail call void @__mmdrop(ptr noundef %0) #17
  br label %34

34:                                               ; preds = %33, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmput_async(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #17, !srcloc !14
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #17, !srcloc !19
  %4 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 50
  store i32 -32, ptr %7, align 4
  %8 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 50, i32 1
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 50, i32 1, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 50, i32 2
  store ptr @mmput_async_fn, ptr %10, align 4
  %11 = load ptr, ptr @system_wq, align 4
  %12 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %11, ptr noundef %7) #17
  br label %13

13:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmput_async_fn(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -428
  tail call fastcc void @__mmput(ptr noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_mm_exe_file(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 47
  %4 = load volatile ptr, ptr %3, align 8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 37
  %10 = load volatile i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %20, %6
  %12 = phi i32 [ %10, %6 ], [ %21, %20 ]
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %33, label %14, !prof !11

14:                                               ; preds = %11
  %15 = add i32 %12, -1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #17, !srcloc !14
  br label %16

16:                                               ; preds = %16, %14
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 %12, i32 %15, ptr elementtype(i32) %9) #17, !srcloc !29
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %16

20:                                               ; preds = %16
  %21 = extractvalue { i32, i32 } %17, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !30
  %22 = icmp eq i32 %21, %12
  br i1 %22, label %23, label %11, !prof !10

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #17, !srcloc !14
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #17, !srcloc !23
  br label %26

26:                                               ; preds = %23, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !22
  store volatile ptr %1, ptr %3, align 8
  %27 = icmp eq ptr %4, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 37
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #17, !srcloc !14
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #17, !srcloc !23
  tail call void @fput(ptr noundef nonnull %4) #17
  br label %33

33:                                               ; preds = %28, %26, %11
  %34 = phi i32 [ 0, %28 ], [ 0, %26 ], [ -13, %11 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @replace_mm_exe_file(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %3 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 47
  %4 = load volatile ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #17, !srcloc !14
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 1, ptr elementtype(i32) %7) #17, !srcloc !33
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %2
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !34
  br label %53

12:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !34
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %0, i1 noundef zeroext false) #17
  br label %16

16:                                               ; preds = %15, %12
  %17 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 15
  tail call void @down_read(ptr noundef %17) #17
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext true) #17
  br label %21

21:                                               ; preds = %20, %16
  %22 = load ptr, ptr %0, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 1
  %26 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 1, i32 1
  br label %27

27:                                               ; preds = %42, %24
  %28 = phi ptr [ %22, %24 ], [ %44, %42 ]
  %29 = getelementptr inbounds %struct.vm_area_struct, ptr %28, i32 0, i32 14
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.file, ptr %30, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %25, align 4
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.file, ptr %30, i32 0, i32 1, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %26, align 4
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %37, %32, %27
  %43 = getelementptr inbounds %struct.vm_area_struct, ptr %28, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %27

46:                                               ; preds = %42, %37, %21
  %47 = phi i32 [ 0, %21 ], [ -16, %37 ], [ 0, %42 ]
  %48 = phi i1 [ true, %21 ], [ false, %37 ], [ true, %42 ]
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  tail call void @__mmap_lock_do_trace_released(ptr noundef %0, i1 noundef zeroext false) #17
  br label %52

52:                                               ; preds = %51, %46
  tail call void @up_read(ptr noundef %17) #17
  tail call void @fput(ptr noundef nonnull %4) #17
  br i1 %48, label %53, label %96

53:                                               ; preds = %52, %11
  %54 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 37
  %57 = load volatile i32, ptr %56, align 4
  br label %58

58:                                               ; preds = %67, %53
  %59 = phi i32 [ %57, %53 ], [ %68, %67 ]
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %96, label %61, !prof !11

61:                                               ; preds = %58
  %62 = add i32 %59, -1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #17, !srcloc !14
  br label %63

63:                                               ; preds = %63, %61
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 %59, i32 %62, ptr elementtype(i32) %56) #17, !srcloc !29
  %65 = extractvalue { i32, i32 } %64, 0
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %63

67:                                               ; preds = %63
  %68 = extractvalue { i32, i32 } %64, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !30
  %69 = icmp eq i32 %68, %59
  br i1 %69, label %70, label %58, !prof !10

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %71) #17, !srcloc !14
  %72 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %71, ptr %71, i32 1, ptr elementtype(i32) %71) #17, !srcloc !23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  %73 = ptrtoint ptr %1 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #17, !srcloc !14
  %74 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %73, ptr %3) #17, !srcloc !37
  %75 = extractvalue { i32, i32 } %74, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !38
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %96, label %77

77:                                               ; preds = %70
  %78 = inttoptr i32 %75 to ptr
  %79 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %0, i1 noundef zeroext false) #17
  br label %82

82:                                               ; preds = %81, %77
  %83 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 15
  tail call void @down_read(ptr noundef %83) #17
  %84 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext true) #17
  br label %87

87:                                               ; preds = %86, %82
  %88 = getelementptr inbounds %struct.file, ptr %78, i32 0, i32 2
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.inode, ptr %89, i32 0, i32 37
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %90) #17, !srcloc !14
  %91 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %90, ptr %90, i32 1, ptr elementtype(i32) %90) #17, !srcloc !23
  tail call void @fput(ptr noundef nonnull %78) #17
  %92 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  tail call void @__mmap_lock_do_trace_released(ptr noundef %0, i1 noundef zeroext false) #17
  br label %95

95:                                               ; preds = %94, %87
  tail call void @up_read(ptr noundef %83) #17
  br label %96

96:                                               ; preds = %95, %70, %58, %52
  %97 = phi i32 [ %47, %52 ], [ 0, %95 ], [ 0, %70 ], [ -13, %58 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_mm_exe_file(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %2 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 47
  %3 = load volatile ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #17, !srcloc !14
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 0, i32 1, ptr elementtype(i32) %6) #17, !srcloc !33
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %11

11:                                               ; preds = %10, %5, %1
  %12 = phi ptr [ null, %1 ], [ null, %5 ], [ %3, %10 ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !34
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_task_exe_file(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %2) #17
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 37
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 2097152
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %12 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 47
  %13 = load volatile ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #17, !srcloc !14
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 0, i32 1, ptr elementtype(i32) %16) #17, !srcloc !33
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  br label %21

21:                                               ; preds = %20, %15, %11
  %22 = phi ptr [ null, %11 ], [ null, %15 ], [ %13, %20 ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !34
  br label %23

23:                                               ; preds = %21, %6, %1
  %24 = phi ptr [ null, %6 ], [ %22, %21 ], [ null, %1 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %25 = load i16, ptr %2, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_task_mm(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %2) #17
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 37
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 2097152
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #17, !srcloc !14
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #17, !srcloc !23
  br label %14

14:                                               ; preds = %11, %6, %1
  %15 = phi ptr [ %4, %11 ], [ null, %1 ], [ null, %6 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %16 = load i16, ptr %2, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mm_access(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 56
  %6 = tail call i32 @down_read_killable(ptr noundef %5) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = inttoptr i32 %6 to ptr
  br label %45

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %11) #17
  %12 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 37
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 2097152
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #17, !srcloc !14
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #17, !srcloc !23
  br label %23

23:                                               ; preds = %20, %15, %10
  %24 = phi ptr [ %13, %20 ], [ null, %10 ], [ null, %15 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %25 = load i16, ptr %11, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  %27 = icmp eq ptr %24, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %23
  %29 = tail call ptr @llvm.thread.pointer() #17
  %30 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 37
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %24, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = tail call zeroext i1 @ptrace_may_access(ptr noundef %0, i32 noundef %1) #17
  br i1 %34, label %41, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.anon, ptr %24, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #17, !srcloc !14
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #17, !srcloc !19
  %38 = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !20
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  tail call fastcc void @__mmput(ptr noundef nonnull %24) #17
  br label %41

41:                                               ; preds = %40, %35, %33, %28, %23
  %42 = phi ptr [ %24, %33 ], [ %24, %28 ], [ null, %23 ], [ inttoptr (i32 -13 to ptr), %35 ], [ inttoptr (i32 -13 to ptr), %40 ]
  %43 = load ptr, ptr %3, align 16
  %44 = getelementptr inbounds %struct.signal_struct, ptr %43, i32 0, i32 56
  tail call void @up_read(ptr noundef %44) #17
  br label %45

45:                                               ; preds = %41, %8
  %46 = phi ptr [ %9, %8 ], [ %42, %41 ]
  ret ptr %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptrace_may_access(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exit_mm_release(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @futex_exit_release(ptr noundef %0) #17
  tail call fastcc void @mm_release(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @futex_exit_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mm_release(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @uprobe_free_utask(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 68
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 10
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = tail call ptr @llvm.thread.pointer() #17
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #13, !srcloc !39
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #17, !srcloc !40
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !41
  %16 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %4, i32 0, i32 -1090519041) #17, !srcloc !42
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #17, !srcloc !40
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !41
  %17 = load ptr, ptr %3, align 4
  %18 = tail call i32 @do_futex(ptr noundef %17, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0) #17
  br label %19

19:                                               ; preds = %10, %6
  store ptr null, ptr %3, align 4
  br label %20

20:                                               ; preds = %19, %2
  %21 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 66
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %25) #17
  %26 = load ptr, ptr %21, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28, !prof !11

28:                                               ; preds = %24
  store ptr null, ptr %21, align 4
  tail call void @complete(ptr noundef nonnull %26) #17
  br label %29

29:                                               ; preds = %28, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %30 = load i16, ptr %25, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  br label %32

32:                                               ; preds = %29, %20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exec_mm_release(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @futex_exec_release(ptr noundef %0) #17
  tail call fastcc void @mm_release(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @futex_exec_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__cleanup_sighand(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sighand_struct, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #17, !srcloc !14
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #17, !srcloc !15
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %11, label %8, !prof !10

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #17
  br label %11

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  tail call void @signalfd_cleanup(ptr noundef %0) #17
  %10 = load ptr, ptr @sighand_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %10, ptr noundef %0) #17
  br label %11

11:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @signalfd_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_set_tid_address(i32 noundef %0) #0 {
  %2 = inttoptr i32 %0 to ptr
  %3 = tail call ptr @llvm.thread.pointer() #17
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  store ptr %2, ptr %4, align 4
  %5 = tail call i32 @__task_pid_nr_ns(ptr noundef %3, i32 noundef 0, ptr noundef null) #17
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @pidfd_pid(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @pidfd_fops
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ inttoptr (i32 -9 to ptr), %1 ]
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pidfd_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pid, ptr %4, i32 0, i32 5
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %5, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #17
  br label %13

13:                                               ; preds = %12, %7, %2
  %14 = tail call zeroext i1 @thread_group_exited(ptr noundef %4) #17
  %15 = select i1 %14, i32 65, i32 0
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pidfd_release(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  store ptr null, ptr %3, align 8
  tail call void @put_pid(ptr noundef %4) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pidfd_show_fdinfo(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pid, ptr %4, i32 0, i32 3
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8, !prof !11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @pid_nr_ns(ptr noundef %4, ptr noundef %17) #17
  br label %19

19:                                               ; preds = %8, %2
  %20 = phi i32 [ %18, %8 ], [ -1, %2 ]
  %21 = sext i32 %20 to i64
  tail call void @seq_put_decimal_ll(ptr noundef %0, ptr noundef nonnull @.str.28, i64 noundef %21) #17
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #17
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @fork_idle(i32 noundef %0) local_unnamed_addr #7 section ".init.text" {
  %2 = alloca %struct.kernel_clone_args, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #17
  %3 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i32 56, i1 false)
  store i64 256, ptr %2, align 8
  %4 = call fastcc ptr @copy_process(ptr noundef nonnull @init_struct_pid, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2)
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %23, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 93
  %8 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 63, i32 0
  store ptr null, ptr %8, align 4
  %9 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 63, i32 0, i32 1
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 62
  store ptr @init_struct_pid, ptr %10, align 64
  %11 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 63, i32 1
  store ptr null, ptr %11, align 4
  %12 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 63, i32 1, i32 1
  store ptr null, ptr %12, align 4
  %13 = load ptr, ptr %7, align 16
  %14 = getelementptr %struct.signal_struct, ptr %13, i32 0, i32 22, i32 1
  store ptr @init_struct_pid, ptr %14, align 4
  %15 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 63, i32 2
  store ptr null, ptr %15, align 4
  %16 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 63, i32 2, i32 1
  store ptr null, ptr %16, align 4
  %17 = load ptr, ptr %7, align 16
  %18 = getelementptr %struct.signal_struct, ptr %17, i32 0, i32 22, i32 2
  store ptr @init_struct_pid, ptr %18, align 4
  %19 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 63, i32 3
  store ptr null, ptr %19, align 4
  %20 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 63, i32 3, i32 1
  store ptr null, ptr %20, align 4
  %21 = load ptr, ptr %7, align 16
  %22 = getelementptr %struct.signal_struct, ptr %21, i32 0, i32 22, i32 3
  store ptr @init_struct_pid, ptr %22, align 4
  call void @init_idle(ptr noundef %4, i32 noundef %0) #17
  br label %23

23:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #17
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @copy_process(ptr noundef readnone %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.multiprocess_signals, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  %6 = load i64, ptr %3, align 8
  %7 = tail call ptr @llvm.thread.pointer() #17
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 92
  %9 = load ptr, ptr %8, align 4
  %10 = and i64 %6, 131584
  %11 = icmp eq i64 %10, 131584
  %12 = and i64 %6, 268435968
  %13 = icmp eq i64 %12, 268435968
  %14 = or i1 %11, %13
  br i1 %14, label %575, label %15

15:                                               ; preds = %4
  %16 = and i64 %6, 65536
  %17 = icmp eq i64 %16, 0
  %18 = xor i1 %17, true
  %19 = and i64 %6, 2048
  %20 = icmp eq i64 %19, 0
  %21 = select i1 %18, i1 %20, i1 false
  %22 = and i64 %6, 2304
  %23 = icmp eq i64 %22, 2048
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %575, label %25

25:                                               ; preds = %15
  %26 = and i64 %6, 32768
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 93
  %30 = load ptr, ptr %29, align 16
  %31 = getelementptr inbounds %struct.signal_struct, ptr %30, i32 0, i32 12
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 64
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %575

35:                                               ; preds = %28, %25
  br i1 %17, label %44, label %36

36:                                               ; preds = %35
  %37 = and i64 %6, 805306368
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %575

39:                                               ; preds = %36
  %40 = tail call ptr @task_active_pid_ns(ptr noundef %7) #17
  %41 = getelementptr inbounds %struct.nsproxy, ptr %9, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %40, %42
  br i1 %43, label %44, label %575

44:                                               ; preds = %39, %35
  %45 = and i64 %6, 65792
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.nsproxy, ptr %9, i32 0, i32 6
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.nsproxy, ptr %9, i32 0, i32 7
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %49, %51
  br i1 %52, label %53, label %575

53:                                               ; preds = %47, %44
  %54 = and i64 %6, 4096
  %55 = icmp eq i64 %54, 0
  %56 = and i64 %6, 4259840
  %57 = icmp eq i64 %56, 0
  %58 = or i1 %55, %57
  br i1 %58, label %59, label %575

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.multiprocess_signals, ptr %5, i32 0, i32 1
  %61 = getelementptr inbounds %struct.multiprocess_signals, ptr %5, i32 0, i32 1, i32 1
  %62 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %63 = load ptr, ptr %62, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %63) #17
  br i1 %17, label %64, label %73

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 93
  %66 = load ptr, ptr %65, align 16
  %67 = getelementptr inbounds %struct.signal_struct, ptr %66, i32 0, i32 7
  %68 = load ptr, ptr %67, align 4
  store volatile ptr %68, ptr %60, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.hlist_node, ptr %68, i32 0, i32 1
  store volatile ptr %60, ptr %71, align 4
  br label %72

72:                                               ; preds = %70, %64
  store volatile ptr %60, ptr %67, align 4
  store volatile ptr %67, ptr %61, align 4
  br label %73

73:                                               ; preds = %72, %59
  call void @recalc_sigpending() #17
  %74 = load ptr, ptr %62, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %75 = load i16, ptr %74, align 4
  %76 = add i16 %75, 1
  store i16 %76, ptr %74, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !43
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !44
  %77 = load volatile i32, ptr %7, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %559

80:                                               ; preds = %73
  %81 = call fastcc ptr @dup_task_struct(ptr noundef %7, i32 noundef %2)
  %82 = icmp eq ptr %81, null
  br i1 %82, label %559, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.kernel_clone_args, ptr %3, i32 0, i32 11
  %85 = load i32, ptr %84, align 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = or i32 %89, 16
  store i32 %90, ptr %88, align 4
  %91 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 95
  store i32 -262401, ptr %91, align 4
  %92 = getelementptr %struct.task_struct, ptr %81, i32 0, i32 95, i32 0, i32 1
  store i32 -1, ptr %92, align 4
  br label %93

93:                                               ; preds = %87, %83
  %94 = and i64 %6, 16777216
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.kernel_clone_args, ptr %3, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  br label %99

99:                                               ; preds = %96, %93
  %100 = phi ptr [ %98, %96 ], [ null, %93 ]
  %101 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 67
  store ptr %100, ptr %101, align 8
  %102 = and i64 %6, 2097152
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.kernel_clone_args, ptr %3, i32 0, i32 2
  %106 = load ptr, ptr %105, align 4
  br label %107

107:                                              ; preds = %104, %99
  %108 = phi ptr [ %106, %104 ], [ null, %99 ]
  %109 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 68
  store ptr %108, ptr %109, align 4
  %110 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 108
  store i32 0, ptr %110, align 4
  %111 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 110
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %111, i8 0, i64 16, i1 false) #17
  %112 = trunc i64 %6 to i32
  %113 = call i32 @copy_creds(ptr noundef nonnull %81, i32 noundef %112) #17
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %541, label %115

115:                                              ; preds = %107
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %116 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 82
  %117 = load volatile ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.cred, ptr %117, i32 0, i32 22
  %119 = load ptr, ptr %118, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !34
  %120 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 93
  %121 = load ptr, ptr %120, align 16
  %122 = getelementptr %struct.signal_struct, ptr %121, i32 0, i32 50, i32 6
  %123 = load volatile i32, ptr %122, align 8
  %124 = call zeroext i1 @is_ucounts_overlimit(ptr noundef %119, i32 noundef 10, i32 noundef %123) #17
  br i1 %124, label %125, label %134

125:                                              ; preds = %115
  %126 = load ptr, ptr %116, align 4
  %127 = getelementptr inbounds %struct.cred, ptr %126, i32 0, i32 20
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, @root_user
  br i1 %129, label %134, label %130

130:                                              ; preds = %125
  %131 = call zeroext i1 @capable(i32 noundef 24) #17
  br i1 %131, label %134, label %132

132:                                              ; preds = %130
  %133 = call zeroext i1 @capable(i32 noundef 21) #17
  br i1 %133, label %134, label %535

134:                                              ; preds = %132, %130, %125, %115
  %135 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 4
  %136 = load i32, ptr %135, align 4
  %137 = and i32 %136, -4097
  store i32 %137, ptr %135, align 4
  %138 = load i32, ptr @nr_threads, align 4
  %139 = load i32, ptr @max_threads, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %535

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 4
  %143 = load i32, ptr %142, align 4
  %144 = and i32 %143, -67109219
  %145 = or i32 %144, 64
  store i32 %145, ptr %142, align 4
  %146 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 57
  store volatile ptr %146, ptr %146, align 4
  %147 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 57, i32 1
  store ptr %146, ptr %147, align 4
  %148 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 58
  store volatile ptr %148, ptr %148, align 4
  %149 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 58, i32 1
  store ptr %148, ptr %149, align 4
  %150 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 66
  store ptr null, ptr %150, align 4
  %151 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 107
  store i32 0, ptr %151, align 16
  %152 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 98
  %153 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 98, i32 1
  %154 = getelementptr %struct.task_struct, ptr %81, i32 0, i32 98, i32 1, i32 0, i32 1
  store i32 0, ptr %154, align 4
  store i32 0, ptr %153, align 4
  store volatile ptr %152, ptr %152, align 4
  %155 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 98, i32 0, i32 1
  store ptr %152, ptr %155, align 4
  %156 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 70
  %157 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 91
  store ptr null, ptr %157, align 8
  %158 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 40
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(20) %158, i8 0, i32 20, i1 false)
  %159 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 143
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(44) %156, i8 0, i64 44, i1 false)
  %160 = load i64, ptr %159, align 8
  %161 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 144
  store i64 %160, ptr %161, align 64
  %162 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 80
  %163 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 80, i32 0, i32 0, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(56) %163, i8 0, i32 48, i1 false) #17
  store i64 -1, ptr %162, align 8
  %164 = getelementptr %struct.task_struct, ptr %81, i32 0, i32 80, i32 0, i32 1
  store i64 -1, ptr %164, align 8
  %165 = getelementptr %struct.task_struct, ptr %81, i32 0, i32 80, i32 0, i32 2
  store i64 -1, ptr %165, align 8
  %166 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 118
  store ptr null, ptr %166, align 32
  call void @cgroup_fork(ptr noundef nonnull %81) #17
  %167 = load i32, ptr %142, align 4
  %168 = and i32 %167, 2097152
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %141
  %171 = call zeroext i1 @set_kthread_struct(ptr noundef nonnull %81) #17
  br i1 %171, label %172, label %535

172:                                              ; preds = %170, %141
  %173 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 149
  store i32 0, ptr %173, align 8
  %174 = call i32 @sched_fork(i32 noundef %112, ptr noundef nonnull %81) #17
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %535

176:                                              ; preds = %172
  %177 = call i32 @perf_event_init_task(ptr noundef nonnull %81, i64 noundef %6) #17
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %535

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 88
  store volatile ptr %180, ptr %180, align 4
  %181 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 88, i32 0, i32 1
  store ptr %180, ptr %181, align 4
  %182 = call i32 @copy_semundo(i32 noundef %112, ptr noundef nonnull %81) #17
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %533

184:                                              ; preds = %179
  %185 = call fastcc i32 @copy_files(i32 noundef %112, ptr noundef nonnull %81)
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %531

187:                                              ; preds = %184
  %188 = call fastcc i32 @copy_fs(i32 noundef %112, ptr noundef nonnull %81)
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %529

190:                                              ; preds = %187
  %191 = call fastcc i32 @copy_sighand(i32 noundef %112, ptr noundef nonnull %81)
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %527

193:                                              ; preds = %190
  %194 = call fastcc i32 @copy_signal(i32 noundef %112, ptr noundef nonnull %81)
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %523

196:                                              ; preds = %193
  %197 = call fastcc i32 @copy_mm(i32 noundef %112, ptr noundef nonnull %81)
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %518

199:                                              ; preds = %196
  %200 = call i32 @copy_namespaces(i32 noundef %112, ptr noundef nonnull %81) #17
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %512

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 118
  %204 = load ptr, ptr %203, align 32
  %205 = icmp eq ptr %204, null
  br i1 %205, label %209, label %206

206:                                              ; preds = %202
  %207 = call i32 @__copy_io(i32 noundef %112, ptr noundef nonnull %81) #17
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %510

209:                                              ; preds = %206, %202
  %210 = getelementptr inbounds %struct.kernel_clone_args, ptr %3, i32 0, i32 5
  %211 = load i32, ptr %210, align 8
  %212 = getelementptr inbounds %struct.kernel_clone_args, ptr %3, i32 0, i32 6
  %213 = load i32, ptr %212, align 4
  %214 = getelementptr inbounds %struct.kernel_clone_args, ptr %3, i32 0, i32 7
  %215 = load i32, ptr %214, align 8
  %216 = call i32 @copy_thread(i32 noundef %112, i32 noundef %211, i32 noundef %213, ptr noundef nonnull %81, i32 noundef %215) #17
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %505

218:                                              ; preds = %209
  %219 = icmp eq ptr %0, @init_struct_pid
  br i1 %219, label %233, label %220

220:                                              ; preds = %218
  %221 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 92
  %222 = load ptr, ptr %221, align 4
  %223 = getelementptr inbounds %struct.nsproxy, ptr %222, i32 0, i32 4
  %224 = load ptr, ptr %223, align 4
  %225 = getelementptr inbounds %struct.kernel_clone_args, ptr %3, i32 0, i32 8
  %226 = load ptr, ptr %225, align 4
  %227 = getelementptr inbounds %struct.kernel_clone_args, ptr %3, i32 0, i32 9
  %228 = load i32, ptr %227, align 8
  %229 = call ptr @alloc_pid(ptr noundef %224, ptr noundef %226, i32 noundef %228) #17
  %230 = icmp ugt ptr %229, inttoptr (i32 -4096 to ptr)
  br i1 %230, label %231, label %233

231:                                              ; preds = %220
  %232 = ptrtoint ptr %229 to i32
  br label %503

233:                                              ; preds = %220, %218
  %234 = phi ptr [ %229, %220 ], [ @init_struct_pid, %218 ]
  br i1 %55, label %252, label %235

235:                                              ; preds = %233
  %236 = call i32 @get_unused_fd_flags(i32 noundef 524290) #17
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %499, label %238

238:                                              ; preds = %235
  %239 = call ptr @anon_inode_getfile(ptr noundef nonnull @.str.29, ptr noundef nonnull @pidfd_fops, ptr noundef %234, i32 noundef 524290) #17
  %240 = icmp ugt ptr %239, inttoptr (i32 -4096 to ptr)
  br i1 %240, label %241, label %243

241:                                              ; preds = %238
  call void @put_unused_fd(i32 noundef %236) #17
  %242 = ptrtoint ptr %239 to i32
  br label %499

243:                                              ; preds = %238
  call fastcc void @get_pid(ptr noundef %234)
  %244 = getelementptr inbounds %struct.kernel_clone_args, ptr %3, i32 0, i32 1
  %245 = load ptr, ptr %244, align 8
  %246 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %247 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %246) #13, !srcloc !39
  %248 = and i32 %247, -13
  %249 = or i32 %248, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %249) #17, !srcloc !40
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !41
  %250 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %245, i32 %236, i32 -1090519041) #17, !srcloc !45
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %247) #17, !srcloc !40
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !41
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %495

252:                                              ; preds = %243, %233
  %253 = phi ptr [ %239, %243 ], [ null, %233 ]
  %254 = phi i32 [ %236, %243 ], [ -1, %233 ]
  %255 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 115
  store ptr null, ptr %255, align 4
  %256 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 125
  store ptr null, ptr %256, align 4
  %257 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 126
  store volatile ptr %257, ptr %257, align 4
  %258 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 126, i32 1
  store ptr %257, ptr %258, align 4
  %259 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 127
  store ptr null, ptr %259, align 8
  %260 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 129
  store i32 0, ptr %260, align 32
  %261 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 128
  call void @__mutex_init(ptr noundef %261, ptr noundef nonnull @.str.36, ptr noundef nonnull @futex_init_task.__key) #17
  %262 = and i64 %6, 16640
  %263 = icmp eq i64 %262, 256
  br i1 %263, label %264, label %268

264:                                              ; preds = %252
  %265 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 99
  store i32 0, ptr %265, align 64
  %266 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 100
  store i32 0, ptr %266, align 4
  %267 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 101
  store i32 2, ptr %267, align 8
  br label %268

268:                                              ; preds = %264, %252
  call void @_clear_bit(i32 noundef 4, ptr noundef nonnull %81) #17
  %269 = icmp eq ptr %234, null
  br i1 %269, label %273, label %270

270:                                              ; preds = %268
  %271 = getelementptr inbounds %struct.pid, ptr %234, i32 0, i32 7
  %272 = load i32, ptr %271, align 4
  br label %273

273:                                              ; preds = %270, %268
  %274 = phi i32 [ %272, %270 ], [ 0, %268 ]
  %275 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 52
  store i32 %274, ptr %275, align 8
  br i1 %17, label %282, label %276

276:                                              ; preds = %273
  %277 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 59
  %278 = load ptr, ptr %277, align 4
  %279 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 59
  store ptr %278, ptr %279, align 4
  %280 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 53
  %281 = load i32, ptr %280, align 4
  br label %284

282:                                              ; preds = %273
  %283 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 59
  store ptr %81, ptr %283, align 4
  br label %284

284:                                              ; preds = %282, %276
  %285 = phi i32 [ %274, %282 ], [ %281, %276 ]
  %286 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 53
  store i32 %285, ptr %286, align 4
  %287 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 140
  store i32 0, ptr %287, align 8
  %288 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 141
  store i32 32, ptr %288, align 4
  %289 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 142
  store i32 0, ptr %289, align 16
  %290 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 44
  store i32 0, ptr %290, align 8
  %291 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 64
  store volatile ptr %291, ptr %291, align 4
  %292 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 64, i32 1
  store ptr %291, ptr %292, align 4
  %293 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 102
  store ptr null, ptr %293, align 4
  %294 = call i32 @cgroup_can_fork(ptr noundef nonnull %81, ptr noundef %3) #17
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %493

296:                                              ; preds = %284
  call void @sched_cgroup_fork(ptr noundef nonnull %81, ptr noundef %3) #17
  %297 = call i64 @ktime_get() #17
  %298 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 76
  store i64 %297, ptr %298, align 64
  %299 = call i64 @ktime_get_with_offset(i32 noundef 1) #17
  %300 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 77
  store i64 %299, ptr %300, align 8
  call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #17
  %301 = and i64 %6, 98304
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %314, label %303

303:                                              ; preds = %296
  %304 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 55
  %305 = load ptr, ptr %304, align 4
  %306 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 55
  store ptr %305, ptr %306, align 4
  %307 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 105
  %308 = load i64, ptr %307, align 32
  %309 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 105
  store i64 %308, ptr %309, align 32
  br i1 %17, label %310, label %323

310:                                              ; preds = %303
  %311 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 59
  %312 = load ptr, ptr %311, align 4
  %313 = getelementptr inbounds %struct.task_struct, ptr %312, i32 0, i32 43
  br label %320

314:                                              ; preds = %296
  %315 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 55
  store ptr %7, ptr %315, align 4
  %316 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 106
  %317 = load i64, ptr %316, align 8
  %318 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 105
  store i64 %317, ptr %318, align 32
  %319 = getelementptr inbounds %struct.kernel_clone_args, ptr %3, i32 0, i32 4
  br label %320

320:                                              ; preds = %314, %310
  %321 = phi ptr [ %313, %310 ], [ %319, %314 ]
  %322 = load i32, ptr %321, align 4
  br label %323

323:                                              ; preds = %320, %303
  %324 = phi i32 [ -1, %303 ], [ %322, %320 ]
  %325 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 43
  store i32 %324, ptr %325, align 4
  %326 = load ptr, ptr %62, align 4
  call void @_raw_spin_lock(ptr noundef %326) #17
  call fastcc void @copy_seccomp(ptr noundef nonnull %81)
  %327 = and i32 %112, 256
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %323
  %330 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 133
  store ptr null, ptr %330, align 8
  %331 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 134
  store i32 0, ptr %331, align 4
  br label %341

332:                                              ; preds = %323
  %333 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 133
  %334 = load ptr, ptr %333, align 8
  %335 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 133
  store ptr %334, ptr %335, align 8
  %336 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 134
  %337 = load i32, ptr %336, align 4
  %338 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 134
  store i32 %337, ptr %338, align 4
  %339 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 135
  %340 = load i32, ptr %339, align 16
  br label %341

341:                                              ; preds = %332, %329
  %342 = phi i32 [ %340, %332 ], [ 0, %329 ]
  %343 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 135
  store i32 %342, ptr %343, align 16
  br i1 %269, label %349, label %344

344:                                              ; preds = %341
  %345 = getelementptr inbounds %struct.pid, ptr %234, i32 0, i32 1
  %346 = load i32, ptr %345, align 4
  %347 = getelementptr %struct.pid, ptr %234, i32 0, i32 7, i32 %346, i32 1
  %348 = load ptr, ptr %347, align 4
  br label %349

349:                                              ; preds = %344, %341
  %350 = phi ptr [ %348, %344 ], [ null, %341 ]
  %351 = getelementptr inbounds %struct.pid_namespace, ptr %350, i32 0, i32 2
  %352 = load i32, ptr %351, align 4
  %353 = icmp sgt i32 %352, -1
  br i1 %353, label %488, label %354, !prof !11

354:                                              ; preds = %349
  %355 = load volatile i32, ptr %7, align 4
  %356 = and i32 %355, 1
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %363, label %358

358:                                              ; preds = %354
  %359 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 98, i32 1
  %360 = load i32, ptr %359, align 4
  %361 = and i32 %360, 256
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %488

363:                                              ; preds = %358, %354
  %364 = getelementptr i8, ptr %81, i32 1348
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %364, i8 0, i32 32, i1 false) #17
  %365 = load i32, ptr %275, align 8
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %470, label %367, !prof !11

367:                                              ; preds = %363
  %368 = and i64 %6, 8192
  %369 = icmp ne i64 %368, 0
  %370 = icmp ne i32 %1, 0
  %371 = or i1 %370, %369
  call fastcc void @ptrace_init_task(ptr noundef nonnull %81, i1 noundef zeroext %371)
  %372 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 62
  store ptr %234, ptr %372, align 64
  %373 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 43
  %374 = load i32, ptr %373, align 4
  %375 = icmp sgt i32 %374, -1
  br i1 %375, label %376, label %446

376:                                              ; preds = %367
  %377 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 93
  %378 = load ptr, ptr %377, align 16
  %379 = getelementptr %struct.signal_struct, ptr %378, i32 0, i32 22, i32 1
  store ptr %234, ptr %379, align 4
  %380 = load ptr, ptr %120, align 16
  %381 = getelementptr %struct.signal_struct, ptr %380, i32 0, i32 22, i32 2
  %382 = load ptr, ptr %381, align 8
  %383 = load ptr, ptr %377, align 16
  %384 = getelementptr %struct.signal_struct, ptr %383, i32 0, i32 22, i32 2
  store ptr %382, ptr %384, align 4
  %385 = load ptr, ptr %120, align 16
  %386 = getelementptr %struct.signal_struct, ptr %385, i32 0, i32 22, i32 3
  %387 = load ptr, ptr %386, align 4
  %388 = load ptr, ptr %377, align 16
  %389 = getelementptr %struct.signal_struct, ptr %388, i32 0, i32 22, i32 3
  store ptr %387, ptr %389, align 4
  %390 = getelementptr inbounds %struct.pid, ptr %234, i32 0, i32 1
  %391 = load i32, ptr %390, align 4
  %392 = getelementptr %struct.pid, ptr %234, i32 0, i32 7, i32 %391
  %393 = load i32, ptr %392, align 4
  %394 = icmp eq i32 %393, 1
  br i1 %394, label %395, label %406

395:                                              ; preds = %376
  br i1 %269, label %399, label %396

396:                                              ; preds = %395
  %397 = getelementptr %struct.pid, ptr %234, i32 0, i32 7, i32 %391, i32 1
  %398 = load ptr, ptr %397, align 4
  br label %399

399:                                              ; preds = %396, %395
  %400 = phi ptr [ %398, %396 ], [ null, %395 ]
  %401 = getelementptr inbounds %struct.pid_namespace, ptr %400, i32 0, i32 3
  store ptr %81, ptr %401, align 4
  %402 = load ptr, ptr %377, align 16
  %403 = getelementptr inbounds %struct.signal_struct, ptr %402, i32 0, i32 12
  %404 = load i32, ptr %403, align 8
  %405 = or i32 %404, 64
  store i32 %405, ptr %403, align 8
  br label %406

406:                                              ; preds = %399, %376
  %407 = load ptr, ptr %377, align 16
  %408 = getelementptr inbounds %struct.signal_struct, ptr %407, i32 0, i32 6, i32 1
  %409 = load i64, ptr %5, align 8
  store i64 %409, ptr %408, align 4
  %410 = load ptr, ptr %120, align 16
  %411 = getelementptr inbounds %struct.signal_struct, ptr %410, i32 0, i32 25
  %412 = load ptr, ptr %411, align 8
  %413 = call fastcc ptr @tty_kref_get(ptr noundef %412)
  %414 = load ptr, ptr %377, align 16
  %415 = getelementptr inbounds %struct.signal_struct, ptr %414, i32 0, i32 25
  store ptr %412, ptr %415, align 8
  %416 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 55
  %417 = load ptr, ptr %416, align 4
  %418 = getelementptr inbounds %struct.task_struct, ptr %417, i32 0, i32 93
  %419 = load ptr, ptr %418, align 16
  %420 = getelementptr inbounds %struct.signal_struct, ptr %419, i32 0, i32 14
  %421 = load i8, ptr %420, align 8
  %422 = and i8 %421, 2
  %423 = icmp eq i8 %422, 0
  %424 = shl i8 %421, 1
  %425 = and i8 %424, 2
  %426 = select i1 %423, i8 %425, i8 2
  %427 = load ptr, ptr %377, align 16
  %428 = getelementptr inbounds %struct.signal_struct, ptr %427, i32 0, i32 14
  %429 = load i8, ptr %428, align 8
  %430 = and i8 %429, -3
  %431 = or i8 %430, %426
  store i8 %431, ptr %428, align 8
  %432 = load ptr, ptr %416, align 4
  %433 = getelementptr inbounds %struct.task_struct, ptr %432, i32 0, i32 57
  %434 = getelementptr inbounds %struct.task_struct, ptr %432, i32 0, i32 57, i32 1
  %435 = load ptr, ptr %434, align 4
  store ptr %148, ptr %434, align 4
  store ptr %433, ptr %148, align 4
  store ptr %435, ptr %149, align 4
  store volatile ptr %148, ptr %435, align 4
  %436 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 34
  %437 = load ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34, i32 1), align 32
  store ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), ptr %436, align 4
  %438 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 34, i32 1
  store ptr %437, ptr %438, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !46
  store volatile ptr %436, ptr %437, align 4
  store ptr %436, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34, i32 1), align 32
  call void @attach_pid(ptr noundef nonnull %81, i32 noundef 1) #17
  call void @attach_pid(ptr noundef nonnull %81, i32 noundef 2) #17
  call void @attach_pid(ptr noundef nonnull %81, i32 noundef 3) #17
  %439 = call i32 @llvm.read_register.i32(metadata !0) #17
  %440 = inttoptr i32 %439 to ptr
  %441 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %440) #13, !srcloc !12
  %442 = add i32 %441, ptrtoint (ptr @process_counts to i32)
  %443 = inttoptr i32 %442 to ptr
  %444 = load i32, ptr %443, align 4
  %445 = add i32 %444, 1
  store i32 %445, ptr %443, align 4
  br label %467

446:                                              ; preds = %367
  %447 = load ptr, ptr %120, align 16
  %448 = getelementptr inbounds %struct.signal_struct, ptr %447, i32 0, i32 2
  %449 = load i32, ptr %448, align 8
  %450 = add i32 %449, 1
  store i32 %450, ptr %448, align 8
  %451 = load ptr, ptr %120, align 16
  %452 = getelementptr inbounds %struct.signal_struct, ptr %451, i32 0, i32 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %452) #17, !srcloc !14
  %453 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %452, ptr %452, i32 1, ptr elementtype(i32) %452) #17, !srcloc !23
  %454 = load ptr, ptr %120, align 16
  call fastcc void @refcount_inc(ptr noundef %454)
  call void @task_join_group_stop(ptr noundef nonnull %81) #17
  %455 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 59
  %456 = load ptr, ptr %455, align 4
  %457 = getelementptr inbounds %struct.task_struct, ptr %456, i32 0, i32 64
  %458 = getelementptr inbounds %struct.task_struct, ptr %456, i32 0, i32 64, i32 1
  %459 = load ptr, ptr %458, align 4
  store ptr %457, ptr %291, align 4
  store ptr %459, ptr %292, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !46
  store volatile ptr %291, ptr %459, align 4
  store ptr %291, ptr %458, align 4
  %460 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 65
  %461 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 93
  %462 = load ptr, ptr %461, align 16
  %463 = getelementptr inbounds %struct.signal_struct, ptr %462, i32 0, i32 3
  %464 = getelementptr inbounds %struct.signal_struct, ptr %462, i32 0, i32 3, i32 1
  %465 = load ptr, ptr %464, align 4
  store ptr %463, ptr %460, align 4
  %466 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 65, i32 1
  store ptr %465, ptr %466, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !46
  store volatile ptr %460, ptr %465, align 4
  store ptr %460, ptr %464, align 4
  br label %467

467:                                              ; preds = %446, %406
  call void @attach_pid(ptr noundef nonnull %81, i32 noundef 0) #17
  %468 = load i32, ptr @nr_threads, align 4
  %469 = add i32 %468, 1
  store i32 %469, ptr @nr_threads, align 4
  br label %470

470:                                              ; preds = %467, %363
  %471 = load i32, ptr @total_forks, align 4
  %472 = add i32 %471, 1
  store i32 %472, ptr @total_forks, align 4
  %473 = load ptr, ptr %61, align 4
  %474 = icmp eq ptr %473, null
  br i1 %474, label %481, label %475

475:                                              ; preds = %470
  %476 = load ptr, ptr %60, align 8
  store volatile ptr %476, ptr %473, align 4
  %477 = icmp eq ptr %476, null
  br i1 %477, label %480, label %478

478:                                              ; preds = %475
  %479 = getelementptr inbounds %struct.hlist_node, ptr %476, i32 0, i32 1
  store volatile ptr %473, ptr %479, align 4
  br label %480

480:                                              ; preds = %478, %475
  store ptr null, ptr %60, align 8
  store ptr null, ptr %61, align 4
  br label %481

481:                                              ; preds = %480, %470
  %482 = load ptr, ptr %62, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %483 = load i16, ptr %482, align 4
  %484 = add i16 %483, 1
  store i16 %484, ptr %482, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  call fastcc void @syscall_tracepoint_update(ptr noundef nonnull %81)
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !47
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @tasklist_lock, i32 0) #17, !srcloc !48
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !43
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !49
  %485 = icmp eq ptr %253, null
  br i1 %485, label %487, label %486

486:                                              ; preds = %481
  call void @fd_install(i32 noundef %254, ptr noundef nonnull %253) #17
  br label %487

487:                                              ; preds = %486, %481
  call void @sched_post_fork(ptr noundef nonnull %81) #17
  call void @cgroup_post_fork(ptr noundef nonnull %81, ptr noundef %3) #17
  call void @perf_event_fork(ptr noundef nonnull %81) #17
  call fastcc void @trace_task_newtask(ptr noundef nonnull %81, i32 noundef %112)
  call void @uprobe_copy_process(ptr noundef nonnull %81, i32 noundef %112) #17
  call fastcc void @copy_oom_score_adj(i64 noundef %6, ptr noundef nonnull %81)
  br label %575

488:                                              ; preds = %358, %349
  %489 = phi i32 [ -12, %349 ], [ -4, %358 ]
  %490 = load ptr, ptr %62, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %491 = load i16, ptr %490, align 4
  %492 = add i16 %491, 1
  store i16 %492, ptr %490, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !47
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @tasklist_lock, i32 0) #17, !srcloc !48
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !43
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !49
  call void @cgroup_cancel_fork(ptr noundef nonnull %81, ptr noundef %3) #17
  br label %493

493:                                              ; preds = %488, %284
  %494 = phi i32 [ %294, %284 ], [ %489, %488 ]
  br i1 %55, label %499, label %495

495:                                              ; preds = %493, %243
  %496 = phi i32 [ %254, %493 ], [ %236, %243 ]
  %497 = phi i32 [ %494, %493 ], [ %250, %243 ]
  %498 = phi ptr [ %253, %493 ], [ %239, %243 ]
  call void @fput(ptr noundef %498) #17
  call void @put_unused_fd(i32 noundef %496) #17
  br label %499

499:                                              ; preds = %495, %493, %241, %235
  %500 = phi i32 [ %236, %235 ], [ %242, %241 ], [ %497, %495 ], [ %494, %493 ]
  %501 = icmp eq ptr %234, @init_struct_pid
  br i1 %501, label %503, label %502

502:                                              ; preds = %499
  call void @free_pid(ptr noundef %234) #17
  br label %503

503:                                              ; preds = %502, %499, %231
  %504 = phi i32 [ %232, %231 ], [ %500, %502 ], [ %500, %499 ]
  call void @exit_thread(ptr noundef nonnull %81) #17
  br label %505

505:                                              ; preds = %503, %209
  %506 = phi i32 [ %216, %209 ], [ %504, %503 ]
  %507 = load ptr, ptr %166, align 32
  %508 = icmp eq ptr %507, null
  br i1 %508, label %510, label %509

509:                                              ; preds = %505
  call void @exit_io_context(ptr noundef nonnull %81) #17
  br label %510

510:                                              ; preds = %509, %505, %206
  %511 = phi i32 [ %207, %206 ], [ %506, %509 ], [ %506, %505 ]
  call void @exit_task_namespaces(ptr noundef nonnull %81) #17
  br label %512

512:                                              ; preds = %510, %199
  %513 = phi i32 [ %200, %199 ], [ %511, %510 ]
  %514 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 37
  %515 = load ptr, ptr %514, align 4
  %516 = icmp eq ptr %515, null
  br i1 %516, label %518, label %517

517:                                              ; preds = %512
  call void @mmput(ptr noundef nonnull %515)
  br label %518

518:                                              ; preds = %517, %512, %196
  %519 = phi i32 [ %197, %196 ], [ %513, %517 ], [ %513, %512 ]
  br i1 %17, label %520, label %523

520:                                              ; preds = %518
  %521 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 93
  %522 = load ptr, ptr %521, align 16
  call fastcc void @free_signal_struct(ptr noundef %522)
  br label %523

523:                                              ; preds = %520, %518, %193
  %524 = phi i32 [ %194, %193 ], [ %519, %518 ], [ %519, %520 ]
  %525 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 94
  %526 = load ptr, ptr %525, align 4
  call void @__cleanup_sighand(ptr noundef %526)
  br label %527

527:                                              ; preds = %523, %190
  %528 = phi i32 [ %191, %190 ], [ %524, %523 ]
  call void @exit_fs(ptr noundef nonnull %81) #17
  br label %529

529:                                              ; preds = %527, %187
  %530 = phi i32 [ %188, %187 ], [ %528, %527 ]
  call void @exit_files(ptr noundef nonnull %81) #17
  br label %531

531:                                              ; preds = %529, %184
  %532 = phi i32 [ %185, %184 ], [ %530, %529 ]
  call void @exit_sem(ptr noundef nonnull %81) #17
  br label %533

533:                                              ; preds = %531, %179
  %534 = phi i32 [ %182, %179 ], [ %532, %531 ]
  call void @perf_event_free_task(ptr noundef nonnull %81) #17
  br label %535

535:                                              ; preds = %533, %176, %172, %170, %134, %132
  %536 = phi i32 [ -11, %134 ], [ -11, %132 ], [ -11, %170 ], [ %174, %172 ], [ %177, %176 ], [ %534, %533 ]
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %537 = load volatile ptr, ptr %116, align 4
  %538 = getelementptr inbounds %struct.cred, ptr %537, i32 0, i32 22
  %539 = load ptr, ptr %538, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !34
  %540 = call zeroext i1 @dec_rlimit_ucounts(ptr noundef %539, i32 noundef 10, i32 noundef 1) #17
  call void @exit_creds(ptr noundef nonnull %81) #17
  br label %541

541:                                              ; preds = %535, %107
  %542 = phi i32 [ %113, %107 ], [ %536, %535 ]
  %543 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 1
  store volatile i32 128, ptr %543, align 8
  call void @put_task_stack(ptr noundef nonnull %81)
  call void @release_user_cpus_ptr(ptr noundef nonnull %81) #17
  %544 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 151
  %545 = load volatile i32, ptr %544, align 4
  %546 = icmp ne i32 %545, 0
  %547 = load i1, ptr @free_task.__already_done, align 1
  %548 = xor i1 %547, true
  %549 = select i1 %546, i1 %548, i1 false
  br i1 %549, label %550, label %551, !prof !11

550:                                              ; preds = %541
  store i1 true, ptr @free_task.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #17
  br label %551

551:                                              ; preds = %550, %541
  call void @arch_release_task_struct(ptr noundef nonnull %81) #17
  %552 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 4
  %553 = load i32, ptr %552, align 4
  %554 = and i32 %553, 2097152
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %557, label %556

556:                                              ; preds = %551
  call void @free_kthread_struct(ptr noundef nonnull %81) #17
  br label %557

557:                                              ; preds = %556, %551
  %558 = load ptr, ptr @task_struct_cachep, align 4
  call void @kmem_cache_free(ptr noundef %558, ptr noundef nonnull %81) #17
  br label %559

559:                                              ; preds = %557, %80, %73
  %560 = phi i32 [ -513, %73 ], [ %542, %557 ], [ -12, %80 ]
  %561 = load ptr, ptr %62, align 4
  call void @_raw_spin_lock_irq(ptr noundef %561) #17
  %562 = load ptr, ptr %61, align 4
  %563 = icmp eq ptr %562, null
  br i1 %563, label %570, label %564

564:                                              ; preds = %559
  %565 = load ptr, ptr %60, align 8
  store volatile ptr %565, ptr %562, align 4
  %566 = icmp eq ptr %565, null
  br i1 %566, label %569, label %567

567:                                              ; preds = %564
  %568 = getelementptr inbounds %struct.hlist_node, ptr %565, i32 0, i32 1
  store volatile ptr %562, ptr %568, align 4
  br label %569

569:                                              ; preds = %567, %564
  store ptr null, ptr %60, align 8
  store ptr null, ptr %61, align 4
  br label %570

570:                                              ; preds = %569, %559
  %571 = load ptr, ptr %62, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %572 = load i16, ptr %571, align 4
  %573 = add i16 %572, 1
  store i16 %573, ptr %571, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !43
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !44
  %574 = inttoptr i32 %560 to ptr
  br label %575

575:                                              ; preds = %570, %487, %53, %47, %39, %36, %28, %15, %4
  %576 = phi ptr [ %574, %570 ], [ %81, %487 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -22 to ptr), %15 ], [ inttoptr (i32 -22 to ptr), %28 ], [ inttoptr (i32 -22 to ptr), %39 ], [ inttoptr (i32 -22 to ptr), %36 ], [ inttoptr (i32 -22 to ptr), %47 ], [ inttoptr (i32 -22 to ptr), %53 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  ret ptr %576
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @copy_init_mm() local_unnamed_addr #0 {
  %1 = tail call fastcc ptr @dup_mm(ptr noundef nonnull @init_mm)
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @dup_mm(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = load ptr, ptr @mm_cachep, align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 3264) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %244, label %6

6:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(448) %4, ptr noundef align 8 dereferenceable(448) %0, i32 448, i1 false)
  %7 = tail call fastcc ptr @mm_init(ptr noundef nonnull %4)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %244, label %9

9:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  store ptr %2, ptr %2, align 8
  %10 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %10, align 4
  call void @uprobe_start_dup_mmap() #17
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %0, i1 noundef zeroext true) #17
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 15
  %16 = call i32 @down_write_killable(ptr noundef %15) #17
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = icmp eq i32 %16, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext %20) #17
  br label %21

21:                                               ; preds = %19, %14
  %22 = icmp eq i32 %16, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  call void @uprobe_end_dup_mmap() #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  br label %237

24:                                               ; preds = %21
  call void @flush_cache_mm(ptr noundef %0) #17
  call void @uprobe_dup_mmap(ptr noundef %0, ptr noundef nonnull %4) #17
  %25 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %4, i1 noundef zeroext true) #17
  br label %28

28:                                               ; preds = %27, %24
  %29 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 15
  call void @down_write(ptr noundef %29) #17
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %4, i1 noundef zeroext true, i1 noundef zeroext true) #17
  br label %33

33:                                               ; preds = %32, %28
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %34 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 47
  %35 = load volatile ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.file, ptr %35, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #17, !srcloc !14
  %39 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 0, i32 1, ptr elementtype(i32) %38) #17, !srcloc !33
  %40 = extractvalue { i32, i32, i32 } %39, 0
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37, %33
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !34
  %43 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 47
  store volatile ptr null, ptr %43, align 8
  br label %66

44:                                               ; preds = %37
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !35
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !34
  %45 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 47
  store volatile ptr %35, ptr %45, align 8
  %46 = getelementptr inbounds %struct.file, ptr %35, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 37
  %49 = load volatile i32, ptr %48, align 4
  br label %50

50:                                               ; preds = %59, %44
  %51 = phi i32 [ %49, %44 ], [ %60, %59 ]
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %62, label %53, !prof !11

53:                                               ; preds = %50
  %54 = add i32 %51, -1
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !28
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #17, !srcloc !14
  br label %55

55:                                               ; preds = %55, %53
  %56 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 %51, i32 %54, ptr elementtype(i32) %48) #17, !srcloc !29
  %57 = extractvalue { i32, i32 } %56, 0
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %55

59:                                               ; preds = %55
  %60 = extractvalue { i32, i32 } %56, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !30
  %61 = icmp eq i32 %60, %51
  br i1 %61, label %66, label %50, !prof !10

62:                                               ; preds = %50
  %63 = load i1, ptr @dup_mm_exe_file.__already_done, align 1
  br i1 %63, label %66, label %64, !prof !10

64:                                               ; preds = %62
  store i1 true, ptr @dup_mm_exe_file.__already_done, align 1
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.dup_mm_exe_file) #19
  br label %66

66:                                               ; preds = %64, %62, %59, %42
  %67 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 19
  %68 = load i32, ptr %67, align 8
  %69 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 19
  store i32 %68, ptr %69, align 8
  %70 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 22
  %71 = load i32, ptr %70, align 8
  %72 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 22
  store i32 %71, ptr %72, align 8
  %73 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 23
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 23
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 24
  %77 = load i32, ptr %76, align 8
  %78 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 24
  store i32 %77, ptr %78, align 8
  %79 = load ptr, ptr %0, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %197, label %81

81:                                               ; preds = %66
  %82 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1
  %83 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 13
  br label %84

84:                                               ; preds = %189, %81
  %85 = phi ptr [ %79, %81 ], [ %195, %189 ]
  %86 = phi ptr [ null, %81 ], [ %190, %189 ]
  %87 = phi ptr [ %82, %81 ], [ %191, %189 ]
  %88 = phi ptr [ %4, %81 ], [ %192, %189 ]
  %89 = phi ptr [ null, %81 ], [ %193, %189 ]
  %90 = getelementptr inbounds %struct.vm_area_struct, ptr %85, i32 0, i32 8
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 131072
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.vm_area_struct, ptr %85, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = load i32, ptr %85, align 4
  %98 = sub i32 %96, %97
  %99 = lshr i32 %98, 12
  %100 = sub nsw i32 0, %99
  call void @vm_stat_account(ptr noundef %4, i32 noundef %91, i32 noundef %100) #17
  br label %189

101:                                              ; preds = %84
  %102 = tail call ptr @llvm.thread.pointer() #17
  %103 = load volatile i32, ptr %102, align 4
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.task_struct, ptr %102, i32 0, i32 98, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %108, 256
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %197

111:                                              ; preds = %106, %101
  %112 = and i32 %91, 1048576
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.vm_area_struct, ptr %85, i32 0, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = load i32, ptr %85, align 4
  %118 = sub i32 %116, %117
  %119 = lshr i32 %118, 12
  %120 = call i32 @cap_vm_enough_memory(ptr noundef %0, i32 noundef %119) #17
  %121 = call i32 @__vm_enough_memory(ptr noundef %0, i32 noundef %119, i32 noundef %120) #17
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %208

123:                                              ; preds = %114, %111
  %124 = phi i32 [ %119, %114 ], [ 0, %111 ]
  %125 = load ptr, ptr @vm_area_cachep, align 4
  %126 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %125, i32 noundef 3264) #17
  %127 = icmp eq ptr %126, null
  br i1 %127, label %208, label %128

128:                                              ; preds = %123
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(92) %126, ptr noundef nonnull align 4 dereferenceable(92) %85, i32 92, i1 false) #17
  %129 = getelementptr inbounds %struct.vm_area_struct, ptr %126, i32 0, i32 10
  store volatile ptr %129, ptr %129, align 4
  %130 = getelementptr inbounds %struct.vm_area_struct, ptr %126, i32 0, i32 10, i32 1
  store ptr %129, ptr %130, align 8
  %131 = getelementptr inbounds %struct.vm_area_struct, ptr %126, i32 0, i32 3
  store ptr null, ptr %131, align 4
  %132 = getelementptr inbounds %struct.vm_area_struct, ptr %126, i32 0, i32 2
  store ptr null, ptr %132, align 8
  %133 = getelementptr inbounds %struct.vm_area_struct, ptr %126, i32 0, i32 6
  store ptr %4, ptr %133, align 8
  %134 = getelementptr inbounds %struct.vm_area_struct, ptr %126, i32 0, i32 8
  %135 = load i32, ptr %134, align 8
  %136 = and i32 %135, 33554432
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %128
  %139 = getelementptr inbounds %struct.vm_area_struct, ptr %126, i32 0, i32 11
  store ptr null, ptr %139, align 4
  br label %145

140:                                              ; preds = %128
  %141 = call i32 @anon_vma_fork(ptr noundef nonnull %126, ptr noundef nonnull %85) #17
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %206

143:                                              ; preds = %140
  %144 = load i32, ptr %134, align 8
  br label %145

145:                                              ; preds = %143, %138
  %146 = phi i32 [ %144, %143 ], [ %135, %138 ]
  %147 = and i32 %146, -532481
  store i32 %147, ptr %134, align 8
  %148 = getelementptr inbounds %struct.vm_area_struct, ptr %126, i32 0, i32 14
  %149 = load ptr, ptr %148, align 8
  %150 = icmp eq ptr %149, null
  br i1 %150, label %168, label %151

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.file, ptr %149, i32 0, i32 17
  %153 = load ptr, ptr %152, align 8
  %154 = getelementptr inbounds %struct.file, ptr %149, i32 0, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %154) #17, !srcloc !14
  %155 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %154, ptr %154, i32 1, ptr elementtype(i32) %154) #17, !srcloc !23
  %156 = getelementptr inbounds %struct.address_space, ptr %153, i32 0, i32 6
  call void @down_write(ptr noundef %156) #17
  %157 = load i32, ptr %134, align 8
  %158 = and i32 %157, 8
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %151
  %161 = getelementptr inbounds %struct.address_space, ptr %153, i32 0, i32 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %161) #17, !srcloc !14
  %162 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %161, ptr %161, i32 1, ptr elementtype(i32) %161) #17, !srcloc !23
  br label %163

163:                                              ; preds = %160, %151
  %164 = getelementptr inbounds %struct.address_space, ptr %153, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %164) #17
  %165 = getelementptr inbounds %struct.address_space, ptr %153, i32 0, i32 5
  call void @vma_interval_tree_insert_after(ptr noundef nonnull %126, ptr noundef nonnull %85, ptr noundef %165) #17
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %166 = load i16, ptr %164, align 4
  %167 = add i16 %166, 1
  store i16 %167, ptr %164, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !43
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !44
  call void @up_write(ptr noundef %156) #17
  br label %168

168:                                              ; preds = %163, %145
  store ptr %126, ptr %88, align 4
  store ptr %89, ptr %131, align 4
  call void @__vma_link_rb(ptr noundef %4, ptr noundef nonnull %126, ptr noundef %87, ptr noundef %86) #17
  %169 = getelementptr inbounds %struct.vm_area_struct, ptr %126, i32 0, i32 4
  %170 = getelementptr inbounds %struct.vm_area_struct, ptr %126, i32 0, i32 4, i32 1
  %171 = load i32, ptr %83, align 8
  %172 = add i32 %171, 1
  store i32 %172, ptr %83, align 8
  %173 = load i32, ptr %134, align 8
  %174 = and i32 %173, 33554432
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %168
  %177 = call i32 @copy_page_range(ptr noundef nonnull %126, ptr noundef nonnull %85) #17
  br label %178

178:                                              ; preds = %176, %168
  %179 = phi i32 [ 0, %168 ], [ %177, %176 ]
  %180 = getelementptr inbounds %struct.vm_area_struct, ptr %126, i32 0, i32 12
  %181 = load ptr, ptr %180, align 8
  %182 = icmp eq ptr %181, null
  br i1 %182, label %187, label %183

183:                                              ; preds = %178
  %184 = load ptr, ptr %181, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %183
  call void %184(ptr noundef nonnull %126) #17
  br label %187

187:                                              ; preds = %186, %183, %178
  %188 = icmp eq i32 %179, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %187, %94
  %190 = phi ptr [ %86, %94 ], [ %169, %187 ]
  %191 = phi ptr [ %87, %94 ], [ %170, %187 ]
  %192 = phi ptr [ %88, %94 ], [ %132, %187 ]
  %193 = phi ptr [ %89, %94 ], [ %126, %187 ]
  %194 = getelementptr inbounds %struct.vm_area_struct, ptr %85, i32 0, i32 2
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %84

197:                                              ; preds = %208, %189, %187, %106, %66
  %198 = phi i32 [ -12, %208 ], [ 0, %66 ], [ %179, %187 ], [ -12, %106 ], [ 0, %189 ]
  %199 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  call void @__mmap_lock_do_trace_released(ptr noundef %4, i1 noundef zeroext true) #17
  br label %202

202:                                              ; preds = %201, %197
  call void @up_write(ptr noundef %29) #17
  call void @flush_tlb_mm(ptr noundef %0) #17
  %203 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %202
  call void @__mmap_lock_do_trace_released(ptr noundef %0, i1 noundef zeroext true) #17
  br label %213

206:                                              ; preds = %140
  %207 = load ptr, ptr @vm_area_cachep, align 4
  call void @kmem_cache_free(ptr noundef %207, ptr noundef nonnull %126) #17
  br label %208

208:                                              ; preds = %206, %123, %114
  %209 = phi i32 [ %124, %206 ], [ %124, %123 ], [ 0, %114 ]
  %210 = sub nsw i32 0, %209
  %211 = sext i32 %210 to i64
  %212 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %211, i32 noundef %212) #17
  br label %197

213:                                              ; preds = %205, %202
  call void @up_write(ptr noundef %15) #17
  call void @uprobe_end_dup_mmap() #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  %214 = icmp eq i32 %198, 0
  br i1 %214, label %215, label %237

215:                                              ; preds = %213
  %216 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 40
  %217 = load volatile i32, ptr %216, align 4
  %218 = call i32 @llvm.smax.i32(i32 %217, i32 0) #17
  %219 = getelementptr %struct.anon, ptr %4, i32 0, i32 40, i32 0, i32 1
  %220 = load volatile i32, ptr %219, align 8
  %221 = call i32 @llvm.smax.i32(i32 %220, i32 0) #17
  %222 = add nuw i32 %221, %218
  %223 = getelementptr %struct.anon, ptr %4, i32 0, i32 40, i32 0, i32 3
  %224 = load volatile i32, ptr %223, align 8
  %225 = call i32 @llvm.smax.i32(i32 %224, i32 0) #17
  %226 = add i32 %222, %225
  %227 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 17
  store i32 %226, ptr %227, align 8
  %228 = load i32, ptr %69, align 8
  %229 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 18
  store i32 %228, ptr %229, align 4
  %230 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 41
  %231 = load ptr, ptr %230, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %244, label %233

233:                                              ; preds = %215
  %234 = getelementptr inbounds %struct.linux_binfmt, ptr %231, i32 0, i32 1
  %235 = load ptr, ptr %234, align 4
  %236 = call zeroext i1 @try_module_get(ptr noundef %235) #17
  br i1 %236, label %244, label %237

237:                                              ; preds = %233, %213, %23
  %238 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 41
  store ptr null, ptr %238, align 4
  %239 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 10
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %239) #17, !srcloc !14
  %240 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %239, ptr %239, i32 1, ptr elementtype(i32) %239) #17, !srcloc !19
  %241 = extractvalue { i32, i32 } %240, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !20
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %237
  call fastcc void @__mmput(ptr noundef %4) #17
  br label %244

244:                                              ; preds = %243, %237, %233, %215, %6, %1
  %245 = phi ptr [ %4, %233 ], [ %4, %215 ], [ null, %6 ], [ null, %1 ], [ null, %237 ], [ null, %243 ]
  ret ptr %245
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @create_io_thread(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.kernel_clone_args, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  %5 = getelementptr inbounds i8, ptr %4, i32 56
  store i64 0, ptr %5, align 8, !annotation !9
  store i64 2155941632, ptr %4, align 8
  %6 = getelementptr inbounds %struct.kernel_clone_args, ptr %4, i32 0, i32 1
  %7 = getelementptr inbounds %struct.kernel_clone_args, ptr %4, i32 0, i32 5
  %8 = ptrtoint ptr %0 to i32
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i32 %8, ptr %7, align 8
  %9 = getelementptr inbounds %struct.kernel_clone_args, ptr %4, i32 0, i32 6
  %10 = ptrtoint ptr %1 to i32
  store i32 %10, ptr %9, align 4
  %11 = getelementptr inbounds %struct.kernel_clone_args, ptr %4, i32 0, i32 7
  %12 = getelementptr inbounds %struct.kernel_clone_args, ptr %4, i32 0, i32 11
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store i32 1, ptr %12, align 8
  %13 = getelementptr inbounds %struct.kernel_clone_args, ptr %4, i32 0, i32 12
  store ptr null, ptr %13, align 4
  %14 = call fastcc ptr @copy_process(ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_clone(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.completion, align 4
  %3 = load i64, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !9
  %4 = and i64 %3, 1048576
  %5 = icmp eq i64 %4, 0
  %6 = and i64 %3, 1052672
  %7 = icmp eq i64 %6, 1052672
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.kernel_clone_args, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.kernel_clone_args, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %133, label %14

14:                                               ; preds = %8, %1
  %15 = and i64 %3, 8388608
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = and i64 %3, 16384
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.kernel_clone_args, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 17
  %24 = select i1 %23, i32 1, i32 3
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i32 [ 2, %17 ], [ %24, %20 ]
  %27 = tail call ptr @llvm.thread.pointer() #17
  %28 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = shl nuw nsw i32 8, %26
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 0, i32 %26, !prof !10
  br label %34

34:                                               ; preds = %25, %14
  %35 = phi i32 [ 0, %14 ], [ %33, %25 ]
  %36 = tail call fastcc ptr @copy_process(ptr noundef null, i32 noundef %35, i32 noundef -1, ptr noundef %0)
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = ptrtoint ptr %36 to i32
  br label %133

40:                                               ; preds = %34
  %41 = tail call ptr @llvm.thread.pointer() #17
  %42 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_fork, i32 0, i32 1), align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = lshr i32 %46, 5
  %48 = getelementptr i32, ptr @__cpu_online_mask, i32 %47
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %46, 31
  %51 = shl nuw i32 1, %50
  %52 = and i32 %51, %49
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %44
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !50
  %55 = tail call i32 @__traceiter_sched_process_fork(ptr noundef null, ptr noundef %41, ptr noundef %36) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !51
  br label %56

56:                                               ; preds = %54, %44, %40
  %57 = tail call ptr @get_task_pid(ptr noundef %36, i32 noundef 0) #17
  %58 = tail call i32 @pid_vnr(ptr noundef %57) #17
  br i1 %5, label %67, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.kernel_clone_args, ptr %0, i32 0, i32 3
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %63 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %62) #13, !srcloc !39
  %64 = and i32 %63, -13
  %65 = or i32 %64, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #17, !srcloc !40
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !41
  %66 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %61, i32 %58, i32 -1090519041) #17, !srcloc !52
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #17, !srcloc !40
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !41
  br label %67

67:                                               ; preds = %59, %56
  %68 = and i64 %3, 16384
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 66
  store ptr %2, ptr %71, align 4
  store i32 0, ptr %2, align 4
  %72 = getelementptr inbounds %struct.completion, ptr %2, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %72, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_completion.__key) #17
  %73 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %73) #17, !srcloc !14
  %74 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %73, ptr %73, i32 1, ptr elementtype(i32) %73) #17, !srcloc !53
  %75 = extractvalue { i32, i32, i32 } %74, 0
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77, !prof !11

77:                                               ; preds = %70
  %78 = add i32 %75, 1
  %79 = or i32 %78, %75
  %80 = icmp sgt i32 %79, -1
  br i1 %80, label %83, label %81, !prof !10

81:                                               ; preds = %77, %70
  %82 = phi i32 [ 2, %70 ], [ 1, %77 ]
  call void @refcount_warn_saturate(ptr noundef %73, i32 noundef %82) #17
  br label %83

83:                                               ; preds = %81, %77, %67
  call void @wake_up_new_task(ptr noundef %36) #17
  %84 = icmp eq i32 %35, 0
  br i1 %84, label %86, label %85, !prof !10

85:                                               ; preds = %83
  call fastcc void @ptrace_event_pid(i32 noundef %35, ptr noundef %57)
  br label %86

86:                                               ; preds = %85, %83
  br i1 %69, label %132, label %87

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = or i32 %89, 1073741824
  store i32 %90, ptr %88, align 4
  call void @cgroup_enter_frozen() #17
  %91 = call i32 @wait_for_completion_killable(ptr noundef nonnull %2) #17
  call void @cgroup_leave_frozen(i1 noundef zeroext false) #17
  %92 = load i32, ptr %88, align 4
  %93 = and i32 %92, -1073741825
  store i32 %93, ptr %88, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !54
  %94 = load volatile i32, ptr @system_freezing_cnt, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %100, label %96, !prof !10

96:                                               ; preds = %87
  %97 = call zeroext i1 @freezing_slow_path(ptr noundef %41) #17
  br i1 %97, label %98, label %100, !prof !11

98:                                               ; preds = %96
  %99 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #17
  br label %100

100:                                              ; preds = %98, %96, %87
  %101 = icmp eq i32 %91, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 107
  call void @_raw_spin_lock(ptr noundef %103) #17
  %104 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 66
  store ptr null, ptr %104, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %105 = load i16, ptr %103, align 4
  %106 = add i16 %105, 1
  store i16 %106, ptr %103, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  br label %107

107:                                              ; preds = %102, %100
  %108 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %108) #17, !srcloc !14
  %109 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %108, ptr %108, i32 1, ptr elementtype(i32) %108) #17, !srcloc !15
  %110 = extractvalue { i32, i32, i32 } %109, 0
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = icmp sgt i32 %110, 0
  br i1 %113, label %116, label %114, !prof !10

114:                                              ; preds = %112
  call void @refcount_warn_saturate(ptr noundef %108, i32 noundef 3) #17
  br label %116

115:                                              ; preds = %107
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  call void @__put_task_struct(ptr noundef %36) #17
  br label %116

116:                                              ; preds = %115, %114, %112
  br i1 %101, label %117, label %132

117:                                              ; preds = %116
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %118 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 56
  %119 = load volatile ptr, ptr %118, align 8
  %120 = call ptr @task_active_pid_ns(ptr noundef %119) #17
  %121 = icmp eq ptr %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %117
  %123 = call i32 @pid_nr_ns(ptr noundef %57, ptr noundef nonnull %120) #17
  br label %124

124:                                              ; preds = %122, %117
  %125 = phi i32 [ %123, %122 ], [ 0, %117 ]
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !34
  %126 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 5
  %127 = load i32, ptr %126, align 8
  %128 = and i32 %127, 256
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130, !prof !10

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 120
  store i32 %125, ptr %131, align 8
  call void @ptrace_notify(i32 noundef 1285) #17
  br label %132

132:                                              ; preds = %130, %124, %116, %86
  call void @put_pid(ptr noundef %57) #17
  br label %133

133:                                              ; preds = %132, %38, %8
  %134 = phi i32 [ %39, %38 ], [ %58, %132 ], [ -22, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  ret i32 %134
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_pid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_new_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ptrace_event_pid(i32 noundef %0, ptr noundef %1) unnamed_addr #10 {
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !31
  %3 = tail call ptr @llvm.thread.pointer() #17
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 56
  %5 = load volatile ptr, ptr %4, align 8
  %6 = tail call ptr @task_active_pid_ns(ptr noundef %5) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @pid_nr_ns(ptr noundef %1, ptr noundef nonnull %6) #17
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ 0, %2 ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !34
  %12 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 5
  %13 = load i32, ptr %12, align 8
  %14 = add i32 %0, 3
  %15 = shl nuw i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !10

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 120
  store i32 %11, ptr %19, align 8
  %20 = shl i32 %0, 8
  %21 = or i32 %20, 5
  tail call void @ptrace_notify(i32 noundef %21) #17
  br label %29

22:                                               ; preds = %10
  %23 = icmp eq i32 %0, 4
  %24 = and i32 %13, 65537
  %25 = icmp eq i32 %24, 1
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = tail call i32 @send_sig(i32 noundef 5, ptr noundef %3, i32 noundef 0) #17
  br label %29

29:                                               ; preds = %27, %22, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_thread(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.kernel_clone_args, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  %5 = getelementptr inbounds i8, ptr %4, i32 56
  store i64 0, ptr %5, align 8, !annotation !9
  %6 = and i32 %2, -8389120
  %7 = or i32 %6, 8388864
  %8 = zext i32 %7 to i64
  store i64 %8, ptr %4, align 8
  %9 = getelementptr inbounds %struct.kernel_clone_args, ptr %4, i32 0, i32 1
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds %struct.kernel_clone_args, ptr %4, i32 0, i32 2
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.kernel_clone_args, ptr %4, i32 0, i32 3
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds %struct.kernel_clone_args, ptr %4, i32 0, i32 4
  %13 = and i32 %2, 255
  store i32 %13, ptr %12, align 4
  %14 = getelementptr inbounds %struct.kernel_clone_args, ptr %4, i32 0, i32 5
  %15 = ptrtoint ptr %0 to i32
  store i32 %15, ptr %14, align 8
  %16 = getelementptr inbounds %struct.kernel_clone_args, ptr %4, i32 0, i32 6
  %17 = ptrtoint ptr %1 to i32
  store i32 %17, ptr %16, align 4
  %18 = getelementptr inbounds %struct.kernel_clone_args, ptr %4, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(28) %18, i8 0, i64 28, i1 false)
  %19 = call i32 @kernel_clone(ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sys_fork() local_unnamed_addr #0 {
  %1 = alloca %struct.kernel_clone_args, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i32 64, i1 false)
  %2 = getelementptr inbounds { i64, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, [4 x i8] }, ptr %1, i32 0, i32 4
  store i32 17, ptr %2, align 4
  %3 = call i32 @kernel_clone(ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #17
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sys_vfork() local_unnamed_addr #0 {
  %1 = alloca %struct.kernel_clone_args, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #17
  %2 = getelementptr inbounds i8, ptr %1, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 0, i32 56, i1 false)
  store i64 16640, ptr %1, align 8
  %3 = getelementptr inbounds { i64, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, [4 x i8] }, ptr %1, i32 0, i32 4
  store i32 17, ptr %3, align 4
  %4 = call i32 @kernel_clone(ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #17
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clone(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.kernel_clone_args, align 8
  %7 = inttoptr i32 %2 to ptr
  %8 = inttoptr i32 %4 to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #17
  %9 = getelementptr inbounds i8, ptr %6, i32 56
  store i64 0, ptr %9, align 8, !annotation !9
  %10 = and i32 %0, -256
  %11 = zext i32 %10 to i64
  store i64 %11, ptr %6, align 8
  %12 = getelementptr inbounds %struct.kernel_clone_args, ptr %6, i32 0, i32 1
  store ptr %7, ptr %12, align 8
  %13 = getelementptr inbounds %struct.kernel_clone_args, ptr %6, i32 0, i32 2
  store ptr %8, ptr %13, align 4
  %14 = getelementptr inbounds %struct.kernel_clone_args, ptr %6, i32 0, i32 3
  store ptr %7, ptr %14, align 8
  %15 = getelementptr inbounds %struct.kernel_clone_args, ptr %6, i32 0, i32 4
  %16 = and i32 %0, 255
  store i32 %16, ptr %15, align 4
  %17 = getelementptr inbounds %struct.kernel_clone_args, ptr %6, i32 0, i32 5
  store i32 %1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.kernel_clone_args, ptr %6, i32 0, i32 6
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.kernel_clone_args, ptr %6, i32 0, i32 7
  store i32 %3, ptr %19, align 8
  %20 = getelementptr inbounds %struct.kernel_clone_args, ptr %6, i32 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %20, i8 0, i64 24, i1 false) #17
  %21 = call i32 @kernel_clone(ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #17
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clone3(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.kernel_clone_args, align 8
  %4 = alloca [32 x i32], align 4
  %5 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i32 64, i1 false) #17, !annotation !9
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i32 128, i1 false) #17, !annotation !9
  %6 = getelementptr inbounds %struct.kernel_clone_args, ptr %3, i32 0, i32 8
  store ptr %4, ptr %6, align 4
  %7 = call fastcc i32 @copy_clone_args_from_user(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %1) #17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %2
  %10 = load i64, ptr %3, align 8
  %11 = and i64 %10, -17175674625
  %12 = icmp ne i64 %11, 0
  %13 = and i64 %10, 4294969344
  %14 = icmp eq i64 %13, 4294969344
  %15 = or i1 %12, %14
  br i1 %15, label %41, label %16

16:                                               ; preds = %9
  %17 = and i64 %10, 98304
  %18 = icmp eq i64 %17, 0
  %19 = getelementptr inbounds %struct.kernel_clone_args, ptr %3, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %18, i1 true, i1 %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.kernel_clone_args, ptr %3, i32 0, i32 5
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.kernel_clone_args, ptr %3, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %26, label %30, label %31

30:                                               ; preds = %23
  br i1 %29, label %39, label %41

31:                                               ; preds = %23
  br i1 %29, label %41, label %32

32:                                               ; preds = %31
  %33 = inttoptr i32 %25 to ptr
  %34 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %33, i32 %28, i32 -1090519040) #21, !srcloc !55
  %35 = extractvalue { i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = add i32 %28, %25
  store i32 %38, ptr %24, align 8
  br label %39

39:                                               ; preds = %37, %30
  %40 = call i32 @kernel_clone(ptr noundef nonnull %3) #17
  br label %41

41:                                               ; preds = %39, %32, %31, %30, %16, %9, %2
  %42 = phi i32 [ %40, %39 ], [ %7, %2 ], [ -22, %9 ], [ -22, %30 ], [ -22, %31 ], [ -22, %32 ], [ -22, %16 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @walk_process_tree(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #17
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 59
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %32, %3
  %7 = phi ptr [ %5, %3 ], [ %29, %32 ]
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 93
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 3
  br label %11

11:                                               ; preds = %39, %6
  %12 = phi ptr [ %9, %6 ], [ %42, %39 ]
  %13 = phi ptr [ %10, %6 ], [ %40, %39 ]
  %14 = phi ptr [ %7, %6 ], [ %24, %39 ]
  %15 = load volatile ptr, ptr %13, align 4
  %16 = getelementptr inbounds %struct.signal_struct, ptr %12, i32 0, i32 3
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %43, label %18

18:                                               ; preds = %11
  %19 = getelementptr i8, ptr %15, i32 -1388
  %20 = getelementptr i8, ptr %15, i32 -80
  br label %21

21:                                               ; preds = %34, %18
  %22 = phi ptr [ %20, %18 ], [ %38, %34 ]
  %23 = phi ptr [ %19, %18 ], [ %36, %34 ]
  %24 = phi ptr [ %14, %18 ], [ %37, %34 ]
  %25 = load ptr, ptr %22, align 4
  %26 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 57
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %39, label %28

28:                                               ; preds = %21
  %29 = getelementptr i8, ptr %25, i32 -1316
  %30 = tail call i32 %1(ptr noundef %29, ptr noundef %2) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = icmp slt i32 %30, 0
  br i1 %33, label %50, label %6

34:                                               ; preds = %45, %28
  %35 = phi ptr [ %29, %28 ], [ %14, %45 ]
  %36 = phi ptr [ %23, %28 ], [ %47, %45 ]
  %37 = phi ptr [ %24, %28 ], [ %49, %45 ]
  %38 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 58
  br label %21

39:                                               ; preds = %21
  %40 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 65
  %41 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 93
  %42 = load ptr, ptr %41, align 16
  br label %11

43:                                               ; preds = %11
  %44 = icmp eq ptr %14, %5
  br i1 %44, label %50, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 55
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 59
  %49 = load ptr, ptr %48, align 4
  br label %34

50:                                               ; preds = %43, %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !56
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #17, !srcloc !14
  %51 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #17, !srcloc !57
  %52 = extractvalue { i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  br label %55

55:                                               ; preds = %54, %50
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !58
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @proc_caches_init() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.3, i32 noundef 1300, i32 noundef 0, i32 noundef 794624, ptr noundef nonnull @sighand_ctor) #17
  store ptr %1, ptr @sighand_cachep, align 4
  %2 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.4, i32 noundef 624, i32 noundef 0, i32 noundef 270336, ptr noundef null) #17
  store ptr %2, ptr @signal_cachep, align 4
  %3 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.5, i32 noundef 256, i32 noundef 0, i32 noundef 270336, ptr noundef null) #17
  store ptr %3, ptr @files_cachep, align 4
  %4 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.6, i32 noundef 36, i32 noundef 0, i32 noundef 270336, ptr noundef null) #17
  store ptr %4, ptr @fs_cachep, align 4
  %5 = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.7, i32 noundef 452, i32 noundef 0, i32 noundef 270336, i32 noundef 188, i32 noundef 168, ptr noundef null) #17
  store ptr %5, ptr @mm_cachep, align 4
  %6 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.8, i32 noundef 92, i32 noundef 4, i32 noundef 262144, ptr noundef null) #17
  store ptr %6, ptr @vm_area_cachep, align 4
  tail call void @mmap_init() #19
  %7 = tail call i32 @nsproxy_cache_init() #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sighand_ctor(ptr noundef %0) #0 {
  store i32 0, ptr %0, align 4
  %2 = getelementptr inbounds %struct.sighand_struct, ptr %0, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %2, ptr noundef nonnull @.str.43, ptr noundef nonnull @sighand_ctor.__key) #17
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mmap_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @nsproxy_cache_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unshare_fd(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @llvm.thread.pointer() #17
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 90
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4
  %8 = and i32 %0, 1024
  %9 = icmp ne i32 %8, 0
  %10 = icmp ne ptr %7, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load volatile i32, ptr %7, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = call ptr @dup_fd(ptr noundef nonnull %7, i32 noundef %1, ptr noundef nonnull %4) #17
  store ptr %16, ptr %2, align 4
  %17 = icmp eq ptr %16, null
  %18 = load i32, ptr %4, align 4
  %19 = select i1 %17, i32 %18, i32 0
  br label %20

20:                                               ; preds = %15, %12, %3
  %21 = phi i32 [ 0, %12 ], [ 0, %3 ], [ %19, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dup_fd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksys_unshare(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store ptr null, ptr %3, align 4
  %4 = and i32 %0, 268435456
  %5 = icmp eq i32 %4, 0
  %6 = or i32 %0, 66048
  %7 = select i1 %5, i32 %0, i32 %6
  %8 = shl i32 %7, 3
  %9 = and i32 %8, 2048
  %10 = or i32 %9, %7
  %11 = shl i32 %10, 5
  %12 = and i32 %11, 65536
  %13 = or i32 %12, %10
  %14 = lshr i32 %7, 8
  %15 = and i32 %14, 512
  %16 = or i32 %13, %15
  %17 = and i32 %7, -2114391937
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %140

19:                                               ; preds = %1
  %20 = and i32 %13, 67840
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = tail call ptr @llvm.thread.pointer() #17
  %24 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 64
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %27, label %140

27:                                               ; preds = %22, %19
  %28 = and i32 %10, 2304
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = tail call ptr @llvm.thread.pointer() #17
  %32 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 94
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.sighand_struct, ptr %33, i32 0, i32 1
  %35 = load volatile i32, ptr %34, align 4
  %36 = icmp ugt i32 %35, 1
  br i1 %36, label %140, label %37

37:                                               ; preds = %30, %27
  %38 = and i32 %7, 256
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = tail call zeroext i1 @current_is_single_threaded() #17
  br i1 %41, label %42, label %140

42:                                               ; preds = %40, %37
  %43 = and i32 %7, 134479872
  %44 = icmp eq i32 %43, 0
  %45 = xor i1 %44, true
  %46 = tail call ptr @llvm.thread.pointer() #17
  %47 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 89
  %48 = load ptr, ptr %47, align 64
  %49 = and i32 %16, 512
  %50 = icmp ne i32 %49, 0
  %51 = icmp ne ptr %48, null
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = load i32, ptr %48, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = tail call ptr @copy_fs_struct(ptr noundef nonnull %48) #17
  %58 = icmp eq ptr %57, null
  br i1 %58, label %140, label %59

59:                                               ; preds = %56, %53, %42
  %60 = phi ptr [ null, %42 ], [ %57, %56 ], [ null, %53 ]
  %61 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 90
  %62 = load ptr, ptr %61, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4
  %63 = and i32 %7, 1024
  %64 = icmp ne i32 %63, 0
  %65 = icmp ne ptr %62, null
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load volatile i32, ptr %62, align 4
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = call ptr @dup_fd(ptr noundef nonnull %62, i32 noundef -1, ptr noundef nonnull %2) #17
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %70, %67, %59
  %74 = phi ptr [ null, %59 ], [ null, %67 ], [ %71, %70 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  br label %78

75:                                               ; preds = %70
  %76 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %135

78:                                               ; preds = %75, %73
  %79 = phi ptr [ %74, %73 ], [ null, %75 ]
  %80 = and i32 %7, 268435456
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %129

82:                                               ; preds = %78
  %83 = call i32 @unshare_nsproxy_namespaces(i32 noundef %16, ptr noundef nonnull %3, ptr noundef null, ptr noundef %60) #17
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %129

85:                                               ; preds = %82
  %86 = icmp ne ptr %60, null
  %87 = icmp ne ptr %79, null
  %88 = select i1 %86, i1 true, i1 %87
  %89 = or i1 %88, %45
  %90 = load ptr, ptr %3, align 4
  %91 = icmp ne ptr %90, null
  %92 = select i1 %89, i1 true, i1 %91
  br i1 %92, label %93, label %126

93:                                               ; preds = %85
  br i1 %44, label %95, label %94

94:                                               ; preds = %93
  call void @exit_sem(ptr noundef %46) #17
  br label %95

95:                                               ; preds = %94, %93
  %96 = and i32 %7, 134217728
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  call void @exit_shm(ptr noundef %46) #17
  %99 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 88
  store volatile ptr %99, ptr %99, align 4
  %100 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 88, i32 0, i32 1
  store ptr %99, ptr %100, align 4
  br label %101

101:                                              ; preds = %98, %95
  %102 = load ptr, ptr %3, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  call void @switch_task_namespaces(ptr noundef %46, ptr noundef nonnull %102) #17
  br label %105

105:                                              ; preds = %104, %101
  %106 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 107
  call void @_raw_spin_lock(ptr noundef %106) #17
  %107 = icmp eq ptr %60, null
  br i1 %107, label %117, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr %47, align 64
  %110 = getelementptr inbounds %struct.fs_struct, ptr %109, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %110) #17
  store ptr %60, ptr %47, align 64
  %111 = load i32, ptr %109, align 4
  %112 = add i32 %111, -1
  store i32 %112, ptr %109, align 4
  %113 = icmp eq i32 %112, 0
  %114 = select i1 %113, ptr %109, ptr null
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %115 = load i16, ptr %110, align 4
  %116 = add i16 %115, 1
  store i16 %116, ptr %110, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  br label %117

117:                                              ; preds = %108, %105
  %118 = phi ptr [ null, %105 ], [ %114, %108 ]
  %119 = icmp eq ptr %79, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  %121 = load ptr, ptr %61, align 4
  store ptr %79, ptr %61, align 4
  br label %122

122:                                              ; preds = %120, %117
  %123 = phi ptr [ null, %117 ], [ %121, %120 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %124 = load i16, ptr %106, align 4
  %125 = add i16 %124, 1
  store i16 %125, ptr %106, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  br label %126

126:                                              ; preds = %122, %85
  %127 = phi ptr [ %118, %122 ], [ null, %85 ]
  %128 = phi ptr [ %123, %122 ], [ null, %85 ]
  call void @perf_event_namespaces(ptr noundef %46) #17
  br label %129

129:                                              ; preds = %126, %82, %78
  %130 = phi ptr [ %60, %78 ], [ %127, %126 ], [ %60, %82 ]
  %131 = phi ptr [ %79, %78 ], [ %128, %126 ], [ %79, %82 ]
  %132 = phi i32 [ -22, %78 ], [ 0, %126 ], [ %83, %82 ]
  %133 = icmp eq ptr %131, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  call void @put_files_struct(ptr noundef nonnull %131) #17
  br label %135

135:                                              ; preds = %134, %129, %75
  %136 = phi ptr [ %130, %129 ], [ %130, %134 ], [ %60, %75 ]
  %137 = phi i32 [ %132, %129 ], [ %132, %134 ], [ %76, %75 ]
  %138 = icmp eq ptr %136, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %135
  call void @free_fs_struct(ptr noundef nonnull %136) #17
  br label %140

140:                                              ; preds = %139, %135, %56, %40, %30, %22, %1
  %141 = phi i32 [ %137, %139 ], [ %137, %135 ], [ -12, %56 ], [ -22, %1 ], [ -22, %22 ], [ -22, %30 ], [ -22, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i32 %141
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unshare_nsproxy_namespaces(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_sem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_shm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @switch_task_namespaces(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_namespaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_files_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_fs_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_unshare(i32 noundef %0) #0 {
  %2 = tail call i32 @ksys_unshare(i32 noundef %0) #17
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unshare_files() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = tail call ptr @llvm.thread.pointer() #17
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 90
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #17
  store i32 0, ptr %1, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load volatile i32, ptr %4, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #17
  br label %23

10:                                               ; preds = %6
  %11 = call ptr @dup_fd(ptr noundef nonnull %4, i32 noundef -1, ptr noundef nonnull %1) #17
  %12 = icmp eq ptr %11, null
  %13 = load i32, ptr %1, align 4
  %14 = select i1 %12, i32 %13, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #17
  %15 = icmp eq i32 %14, 0
  %16 = icmp ne ptr %11, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 107
  call void @_raw_spin_lock(ptr noundef %20) #17
  store ptr %11, ptr %3, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %21 = load i16, ptr %20, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %20, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  call void @put_files_struct(ptr noundef %19) #17
  br label %23

23:                                               ; preds = %18, %10, %9
  %24 = phi i32 [ 0, %18 ], [ %14, %10 ], [ 0, %9 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sysctl_max_threads(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ctl_table, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  %10 = load i32, ptr @max_threads, align 4
  store i32 %10, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  store i32 1, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #17
  store i32 1073741823, ptr %9, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, ptr noundef align 4 dereferenceable(36) %0, i32 28, i1 false)
  %11 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 1
  store ptr %7, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 7
  store ptr %8, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 8
  store ptr %9, ptr %13, align 4
  %14 = call i32 @proc_dointvec_minmax(ptr noundef nonnull %6, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #17
  %15 = icmp eq i32 %14, 0
  %16 = icmp ne i32 %1, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, ptr %7, align 4
  store i32 %19, ptr @max_threads, align 4
  br label %20

20:                                               ; preds = %18, %5
  %21 = phi i32 [ 0, %18 ], [ %14, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #17
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_task_newtask(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #17
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %5, i32 0, i32 2
  %13 = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %5, i32 0, i32 4
  %16 = load i16, ptr %15, align 4
  %17 = sext i16 %16 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %11, ptr noundef %12, i32 noundef %14, i32 noundef %17) #17
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

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_task_rename(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #17
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %5, i32 0, i32 2
  %13 = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %5, i32 0, i32 3
  %14 = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %5, i32 0, i32 4
  %15 = load i16, ptr %14, align 4
  %16 = sext i16 %15 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %11, ptr noundef %12, ptr noundef %13, i32 noundef %16) #17
  %17 = tail call i32 @trace_handle_return(ptr noundef %9) #17
  br label %18

18:                                               ; preds = %8, %3
  %19 = phi i32 [ %17, %8 ], [ %6, %3 ]
  ret i32 %19
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
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @pgd_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__io_uring_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_signal_struct(ptr noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.signal_struct, ptr %0, i32 0, i32 54
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #17, !srcloc !14
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #17, !srcloc !19
  %8 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17, !prof !11

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 50
  store i32 -32, ptr %11, align 4
  %12 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 50, i32 1
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 50, i32 1, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 50, i32 2
  store ptr @mmdrop_async_fn, ptr %14, align 4
  %15 = load ptr, ptr @system_wq, align 4
  %16 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %15, ptr noundef %11) #17
  br label %17

17:                                               ; preds = %10, %5, %1
  %18 = load ptr, ptr @signal_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %18, ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmdrop_async_fn(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -428
  tail call void @__mmdrop(ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pgd_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uprobe_clear_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_aio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_mmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uprobe_free_utask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_futex(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @thread_group_exited(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_nr_ns(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ll(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @recalc_sigpending() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @dup_task_struct(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 @tsk_fork_get_node(ptr noundef %0) #17
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i32 [ %5, %4 ], [ %1, %2 ]
  %8 = load ptr, ptr @task_struct_cachep, align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %8, i32 noundef 3264) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %59, label %11

11:                                               ; preds = %6
  %12 = icmp eq i32 %7, -1
  %13 = select i1 %12, i32 0, i32 %7
  %14 = tail call ptr @__alloc_pages(i32 noundef 4197824, i32 noundef 1, i32 noundef %13, ptr noundef null) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %57, label %16, !prof !11

16:                                               ; preds = %11
  %17 = tail call ptr @page_address(ptr noundef nonnull %14) #17
  %18 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 2
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %57, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @arch_dup_task_struct(ptr noundef nonnull %9, ptr noundef %0)
  store ptr %17, ptr %18, align 4
  %22 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 151
  store volatile i32 1, ptr %22, align 8
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 103, i32 2
  store ptr null, ptr %25, align 8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef nonnull %9) #17
  %26 = load ptr, ptr %18, align 4
  store i32 1470918301, ptr %26, align 4
  %27 = tail call i32 @get_random_u32() #17
  %28 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 54
  store i32 %27, ptr %28, align 16
  %29 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 27
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 29
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 29
  %35 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 27
  store ptr %34, ptr %35, align 8
  br label %36

36:                                               ; preds = %33, %24
  %37 = tail call i32 @dup_user_cpus_ptr(ptr noundef nonnull %9, ptr noundef %0, i32 noundef %7) #17
  %38 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 137
  store volatile i32 2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 3
  store volatile i32 1, ptr %39, align 8
  %40 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 138
  store ptr null, ptr %40, align 4
  %41 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 139
  store ptr null, ptr %41, align 32
  %42 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 109
  store ptr null, ptr %42, align 8
  %43 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 69
  store ptr null, ptr %43, align 64
  %44 = load ptr, ptr %18, align 4
  %45 = load ptr, ptr @mem_map, align 4
  %46 = ptrtoint ptr %44 to i32
  %47 = add i32 %46, 1073741824
  %48 = lshr i32 %47, 12
  %49 = getelementptr %struct.page, ptr %45, i32 %48, i32 1
  %50 = load volatile i32, ptr %49, align 4
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 37, i32 noundef 8) #17
  tail call void @kmap_local_fork(ptr noundef nonnull %9) #17
  br label %59

51:                                               ; preds = %20
  %52 = load ptr, ptr @mem_map, align 4
  %53 = ptrtoint ptr %17 to i32
  %54 = add i32 %53, 1073741824
  %55 = lshr i32 %54, 12
  %56 = getelementptr %struct.page, ptr %52, i32 %55
  tail call void @__free_pages(ptr noundef %56, i32 noundef 1) #17
  br label %57

57:                                               ; preds = %51, %16, %11
  %58 = load ptr, ptr @task_struct_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %58, ptr noundef nonnull %9) #17
  br label %59

59:                                               ; preds = %57, %36, %6
  %60 = phi ptr [ null, %57 ], [ %9, %36 ], [ null, %6 ]
  ret ptr %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_creds(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_ucounts_overlimit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_fork(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_kthread_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_fork(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_event_init_task(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_semundo(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @copy_files(i32 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store i32 0, ptr %3, align 4
  %4 = tail call ptr @llvm.thread.pointer() #17
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 90
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = and i32 %0, 1024
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %6) #17, !srcloc !14
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %6, ptr nonnull %6, i32 1, ptr nonnull elementtype(i32) %6) #17, !srcloc !23
  br label %20

13:                                               ; preds = %8
  %14 = call ptr @dup_fd(ptr noundef nonnull %6, i32 noundef -1, ptr noundef nonnull %3) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, ptr %3, align 4
  br label %20

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 90
  store ptr %14, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %16, %11, %2
  %21 = phi i32 [ %17, %16 ], [ 0, %2 ], [ 0, %18 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @copy_fs(i32 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #17
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 89
  %5 = load ptr, ptr %4, align 64
  %6 = and i32 %0, 512
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %9) #17
  %10 = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %14 = load i16, ptr %9, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  br label %26

16:                                               ; preds = %8
  %17 = load i32, ptr %5, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %19 = load i16, ptr %9, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  br label %26

21:                                               ; preds = %2
  %22 = tail call ptr @copy_fs_struct(ptr noundef %5) #17
  %23 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 89
  store ptr %22, ptr %23, align 64
  %24 = icmp eq ptr %22, null
  %25 = select i1 %24, i32 -12, i32 0
  br label %26

26:                                               ; preds = %21, %16, %13
  %27 = phi i32 [ -11, %13 ], [ 0, %16 ], [ %25, %21 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @copy_sighand(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = and i32 %0, 2048
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #17
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 94
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sighand_struct, ptr %8, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #17, !srcloc !14
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #17, !srcloc !53
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !11

13:                                               ; preds = %5
  %14 = add i32 %11, 1
  %15 = or i32 %14, %11
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %35, label %17, !prof !10

17:                                               ; preds = %13, %5
  %18 = phi i32 [ 2, %5 ], [ 1, %13 ]
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef %18) #17
  br label %35

19:                                               ; preds = %2
  %20 = load ptr, ptr @sighand_cachep, align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %20, i32 noundef 3264) #17
  %22 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 94
  store volatile ptr %21, ptr %22, align 4
  %23 = icmp eq ptr %21, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.sighand_struct, ptr %21, i32 0, i32 1
  store volatile i32 1, ptr %25, align 4
  %26 = tail call ptr @llvm.thread.pointer() #17
  %27 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 94
  %28 = load ptr, ptr %27, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %28) #17
  %29 = getelementptr inbounds %struct.sighand_struct, ptr %21, i32 0, i32 3
  %30 = load ptr, ptr %27, align 4
  %31 = getelementptr inbounds %struct.sighand_struct, ptr %30, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(1280) %29, ptr noundef align 4 dereferenceable(1280) %31, i32 1280, i1 false)
  %32 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %33 = load i16, ptr %32, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !43
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !44
  br label %35

35:                                               ; preds = %24, %19, %17, %13
  %36 = phi i32 [ 0, %24 ], [ -12, %19 ], [ 0, %13 ], [ 0, %17 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @copy_signal(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = and i32 %0, 65536
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %56

5:                                                ; preds = %2
  %6 = load ptr, ptr @signal_cachep, align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %6, i32 noundef 3520) #17
  %8 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 93
  store ptr %7, ptr %8, align 16
  %9 = icmp eq ptr %7, null
  br i1 %9, label %56, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 2
  store i32 1, ptr %11, align 8
  %12 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 1
  store volatile i32 1, ptr %12, align 4
  store volatile i32 1, ptr %7, align 8
  %13 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 3
  %14 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 65
  store ptr %14, ptr %13, align 4
  %15 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 3, i32 1
  store ptr %14, ptr %15, align 8
  store ptr %13, ptr %14, align 4
  %16 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 65, i32 1
  store ptr %13, ptr %16, align 4
  %17 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %17, ptr noundef nonnull @.str.31, ptr noundef nonnull @copy_signal.__key) #17
  %18 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 5
  store ptr %1, ptr %18, align 8
  %19 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 6
  %20 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 6, i32 1
  %21 = getelementptr %struct.signal_struct, ptr %7, i32 0, i32 6, i32 1, i32 0, i32 1
  store i32 0, ptr %21, align 8
  store i32 0, ptr %20, align 4
  store volatile ptr %19, ptr %19, align 4
  %22 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 6, i32 0, i32 1
  store ptr %19, ptr %22, align 8
  %23 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 7
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 26
  %25 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 26, i32 1
  store i32 0, ptr %25, align 8
  store i32 0, ptr %24, align 4
  %26 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 33
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %26, i8 0, i64 20, i1 false) #17
  %27 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 16
  store volatile ptr %27, ptr %27, align 8
  %28 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 16, i32 1
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 17
  tail call void @hrtimer_init(ptr noundef %29, i32 noundef 1, i32 noundef 1) #17
  %30 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 17, i32 2
  store ptr @it_real_fn, ptr %30, align 8
  %31 = tail call ptr @llvm.thread.pointer() #17
  %32 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 59
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %34) #17
  %35 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 50
  %36 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 93
  %37 = load ptr, ptr %36, align 16
  %38 = getelementptr inbounds %struct.signal_struct, ptr %37, i32 0, i32 50
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(128) %35, ptr noundef align 8 dereferenceable(128) %38, i32 128, i1 false)
  %39 = load ptr, ptr %32, align 4
  %40 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 107
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !24
  %41 = load i16, ptr %40, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %40, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !27
  %43 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 21
  %44 = load volatile i32, ptr %35, align 8
  %45 = zext i32 %44 to i64
  tail call void @posix_cputimers_group_init(ptr noundef %43, i64 noundef %45) #17
  %46 = load ptr, ptr %36, align 16
  %47 = getelementptr inbounds %struct.signal_struct, ptr %46, i32 0, i32 52
  %48 = load i16, ptr %47, align 2
  %49 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 52
  store i16 %48, ptr %49, align 2
  %50 = load ptr, ptr %36, align 16
  %51 = getelementptr inbounds %struct.signal_struct, ptr %50, i32 0, i32 53
  %52 = load i16, ptr %51, align 4
  %53 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 53
  store i16 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 55
  tail call void @__mutex_init(ptr noundef %54, ptr noundef nonnull @.str.33, ptr noundef nonnull @copy_signal.__key.32) #17
  %55 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 56
  tail call void @__init_rwsem(ptr noundef %55, ptr noundef nonnull @.str.35, ptr noundef nonnull @copy_signal.__key.34) #17
  br label %56

56:                                               ; preds = %10, %5, %2
  %57 = phi i32 [ 0, %10 ], [ 0, %2 ], [ -12, %5 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @copy_mm(i32 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 79
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 78
  store i32 0, ptr %4, align 16
  %5 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 75
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 74
  store i32 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 37
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 38
  store ptr null, ptr %8, align 8
  %9 = tail call ptr @llvm.thread.pointer() #17
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 37
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 39, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(16) %14, i8 0, i32 16, i1 false) #17
  %15 = and i32 %0, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #17, !srcloc !14
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #17, !srcloc !23
  br label %24

20:                                               ; preds = %13
  %21 = load ptr, ptr %10, align 4
  %22 = tail call fastcc ptr @dup_mm(ptr noundef %21)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20, %17
  %25 = phi ptr [ %11, %17 ], [ %22, %20 ]
  store ptr %25, ptr %7, align 4
  store ptr %25, ptr %8, align 8
  br label %26

26:                                               ; preds = %24, %20, %2
  %27 = phi i32 [ 0, %24 ], [ 0, %2 ], [ -12, %20 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_namespaces(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_thread(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_pid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_inode_getfile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @get_pid(ptr noundef %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #17, !srcloc !14
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #17, !srcloc !53
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7, !prof !11

7:                                                ; preds = %3
  %8 = add i32 %5, 1
  %9 = or i32 %8, %5
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %13, label %11, !prof !10

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 2, %3 ], [ 1, %7 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef %12) #17
  br label %13

13:                                               ; preds = %11, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_can_fork(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_cgroup_fork(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @copy_seccomp(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @llvm.thread.pointer() #17
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 94
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %6 = load volatile i32, ptr %5, align 4
  store volatile i32 %6, ptr %2, align 4
  %7 = lshr i32 %6, 16
  %8 = and i32 %6, 65535
  %9 = icmp eq i32 %8, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br i1 %9, label %10, label %11, !prof !11

10:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/fork.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1669, 0\0A.popsection", ""() #17, !srcloc !59
  unreachable

11:                                               ; preds = %1
  tail call void @get_seccomp_filter(ptr noundef %3) #17
  %12 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 103
  %13 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 103
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 16 dereferenceable(12) %12, ptr noundef align 16 dereferenceable(12) %13, i32 12, i1 false)
  %14 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 50
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 50
  tail call void @_set_bit(i32 noundef 0, ptr noundef %19) #17
  br label %20

20:                                               ; preds = %18, %11
  %21 = load i32, ptr %12, align 16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @_set_bit(i32 noundef 7, ptr noundef %0) #17
  br label %24

24:                                               ; preds = %23, %20
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ptrace_init_task(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 61
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 61, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 60
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 60, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 45
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 5
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 55
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 56
  store ptr %10, ptr %11, align 8
  br i1 %1, label %12, label %31, !prof !11

12:                                               ; preds = %2
  %13 = tail call ptr @llvm.thread.pointer() #17
  %14 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %12
  store i32 %15, ptr %8, align 8
  %18 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 56
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 81
  %21 = load ptr, ptr %20, align 16
  tail call void @__ptrace_link(ptr noundef %0, ptr noundef %19, ptr noundef %21) #17
  %22 = load i32, ptr %8, align 8
  %23 = and i32 %22, 65536
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %17
  %26 = tail call zeroext i1 @task_set_jobctl_pending(ptr noundef %0, i32 noundef 524288) #17
  br label %33

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 98, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, 262144
  store i32 %30, ptr %28, align 4
  br label %33

31:                                               ; preds = %12, %2
  %32 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 81
  store ptr null, ptr %32, align 16
  br label %33

33:                                               ; preds = %31, %27, %25
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @tty_kref_get(ptr noundef returned %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #17, !srcloc !14
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #17, !srcloc !53
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !11

8:                                                ; preds = %3
  %9 = add i32 %6, 1
  %10 = or i32 %9, %6
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %14, label %12, !prof !10

12:                                               ; preds = %8, %3
  %13 = phi i32 [ 2, %3 ], [ 1, %8 ]
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef %13) #17
  br label %14

14:                                               ; preds = %12, %8, %1
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @attach_pid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @refcount_inc(ptr noundef %0) unnamed_addr #10 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #17, !srcloc !14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #17, !srcloc !53
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !11

5:                                                ; preds = %1
  %6 = add i32 %3, 1
  %7 = or i32 %6, %3
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %11, label %9, !prof !10

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 2, %1 ], [ 1, %5 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %10) #17
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_join_group_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @syscall_tracepoint_update(ptr noundef %0) unnamed_addr #10 {
  %2 = tail call ptr @llvm.thread.pointer() #17
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_set_bit(i32 noundef 6, ptr noundef %0) #17
  br label %8

7:                                                ; preds = %1
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %0) #17
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_post_fork(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_post_fork(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_fork(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_task_newtask(ptr noundef %0, i32 noundef %1) unnamed_addr #10 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_task_newtask, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #17
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !60
  %17 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_task_newtask, i32 0, i32 7), align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %24, %19 ], [ %17, %16 ]
  %21 = load volatile ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tracepoint_func, ptr %20, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void %21(ptr noundef %23, ptr noundef %0, i32 noundef %1) #17
  %24 = getelementptr %struct.tracepoint_func, ptr %20, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %19

27:                                               ; preds = %19, %16
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !61
  br label %28

28:                                               ; preds = %27, %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uprobe_copy_process(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @copy_oom_score_adj(i64 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 37
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ne ptr %4, null
  %6 = and i64 %0, 82176
  %7 = icmp eq i64 %6, 256
  %8 = and i1 %7, %5
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @oom_adj_mutex) #17
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 43
  tail call void @_set_bit(i32 noundef 27, ptr noundef %11) #17
  %12 = tail call ptr @llvm.thread.pointer() #17
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 93
  %14 = load ptr, ptr %13, align 16
  %15 = getelementptr inbounds %struct.signal_struct, ptr %14, i32 0, i32 52
  %16 = load i16, ptr %15, align 2
  %17 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 93
  %18 = load ptr, ptr %17, align 16
  %19 = getelementptr inbounds %struct.signal_struct, ptr %18, i32 0, i32 52
  store i16 %16, ptr %19, align 2
  %20 = load ptr, ptr %13, align 16
  %21 = getelementptr inbounds %struct.signal_struct, ptr %20, i32 0, i32 53
  %22 = load i16, ptr %21, align 4
  %23 = load ptr, ptr %17, align 16
  %24 = getelementptr inbounds %struct.signal_struct, ptr %23, i32 0, i32 53
  store i16 %22, ptr %24, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @oom_adj_mutex) #17
  br label %25

25:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_cancel_fork(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_thread(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_io_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_task_namespaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_fs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_files(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_free_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dec_rlimit_ucounts(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tsk_fork_get_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dup_user_cpus_ptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmap_local_fork(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @copy_fs_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @it_real_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @posix_cputimers_group_init(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__copy_io(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_seccomp_filter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ptrace_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @task_set_jobctl_pending(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uprobe_start_dup_mmap() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_cache_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uprobe_dup_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_stat_account(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_vma_fork(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vma_interval_tree_insert_after(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__vma_link_rb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_range(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uprobe_end_dup_mmap() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vm_enough_memory(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_vm_enough_memory(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_process_fork(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptrace_notify(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_enter_frozen() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_leave_frozen(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @copy_clone_args_from_user(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #15 {
  %4 = alloca %struct.clone_args, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %4, i8 0, i32 88, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.kernel_clone_args, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt i32 %2, 4096
  br i1 %7, label %126, label %8, !prof !11

8:                                                ; preds = %3
  %9 = icmp ult i32 %2, 64
  br i1 %9, label %126, label %10, !prof !11

10:                                               ; preds = %8
  %11 = tail call i32 @llvm.umin.i32(i32 %2, i32 88) #17
  %12 = icmp ult i32 %2, 88
  %13 = tail call i32 @llvm.umax.i32(i32 %2, i32 88) #17
  %14 = sub nuw nsw i32 %13, %11
  br i1 %12, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %4, i32 %11
  call void @llvm.memset.p0.i32(ptr align 1 %16, i8 0, i32 %14, i1 false) #17
  br label %25

17:                                               ; preds = %10
  %18 = icmp eq i32 %2, 88
  br i1 %18, label %25, label %19

19:                                               ; preds = %17
  %20 = getelementptr i8, ptr %1, i32 %11
  %21 = tail call i32 @check_zeroed_user(ptr noundef %20, i32 noundef %14) #17
  %22 = icmp slt i32 %21, 1
  %23 = icmp eq i32 %21, 0
  %24 = select i1 %23, i32 -7, i32 %21
  br i1 %22, label %126, label %25

25:                                               ; preds = %19, %17, %15
  %26 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %11, i32 -1090519040) #21, !srcloc !62
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37, !prof !10

29:                                               ; preds = %25
  %30 = tail call ptr @llvm.thread.pointer() #17
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %32 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %31) #13, !srcloc !39
  %33 = and i32 %32, -13
  %34 = or i32 %33, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #17, !srcloc !40
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !41
  %35 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef %11) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #17, !srcloc !40
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !41
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37, !prof !10

37:                                               ; preds = %29, %25
  %38 = phi i32 [ %35, %29 ], [ %11, %25 ]
  %39 = sub i32 %11, %38
  %40 = getelementptr i8, ptr %4, i32 %39
  call void @llvm.memset.p0.i32(ptr align 1 %40, i8 0, i32 %38, i1 false) #17
  br label %126

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.clone_args, ptr %4, i32 0, i32 9
  %43 = load i64, ptr %42, align 8
  %44 = icmp ugt i64 %43, 32
  br i1 %44, label %126, label %45, !prof !11

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.clone_args, ptr %4, i32 0, i32 8
  %47 = load i64, ptr %46, align 8
  %48 = icmp eq i64 %47, 0
  %49 = icmp ne i64 %43, 0
  %50 = icmp eq i64 %43, 0
  %51 = select i1 %48, i1 %49, i1 %50
  br i1 %51, label %126, label %52, !prof !63

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.clone_args, ptr %4, i32 0, i32 4
  %54 = load i64, ptr %53, align 8
  %55 = icmp ult i64 %54, 256
  br i1 %55, label %56, label %126, !prof !10

56:                                               ; preds = %52
  %57 = trunc i64 %54 to i32
  %58 = icmp ugt i32 %57, 64
  br i1 %58, label %126, label %59, !prof !11

59:                                               ; preds = %56
  %60 = load i64, ptr %4, align 8
  %61 = and i64 %60, 8589934592
  %62 = icmp eq i64 %61, 0
  %63 = getelementptr inbounds %struct.clone_args, ptr %4, i32 0, i32 10
  %64 = load i64, ptr %63, align 8
  br i1 %62, label %65, label %67

65:                                               ; preds = %59
  %66 = trunc i64 %64 to i32
  br label %71

67:                                               ; preds = %59
  %68 = icmp ugt i64 %64, 2147483647
  %69 = or i1 %12, %68
  %70 = trunc i64 %64 to i32
  br i1 %69, label %126, label %71

71:                                               ; preds = %67, %65
  %72 = phi i32 [ %66, %65 ], [ %70, %67 ]
  %73 = getelementptr inbounds %struct.clone_args, ptr %4, i32 0, i32 1
  %74 = load i64, ptr %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = inttoptr i32 %75 to ptr
  %77 = getelementptr inbounds %struct.clone_args, ptr %4, i32 0, i32 2
  %78 = load i64, ptr %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = inttoptr i32 %79 to ptr
  %81 = getelementptr inbounds %struct.clone_args, ptr %4, i32 0, i32 3
  %82 = load i64, ptr %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = inttoptr i32 %83 to ptr
  %85 = getelementptr inbounds %struct.clone_args, ptr %4, i32 0, i32 5
  %86 = load i64, ptr %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = getelementptr inbounds %struct.clone_args, ptr %4, i32 0, i32 6
  %89 = load i64, ptr %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = getelementptr inbounds %struct.clone_args, ptr %4, i32 0, i32 7
  %92 = load i64, ptr %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = trunc i64 %43 to i32
  store i64 %60, ptr %0, align 8
  %95 = getelementptr inbounds i8, ptr %0, i32 8
  store ptr %76, ptr %95, align 8
  %96 = getelementptr inbounds i8, ptr %0, i32 12
  store ptr %80, ptr %96, align 4
  %97 = getelementptr inbounds i8, ptr %0, i32 16
  store ptr %84, ptr %97, align 8
  %98 = getelementptr inbounds i8, ptr %0, i32 20
  store i32 %57, ptr %98, align 4
  %99 = getelementptr inbounds i8, ptr %0, i32 24
  store i32 %87, ptr %99, align 8
  %100 = getelementptr inbounds i8, ptr %0, i32 28
  store i32 %90, ptr %100, align 4
  %101 = getelementptr inbounds i8, ptr %0, i32 32
  store i32 %93, ptr %101, align 8
  store ptr null, ptr %5, align 4
  %102 = getelementptr inbounds i8, ptr %0, i32 40
  store i32 %94, ptr %102, align 8
  %103 = getelementptr inbounds i8, ptr %0, i32 44
  store i32 %72, ptr %103, align 4
  %104 = getelementptr inbounds i8, ptr %0, i32 48
  store i32 0, ptr %104, align 8
  %105 = getelementptr inbounds i8, ptr %0, i32 52
  store ptr null, ptr %105, align 4
  %106 = getelementptr inbounds i8, ptr %0, i32 56
  store ptr null, ptr %106, align 8
  br i1 %48, label %125, label %107

107:                                              ; preds = %71
  %108 = trunc i64 %47 to i32
  %109 = inttoptr i32 %108 to ptr
  %110 = shl nuw nsw i32 %94, 2
  %111 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %109, i32 %110, i32 -1090519040) #21, !srcloc !62
  %112 = extractvalue { i32, i32 } %111, 0
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119, !prof !10

114:                                              ; preds = %107
  %115 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %31) #13, !srcloc !39
  %116 = and i32 %115, -13
  %117 = or i32 %116, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %117) #17, !srcloc !40
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !41
  %118 = call i32 @arm_copy_from_user(ptr noundef %6, ptr noundef %109, i32 noundef %110) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %115) #17, !srcloc !40
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !41
  br label %119

119:                                              ; preds = %114, %107
  %120 = phi i32 [ %118, %114 ], [ %110, %107 ]
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %125, label %122, !prof !10

122:                                              ; preds = %119
  %123 = sub i32 %110, %120
  %124 = getelementptr i8, ptr %6, i32 %123
  call void @llvm.memset.p0.i32(ptr align 1 %124, i8 0, i32 %120, i1 false) #17
  br label %126

125:                                              ; preds = %119, %71
  store ptr %6, ptr %5, align 4
  br label %126

126:                                              ; preds = %125, %122, %67, %56, %52, %45, %41, %37, %19, %8, %3
  %127 = phi i32 [ 0, %125 ], [ -7, %3 ], [ -22, %8 ], [ -22, %41 ], [ -22, %45 ], [ -22, %56 ], [ -22, %67 ], [ -22, %52 ], [ -14, %37 ], [ %24, %19 ], [ -14, %122 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #17
  ret i32 %127
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_zeroed_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @current_is_single_threaded() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind readonly }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { cold nounwind }
attributes #20 = { cold }
attributes #21 = { nounwind readnone }

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
!12 = !{i64 758019}
!13 = !{i64 2148436707}
!14 = !{i64 833641, i64 2148323612, i64 2148323638, i64 2148323685, i64 2148323707, i64 2148323735, i64 2148323755}
!15 = !{i64 2148338842, i64 2148338874, i64 2148338903, i64 2148338937, i64 2148338968, i64 2148338991}
!16 = !{i64 2149351597}
!17 = !{i64 2156214149, i64 2156214627, i64 2156214186, i64 2156214242, i64 2156214276, i64 2156214300, i64 2156214341, i64 2156214362, i64 2156214390, i64 2156214424}
!18 = !{i64 2148435706}
!19 = !{i64 2148338068, i64 2148338100, i64 2148338129, i64 2148338163, i64 2148338194, i64 2148338217}
!20 = !{i64 2148435909}
!21 = !{i64 823500, i64 823520, i64 823548, i64 823578, i64 823594}
!22 = !{i64 2156907821}
!23 = !{i64 2148335027, i64 2148335053, i64 2148335082, i64 2148335116, i64 2148335147, i64 2148335170}
!24 = !{i64 2149002245}
!25 = !{i64 2148998069}
!26 = !{i64 2148998144, i64 2148998171, i64 2148998218, i64 2148998240, i64 2148998268, i64 2148998288}
!27 = !{i64 2149025248}
!28 = !{i64 2148448453}
!29 = !{i64 819704, i64 819728, i64 819749, i64 819766, i64 819783}
!30 = !{i64 2148448653}
!31 = !{i64 2149401017}
!32 = !{i64 2148334534}
!33 = !{i64 820210, i64 820235, i64 820257, i64 820273, i64 820285, i64 820305, i64 820329, i64 820345, i64 820357}
!34 = !{i64 2149401234}
!35 = !{i64 2148334660}
!36 = !{i64 2156911065}
!37 = !{i64 842291, i64 842308, i64 842332, i64 842358, i64 842376}
!38 = !{i64 2156911393}
!39 = !{i64 3282285}
!40 = !{i64 3282482}
!41 = !{i64 2150767761}
!42 = !{i64 2156921925, i64 2156922205, i64 2156922539, i64 2156922873}
!43 = !{i64 739564}
!44 = !{i64 2149026389}
!45 = !{i64 2156958430, i64 2156958710, i64 2156959044, i64 2156959378}
!46 = !{i64 2150285570}
!47 = !{i64 2149009322}
!48 = !{i64 1512536}
!49 = !{i64 2149050939}
!50 = !{i64 2155473270}
!51 = !{i64 2155473444}
!52 = !{i64 2156979258, i64 2156979538, i64 2156979872, i64 2156980206}
!53 = !{i64 2148336485, i64 2148336517, i64 2148336546, i64 2148336580, i64 2148336611, i64 2148336634}
!54 = !{i64 2154462947}
!55 = !{i64 2157009706, i64 2157009731}
!56 = !{i64 2149010127}
!57 = !{i64 1513551, i64 1513574, i64 1513594, i64 1513618, i64 1513634}
!58 = !{i64 2149047730}
!59 = !{i64 2156937655, i64 2156938134, i64 2156937692, i64 2156937748, i64 2156937782, i64 2156937806, i64 2156937847, i64 2156937868, i64 2156937896, i64 2156937930}
!60 = !{i64 2155829615}
!61 = !{i64 2155829785}
!62 = !{i64 2150786173, i64 2150786198}
!63 = !{!"branch_weights", i32 4001, i32 4000000}
