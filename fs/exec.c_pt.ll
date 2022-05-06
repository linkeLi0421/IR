; ModuleID = '/llk/IR/fs/exec.c_pt.bc'
source_filename = "../fs/exec.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___register_binfmt:\09\09\09\09\09"
module asm "\09.asciz \09\22__register_binfmt\22\09\09\09\09\09"
module asm "__kstrtabns___register_binfmt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_binfmt:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_binfmt\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_binfmt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_copy_string_kernel:\09\09\09\09\09"
module asm "\09.asciz \09\22copy_string_kernel\22\09\09\09\09\09"
module asm "__kstrtabns_copy_string_kernel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_setup_arg_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22setup_arg_pages\22\09\09\09\09\09"
module asm "__kstrtabns_setup_arg_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_open_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22open_exec\22\09\09\09\09\09"
module asm "__kstrtabns_open_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___get_task_comm:\09\09\09\09\09"
module asm "\09.asciz \09\22__get_task_comm\22\09\09\09\09\09"
module asm "__kstrtabns___get_task_comm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_begin_new_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22begin_new_exec\22\09\09\09\09\09"
module asm "__kstrtabns_begin_new_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_would_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22would_dump\22\09\09\09\09\09"
module asm "__kstrtabns_would_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_setup_new_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22setup_new_exec\22\09\09\09\09\09"
module asm "__kstrtabns_setup_new_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_finalize_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22finalize_exec\22\09\09\09\09\09"
module asm "__kstrtabns_finalize_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bprm_change_interp:\09\09\09\09\09"
module asm "\09.asciz \09\22bprm_change_interp\22\09\09\09\09\09"
module asm "__kstrtabns_bprm_change_interp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_remove_arg_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22remove_arg_zero\22\09\09\09\09\09"
module asm "__kstrtabns_remove_arg_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_binfmt:\09\09\09\09\09"
module asm "\09.asciz \09\22set_binfmt\22\09\09\09\09\09"
module asm "__kstrtabns_set_binfmt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.25 }
%union.anon.25 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.linux_binprm = type { ptr, i32, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.55 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon.1, %union.anon.69, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }
%struct.anon.8 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.mmu_gather = type { ptr, i32, i32, i16, i32, ptr, %struct.mmu_gather_batch, [8 x ptr] }
%struct.mmu_gather_batch = type { ptr, i32, i32, [0 x ptr] }
%struct.open_flags = type { i32, i16, i32, i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.94, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.95, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.96, ptr, %struct.address_space, %struct.list_head, %union.anon.97, i32, i32, ptr, ptr }
%union.anon.94 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.95 = type { %struct.callback_head }
%union.anon.96 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.97 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.60, %struct.list_head, %struct.list_head, %union.anon.61 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { i64 }
%union.anon.60 = type { %struct.list_head }
%union.anon.61 = type { %struct.hlist_node }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.mm_struct = type { %struct.anon.8, [0 x i32] }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i32, ptr, %struct.sigset_t }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.linux_binfmt = type { %struct.list_head, ptr, ptr, ptr, ptr, i32 }

@suid_dumpable = dso_local global i32 0, align 4
@binfmt_lock = internal global %struct.rwlock_t zeroinitializer, align 4
@formats = internal global %struct.list_head { ptr @formats, ptr @formats }, align 4
@__kstrtab___register_binfmt = external dso_local constant [0 x i8], align 1
@__kstrtabns___register_binfmt = external dso_local constant [0 x i8], align 1
@__ksymtab___register_binfmt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__register_binfmt to i32), ptr @__kstrtab___register_binfmt, ptr @__kstrtabns___register_binfmt }, section "___ksymtab+__register_binfmt", align 4
@__kstrtab_unregister_binfmt = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_binfmt = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_binfmt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_binfmt to i32), ptr @__kstrtab_unregister_binfmt, ptr @__kstrtabns_unregister_binfmt }, section "___ksymtab+unregister_binfmt", align 4
@__kstrtab_copy_string_kernel = external dso_local constant [0 x i8], align 1
@__kstrtabns_copy_string_kernel = external dso_local constant [0 x i8], align 1
@__ksymtab_copy_string_kernel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @copy_string_kernel to i32), ptr @__kstrtab_copy_string_kernel, ptr @__kstrtabns_copy_string_kernel }, section "___ksymtab+copy_string_kernel", align 4
@mmap_min_addr = external dso_local local_unnamed_addr global i32, align 4
@setup_arg_pages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [48 x i8] c"\014process '%pD4' started with executable stack\0A\00", align 1
@__kstrtab_setup_arg_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_setup_arg_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_setup_arg_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @setup_arg_pages to i32), ptr @__kstrtab_setup_arg_pages, ptr @__kstrtabns_setup_arg_pages }, section "___ksymtab+setup_arg_pages", align 4
@__kstrtab_open_exec = external dso_local constant [0 x i8], align 1
@__kstrtabns_open_exec = external dso_local constant [0 x i8], align 1
@__ksymtab_open_exec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @open_exec to i32), ptr @__kstrtab_open_exec, ptr @__kstrtabns_open_exec }, section "___ksymtab+open_exec", align 4
@__kstrtab___get_task_comm = external dso_local constant [0 x i8], align 1
@__kstrtabns___get_task_comm = external dso_local constant [0 x i8], align 1
@__ksymtab___get_task_comm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__get_task_comm to i32), ptr @__kstrtab___get_task_comm, ptr @__kstrtabns___get_task_comm }, section "___ksymtab_gpl+__get_task_comm", align 4
@__kstrtab_begin_new_exec = external dso_local constant [0 x i8], align 1
@__kstrtabns_begin_new_exec = external dso_local constant [0 x i8], align 1
@__ksymtab_begin_new_exec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @begin_new_exec to i32), ptr @__kstrtab_begin_new_exec, ptr @__kstrtabns_begin_new_exec }, section "___ksymtab+begin_new_exec", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__kstrtab_would_dump = external dso_local constant [0 x i8], align 1
@__kstrtabns_would_dump = external dso_local constant [0 x i8], align 1
@__ksymtab_would_dump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @would_dump to i32), ptr @__kstrtab_would_dump, ptr @__kstrtabns_would_dump }, section "___ksymtab+would_dump", align 4
@__kstrtab_setup_new_exec = external dso_local constant [0 x i8], align 1
@__kstrtabns_setup_new_exec = external dso_local constant [0 x i8], align 1
@__ksymtab_setup_new_exec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @setup_new_exec to i32), ptr @__kstrtab_setup_new_exec, ptr @__kstrtabns_setup_new_exec }, section "___ksymtab+setup_new_exec", align 4
@__kstrtab_finalize_exec = external dso_local constant [0 x i8], align 1
@__kstrtabns_finalize_exec = external dso_local constant [0 x i8], align 1
@__ksymtab_finalize_exec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @finalize_exec to i32), ptr @__kstrtab_finalize_exec, ptr @__kstrtabns_finalize_exec }, section "___ksymtab+finalize_exec", align 4
@__kstrtab_bprm_change_interp = external dso_local constant [0 x i8], align 1
@__kstrtabns_bprm_change_interp = external dso_local constant [0 x i8], align 1
@__ksymtab_bprm_change_interp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bprm_change_interp to i32), ptr @__kstrtab_bprm_change_interp, ptr @__kstrtabns_bprm_change_interp }, section "___ksymtab+bprm_change_interp", align 4
@__kstrtab_remove_arg_zero = external dso_local constant [0 x i8], align 1
@__kstrtabns_remove_arg_zero = external dso_local constant [0 x i8], align 1
@__ksymtab_remove_arg_zero = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @remove_arg_zero to i32), ptr @__kstrtab_remove_arg_zero, ptr @__kstrtabns_remove_arg_zero }, section "___ksymtab+remove_arg_zero", align 4
@__kstrtab_set_binfmt = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_binfmt = external dso_local constant [0 x i8], align 1
@__ksymtab_set_binfmt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_binfmt to i32), ptr @__kstrtab_set_binfmt, ptr @__kstrtabns_set_binfmt }, section "___ksymtab+set_binfmt", align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"fs/exec.c\00", align 1
@__initcall__kmod_exec__386_2135_init_fs_exec_sysctls5 = internal global ptr @init_fs_exec_sysctls, section ".initcall5.init", align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__const.do_open_execat.open_exec_flags = private unnamed_addr constant { i32, i16, [2 x i8], i32, i32, i32 } { i32 131104, i16 0, [2 x i8] zeroinitializer, i32 1, i32 256, i32 1 }, align 4
@do_open_execat.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_task_rename = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@cgroup_threadgroup_rwsem = external dso_local global %struct.percpu_rw_semaphore, align 4
@sighand_cachep = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"/dev/fd/%d\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"/dev/fd/%d/%s\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"binfmt-%04x\00", align 1
@__tracepoint_sched_process_exec = external dso_local global %struct.tracepoint, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@fs_exec_sysctls = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.11, ptr @suid_dumpable, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax_coredump, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 12) }, %struct.ctl_table zeroinitializer], align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"fs_exec_sysctls\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"suid_dumpable\00", align 1
@sysctl_vals = external dso_local constant [0 x i32], align 4
@llvm.compiler.used = appending global [14 x ptr] [ptr @__initcall__kmod_exec__386_2135_init_fs_exec_sysctls5, ptr @__ksymtab___get_task_comm, ptr @__ksymtab___register_binfmt, ptr @__ksymtab_begin_new_exec, ptr @__ksymtab_bprm_change_interp, ptr @__ksymtab_copy_string_kernel, ptr @__ksymtab_finalize_exec, ptr @__ksymtab_open_exec, ptr @__ksymtab_remove_arg_zero, ptr @__ksymtab_set_binfmt, ptr @__ksymtab_setup_arg_pages, ptr @__ksymtab_setup_new_exec, ptr @__ksymtab_unregister_binfmt, ptr @__ksymtab_would_dump], section "llvm.metadata"

@sys_execve = dso_local alias i32 (ptr, ptr, ptr), ptr @__se_sys_execve
@sys_execveat = dso_local alias i32 (i32, ptr, ptr, ptr, i32), ptr @__se_sys_execveat

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__register_binfmt(ptr noundef %0, i32 noundef %1) #0 {
  tail call void @_raw_write_lock(ptr noundef nonnull @binfmt_lock) #14
  %3 = icmp eq i32 %1, 0
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @formats, i32 0, i32 1), align 4
  %5 = load ptr, ptr @formats, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %7 = select i1 %3, ptr getelementptr inbounds (%struct.list_head, ptr @formats, i32 0, i32 1), ptr %6
  %8 = select i1 %3, ptr @formats, ptr %5
  %9 = select i1 %3, ptr %4, ptr @formats
  store ptr %0, ptr %7, align 4
  store ptr %8, ptr %0, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %0, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @binfmt_lock, i32 0) #14, !srcloc !10
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_binfmt(ptr nocapture noundef %0) #0 {
  tail call void @_raw_write_lock(ptr noundef nonnull @binfmt_lock) #14
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @binfmt_lock, i32 0) #14, !srcloc !10
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @path_noexec(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vfsmount, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vfsmount, ptr %2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 11
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 2
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi i1 [ true, %1 ], [ %13, %7 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @copy_string_kernel(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = tail call i32 @strnlen(ptr noundef %0, i32 noundef 131072)
  %4 = add i32 %3, 1
  %5 = getelementptr inbounds %struct.linux_binprm, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %68, label %8

8:                                                ; preds = %2
  %9 = icmp ult i32 %4, 131073
  br i1 %9, label %10, label %68

10:                                               ; preds = %8
  %11 = sub i32 %6, %4
  store i32 %11, ptr %5, align 4
  %12 = getelementptr inbounds %struct.linux_binprm, ptr %1, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %68, label %15

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %0, i32 %4
  br label %17

17:                                               ; preds = %66, %15
  %18 = phi ptr [ %27, %66 ], [ %16, %15 ]
  %19 = phi i32 [ %28, %66 ], [ %4, %15 ]
  %20 = phi i32 [ %25, %66 ], [ %6, %15 ]
  %21 = and i32 %20, 4095
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 4096, i32 %21
  %24 = tail call i32 @llvm.umin.i32(i32 %19, i32 %23)
  %25 = sub i32 %20, %24
  %26 = sub nsw i32 0, %24
  %27 = getelementptr i8, ptr %18, i32 %26
  %28 = sub nsw i32 %19, %24
  %29 = tail call fastcc ptr @get_arg_page(ptr noundef %1, i32 noundef %25, i32 noundef 1)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %68, label %31

31:                                               ; preds = %17
  %32 = load i32, ptr @pgprot_kernel, align 4
  %33 = or i32 %32, 512
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %34 = tail call ptr @llvm.thread.pointer() #14
  %35 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 149
  %36 = load i32, ptr %35, align 8
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  %38 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %29, i32 noundef %33) #14
  %39 = and i32 %25, -4096
  %40 = load ptr, ptr %1, align 4
  %41 = load ptr, ptr @mem_map, align 4
  %42 = ptrtoint ptr %29 to i32
  %43 = ptrtoint ptr %41 to i32
  %44 = sub i32 %42, %43
  %45 = ashr exact i32 %44, 5
  %46 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %47 = add i32 %45, %46
  tail call void @flush_cache_page(ptr noundef %40, i32 noundef %39, i32 noundef %47) #14
  %48 = and i32 %25, 4095
  %49 = getelementptr i8, ptr %38, i32 %48
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %49, ptr align 1 %27, i32 %24, i1 false)
  tail call void @flush_dcache_page(ptr noundef nonnull %29) #14
  tail call void @kunmap_local_indexed(ptr noundef %38) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !16
  %50 = load i32, ptr %35, align 8
  %51 = add i32 %50, -1
  store i32 %51, ptr %35, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  %52 = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 1
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56, !prof !18

56:                                               ; preds = %31
  %57 = add i32 %53, -1
  br label %58

58:                                               ; preds = %56, %31
  %59 = phi i32 [ %57, %56 ], [ %42, %31 ]
  %60 = inttoptr i32 %59 to ptr
  %61 = getelementptr inbounds %struct.page, ptr %60, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %61) #14, !srcloc !20
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %61, ptr %61, i32 1, ptr elementtype(i32) %61) #14, !srcloc !21
  %63 = extractvalue { i32, i32 } %62, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  tail call void @__put_page(ptr noundef %60) #14
  br label %66

66:                                               ; preds = %65, %58
  %67 = icmp sgt i32 %28, 0
  br i1 %67, label %17, label %68

68:                                               ; preds = %66, %17, %10, %8, %2
  %69 = phi i32 [ -14, %2 ], [ -7, %8 ], [ -7, %10 ], [ 0, %66 ], [ -7, %17 ]
  ret i32 %69
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @get_arg_page(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store ptr null, ptr %4, align 4, !annotation !23
  %5 = icmp eq i32 %2, 0
  %6 = select i1 %5, i32 16, i32 17
  %7 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %8, i1 noundef zeroext false) #14
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %struct.anon.8, ptr %8, i32 0, i32 15
  tail call void @down_read(ptr noundef %13) #14
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %8, i1 noundef zeroext false, i1 noundef zeroext true) #14
  br label %17

17:                                               ; preds = %16, %12
  %18 = load ptr, ptr %7, align 4
  %19 = call i32 @get_user_pages_remote(ptr noundef %18, i32 noundef %1, i32 noundef 1, i32 noundef %6, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #14
  %20 = load ptr, ptr %7, align 4
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  call void @__mmap_lock_do_trace_released(ptr noundef %20, i1 noundef zeroext false) #14
  br label %24

24:                                               ; preds = %23, %17
  %25 = getelementptr inbounds %struct.anon.8, ptr %20, i32 0, i32 15
  call void @up_read(ptr noundef %25) #14
  %26 = icmp slt i32 %19, 1
  br i1 %26, label %50, label %27

27:                                               ; preds = %24
  br i1 %5, label %48, label %28

28:                                               ; preds = %27
  %29 = load ptr, ptr %0, align 4
  %30 = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %29, align 4
  %33 = sub i32 %31, %32
  %34 = lshr i32 %33, 12
  %35 = tail call ptr @llvm.thread.pointer() #14
  %36 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 37
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp ne ptr %37, null
  %41 = icmp ne i32 %34, %39
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %48

43:                                               ; preds = %28
  %44 = sub i32 %34, %39
  store i32 %34, ptr %38, align 4
  %45 = getelementptr %struct.anon.8, ptr %37, i32 0, i32 40, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #14, !srcloc !20
  %46 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 %44, ptr elementtype(i32) %45) #14, !srcloc !25
  %47 = extractvalue { i32, i32 } %46, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !26
  call void @mm_trace_rss_stat(ptr noundef nonnull %37, i32 noundef 1, i32 noundef %47) #14
  br label %48

48:                                               ; preds = %43, %28, %27
  %49 = load ptr, ptr %4, align 4
  br label %50

50:                                               ; preds = %48, %24
  %51 = phi ptr [ %49, %48 ], [ null, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret ptr %51
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @setup_arg_pages(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.mmu_gather, align 4
  %5 = alloca ptr, align 4
  %6 = tail call ptr @llvm.thread.pointer() #14
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 37
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store ptr null, ptr %5, align 4
  %10 = add i32 %1, 4095
  %11 = and i32 %10, -4096
  %12 = load i32, ptr @mmap_min_addr, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %151, label %14, !prof !27

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %9, align 4
  %18 = sub i32 %16, %17
  %19 = sub i32 %11, %12
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %151, !prof !18

21:                                               ; preds = %14
  %22 = sub i32 %16, %11
  %23 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 %24, %22
  store i32 %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.anon.8, ptr %8, i32 0, i32 35
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 19
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %21
  %31 = sub i32 %28, %22
  store i32 %31, ptr %27, align 4
  br label %32

32:                                               ; preds = %30, %21
  %33 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 20
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 %34, %22
  store i32 %35, ptr %33, align 4
  %36 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %8, i1 noundef zeroext true) #14
  br label %39

39:                                               ; preds = %38, %32
  %40 = getelementptr inbounds %struct.anon.8, ptr %8, i32 0, i32 15
  %41 = tail call i32 @down_write_killable(ptr noundef %40) #14
  %42 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = icmp eq i32 %41, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %8, i1 noundef zeroext true, i1 noundef zeroext %45) #14
  br label %46

46:                                               ; preds = %44, %39
  %47 = icmp eq i32 %41, 0
  br i1 %47, label %48, label %151

48:                                               ; preds = %46
  %49 = icmp eq i32 %2, 2
  br i1 %49, label %58, label %50, !prof !27

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 46
  %52 = load i32, ptr %51, align 16
  %53 = lshr i32 %52, 20
  %54 = and i32 %53, 4
  %55 = or i32 %54, 1048947
  %56 = icmp eq i32 %2, 1
  %57 = select i1 %56, i32 1048947, i32 %55
  br label %58

58:                                               ; preds = %50, %48
  %59 = phi i32 [ 1048951, %48 ], [ %57, %50 ]
  %60 = getelementptr inbounds %struct.anon.8, ptr %8, i32 0, i32 25
  %61 = load i32, ptr %60, align 4
  %62 = or i32 %61, %59
  %63 = or i32 %62, 98304
  %64 = load i32, ptr %9, align 4
  %65 = load i32, ptr %15, align 4
  %66 = call i32 @mprotect_fixup(ptr noundef %9, ptr noundef nonnull %5, i32 noundef %64, i32 noundef %65, i32 noundef %63) #14
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %145

68:                                               ; preds = %58
  %69 = load ptr, ptr %5, align 4
  %70 = icmp eq ptr %69, %9
  br i1 %70, label %72, label %71, !prof !18

71:                                               ; preds = %68
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/exec.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 814, 0\0A.popsection", ""() #14, !srcloc !28
  unreachable

72:                                               ; preds = %68
  %73 = and i32 %62, 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %81, label %75, !prof !18

75:                                               ; preds = %72
  %76 = load i1, ptr @setup_arg_pages.__already_done, align 1
  br i1 %76, label %81, label %77, !prof !18

77:                                               ; preds = %75
  store i1 true, ptr @setup_arg_pages.__already_done, align 1
  %78 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 8
  %79 = load ptr, ptr %78, align 4
  %80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %79) #15
  br label %81

81:                                               ; preds = %77, %75, %72
  %82 = icmp eq i32 %16, %11
  br i1 %82, label %124, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 6
  %85 = load ptr, ptr %84, align 4
  %86 = load i32, ptr %9, align 4
  %87 = load i32, ptr %15, align 4
  %88 = sub i32 %87, %86
  %89 = sub i32 %86, %22
  %90 = sub i32 %87, %22
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %4, i8 0, i32 68, i1 false) #14, !annotation !23
  %91 = icmp ugt i32 %89, %90
  br i1 %91, label %92, label %93, !prof !27

92:                                               ; preds = %83
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/exec.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 687, 0\0A.popsection", ""() #14, !srcloc !29
  unreachable

93:                                               ; preds = %83
  %94 = call ptr @find_vma(ptr noundef %85, i32 noundef %89) #14
  %95 = icmp eq ptr %94, %9
  br i1 %95, label %96, label %119

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 13
  %98 = load i32, ptr %97, align 4
  %99 = call i32 @__vma_adjust(ptr noundef %9, i32 noundef %89, i32 noundef %87, i32 noundef %98, ptr noundef null, ptr noundef null) #14
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %96
  %102 = call i32 @move_page_tables(ptr noundef %9, i32 noundef %86, ptr noundef %9, i32 noundef %89, i32 noundef %88, i1 noundef zeroext false) #14
  %103 = icmp eq i32 %88, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %101
  call void @lru_add_drain() #14
  call void @tlb_gather_mmu(ptr noundef nonnull %4, ptr noundef %85) #14
  %105 = icmp ugt i32 %90, %86
  %106 = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 2
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %105, label %109, label %114

109:                                              ; preds = %104
  br i1 %108, label %112, label %110

110:                                              ; preds = %109
  %111 = load i32, ptr %107, align 4
  br label %112

112:                                              ; preds = %110, %109
  %113 = phi i32 [ %111, %110 ], [ 0, %109 ]
  call void @free_pgd_range(ptr noundef nonnull %4, i32 noundef %90, i32 noundef %87, i32 noundef %90, i32 noundef %113) #14
  br label %121

114:                                              ; preds = %104
  br i1 %108, label %117, label %115

115:                                              ; preds = %114
  %116 = load i32, ptr %107, align 4
  br label %117

117:                                              ; preds = %115, %114
  %118 = phi i32 [ %116, %115 ], [ 0, %114 ]
  call void @free_pgd_range(ptr noundef nonnull %4, i32 noundef %86, i32 noundef %87, i32 noundef %90, i32 noundef %118) #14
  br label %121

119:                                              ; preds = %101, %96, %93
  %120 = phi i32 [ -12, %101 ], [ -12, %96 ], [ -14, %93 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %4) #14
  br label %145

121:                                              ; preds = %117, %112
  call void @tlb_finish_mmu(ptr noundef nonnull %4) #14
  %122 = load i32, ptr %97, align 4
  %123 = call i32 @__vma_adjust(ptr noundef %9, i32 noundef %89, i32 noundef %90, i32 noundef %122, ptr noundef null, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %4) #14
  br label %124

124:                                              ; preds = %121, %81
  %125 = getelementptr inbounds %struct.vm_area_struct, ptr %9, i32 0, i32 8
  %126 = load i32, ptr %125, align 4
  %127 = and i32 %126, -98305
  store i32 %127, ptr %125, align 4
  %128 = load i32, ptr %15, align 4
  %129 = load i32, ptr %9, align 4
  %130 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 21
  %131 = load i32, ptr %130, align 4
  %132 = and i32 %131, -4096
  %133 = add i32 %128, 131072
  %134 = sub i32 %133, %129
  %135 = icmp ugt i32 %134, %132
  %136 = sub i32 %128, %132
  %137 = add i32 %129, -131072
  %138 = select i1 %135, i32 %136, i32 %137
  %139 = load i32, ptr %23, align 4
  %140 = load ptr, ptr %7, align 4
  %141 = getelementptr inbounds %struct.anon.8, ptr %140, i32 0, i32 34
  store i32 %139, ptr %141, align 8
  %142 = call i32 @expand_stack(ptr noundef %9, i32 noundef %138) #14
  %143 = icmp eq i32 %142, 0
  %144 = select i1 %143, i32 0, i32 -14
  br label %145

145:                                              ; preds = %124, %119, %58
  %146 = phi i32 [ %66, %58 ], [ %144, %124 ], [ %120, %119 ]
  %147 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  call void @__mmap_lock_do_trace_released(ptr noundef %8, i1 noundef zeroext true) #14
  br label %150

150:                                              ; preds = %149, %145
  call void @up_write(ptr noundef %40) #14
  br label %151

151:                                              ; preds = %150, %46, %14, %3
  %152 = phi i32 [ %146, %150 ], [ -12, %14 ], [ -12, %3 ], [ -4, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret i32 %152
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mprotect_fixup(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @expand_stack(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @open_exec(ptr noundef %0) #0 {
  %2 = tail call ptr @getname_kernel(ptr noundef %0) #14
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @do_open_execat(i32 noundef -100, ptr noundef %2, i32 noundef 0)
  tail call void @putname(ptr noundef %2) #14
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %2, %1 ], [ %5, %4 ]
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @getname_kernel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @do_open_execat(i32 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.open_flags, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) @__const.do_open_execat.open_exec_flags, i32 20, i1 false)
  %5 = and i32 %2, -4353
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %110

7:                                                ; preds = %3
  %8 = and i32 %2, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.open_flags, ptr %4, i32 0, i32 4
  store i32 0, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ 16384, %10 ], [ 16385, %7 ]
  %14 = and i32 %2, 4096
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.open_flags, ptr %4, i32 0, i32 4
  store i32 %13, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %12
  %19 = call ptr @do_filp_open(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %4) #14
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %110, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = load i16, ptr %23, align 8
  %25 = and i16 %24, -4096
  %26 = icmp eq i16 %25, -32768
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.vfsmount, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.vfsmount, ptr %29, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 11
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 2
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %34, %27, %21
  %42 = phi i1 [ true, %21 ], [ true, %27 ], [ %40, %34 ]
  %43 = load i1, ptr @do_open_execat.__already_done, align 1
  %44 = xor i1 %43, true
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %47, !prof !27

46:                                               ; preds = %41
  store i1 true, ptr @do_open_execat.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 924, i32 noundef 9, ptr noundef null) #14
  br label %47

47:                                               ; preds = %46, %41
  br i1 %42, label %108, label %48

48:                                               ; preds = %47
  %49 = load ptr, ptr %22, align 8
  %50 = getelementptr inbounds %struct.inode, ptr %49, i32 0, i32 37
  %51 = load volatile i32, ptr %50, align 4
  br label %52

52:                                               ; preds = %61, %48
  %53 = phi i32 [ %51, %48 ], [ %62, %61 ]
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %108, label %55, !prof !27

55:                                               ; preds = %52
  %56 = add i32 %53, -1
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !30
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #14, !srcloc !20
  br label %57

57:                                               ; preds = %57, %55
  %58 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 %53, i32 %56, ptr elementtype(i32) %50) #14, !srcloc !31
  %59 = extractvalue { i32, i32 } %58, 0
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %57

61:                                               ; preds = %57
  %62 = extractvalue { i32, i32 } %58, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !32
  %63 = icmp eq i32 %62, %53
  br i1 %63, label %64, label %52, !prof !18

64:                                               ; preds = %61
  %65 = load ptr, ptr %1, align 4
  %66 = load i8, ptr %65, align 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %110, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 7
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, 32
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, i32 32, i32 4128
  %74 = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 8
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 67108864
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %110

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 1
  %80 = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 1, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.dentry, ptr %81, i32 0, i32 5
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.inode, ptr %83, i32 0, i32 8
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.super_block, ptr %85, i32 0, i32 42
  %87 = load volatile i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %110, label %89

89:                                               ; preds = %78
  %90 = load i16, ptr %83, align 8
  %91 = and i16 %90, -4096
  %92 = icmp eq i16 %91, 16384
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = or i32 %73, 1073741824
  %95 = load i32, ptr %81, align 8
  %96 = and i32 %95, 16384
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %93, %89
  %99 = phi i32 [ %94, %93 ], [ %73, %89 ]
  %100 = getelementptr inbounds %struct.dentry, ptr %81, i32 0, i32 3
  %101 = load ptr, ptr %100, align 8
  %102 = icmp eq ptr %101, %81
  br i1 %102, label %105, label %103

103:                                              ; preds = %98
  %104 = call i32 @__fsnotify_parent(ptr noundef %81, i32 noundef %99, ptr noundef %79, i32 noundef 1) #14
  br label %110

105:                                              ; preds = %98, %93
  %106 = phi i32 [ %99, %98 ], [ %94, %93 ]
  %107 = call i32 @fsnotify(i32 noundef %106, ptr noundef %79, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %83, i32 noundef 0) #14
  br label %110

108:                                              ; preds = %52, %47
  %109 = phi ptr [ inttoptr (i32 -13 to ptr), %47 ], [ inttoptr (i32 -26 to ptr), %52 ]
  call void @fput(ptr noundef %19) #14
  br label %110

110:                                              ; preds = %108, %105, %103, %78, %68, %64, %18, %3
  %111 = phi ptr [ %109, %108 ], [ %19, %64 ], [ %19, %18 ], [ inttoptr (i32 -22 to ptr), %3 ], [ %19, %68 ], [ %19, %78 ], [ %19, %103 ], [ %19, %105 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #14
  ret ptr %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @putname(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__get_task_comm(ptr noundef returned %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %4) #14
  %5 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 85
  %6 = tail call i32 @strscpy_pad(ptr noundef %0, ptr noundef %5, i32 noundef %1) #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !33
  %7 = load i16, ptr %4, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !34
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__set_task_comm(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %4) #14
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_task_rename, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = tail call ptr @llvm.thread.pointer() #14
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !35
  %19 = tail call i32 @__traceiter_task_rename(ptr noundef null, ptr noundef %0, ptr noundef %1) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !36
  br label %20

20:                                               ; preds = %18, %7, %3
  %21 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 85
  %22 = tail call i32 @strscpy_pad(ptr noundef %21, ptr noundef %1, i32 noundef 16) #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !33
  %23 = load i16, ptr %4, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !34
  tail call void @perf_event_comm(ptr noundef %0, i1 noundef zeroext %2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_comm(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @begin_new_exec(ptr noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #14
  %3 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 5
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 8
  %9 = select i1 %6, ptr %8, ptr %7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = tail call zeroext i1 @mnt_may_suid(ptr noundef %12) #14
  br i1 %13, label %14, label %60

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 50
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 1, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8
  %24 = load volatile i16, ptr %23, align 8
  %25 = and i16 %24, 3072
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %60, label %27

27:                                               ; preds = %19
  %28 = load ptr, ptr %11, align 8
  %29 = getelementptr inbounds %struct.vfsmount, ptr %28, i32 0, i32 3
  %30 = load volatile ptr, ptr %29, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !37
  %31 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 24
  tail call void @down_write(ptr noundef %31) #14
  %32 = load i16, ptr %23, align 8
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 3
  %37 = load i32, ptr %36, align 8
  tail call void @up_write(ptr noundef %31) #14
  %38 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 9
  %39 = icmp ne i32 %35, -1
  %40 = icmp ne i32 %37, -1
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %60

42:                                               ; preds = %27
  %43 = and i32 %33, 2048
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 11
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %47, 7602176
  store i32 %48, ptr %46, align 4
  %49 = load ptr, ptr %38, align 4
  %50 = getelementptr inbounds %struct.cred, ptr %49, i32 0, i32 5
  store i32 %35, ptr %50, align 4
  br label %51

51:                                               ; preds = %45, %42
  %52 = and i32 %33, 1032
  %53 = icmp eq i32 %52, 1032
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 11
  %56 = load i32, ptr %55, align 4
  %57 = or i32 %56, 7602176
  store i32 %57, ptr %55, align 4
  %58 = load ptr, ptr %38, align 4
  %59 = getelementptr inbounds %struct.cred, ptr %58, i32 0, i32 6
  store i32 %37, ptr %59, align 4
  br label %60

60:                                               ; preds = %54, %51, %27, %19, %14, %1
  %61 = tail call i32 @cap_bprm_creds_from_file(ptr noundef %0, ptr noundef %10) #14
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %310

63:                                               ; preds = %60
  %64 = load i8, ptr %3, align 4
  %65 = or i8 %64, 8
  store i8 %65, ptr %3, align 4
  %66 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 93
  %67 = load ptr, ptr %66, align 16
  %68 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 94
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 64
  %71 = load volatile ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, %70
  br i1 %72, label %175, label %73

73:                                               ; preds = %63
  tail call void @_raw_spin_lock_irq(ptr noundef %69) #14
  %74 = getelementptr inbounds %struct.signal_struct, ptr %67, i32 0, i32 12
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.signal_struct, ptr %67, i32 0, i32 10
  %80 = load ptr, ptr %79, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %78, %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !33
  %83 = load i16, ptr %69, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %69, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !38
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !39
  br label %310

85:                                               ; preds = %78
  store ptr %2, ptr %79, align 8
  %86 = tail call i32 @zap_other_threads(ptr noundef %2) #14
  %87 = getelementptr inbounds %struct.signal_struct, ptr %67, i32 0, i32 9
  store i32 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 43
  %89 = load i32, ptr %88, align 4
  %90 = icmp sgt i32 %89, -1
  br i1 %90, label %93, label %91

91:                                               ; preds = %85
  %92 = add i32 %86, -1
  store i32 %92, ptr %87, align 4
  br label %93

93:                                               ; preds = %91, %85
  %94 = phi i32 [ %92, %91 ], [ %86, %85 ]
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 1
  %98 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 98, i32 1
  br label %99

99:                                               ; preds = %105, %96
  store volatile i32 258, ptr %97, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !33
  %100 = load i16, ptr %69, align 4
  %101 = add i16 %100, 1
  store i16 %101, ptr %69, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !38
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !39
  tail call void @schedule() #14
  %102 = load i32, ptr %98, align 4
  %103 = and i32 %102, 256
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %169

105:                                              ; preds = %99
  tail call void @_raw_spin_lock_irq(ptr noundef %69) #14
  %106 = load i32, ptr %87, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %99

108:                                              ; preds = %105, %93
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !33
  %109 = load i16, ptr %69, align 4
  %110 = add i16 %109, 1
  store i16 %110, ptr %69, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !38
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !39
  %111 = load i32, ptr %88, align 4
  %112 = icmp sgt i32 %111, -1
  br i1 %112, label %168, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 59
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.task_struct, ptr %115, i32 0, i32 41
  %117 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 98, i32 1
  %118 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 1
  br label %119

119:                                              ; preds = %122, %113
  tail call fastcc void @cgroup_threadgroup_change_begin() #14
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #14
  store i32 -1, ptr %87, align 4
  %120 = load i32, ptr %116, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126, !prof !27

122:                                              ; preds = %119
  store volatile i32 258, ptr %118, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @tasklist_lock, i32 0) #14, !srcloc !10
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !38
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !40
  tail call fastcc void @cgroup_threadgroup_change_end() #14
  tail call void @schedule() #14
  %123 = load i32, ptr %117, align 4
  %124 = and i32 %123, 256
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %119, label %169

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.task_struct, ptr %115, i32 0, i32 76
  %128 = load i64, ptr %127, align 64
  %129 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 76
  store i64 %128, ptr %129, align 64
  %130 = getelementptr inbounds %struct.task_struct, ptr %115, i32 0, i32 77
  %131 = load i64, ptr %130, align 8
  %132 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 77
  store i64 %131, ptr %132, align 8
  %133 = getelementptr inbounds %struct.task_struct, ptr %115, i32 0, i32 93
  %134 = load ptr, ptr %133, align 16
  %135 = load ptr, ptr %66, align 16
  %136 = icmp eq ptr %134, %135
  br i1 %136, label %138, label %137, !prof !18

137:                                              ; preds = %126
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/exec.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1112, 0\0A.popsection", ""() #14, !srcloc !41
  unreachable

138:                                              ; preds = %126
  tail call void @exchange_tids(ptr noundef %2, ptr noundef %115) #14
  tail call void @transfer_pid(ptr noundef %115, ptr noundef %2, i32 noundef 1) #14
  tail call void @transfer_pid(ptr noundef %115, ptr noundef %2, i32 noundef 2) #14
  tail call void @transfer_pid(ptr noundef %115, ptr noundef %2, i32 noundef 3) #14
  %139 = getelementptr inbounds %struct.task_struct, ptr %115, i32 0, i32 34
  %140 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 34
  %141 = load ptr, ptr %139, align 4
  store ptr %141, ptr %140, align 4
  %142 = getelementptr inbounds %struct.task_struct, ptr %115, i32 0, i32 34, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 34, i32 1
  store ptr %143, ptr %144, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !42
  %145 = load ptr, ptr %144, align 4
  store volatile ptr %140, ptr %145, align 4
  %146 = load ptr, ptr %140, align 4
  %147 = getelementptr inbounds %struct.list_head, ptr %146, i32 0, i32 1
  store ptr %140, ptr %147, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %142, align 4
  %148 = getelementptr inbounds %struct.task_struct, ptr %115, i32 0, i32 58
  %149 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 58
  %150 = load ptr, ptr %148, align 4
  store ptr %150, ptr %149, align 4
  %151 = getelementptr inbounds %struct.list_head, ptr %150, i32 0, i32 1
  store ptr %149, ptr %151, align 4
  %152 = getelementptr inbounds %struct.task_struct, ptr %115, i32 0, i32 58, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 58, i32 1
  store ptr %153, ptr %154, align 4
  store ptr %149, ptr %153, align 4
  store volatile ptr %148, ptr %148, align 4
  store ptr %148, ptr %152, align 4
  store ptr %2, ptr %114, align 4
  %155 = getelementptr inbounds %struct.task_struct, ptr %115, i32 0, i32 59
  store ptr %2, ptr %155, align 4
  store i32 17, ptr %88, align 4
  %156 = getelementptr inbounds %struct.task_struct, ptr %115, i32 0, i32 43
  store i32 -1, ptr %156, align 4
  %157 = load i32, ptr %116, align 4
  %158 = icmp eq i32 %157, 32
  br i1 %158, label %160, label %159, !prof !18

159:                                              ; preds = %138
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/exec.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1137, 0\0A.popsection", ""() #14, !srcloc !43
  unreachable

160:                                              ; preds = %138
  store i32 16, ptr %116, align 4
  %161 = getelementptr inbounds %struct.task_struct, ptr %115, i32 0, i32 5
  %162 = load i32, ptr %161, align 8
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %167, label %164, !prof !18

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.task_struct, ptr %115, i32 0, i32 56
  %166 = load ptr, ptr %165, align 8
  tail call void @__wake_up_parent(ptr noundef %115, ptr noundef %166) #14
  br label %167

167:                                              ; preds = %164, %160
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @tasklist_lock, i32 0) #14, !srcloc !10
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !38
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !40
  tail call fastcc void @cgroup_threadgroup_change_end() #14
  tail call void @release_task(ptr noundef %115) #14
  br label %168

168:                                              ; preds = %167, %108
  store ptr null, ptr %79, align 8
  store i32 0, ptr %87, align 4
  br label %175

169:                                              ; preds = %122, %99
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #14
  store ptr null, ptr %79, align 8
  store i32 0, ptr %87, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !44
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #14, !srcloc !20
  %170 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #14, !srcloc !45
  %171 = extractvalue { i32, i32 } %170, 0
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  br label %174

174:                                              ; preds = %173, %169
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !46
  br label %310

175:                                              ; preds = %168, %63
  %176 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 43
  store i32 17, ptr %176, align 4
  %177 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 91
  %178 = load ptr, ptr %177, align 8
  %179 = icmp eq ptr %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %175
  tail call void @__io_uring_cancel(i1 noundef zeroext true) #14
  br label %181

181:                                              ; preds = %180, %175
  %182 = tail call i32 @unshare_files() #14
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %310

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 2
  %186 = load ptr, ptr %185, align 4
  %187 = load ptr, ptr %8, align 4
  %188 = tail call i32 @set_mm_exe_file(ptr noundef %186, ptr noundef %187) #14
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %310

190:                                              ; preds = %184
  %191 = load ptr, ptr %8, align 4
  tail call void @would_dump(ptr noundef %0, ptr noundef %191)
  %192 = load i8, ptr %3, align 4
  %193 = and i8 %192, 1
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %190
  %196 = load ptr, ptr %7, align 4
  tail call void @would_dump(ptr noundef %0, ptr noundef %196)
  br label %197

197:                                              ; preds = %195, %190
  tail call fastcc void @acct_arg_size(ptr noundef %0, i32 noundef 0)
  %198 = load ptr, ptr %185, align 4
  %199 = tail call fastcc i32 @exec_mmap(ptr noundef %198)
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %310

201:                                              ; preds = %197
  store ptr null, ptr %185, align 4
  %202 = load ptr, ptr %66, align 16
  tail call void @exit_itimers(ptr noundef %202) #14
  tail call void @flush_itimer_signals() #14
  %203 = tail call fastcc i32 @unshare_sighand(ptr noundef %2)
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %306

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 4
  %207 = load i32, ptr %206, align 4
  %208 = and i32 %207, 2097152
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %205
  tail call void @free_kthread_struct(ptr noundef %2) #14
  %211 = load i32, ptr %206, align 4
  br label %212

212:                                              ; preds = %210, %205
  %213 = phi i32 [ %211, %210 ], [ %207, %205 ]
  %214 = and i32 %213, -73433153
  store i32 %214, ptr %206, align 4
  tail call void @flush_thread() #14
  %215 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 11
  %216 = load i32, ptr %215, align 4
  %217 = xor i32 %216, -1
  %218 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 46
  %219 = load i32, ptr %218, align 16
  %220 = and i32 %219, %217
  store i32 %220, ptr %218, align 16
  %221 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 90
  %222 = load ptr, ptr %221, align 4
  tail call void @do_close_on_exec(ptr noundef %222) #14
  %223 = load i8, ptr %3, align 4
  %224 = and i8 %223, 4
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %232, label %226

226:                                              ; preds = %212
  %227 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 44
  store i32 0, ptr %227, align 8
  %228 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 21
  %229 = load i32, ptr %228, align 4
  %230 = icmp ugt i32 %229, 8388608
  br i1 %230, label %231, label %232

231:                                              ; preds = %226
  store i32 8388608, ptr %228, align 4
  br label %232

232:                                              ; preds = %231, %226, %212
  %233 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 100
  store i32 0, ptr %233, align 4
  %234 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 99
  store i32 0, ptr %234, align 64
  %235 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 17
  %236 = load i32, ptr %235, align 4
  %237 = and i32 %236, 1
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %253

239:                                              ; preds = %232
  %240 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 83
  %241 = load ptr, ptr %240, align 8
  %242 = getelementptr inbounds %struct.cred, ptr %241, i32 0, i32 5
  %243 = load i32, ptr %242, align 4
  %244 = getelementptr inbounds %struct.cred, ptr %241, i32 0, i32 1
  %245 = load i32, ptr %244, align 4
  %246 = icmp eq i32 %243, %245
  br i1 %246, label %247, label %253

247:                                              ; preds = %239
  %248 = getelementptr inbounds %struct.cred, ptr %241, i32 0, i32 6
  %249 = load i32, ptr %248, align 4
  %250 = getelementptr inbounds %struct.cred, ptr %241, i32 0, i32 2
  %251 = load i32, ptr %250, align 4
  %252 = icmp eq i32 %249, %251
  br i1 %252, label %257, label %253

253:                                              ; preds = %247, %239, %232
  %254 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 37
  %255 = load ptr, ptr %254, align 4
  %256 = load i32, ptr @suid_dumpable, align 4
  tail call void @set_dumpable(ptr noundef %255, i32 noundef %256)
  br label %272

257:                                              ; preds = %247
  %258 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 37
  %259 = load ptr, ptr %258, align 4
  %260 = getelementptr inbounds %struct.anon.8, ptr %259, i32 0, i32 43
  br label %261

261:                                              ; preds = %269, %257
  %262 = load volatile i32, ptr %260, align 8
  %263 = and i32 %262, -4
  %264 = or i32 %263, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !47
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %260) #14, !srcloc !20
  br label %265

265:                                              ; preds = %265, %261
  %266 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %260, i32 %262, i32 %264) #14, !srcloc !48
  %267 = extractvalue { i32, i32 } %266, 0
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %265

269:                                              ; preds = %265
  %270 = extractvalue { i32, i32 } %266, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !49
  %271 = icmp eq i32 %270, %262
  br i1 %271, label %272, label %261

272:                                              ; preds = %269, %253
  tail call void @perf_event_exec() #14
  %273 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 14
  %274 = load ptr, ptr %273, align 4
  %275 = tail call ptr @strrchr(ptr noundef %274, i32 noundef 47) #14
  %276 = icmp eq ptr %275, null
  %277 = getelementptr i8, ptr %275, i32 1
  %278 = select i1 %276, ptr %274, ptr %277
  tail call void @__set_task_comm(ptr noundef %2, ptr noundef %278, i1 noundef zeroext true)
  %279 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 106
  %280 = load i64, ptr %279, align 8
  %281 = add i64 %280, 1
  store volatile i64 %281, ptr %279, align 8
  tail call void @flush_signal_handlers(ptr noundef %2, i32 noundef 0) #14
  %282 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 9
  %283 = load ptr, ptr %282, align 4
  %284 = tail call i32 @set_cred_ucounts(ptr noundef %283) #14
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %306, label %286

286:                                              ; preds = %272
  %287 = load ptr, ptr %282, align 4
  %288 = tail call i32 @commit_creds(ptr noundef %287) #14
  store ptr null, ptr %282, align 4
  %289 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 37
  %290 = load ptr, ptr %289, align 4
  %291 = getelementptr inbounds %struct.anon.8, ptr %290, i32 0, i32 43
  %292 = load i32, ptr %291, align 8
  %293 = and i32 %292, 3
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %296, label %295

295:                                              ; preds = %286
  tail call void @perf_event_exit_task(ptr noundef %2) #14
  br label %296

296:                                              ; preds = %295, %286
  %297 = load i8, ptr %3, align 4
  %298 = and i8 %297, 1
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %310, label %300

300:                                              ; preds = %296
  %301 = tail call i32 @get_unused_fd_flags(i32 noundef 0) #14
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %300
  %304 = load ptr, ptr %7, align 4
  tail call void @fd_install(i32 noundef %301, ptr noundef %304) #14
  store ptr null, ptr %7, align 4
  %305 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 18
  store i32 %301, ptr %305, align 4
  br label %310

306:                                              ; preds = %300, %272, %201
  %307 = phi i32 [ %203, %201 ], [ %284, %272 ], [ %301, %300 ]
  %308 = load ptr, ptr %66, align 16
  %309 = getelementptr inbounds %struct.signal_struct, ptr %308, i32 0, i32 56
  tail call void @up_write(ptr noundef %309) #14
  br label %310

310:                                              ; preds = %306, %303, %296, %197, %184, %181, %174, %82, %60
  %311 = phi i32 [ %61, %60 ], [ 0, %303 ], [ 0, %296 ], [ %182, %181 ], [ %188, %184 ], [ %199, %197 ], [ %307, %306 ], [ -11, %82 ], [ -11, %174 ]
  ret i32 %311
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unshare_files() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_mm_exe_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @would_dump(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vfsmount, ptr %6, i32 0, i32 3
  %8 = load volatile ptr, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !37
  %9 = tail call i32 @inode_permission(ptr noundef %8, ptr noundef %4, i32 noundef 4) #14
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 17
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, 1
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.anon.8, ptr %16, i32 0, i32 46
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, @init_user_ns
  br i1 %19, label %33, label %20

20:                                               ; preds = %23, %11
  %21 = phi ptr [ %25, %23 ], [ %18, %11 ]
  %22 = tail call zeroext i1 @privileged_wrt_inode_uidgid(ptr noundef %21, ptr noundef %8, ptr noundef %4) #14
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.user_namespace, ptr %21, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, @init_user_ns
  br i1 %26, label %27, label %20

27:                                               ; preds = %23, %20
  %28 = phi ptr [ %21, %20 ], [ @init_user_ns, %23 ]
  %29 = icmp eq ptr %18, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %15, align 4
  %32 = getelementptr inbounds %struct.anon.8, ptr %31, i32 0, i32 46
  store ptr @init_user_ns, ptr %32, align 4
  br label %33

33:                                               ; preds = %30, %27, %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @acct_arg_size(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #14
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 37
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ne ptr %5, null
  %9 = icmp ne i32 %7, %1
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = sub i32 %1, %7
  store i32 %1, ptr %6, align 4
  %13 = getelementptr %struct.anon.8, ptr %5, i32 0, i32 40, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #14, !srcloc !20
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 %12, ptr elementtype(i32) %13) #14, !srcloc !25
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !26
  tail call void @mm_trace_rss_stat(ptr noundef nonnull %5, i32 noundef 1, i32 noundef %15) #14
  br label %16

16:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @exec_mmap(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #14
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 37
  %4 = load ptr, ptr %3, align 4
  tail call void @exec_mm_release(ptr noundef %2, ptr noundef %4) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @sync_mm_rss(ptr noundef nonnull %4) #14
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 93
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 56
  %11 = tail call i32 @down_write_killable(ptr noundef %10) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %83

13:                                               ; preds = %7
  br i1 %5, label %30, label %14

14:                                               ; preds = %13
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %4, i1 noundef zeroext false) #14
  br label %18

18:                                               ; preds = %17, %14
  %19 = getelementptr inbounds %struct.anon.8, ptr %4, i32 0, i32 15
  %20 = tail call i32 @down_read_killable(ptr noundef %19) #14
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = icmp eq i32 %20, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %4, i1 noundef zeroext false, i1 noundef zeroext %24) #14
  br label %25

25:                                               ; preds = %23, %18
  %26 = icmp eq i32 %20, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr %8, align 16
  %29 = getelementptr inbounds %struct.signal_struct, ptr %28, i32 0, i32 56
  tail call void @up_write(ptr noundef %29) #14
  br label %83

30:                                               ; preds = %25, %13
  %31 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %31) #14
  tail call void @membarrier_exec_mmap(ptr noundef %0) #14
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #14, !srcloc !50
  %32 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 38
  %33 = load ptr, ptr %32, align 8
  store ptr %0, ptr %32, align 8
  store ptr %0, ptr %3, align 4
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !38
  %34 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 1
  %37 = tail call i32 @_test_and_set_bit(i32 noundef %35, ptr noundef %36) #14
  %38 = icmp ne i32 %37, 0
  %39 = icmp eq ptr %33, %0
  %40 = and i1 %39, %38
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  tail call void @check_and_switch_context(ptr noundef %0, ptr noundef null) #14
  br label %42

42:                                               ; preds = %41, %30
  %43 = load ptr, ptr %3, align 4
  %44 = getelementptr inbounds %struct.anon.8, ptr %43, i32 0, i32 2
  store i64 0, ptr %44, align 8
  %45 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 39, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(16) %45, i8 0, i32 16, i1 false) #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !33
  %46 = load i16, ptr %31, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !34
  br i1 %5, label %77, label %48

48:                                               ; preds = %42
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  tail call void @__mmap_lock_do_trace_released(ptr noundef nonnull %4, i1 noundef zeroext false) #14
  br label %52

52:                                               ; preds = %51, %48
  %53 = getelementptr inbounds %struct.anon.8, ptr %4, i32 0, i32 15
  tail call void @up_read(ptr noundef %53) #14
  %54 = icmp eq ptr %33, %4
  br i1 %54, label %56, label %55, !prof !18

55:                                               ; preds = %52
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/exec.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1026, 0\0A.popsection", ""() #14, !srcloc !51
  unreachable

56:                                               ; preds = %52
  %57 = load ptr, ptr %8, align 16
  %58 = getelementptr inbounds %struct.signal_struct, ptr %57, i32 0, i32 46
  %59 = getelementptr inbounds %struct.anon.8, ptr %4, i32 0, i32 17
  %60 = load i32, ptr %59, align 8
  %61 = getelementptr inbounds %struct.anon.8, ptr %4, i32 0, i32 40
  %62 = load volatile i32, ptr %61, align 4
  %63 = tail call i32 @llvm.smax.i32(i32 %62, i32 0) #14
  %64 = getelementptr %struct.anon.8, ptr %4, i32 0, i32 40, i32 0, i32 1
  %65 = load volatile i32, ptr %64, align 4
  %66 = tail call i32 @llvm.smax.i32(i32 %65, i32 0) #14
  %67 = add nuw i32 %66, %63
  %68 = getelementptr %struct.anon.8, ptr %4, i32 0, i32 40, i32 0, i32 3
  %69 = load volatile i32, ptr %68, align 4
  %70 = tail call i32 @llvm.smax.i32(i32 %69, i32 0) #14
  %71 = add i32 %67, %70
  %72 = tail call i32 @llvm.umax.i32(i32 %60, i32 %71) #14
  %73 = load i32, ptr %58, align 4
  %74 = icmp ult i32 %73, %72
  br i1 %74, label %75, label %76

75:                                               ; preds = %56
  store i32 %72, ptr %58, align 4
  br label %76

76:                                               ; preds = %75, %56
  tail call void @mmput(ptr noundef nonnull %4) #14
  br label %83

77:                                               ; preds = %42
  %78 = getelementptr inbounds %struct.anon.8, ptr %33, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %78) #14, !srcloc !20
  %79 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %78, ptr %78, i32 1, ptr elementtype(i32) %78) #14, !srcloc !21
  %80 = extractvalue { i32, i32 } %79, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83, !prof !27

82:                                               ; preds = %77
  tail call void @__mmdrop(ptr noundef %33) #14
  br label %83

83:                                               ; preds = %82, %77, %76, %27, %7
  %84 = phi i32 [ %20, %27 ], [ 0, %76 ], [ %11, %7 ], [ 0, %77 ], [ 0, %82 ]
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_itimers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_itimer_signals() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @unshare_sighand(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sighand_struct, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @sighand_cachep, align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %8, i32 noundef 3264) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.sighand_struct, ptr %9, i32 0, i32 1
  store volatile i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.sighand_struct, ptr %9, i32 0, i32 3
  %14 = getelementptr inbounds %struct.sighand_struct, ptr %3, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(1280) %13, ptr noundef align 4 dereferenceable(1280) %14, i32 1280, i1 false)
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #14
  tail call void @_raw_spin_lock(ptr noundef %3) #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !52
  store volatile ptr %9, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !33
  %15 = load i16, ptr %3, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !9
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @tasklist_lock, i32 0) #14, !srcloc !10
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #14, !srcloc !38
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !40
  tail call void @__cleanup_sighand(ptr noundef %3) #14
  br label %17

17:                                               ; preds = %11, %7, %1
  %18 = phi i32 [ 0, %11 ], [ 0, %1 ], [ -12, %7 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_kthread_struct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_thread() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_close_on_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_dumpable(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ugt i32 %1, 2
  br i1 %3, label %6, label %4, !prof !27

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.anon.8, ptr %0, i32 0, i32 43
  br label %7

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2059, i32 noundef 9, ptr noundef null) #14
  br label %18

7:                                                ; preds = %15, %4
  %8 = load volatile i32, ptr %5, align 8
  %9 = and i32 %8, -4
  %10 = or i32 %9, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !47
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #14, !srcloc !20
  br label %11

11:                                               ; preds = %11, %7
  %12 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %5, i32 %8, i32 %10) #14, !srcloc !48
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11
  %16 = extractvalue { i32, i32 } %12, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !49
  %17 = icmp eq i32 %16, %8
  br i1 %17, label %18, label %7

18:                                               ; preds = %15, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_exec() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signal_handlers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cred_ucounts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_exit_task(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @privileged_wrt_inode_uidgid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @setup_new_exec(ptr noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #14
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 37
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 21
  tail call void @arch_pick_mmap_layout(ptr noundef %4, ptr noundef %5) #14
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.anon.8, ptr %6, i32 0, i32 6
  store i32 -1090519040, ptr %7, align 4
  %8 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 93
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 56
  tail call void @up_write(ptr noundef %10) #14
  %11 = load ptr, ptr %8, align 16
  %12 = getelementptr inbounds %struct.signal_struct, ptr %11, i32 0, i32 55
  tail call void @mutex_unlock(ptr noundef %12) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_pick_mmap_layout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @finalize_exec(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #14
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 59
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %5) #14
  %6 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 93
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr %struct.signal_struct, ptr %7, i32 0, i32 50, i32 3
  %9 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 21
  %10 = load i64, ptr %9, align 4
  store i64 %10, ptr %8, align 8
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 107
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !33
  %13 = load i16, ptr %12, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bprm_change_interp(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.linux_binprm, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.linux_binprm, ptr %1, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @kfree(ptr noundef %4) #14
  br label %9

9:                                                ; preds = %8, %2
  %10 = tail call noalias ptr @kstrdup(ptr noundef %0, i32 noundef 3264) #14
  store ptr %10, ptr %3, align 4
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, i32 -12, i32 0
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @remove_arg_zero(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 12
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %57, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 3
  br label %7

7:                                                ; preds = %50, %5
  %8 = load i32, ptr %6, align 4
  %9 = tail call fastcc ptr @get_arg_page(ptr noundef %0, i32 noundef %8, i32 noundef 0)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %57, label %11

11:                                               ; preds = %7
  %12 = and i32 %8, 4095
  %13 = load i32, ptr @pgprot_kernel, align 4
  %14 = or i32 %13, 512
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %15 = tail call ptr @llvm.thread.pointer() #14
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 149
  %17 = load i32, ptr %16, align 8
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  %19 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %9, i32 noundef %14) #14
  br label %20

20:                                               ; preds = %25, %11
  %21 = phi i32 [ %12, %11 ], [ %26, %25 ]
  %22 = getelementptr i8, ptr %19, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = add nuw nsw i32 %21, 1
  %27 = load i32, ptr %6, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %6, align 4
  %29 = icmp eq i32 %26, 4096
  br i1 %29, label %30, label %20

30:                                               ; preds = %25, %20
  %31 = phi i32 [ 4096, %25 ], [ %21, %20 ]
  tail call void @kunmap_local_indexed(ptr noundef %19) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !16
  %32 = load i32, ptr %16, align 8
  %33 = add i32 %32, -1
  store i32 %33, ptr %16, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  %34 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38, !prof !18

38:                                               ; preds = %30
  %39 = add i32 %35, -1
  br label %42

40:                                               ; preds = %30
  %41 = ptrtoint ptr %9 to i32
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = inttoptr i32 %43 to ptr
  %45 = getelementptr inbounds %struct.page, ptr %44, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #14, !srcloc !20
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #14, !srcloc !21
  %47 = extractvalue { i32, i32 } %46, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  tail call void @__put_page(ptr noundef %44) #14
  br label %50

50:                                               ; preds = %49, %42
  %51 = icmp eq i32 %31, 4096
  br i1 %51, label %7, label %52

52:                                               ; preds = %50
  %53 = load i32, ptr %6, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %6, align 4
  %55 = load i32, ptr %2, align 4
  %56 = add i32 %55, -1
  store i32 %56, ptr %2, align 4
  br label %57

57:                                               ; preds = %52, %7, %1
  %58 = phi i32 [ 0, %1 ], [ 0, %52 ], [ -14, %7 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_execve(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @getname_kernel(ptr noundef %0) #14
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = ptrtoint ptr %4 to i32
  br label %143

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @alloc_bprm(i32 noundef -100, ptr noundef %4)
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = ptrtoint ptr %9 to i32
  br label %141

13:                                               ; preds = %8
  %14 = icmp eq ptr %1, null
  br i1 %14, label %38, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr %1, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %15
  %19 = tail call ptr @llvm.thread.pointer() #14
  %20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 98, i32 1
  br label %21

21:                                               ; preds = %32, %18
  %22 = phi i32 [ 0, %18 ], [ %34, %32 ]
  %23 = icmp eq i32 %22, 2147483647
  br i1 %23, label %139, label %24

24:                                               ; preds = %21
  %25 = load volatile i32, ptr %19, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %20, align 4
  %30 = and i32 %29, 256
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %139

32:                                               ; preds = %28, %24
  %33 = tail call i32 @__cond_resched() #14
  %34 = add nuw nsw i32 %22, 1
  %35 = getelementptr ptr, ptr %1, i32 %34
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %21

38:                                               ; preds = %32, %15, %13
  %39 = phi i32 [ 0, %15 ], [ 0, %13 ], [ %34, %32 ]
  %40 = getelementptr inbounds %struct.linux_binprm, ptr %9, i32 0, i32 12
  store i32 %39, ptr %40, align 4
  %41 = icmp eq ptr %2, null
  br i1 %41, label %67, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %2, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %67, label %45

45:                                               ; preds = %42
  %46 = tail call ptr @llvm.thread.pointer() #14
  %47 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 98, i32 1
  br label %48

48:                                               ; preds = %59, %45
  %49 = phi i32 [ 0, %45 ], [ %61, %59 ]
  %50 = icmp eq i32 %49, 2147483647
  br i1 %50, label %139, label %51

51:                                               ; preds = %48
  %52 = load volatile i32, ptr %46, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %47, align 4
  %57 = and i32 %56, 256
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %139

59:                                               ; preds = %55, %51
  %60 = tail call i32 @__cond_resched() #14
  %61 = add nuw nsw i32 %49, 1
  %62 = getelementptr ptr, ptr %2, i32 %61
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %48

65:                                               ; preds = %59
  %66 = load i32, ptr %40, align 4
  br label %67

67:                                               ; preds = %65, %42, %38
  %68 = phi i32 [ %39, %42 ], [ %39, %38 ], [ %66, %65 ]
  %69 = phi i32 [ 0, %42 ], [ 0, %38 ], [ %61, %65 ]
  %70 = getelementptr inbounds %struct.linux_binprm, ptr %9, i32 0, i32 13
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.linux_binprm, ptr %9, i32 0, i32 21
  %72 = load i32, ptr %71, align 4
  %73 = lshr i32 %72, 2
  %74 = tail call i32 @llvm.umin.i32(i32 %73, i32 6291456) #14
  %75 = tail call i32 @llvm.umax.i32(i32 %74, i32 131072) #14
  %76 = add i32 %68, %69
  %77 = shl i32 %76, 2
  %78 = icmp ult i32 %77, %75
  br i1 %78, label %79, label %139

79:                                               ; preds = %67
  %80 = sub i32 %77, %75
  %81 = getelementptr inbounds %struct.linux_binprm, ptr %9, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %80, %82
  %84 = getelementptr inbounds %struct.linux_binprm, ptr %9, i32 0, i32 4
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.linux_binprm, ptr %9, i32 0, i32 14
  %86 = load ptr, ptr %85, align 4
  %87 = tail call i32 @copy_string_kernel(ptr noundef %86, ptr noundef %9)
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %139, label %89

89:                                               ; preds = %79
  %90 = load i32, ptr %81, align 4
  %91 = getelementptr inbounds %struct.linux_binprm, ptr %9, i32 0, i32 20
  store i32 %90, ptr %91, align 4
  %92 = load i32, ptr %70, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %111, %89
  %95 = phi i32 [ %96, %111 ], [ %92, %89 ]
  %96 = add nsw i32 %95, -1
  %97 = getelementptr ptr, ptr %2, i32 %96
  %98 = load ptr, ptr %97, align 4
  %99 = tail call i32 @copy_string_kernel(ptr noundef %98, ptr noundef %9) #14
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %139, label %101

101:                                              ; preds = %94
  %102 = tail call ptr @llvm.thread.pointer() #14
  %103 = load volatile i32, ptr %102, align 4
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.task_struct, ptr %102, i32 0, i32 98, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %108, 256
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %139

111:                                              ; preds = %106, %101
  %112 = tail call i32 @__cond_resched() #14
  %113 = icmp ugt i32 %95, 1
  br i1 %113, label %94, label %114

114:                                              ; preds = %111, %89
  %115 = load i32, ptr %40, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %137

117:                                              ; preds = %134, %114
  %118 = phi i32 [ %119, %134 ], [ %115, %114 ]
  %119 = add nsw i32 %118, -1
  %120 = getelementptr ptr, ptr %1, i32 %119
  %121 = load ptr, ptr %120, align 4
  %122 = tail call i32 @copy_string_kernel(ptr noundef %121, ptr noundef %9) #14
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %139, label %124

124:                                              ; preds = %117
  %125 = tail call ptr @llvm.thread.pointer() #14
  %126 = load volatile i32, ptr %125, align 4
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.task_struct, ptr %125, i32 0, i32 98, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = and i32 %131, 256
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129, %124
  %135 = tail call i32 @__cond_resched() #14
  %136 = icmp ugt i32 %118, 1
  br i1 %136, label %117, label %137

137:                                              ; preds = %134, %114
  %138 = tail call fastcc i32 @bprm_execve(ptr noundef %9, i32 noundef -100, ptr noundef %4, i32 noundef 0)
  br label %139

139:                                              ; preds = %137, %129, %117, %106, %94, %79, %67, %55, %48, %28, %21
  %140 = phi i32 [ %87, %79 ], [ %138, %137 ], [ -7, %67 ], [ -514, %129 ], [ %122, %117 ], [ -514, %106 ], [ %99, %94 ], [ -514, %55 ], [ -7, %48 ], [ -514, %28 ], [ -7, %21 ]
  tail call fastcc void @free_bprm(ptr noundef %9)
  br label %141

141:                                              ; preds = %139, %11
  %142 = phi i32 [ %12, %11 ], [ %140, %139 ]
  tail call void @putname(ptr noundef %4) #14
  br label %143

143:                                              ; preds = %141, %6
  %144 = phi i32 [ %7, %6 ], [ %142, %141 ]
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @alloc_bprm(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 348) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %95, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %0, -100
  %8 = load ptr, ptr %1, align 4
  br i1 %7, label %19, label %9

9:                                                ; preds = %6
  %10 = load i8, ptr %8, align 1
  switch i8 %10, label %13 [
    i8 47, label %19
    i8 0, label %11
  ]

11:                                               ; preds = %9
  %12 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.3, i32 noundef %0) #14
  br label %15

13:                                               ; preds = %9
  %14 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, i32 noundef %0, ptr noundef %8) #14
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %14, %13 ], [ %12, %11 ]
  %17 = getelementptr inbounds %struct.linux_binprm, ptr %4, i32 0, i32 16
  store ptr %16, ptr %17, align 8
  %18 = icmp eq ptr %16, null
  br i1 %18, label %93, label %19

19:                                               ; preds = %15, %9, %6
  %20 = phi ptr [ %8, %9 ], [ %8, %6 ], [ %16, %15 ]
  %21 = getelementptr inbounds %struct.linux_binprm, ptr %4, i32 0, i32 14
  store ptr %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.linux_binprm, ptr %4, i32 0, i32 15
  store ptr %20, ptr %22, align 4
  %23 = tail call ptr @mm_alloc() #14
  %24 = getelementptr inbounds %struct.linux_binprm, ptr %4, i32 0, i32 2
  store ptr %23, ptr %24, align 8
  %25 = icmp eq ptr %23, null
  br i1 %25, label %93, label %26

26:                                               ; preds = %19
  %27 = tail call ptr @llvm.thread.pointer() #14
  %28 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 59
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %30) #14
  %31 = getelementptr inbounds %struct.linux_binprm, ptr %4, i32 0, i32 21
  %32 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 93
  %33 = load ptr, ptr %32, align 16
  %34 = getelementptr %struct.signal_struct, ptr %33, i32 0, i32 50, i32 3
  %35 = load i64, ptr %34, align 8
  store i64 %35, ptr %31, align 4
  %36 = load ptr, ptr %28, align 4
  %37 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 107
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !33
  %38 = load i16, ptr %37, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %37, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !34
  %40 = load ptr, ptr %24, align 8
  %41 = tail call ptr @vm_area_alloc(ptr noundef %40) #14
  store ptr %41, ptr %4, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %82, label %43

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.vm_area_struct, ptr %41, i32 0, i32 12
  store ptr null, ptr %44, align 4
  %45 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %40, i1 noundef zeroext true) #14
  br label %48

48:                                               ; preds = %47, %43
  %49 = getelementptr inbounds %struct.anon.8, ptr %40, i32 0, i32 15
  %50 = tail call i32 @down_write_killable(ptr noundef %49) #14
  %51 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = icmp eq i32 %50, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %40, i1 noundef zeroext true, i1 noundef zeroext %54) #14
  br label %55

55:                                               ; preds = %53, %48
  %56 = icmp eq i32 %50, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.vm_area_struct, ptr %41, i32 0, i32 1
  store i32 -1090519040, ptr %58, align 4
  store i32 -1090523136, ptr %41, align 4
  %59 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 46
  %60 = load i32, ptr %59, align 16
  %61 = lshr i32 %60, 20
  %62 = and i32 %61, 4
  %63 = or i32 %62, 1147251
  %64 = getelementptr inbounds %struct.vm_area_struct, ptr %41, i32 0, i32 8
  store i32 %63, ptr %64, align 4
  %65 = tail call i32 @vm_get_page_prot(i32 noundef %63) #14
  %66 = getelementptr inbounds %struct.vm_area_struct, ptr %41, i32 0, i32 7
  store i32 %65, ptr %66, align 4
  %67 = tail call i32 @insert_vm_struct(ptr noundef %40, ptr noundef nonnull %41) #14
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.anon.8, ptr %40, i32 0, i32 19
  store i32 1, ptr %70, align 8
  %71 = getelementptr inbounds %struct.anon.8, ptr %40, i32 0, i32 24
  store i32 1, ptr %71, align 8
  %72 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %69
  tail call void @__mmap_lock_do_trace_released(ptr noundef %40, i1 noundef zeroext true) #14
  br label %89

75:                                               ; preds = %57
  %76 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  tail call void @__mmap_lock_do_trace_released(ptr noundef %40, i1 noundef zeroext true) #14
  br label %79

79:                                               ; preds = %78, %75
  tail call void @up_write(ptr noundef %49) #14
  br label %80

80:                                               ; preds = %79, %55
  %81 = phi i32 [ %67, %79 ], [ -4, %55 ]
  store ptr null, ptr %4, align 8
  tail call void @vm_area_free(ptr noundef nonnull %41) #14
  br label %82

82:                                               ; preds = %80, %26
  %83 = phi i32 [ -12, %26 ], [ %81, %80 ]
  store ptr null, ptr %24, align 8
  %84 = getelementptr inbounds %struct.anon.8, ptr %23, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %84) #14, !srcloc !20
  %85 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %84, ptr %84, i32 1, ptr elementtype(i32) %84) #14, !srcloc !21
  %86 = extractvalue { i32, i32 } %85, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93, !prof !27

88:                                               ; preds = %82
  tail call void @__mmdrop(ptr noundef nonnull %23) #14
  br label %93

89:                                               ; preds = %74, %69
  tail call void @up_write(ptr noundef %49) #14
  %90 = load i32, ptr %58, align 4
  %91 = add i32 %90, -4
  %92 = getelementptr inbounds %struct.linux_binprm, ptr %4, i32 0, i32 3
  store i32 %91, ptr %92, align 4
  br label %98

93:                                               ; preds = %88, %82, %19, %15
  %94 = phi i32 [ -12, %15 ], [ -12, %19 ], [ %83, %88 ], [ %83, %82 ]
  tail call fastcc void @free_bprm(ptr noundef nonnull %4)
  br label %95

95:                                               ; preds = %93, %2
  %96 = phi i32 [ %94, %93 ], [ -12, %2 ]
  %97 = inttoptr i32 %96 to ptr
  br label %98

98:                                               ; preds = %95, %89
  %99 = phi ptr [ %97, %95 ], [ %4, %89 ]
  ret ptr %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bprm_execve(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = tail call ptr @llvm.thread.pointer() #14
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 93
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr inbounds %struct.signal_struct, ptr %8, i32 0, i32 55
  %10 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %267

12:                                               ; preds = %4
  %13 = tail call ptr @prepare_exec_creds() #14
  %14 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 9
  store ptr %13, ptr %14, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %19, !prof !27

16:                                               ; preds = %12
  %17 = load ptr, ptr %7, align 16
  %18 = getelementptr inbounds %struct.signal_struct, ptr %17, i32 0, i32 55
  tail call void @mutex_unlock(ptr noundef %18) #14
  br label %267

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, 2
  store i32 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 50
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 10
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, 4
  store i32 %35, ptr %33, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 89
  %38 = load ptr, ptr %37, align 64
  %39 = getelementptr inbounds %struct.fs_struct, ptr %38, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %39) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !53
  %40 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 64
  %41 = load volatile ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 -1380
  %43 = icmp eq ptr %42, %6
  br i1 %43, label %57, label %44

44:                                               ; preds = %36
  %45 = load ptr, ptr %37, align 64
  br label %46

46:                                               ; preds = %46, %44
  %47 = phi ptr [ %41, %44 ], [ %54, %46 ]
  %48 = phi i32 [ 1, %44 ], [ %53, %46 ]
  %49 = getelementptr i8, ptr %47, i32 220
  %50 = load ptr, ptr %49, align 64
  %51 = icmp eq ptr %50, %45
  %52 = zext i1 %51 to i32
  %53 = add i32 %48, %52
  %54 = load volatile ptr, ptr %47, align 4
  %55 = getelementptr i8, ptr %54, i32 -1380
  %56 = icmp eq ptr %55, %6
  br i1 %56, label %57, label %46

57:                                               ; preds = %46, %36
  %58 = phi i32 [ 1, %36 ], [ %53, %46 ]
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !54
  %59 = load ptr, ptr %37, align 64
  %60 = load i32, ptr %59, align 4
  %61 = icmp ugt i32 %60, %58
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 10
  %64 = load i32, ptr %63, align 4
  %65 = or i32 %64, 1
  store i32 %65, ptr %63, align 4
  br label %68

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.fs_struct, ptr %59, i32 0, i32 4
  store i32 1, ptr %67, align 4
  br label %68

68:                                               ; preds = %66, %62
  %69 = load ptr, ptr %37, align 64
  %70 = getelementptr inbounds %struct.fs_struct, ptr %69, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !33
  %71 = load i16, ptr %70, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %70, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !34
  %73 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 49
  %74 = load i8, ptr %73, align 8
  %75 = or i8 %74, 2
  store i8 %75, ptr %73, align 8
  %76 = tail call fastcc ptr @do_open_execat(i32 noundef %1, ptr noundef %2, i32 noundef %3)
  %77 = ptrtoint ptr %76 to i32
  %78 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %261, label %79

79:                                               ; preds = %68
  tail call void @sched_exec() #14
  %80 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 8
  store ptr %76, ptr %80, align 4
  %81 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 16
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %79
  %85 = tail call zeroext i1 @get_close_on_exec(i32 noundef %1) #14
  br i1 %85, label %86, label %90

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 17
  %88 = load i32, ptr %87, align 4
  %89 = or i32 %88, 4
  store i32 %89, ptr %87, align 4
  br label %90

90:                                               ; preds = %86, %84, %79
  %91 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 52
  %92 = load i32, ptr %91, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !53
  %93 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 56
  %94 = load ptr, ptr %93, align 8
  %95 = tail call ptr @task_active_pid_ns(ptr noundef %94) #14
  %96 = tail call i32 @__task_pid_nr_ns(ptr noundef %6, i32 noundef 0, ptr noundef %95) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !54
  %97 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 22
  %98 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 5
  %99 = getelementptr %struct.linux_binprm, ptr %0, i32 0, i32 22, i32 1
  %100 = getelementptr %struct.linux_binprm, ptr %0, i32 0, i32 22, i32 2
  %101 = getelementptr %struct.linux_binprm, ptr %0, i32 0, i32 22, i32 3
  %102 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 7
  %103 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 6
  br label %104

104:                                              ; preds = %209, %90
  %105 = phi i32 [ 0, %90 ], [ %210, %209 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store i64 0, ptr %5, align 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(256) %97, i8 0, i32 256, i1 false) #14
  %106 = load ptr, ptr %80, align 4
  %107 = call i32 @kernel_read(ptr noundef %106, ptr noundef %97, i32 noundef 256, ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %246, label %109

109:                                              ; preds = %180, %104
  %110 = phi i32 [ %146, %180 ], [ -2, %104 ]
  %111 = phi i1 [ false, %180 ], [ true, %104 ]
  call void @_raw_read_lock(ptr noundef nonnull @binfmt_lock) #14
  %112 = load ptr, ptr @formats, align 4
  %113 = icmp eq ptr %112, @formats
  br i1 %113, label %145, label %114

114:                                              ; preds = %141, %109
  %115 = phi ptr [ %143, %141 ], [ %112, %109 ]
  %116 = phi i32 [ %142, %141 ], [ %110, %109 ]
  %117 = getelementptr inbounds %struct.linux_binfmt, ptr %115, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = call zeroext i1 @try_module_get(ptr noundef %118) #14
  br i1 %119, label %120, label %141

120:                                              ; preds = %114
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !44
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @binfmt_lock) #14, !srcloc !20
  %121 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @binfmt_lock) #14, !srcloc !45
  %122 = extractvalue { i32, i32 } %121, 0
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  br label %125

125:                                              ; preds = %124, %120
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !46
  %126 = getelementptr inbounds %struct.linux_binfmt, ptr %115, i32 0, i32 2
  %127 = load ptr, ptr %126, align 4
  %128 = call i32 %127(ptr noundef %0) #14
  call void @_raw_read_lock(ptr noundef nonnull @binfmt_lock) #14
  %129 = load ptr, ptr %117, align 4
  call void @module_put(ptr noundef %129) #14
  %130 = load i8, ptr %98, align 4
  %131 = and i8 %130, 8
  %132 = icmp ne i8 %131, 0
  %133 = icmp ne i32 %128, -8
  %134 = select i1 %132, i1 true, i1 %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %125
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !44
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @binfmt_lock) #14, !srcloc !20
  %136 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @binfmt_lock) #14, !srcloc !45
  %137 = extractvalue { i32, i32 } %136, 0
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  br label %140

140:                                              ; preds = %139, %135
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !46
  br label %185

141:                                              ; preds = %125, %114
  %142 = phi i32 [ -8, %125 ], [ %116, %114 ]
  %143 = load ptr, ptr %115, align 4
  %144 = icmp eq ptr %143, @formats
  br i1 %144, label %145, label %114

145:                                              ; preds = %141, %109
  %146 = phi i32 [ %110, %109 ], [ %142, %141 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !44
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @binfmt_lock) #14, !srcloc !20
  %147 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @binfmt_lock) #14, !srcloc !45
  %148 = extractvalue { i32, i32 } %147, 0
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  br label %151

151:                                              ; preds = %150, %145
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !46
  br i1 %111, label %152, label %185

152:                                              ; preds = %151
  %153 = load i8, ptr %97, align 4
  %154 = add i8 %153, -9
  %155 = icmp ult i8 %154, 2
  %156 = add i8 %153, -32
  %157 = icmp ult i8 %156, 95
  %158 = or i1 %155, %157
  br i1 %158, label %159, label %180

159:                                              ; preds = %152
  %160 = load i8, ptr %99, align 1
  %161 = add i8 %160, -9
  %162 = icmp ult i8 %161, 2
  %163 = add i8 %160, -32
  %164 = icmp ult i8 %163, 95
  %165 = or i1 %162, %164
  br i1 %165, label %166, label %180

166:                                              ; preds = %159
  %167 = load i8, ptr %100, align 2
  %168 = add i8 %167, -9
  %169 = icmp ult i8 %168, 2
  %170 = add i8 %167, -32
  %171 = icmp ult i8 %170, 95
  %172 = or i1 %169, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %166
  %174 = load i8, ptr %101, align 1
  %175 = add i8 %174, -9
  %176 = icmp ult i8 %175, 2
  %177 = add i8 %174, -32
  %178 = icmp ult i8 %177, 95
  %179 = or i1 %176, %178
  br i1 %179, label %185, label %180

180:                                              ; preds = %173, %166, %159, %152
  %181 = load i16, ptr %100, align 2
  %182 = zext i16 %181 to i32
  %183 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.5, i32 noundef %182) #14
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %109

185:                                              ; preds = %180, %173, %151, %140
  %186 = phi i32 [ %128, %140 ], [ %146, %151 ], [ %146, %173 ], [ %146, %180 ]
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %246, label %188

188:                                              ; preds = %185
  %189 = load ptr, ptr %102, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %212, label %191

191:                                              ; preds = %188
  %192 = load ptr, ptr %80, align 4
  store ptr %189, ptr %80, align 4
  store ptr null, ptr %102, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %199, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.file, ptr %192, i32 0, i32 2
  %196 = load ptr, ptr %195, align 8
  %197 = getelementptr inbounds %struct.inode, ptr %196, i32 0, i32 37
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %197) #14, !srcloc !20
  %198 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %197, ptr %197, i32 1, ptr elementtype(i32) %197) #14, !srcloc !55
  br label %199

199:                                              ; preds = %194, %191
  %200 = load i8, ptr %98, align 4
  %201 = and i8 %200, 1
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %208, label %203, !prof !18

203:                                              ; preds = %199
  %204 = load ptr, ptr %103, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %207, label %206

206:                                              ; preds = %203
  call void @fput(ptr noundef %192) #14
  br label %246

207:                                              ; preds = %203
  store ptr %192, ptr %103, align 4
  br label %209

208:                                              ; preds = %199
  call void @fput(ptr noundef %192) #14
  br label %209

209:                                              ; preds = %208, %207
  %210 = add nuw nsw i32 %105, 1
  %211 = icmp eq i32 %210, 6
  br i1 %211, label %246, label %104

212:                                              ; preds = %188
  %213 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_exec, i32 0, i32 1), align 4
  %214 = icmp sgt i32 %213, 0
  br i1 %214, label %215, label %227

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %217 = load i32, ptr %216, align 8
  %218 = lshr i32 %217, 5
  %219 = getelementptr i32, ptr @__cpu_online_mask, i32 %218
  %220 = load volatile i32, ptr %219, align 4
  %221 = and i32 %217, 31
  %222 = shl nuw i32 1, %221
  %223 = and i32 %222, %220
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %215
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !56
  %226 = call i32 @__traceiter_sched_process_exec(ptr noundef null, ptr noundef %6, i32 noundef %92, ptr noundef %0) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !57
  br label %227

227:                                              ; preds = %225, %215, %212
  %228 = load i32, ptr %20, align 8
  %229 = and i32 %228, 128
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %233, label %231, !prof !18

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 120
  store i32 %96, ptr %232, align 8
  call void @ptrace_notify(i32 noundef 1029) #14
  br label %238

233:                                              ; preds = %227
  %234 = and i32 %228, 65537
  %235 = icmp eq i32 %234, 1
  br i1 %235, label %236, label %238

236:                                              ; preds = %233
  %237 = call i32 @send_sig(i32 noundef 5, ptr noundef %6, i32 noundef 0) #14
  br label %238

238:                                              ; preds = %236, %233, %231
  %239 = load ptr, ptr %37, align 64
  %240 = getelementptr inbounds %struct.fs_struct, ptr %239, i32 0, i32 4
  store i32 0, ptr %240, align 4
  %241 = load i8, ptr %73, align 8
  %242 = and i8 %241, -3
  store i8 %242, ptr %73, align 8
  %243 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 133
  store ptr null, ptr %243, align 8
  %244 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 134
  store i32 0, ptr %244, align 4
  %245 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 135
  store i32 0, ptr %245, align 16
  br label %267

246:                                              ; preds = %209, %206, %185, %104
  %247 = phi i32 [ -8, %206 ], [ %107, %104 ], [ -40, %209 ], [ %186, %185 ]
  %248 = load i8, ptr %98, align 4
  %249 = and i8 %248, 8
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %261, label %251

251:                                              ; preds = %246
  %252 = load volatile i32, ptr %6, align 4
  %253 = and i32 %252, 1
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 98, i32 1
  %257 = load i32, ptr %256, align 4
  %258 = and i32 %257, 256
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %255, %251
  call void @force_fatal_sig(i32 noundef 11) #14
  br label %261

261:                                              ; preds = %260, %255, %246, %68
  %262 = phi i32 [ %77, %68 ], [ %247, %255 ], [ %247, %260 ], [ %247, %246 ]
  %263 = load ptr, ptr %37, align 64
  %264 = getelementptr inbounds %struct.fs_struct, ptr %263, i32 0, i32 4
  store i32 0, ptr %264, align 4
  %265 = load i8, ptr %73, align 8
  %266 = and i8 %265, -3
  store i8 %266, ptr %73, align 8
  br label %267

267:                                              ; preds = %261, %238, %16, %4
  %268 = phi i32 [ %262, %261 ], [ 0, %238 ], [ -513, %4 ], [ -12, %16 ]
  ret i32 %268
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_bprm(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #14
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 37
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne ptr %8, null
  %12 = icmp ne i32 %10, 0
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = sub i32 0, %10
  store i32 0, ptr %9, align 4
  %16 = getelementptr %struct.anon.8, ptr %8, i32 0, i32 40, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #14, !srcloc !20
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 %15, ptr elementtype(i32) %16) #14, !srcloc !25
  %18 = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !26
  tail call void @mm_trace_rss_stat(ptr noundef nonnull %8, i32 noundef 1, i32 noundef %18) #14
  %19 = load ptr, ptr %2, align 4
  br label %20

20:                                               ; preds = %14, %5
  %21 = phi ptr [ %3, %5 ], [ %19, %14 ]
  tail call void @mmput(ptr noundef %21) #14
  br label %22

22:                                               ; preds = %20, %1
  %23 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = tail call ptr @llvm.thread.pointer() #14
  %28 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 93
  %29 = load ptr, ptr %28, align 16
  %30 = getelementptr inbounds %struct.signal_struct, ptr %29, i32 0, i32 55
  tail call void @mutex_unlock(ptr noundef %30) #14
  %31 = load ptr, ptr %23, align 4
  tail call void @abort_creds(ptr noundef %31) #14
  br label %32

32:                                               ; preds = %26, %22
  %33 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.file, ptr %34, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 37
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #14, !srcloc !20
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 1, ptr elementtype(i32) %39) #14, !srcloc !55
  %41 = load ptr, ptr %33, align 4
  tail call void @fput(ptr noundef %41) #14
  br label %42

42:                                               ; preds = %36, %32
  %43 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 6
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @fput(ptr noundef nonnull %44) #14
  br label %47

47:                                               ; preds = %46, %42
  %48 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 15
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 14
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %49, %51
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  tail call void @kfree(ptr noundef %49) #14
  br label %54

54:                                               ; preds = %53, %47
  %55 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 16
  %56 = load ptr, ptr %55, align 4
  tail call void @kfree(ptr noundef %56) #14
  tail call void @kfree(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_binfmt(ptr noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #14
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 37
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.anon.8, ptr %4, i32 0, i32 41
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.linux_binfmt, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @module_put(ptr noundef %10) #14
  br label %11

11:                                               ; preds = %8, %1
  store ptr %0, ptr %5, align 4
  %12 = icmp eq ptr %0, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.linux_binfmt, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void @__module_get(ptr noundef %15) #14
  br label %16

16:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_execve(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %0 to ptr
  %5 = tail call ptr @getname(ptr noundef %4) #14
  %6 = insertvalue [1 x i32] poison, i32 %1, 0
  %7 = insertvalue [1 x i32] poison, i32 %2, 0
  %8 = tail call fastcc i32 @do_execveat_common(i32 noundef -100, ptr noundef %5, [1 x i32] %6, [1 x i32] %7, i32 noundef 0) #14
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_execveat(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = inttoptr i32 %1 to ptr
  %7 = tail call ptr @getname_uflags(ptr noundef %6, i32 noundef %4) #14
  %8 = insertvalue [1 x i32] poison, i32 %2, 0
  %9 = insertvalue [1 x i32] poison, i32 %3, 0
  %10 = tail call fastcc i32 @do_execveat_common(i32 noundef %0, ptr noundef %7, [1 x i32] %8, [1 x i32] %9, i32 noundef %4) #14
  ret i32 %10
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_fs_exec_sysctls() #7 section ".init.text" {
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.9, ptr noundef nonnull @fs_exec_sysctls, ptr noundef nonnull @.str.10) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_user_pages_remote(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_cache_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @move_page_tables(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_gather_mmu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pgd_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_finish_mmu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vma_adjust(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @do_filp_open(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_task_rename(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zap_other_threads(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cgroup_threadgroup_change_begin() unnamed_addr #10 {
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !58
  %1 = load volatile i32, ptr @cgroup_threadgroup_rwsem, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %14, !prof !18

3:                                                ; preds = %0
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !59
  %5 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 1), align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #11, !srcloc !60
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #14, !srcloc !61
  br label %16

14:                                               ; preds = %0
  %15 = tail call zeroext i1 @__percpu_down_read(ptr noundef nonnull @cgroup_threadgroup_rwsem, i1 noundef zeroext false) #14
  br label %16

16:                                               ; preds = %14, %3
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !62
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cgroup_threadgroup_change_end() unnamed_addr #10 {
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !63
  %1 = load volatile i32, ptr @cgroup_threadgroup_rwsem, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %14, !prof !18

3:                                                ; preds = %0
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !59
  %5 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 1), align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #11, !srcloc !60
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  store i32 %13, ptr %11, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #14, !srcloc !61
  br label %26

14:                                               ; preds = %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !64
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !59
  %16 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 1), align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #11, !srcloc !60
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, -1
  store i32 %24, ptr %22, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #14, !srcloc !61
  %25 = tail call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 2)) #14
  br label %26

26:                                               ; preds = %14, %3
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !65
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exchange_tids(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @transfer_pid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_task(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__io_uring_cancel(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mm_trace_rss_stat(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exec_mm_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sync_mm_rss(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @membarrier_exec_mmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_and_switch_context(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cleanup_sighand(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mnt_may_suid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_bprm_creds_from_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mm_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_area_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_vm_struct(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_area_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_exec() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @get_close_on_exec(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @force_fatal_sig(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_exec_creds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_process_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptrace_notify(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @abort_creds(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @getname(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_execveat_common(i32 noundef %0, ptr noundef %1, [1 x i32] %2, [1 x i32] %3, i32 noundef %4) unnamed_addr #0 {
  %6 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = ptrtoint ptr %1 to i32
  br label %146

9:                                                ; preds = %5
  %10 = tail call ptr @llvm.thread.pointer() #14
  %11 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 4096
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 83
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 22
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 93
  %21 = load ptr, ptr %20, align 16
  %22 = getelementptr %struct.signal_struct, ptr %21, i32 0, i32 50, i32 6
  %23 = load volatile i32, ptr %22, align 8
  %24 = tail call zeroext i1 @is_ucounts_overlimit(ptr noundef %19, i32 noundef 10, i32 noundef %23) #14
  br i1 %24, label %144, label %25

25:                                               ; preds = %15
  %26 = load i32, ptr %11, align 4
  br label %27

27:                                               ; preds = %25, %9
  %28 = phi i32 [ %26, %25 ], [ %12, %9 ]
  %29 = and i32 %28, -4097
  store i32 %29, ptr %11, align 4
  %30 = tail call fastcc ptr @alloc_bprm(i32 noundef %0, ptr noundef %1)
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = ptrtoint ptr %30 to i32
  br label %144

34:                                               ; preds = %27
  %35 = extractvalue [1 x i32] %2, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %69, label %37

37:                                               ; preds = %34
  %38 = inttoptr i32 %35 to ptr
  %39 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %40 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 98, i32 1
  br label %41

41:                                               ; preds = %67, %37
  %42 = phi i32 [ %59, %67 ], [ 0, %37 ]
  %43 = getelementptr ptr, ptr %38, i32 %42
  %44 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #11, !srcloc !66
  %45 = and i32 %44, -13
  %46 = or i32 %45, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #14, !srcloc !67
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !68
  %47 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %43, i32 -1090519041) #14, !srcloc !69
  %48 = extractvalue { i32, i32 } %47, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #14, !srcloc !67
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !68
  %49 = icmp eq i32 %48, 0
  %50 = extractvalue { i32, i32 } %47, 1
  %51 = inttoptr i32 %50 to ptr
  %52 = select i1 %49, ptr %51, ptr inttoptr (i32 -14 to ptr)
  %53 = icmp eq ptr %52, null
  br i1 %53, label %69, label %54

54:                                               ; preds = %41
  %55 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %142, label %56

56:                                               ; preds = %54
  %57 = icmp eq i32 %42, 2147483647
  br i1 %57, label %142, label %58

58:                                               ; preds = %56
  %59 = add nuw nsw i32 %42, 1
  %60 = load volatile i32, ptr %10, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load i32, ptr %40, align 4
  %65 = and i32 %64, 256
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %142

67:                                               ; preds = %63, %58
  %68 = tail call i32 @__cond_resched() #14
  br label %41

69:                                               ; preds = %41, %34
  %70 = phi i32 [ 0, %34 ], [ %42, %41 ]
  %71 = getelementptr inbounds %struct.linux_binprm, ptr %30, i32 0, i32 12
  store i32 %70, ptr %71, align 4
  %72 = extractvalue [1 x i32] %3, 0
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %108, label %74

74:                                               ; preds = %69
  %75 = inttoptr i32 %72 to ptr
  %76 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %77 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 98, i32 1
  br label %78

78:                                               ; preds = %104, %74
  %79 = phi i32 [ %96, %104 ], [ 0, %74 ]
  %80 = getelementptr ptr, ptr %75, i32 %79
  %81 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %76) #11, !srcloc !66
  %82 = and i32 %81, -13
  %83 = or i32 %82, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #14, !srcloc !67
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !68
  %84 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %80, i32 -1090519041) #14, !srcloc !69
  %85 = extractvalue { i32, i32 } %84, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #14, !srcloc !67
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !68
  %86 = icmp eq i32 %85, 0
  %87 = extractvalue { i32, i32 } %84, 1
  %88 = inttoptr i32 %87 to ptr
  %89 = select i1 %86, ptr %88, ptr inttoptr (i32 -14 to ptr)
  %90 = icmp eq ptr %89, null
  br i1 %90, label %106, label %91

91:                                               ; preds = %78
  %92 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %142, label %93

93:                                               ; preds = %91
  %94 = icmp eq i32 %79, 2147483647
  br i1 %94, label %142, label %95

95:                                               ; preds = %93
  %96 = add nuw nsw i32 %79, 1
  %97 = load volatile i32, ptr %10, align 4
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = load i32, ptr %77, align 4
  %102 = and i32 %101, 256
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %142

104:                                              ; preds = %100, %95
  %105 = tail call i32 @__cond_resched() #14
  br label %78

106:                                              ; preds = %78
  %107 = load i32, ptr %71, align 4
  br label %108

108:                                              ; preds = %106, %69
  %109 = phi i32 [ %70, %69 ], [ %107, %106 ]
  %110 = phi i32 [ 0, %69 ], [ %79, %106 ]
  %111 = getelementptr inbounds %struct.linux_binprm, ptr %30, i32 0, i32 13
  store i32 %110, ptr %111, align 4
  %112 = getelementptr inbounds %struct.linux_binprm, ptr %30, i32 0, i32 21
  %113 = load i32, ptr %112, align 4
  %114 = lshr i32 %113, 2
  %115 = tail call i32 @llvm.umin.i32(i32 %114, i32 6291456) #14
  %116 = tail call i32 @llvm.umax.i32(i32 %115, i32 131072) #14
  %117 = add i32 %109, %110
  %118 = shl i32 %117, 2
  %119 = icmp ult i32 %118, %116
  br i1 %119, label %120, label %142

120:                                              ; preds = %108
  %121 = sub i32 %118, %116
  %122 = getelementptr inbounds %struct.linux_binprm, ptr %30, i32 0, i32 3
  %123 = load i32, ptr %122, align 4
  %124 = add i32 %121, %123
  %125 = getelementptr inbounds %struct.linux_binprm, ptr %30, i32 0, i32 4
  store i32 %124, ptr %125, align 4
  %126 = getelementptr inbounds %struct.linux_binprm, ptr %30, i32 0, i32 14
  %127 = load ptr, ptr %126, align 4
  %128 = tail call i32 @copy_string_kernel(ptr noundef %127, ptr noundef %30)
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %142, label %130

130:                                              ; preds = %120
  %131 = load i32, ptr %122, align 4
  %132 = getelementptr inbounds %struct.linux_binprm, ptr %30, i32 0, i32 20
  store i32 %131, ptr %132, align 4
  %133 = load i32, ptr %111, align 4
  %134 = tail call fastcc i32 @copy_strings(i32 noundef %133, [1 x i32] %3, ptr noundef %30)
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %130
  %137 = load i32, ptr %71, align 4
  %138 = tail call fastcc i32 @copy_strings(i32 noundef %137, [1 x i32] %2, ptr noundef %30)
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %136
  %141 = tail call fastcc i32 @bprm_execve(ptr noundef %30, i32 noundef %0, ptr noundef %1, i32 noundef %4)
  br label %142

142:                                              ; preds = %140, %136, %130, %120, %108, %100, %93, %91, %63, %56, %54
  %143 = phi i32 [ %128, %120 ], [ %134, %130 ], [ %138, %136 ], [ %141, %140 ], [ -7, %108 ], [ -14, %91 ], [ -7, %93 ], [ -514, %100 ], [ -14, %54 ], [ -7, %56 ], [ -514, %63 ]
  tail call fastcc void @free_bprm(ptr noundef %30)
  br label %144

144:                                              ; preds = %142, %32, %15
  %145 = phi i32 [ %33, %32 ], [ %143, %142 ], [ -11, %15 ]
  tail call void @putname(ptr noundef %1) #14
  br label %146

146:                                              ; preds = %144, %7
  %147 = phi i32 [ %8, %7 ], [ %145, %144 ]
  ret i32 %147
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_ucounts_overlimit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @copy_strings(i32 noundef %0, [1 x i32] %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %180

5:                                                ; preds = %3
  %6 = extractvalue [1 x i32] %1, 0
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call ptr @llvm.thread.pointer() #14
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.linux_binprm, ptr %2, i32 0, i32 3
  %11 = getelementptr inbounds %struct.linux_binprm, ptr %2, i32 0, i32 4
  %12 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 98, i32 1
  br label %15

13:                                               ; preds = %44
  %14 = icmp sgt i32 %16, 1
  br i1 %14, label %15, label %149

15:                                               ; preds = %13, %5
  %16 = phi i32 [ %0, %5 ], [ %20, %13 ]
  %17 = phi i32 [ 0, %5 ], [ %47, %13 ]
  %18 = phi ptr [ null, %5 ], [ %46, %13 ]
  %19 = phi ptr [ null, %5 ], [ %45, %13 ]
  %20 = add nsw i32 %16, -1
  %21 = getelementptr ptr, ptr %7, i32 %20
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #11, !srcloc !66
  %23 = and i32 %22, -13
  %24 = or i32 %23, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #14, !srcloc !67
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !68
  %25 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %21, i32 -1090519041) #14, !srcloc !69
  %26 = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #14, !srcloc !67
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !68
  %27 = icmp eq i32 %26, 0
  %28 = extractvalue { i32, i32 } %25, 1
  %29 = inttoptr i32 %28 to ptr
  %30 = select i1 %27, ptr %29, ptr inttoptr (i32 -14 to ptr)
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %149, label %32

32:                                               ; preds = %15
  %33 = tail call i32 @strnlen_user(ptr noundef %30, i32 noundef 131072) #14
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %149, label %35

35:                                               ; preds = %32
  %36 = icmp ult i32 %33, 131073
  br i1 %36, label %37, label %149

37:                                               ; preds = %35
  %38 = load i32, ptr %10, align 4
  %39 = sub i32 %38, %33
  store i32 %39, ptr %10, align 4
  %40 = load i32, ptr %11, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %149, label %42

42:                                               ; preds = %37
  %43 = getelementptr i8, ptr %30, i32 %33
  br label %44

44:                                               ; preds = %143, %42
  %45 = phi ptr [ %131, %143 ], [ %19, %42 ]
  %46 = phi ptr [ %132, %143 ], [ %18, %42 ]
  %47 = phi i32 [ %133, %143 ], [ %17, %42 ]
  %48 = phi ptr [ %69, %143 ], [ %43, %42 ]
  %49 = phi i32 [ %70, %143 ], [ %33, %42 ]
  %50 = phi i32 [ %67, %143 ], [ %38, %42 ]
  %51 = icmp sgt i32 %49, 0
  br i1 %51, label %52, label %13

52:                                               ; preds = %44
  %53 = load volatile i32, ptr %8, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %12, align 4
  %58 = and i32 %57, 256
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %149

60:                                               ; preds = %56, %52
  %61 = tail call i32 @__cond_resched() #14
  %62 = and i32 %50, 4095
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, i32 4096, i32 %62
  %65 = tail call i32 @llvm.umin.i32(i32 %64, i32 %49)
  %66 = sub nsw i32 %64, %65
  %67 = sub i32 %50, %65
  %68 = sub nsw i32 0, %65
  %69 = getelementptr i8, ptr %48, i32 %68
  %70 = sub nsw i32 %49, %65
  %71 = icmp eq ptr %45, null
  %72 = xor i1 %71, true
  %73 = and i32 %67, -4096
  %74 = icmp eq i32 %47, %73
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %130, label %76

76:                                               ; preds = %60
  %77 = tail call fastcc ptr @get_arg_page(ptr noundef %2, i32 noundef %67, i32 noundef 1)
  %78 = icmp eq ptr %77, null
  br i1 %78, label %149, label %79

79:                                               ; preds = %76
  br i1 %71, label %107, label %80

80:                                               ; preds = %79
  tail call void @flush_dcache_page(ptr noundef nonnull %45) #14
  %81 = load i32, ptr %45, align 4
  %82 = lshr i32 %81, 30
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = icmp ne i32 %82, 3
  %86 = load i32, ptr @movable_zone, align 4
  %87 = icmp ne i32 %86, 2
  %88 = select i1 %85, i1 true, i1 %87
  br i1 %88, label %90, label %89

89:                                               ; preds = %84, %80
  tail call void @kunmap_high(ptr noundef nonnull %45) #14
  br label %90

90:                                               ; preds = %89, %84
  %91 = getelementptr inbounds %struct.page, ptr %45, i32 0, i32 1
  %92 = load volatile i32, ptr %91, align 4
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95, !prof !18

95:                                               ; preds = %90
  %96 = add i32 %92, -1
  br label %99

97:                                               ; preds = %90
  %98 = ptrtoint ptr %45 to i32
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  %101 = inttoptr i32 %100 to ptr
  %102 = getelementptr inbounds %struct.page, ptr %101, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %102) #14, !srcloc !20
  %103 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %102, ptr %102, i32 1, ptr elementtype(i32) %102) #14, !srcloc !21
  %104 = extractvalue { i32, i32 } %103, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  tail call void @__put_page(ptr noundef %101) #14
  br label %107

107:                                              ; preds = %106, %99, %79
  %108 = load i32, ptr %77, align 4
  %109 = lshr i32 %108, 30
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %118, label %111

111:                                              ; preds = %107
  %112 = icmp ne i32 %109, 3
  %113 = load i32, ptr @movable_zone, align 4
  %114 = icmp ne i32 %113, 2
  %115 = select i1 %112, i1 true, i1 %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = tail call ptr @page_address(ptr noundef nonnull %77) #14
  br label %120

118:                                              ; preds = %111, %107
  %119 = tail call ptr @kmap_high(ptr noundef nonnull %77) #14
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi ptr [ %119, %118 ], [ %117, %116 ]
  %122 = load ptr, ptr %2, align 4
  %123 = load ptr, ptr @mem_map, align 4
  %124 = ptrtoint ptr %77 to i32
  %125 = ptrtoint ptr %123 to i32
  %126 = sub i32 %124, %125
  %127 = ashr exact i32 %126, 5
  %128 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %129 = add i32 %127, %128
  tail call void @flush_cache_page(ptr noundef %122, i32 noundef %73, i32 noundef %129) #14
  br label %130

130:                                              ; preds = %120, %60
  %131 = phi ptr [ %77, %120 ], [ %45, %60 ]
  %132 = phi ptr [ %121, %120 ], [ %46, %60 ]
  %133 = phi i32 [ %73, %120 ], [ %47, %60 ]
  %134 = getelementptr i8, ptr %132, i32 %66
  %135 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %69, i32 %65, i32 -1090519040) #17, !srcloc !70
  %136 = extractvalue { i32, i32 } %135, 0
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %143, !prof !18

138:                                              ; preds = %130
  %139 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #11, !srcloc !66
  %140 = and i32 %139, -13
  %141 = or i32 %140, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %141) #14, !srcloc !67
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !68
  %142 = tail call i32 @arm_copy_from_user(ptr noundef %134, ptr noundef %69, i32 noundef %65) #14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %139) #14, !srcloc !67
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !68
  br label %143

143:                                              ; preds = %138, %130
  %144 = phi i32 [ %142, %138 ], [ %65, %130 ]
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %44, label %146, !prof !18

146:                                              ; preds = %143
  %147 = sub i32 %65, %144
  %148 = getelementptr i8, ptr %134, i32 %147
  tail call void @llvm.memset.p0.i32(ptr align 1 %148, i8 0, i32 %144, i1 false) #14
  br label %149

149:                                              ; preds = %146, %76, %56, %37, %35, %32, %15, %13
  %150 = phi ptr [ %131, %146 ], [ %45, %56 ], [ %45, %76 ], [ %45, %13 ], [ %19, %15 ], [ %19, %32 ], [ %19, %35 ], [ %19, %37 ]
  %151 = phi i32 [ -14, %146 ], [ -7, %76 ], [ -514, %56 ], [ 0, %13 ], [ -14, %15 ], [ -14, %32 ], [ -7, %35 ], [ -7, %37 ]
  %152 = icmp eq ptr %150, null
  br i1 %152, label %180, label %153

153:                                              ; preds = %149
  tail call void @flush_dcache_page(ptr noundef nonnull %150) #14
  %154 = load i32, ptr %150, align 4
  %155 = lshr i32 %154, 30
  %156 = icmp eq i32 %155, 2
  br i1 %156, label %162, label %157

157:                                              ; preds = %153
  %158 = icmp ne i32 %155, 3
  %159 = load i32, ptr @movable_zone, align 4
  %160 = icmp ne i32 %159, 2
  %161 = select i1 %158, i1 true, i1 %160
  br i1 %161, label %163, label %162

162:                                              ; preds = %157, %153
  tail call void @kunmap_high(ptr noundef nonnull %150) #14
  br label %163

163:                                              ; preds = %162, %157
  %164 = getelementptr inbounds %struct.page, ptr %150, i32 0, i32 1
  %165 = load volatile i32, ptr %164, align 4
  %166 = and i32 %165, 1
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %170, label %168, !prof !18

168:                                              ; preds = %163
  %169 = add i32 %165, -1
  br label %172

170:                                              ; preds = %163
  %171 = ptrtoint ptr %150 to i32
  br label %172

172:                                              ; preds = %170, %168
  %173 = phi i32 [ %169, %168 ], [ %171, %170 ]
  %174 = inttoptr i32 %173 to ptr
  %175 = getelementptr inbounds %struct.page, ptr %174, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %175) #14, !srcloc !20
  %176 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %175, ptr %175, i32 1, ptr elementtype(i32) %175) #14, !srcloc !21
  %177 = extractvalue { i32, i32 } %176, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %172
  tail call void @__put_page(ptr noundef %174) #14
  br label %180

180:                                              ; preds = %179, %172, %149, %3
  %181 = phi i32 [ %151, %179 ], [ %151, %172 ], [ %151, %149 ], [ 0, %3 ]
  ret i32 %181
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strnlen_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @getname_uflags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_dointvec_minmax_coredump(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = tail call i32 @proc_dointvec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @validate_coredump_safety() #14
  br label %9

9:                                                ; preds = %8, %5
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @validate_coredump_safety() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readnone }

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
!9 = !{i64 2148988164}
!10 = !{i64 1491378}
!11 = !{i64 2148976911}
!12 = !{i64 2148976986, i64 2148977013, i64 2148977060, i64 2148977082, i64 2148977110, i64 2148977130}
!13 = !{i64 2149026133}
!14 = !{i64 2152914914}
!15 = !{i64 2151176172}
!16 = !{i64 2151176379}
!17 = !{i64 2152917539}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2148416086}
!20 = !{i64 814021, i64 2148303992, i64 2148304018, i64 2148304065, i64 2148304087, i64 2148304115, i64 2148304135}
!21 = !{i64 2148318448, i64 2148318480, i64 2148318509, i64 2148318543, i64 2148318574, i64 2148318597}
!22 = !{i64 2148416289}
!23 = !{!"auto-init"}
!24 = !{i64 2148413253}
!25 = !{i64 2148316091, i64 2148316123, i64 2148316152, i64 2148316186, i64 2148316217, i64 2148316240}
!26 = !{i64 2148413456}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 2155322716, i64 2155323190, i64 2155322753, i64 2155322809, i64 2155322843, i64 2155322867, i64 2155322908, i64 2155322929, i64 2155322957, i64 2155322991}
!29 = !{i64 2155320645, i64 2155321119, i64 2155320682, i64 2155320738, i64 2155320772, i64 2155320796, i64 2155320837, i64 2155320858, i64 2155320886, i64 2155320920}
!30 = !{i64 2148428833}
!31 = !{i64 800084, i64 800108, i64 800129, i64 800146, i64 800163}
!32 = !{i64 2148429033}
!33 = !{i64 2148981087}
!34 = !{i64 2149004090}
!35 = !{i64 2154638741}
!36 = !{i64 2154638895}
!37 = !{i64 2151401302}
!38 = !{i64 719944}
!39 = !{i64 2149005231}
!40 = !{i64 2149029781}
!41 = !{i64 2155337750, i64 2155338225, i64 2155337787, i64 2155337843, i64 2155337877, i64 2155337901, i64 2155337942, i64 2155337963, i64 2155337991, i64 2155338025}
!42 = !{i64 2150347490}
!43 = !{i64 2155338781, i64 2155339256, i64 2155338818, i64 2155338874, i64 2155338908, i64 2155338932, i64 2155338973, i64 2155338994, i64 2155339022, i64 2155339056}
!44 = !{i64 2148988969}
!45 = !{i64 1492393, i64 1492416, i64 1492436, i64 1492460, i64 1492476}
!46 = !{i64 2149026572}
!47 = !{i64 2155382564}
!48 = !{i64 825395, i64 825416, i64 825439, i64 825458, i64 825477}
!49 = !{i64 2155382947}
!50 = !{i64 720134}
!51 = !{i64 2155331225, i64 2155331700, i64 2155331262, i64 2155331318, i64 2155331352, i64 2155331376, i64 2155331417, i64 2155331438, i64 2155331466, i64 2155331500}
!52 = !{i64 2155346017}
!53 = !{i64 2149379859}
!54 = !{i64 2149380076}
!55 = !{i64 2148315407, i64 2148315433, i64 2148315462, i64 2148315496, i64 2148315527, i64 2148315550}
!56 = !{i64 2154967909}
!57 = !{i64 2154968089}
!58 = !{i64 2151338242}
!59 = !{i64 719699, i64 719760}
!60 = !{i64 738399}
!61 = !{i64 722716}
!62 = !{i64 2151345859}
!63 = !{i64 2151354324}
!64 = !{i64 2151362635}
!65 = !{i64 2151370853}
!66 = !{i64 3669778}
!67 = !{i64 3669975}
!68 = !{i64 2151155254}
!69 = !{i64 2155295967, i64 2155296247, i64 2155296581, i64 2155296915}
!70 = !{i64 2151173666, i64 2151173691}
