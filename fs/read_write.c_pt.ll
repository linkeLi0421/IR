; ModuleID = '/llk/IR/fs/read_write.c_pt.bc'
source_filename = "../fs/read_write.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_ro_fops:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_ro_fops\22\09\09\09\09\09"
module asm "__kstrtabns_generic_ro_fops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_setpos:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_setpos\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_setpos:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_file_llseek_size:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_file_llseek_size\22\09\09\09\09\09"
module asm "__kstrtabns_generic_file_llseek_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_file_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_file_llseek\22\09\09\09\09\09"
module asm "__kstrtabns_generic_file_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fixed_size_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22fixed_size_llseek\22\09\09\09\09\09"
module asm "__kstrtabns_fixed_size_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_no_seek_end_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22no_seek_end_llseek\22\09\09\09\09\09"
module asm "__kstrtabns_no_seek_end_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_no_seek_end_llseek_size:\09\09\09\09\09"
module asm "\09.asciz \09\22no_seek_end_llseek_size\22\09\09\09\09\09"
module asm "__kstrtabns_no_seek_end_llseek_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_noop_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22noop_llseek\22\09\09\09\09\09"
module asm "__kstrtabns_noop_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_no_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22no_llseek\22\09\09\09\09\09"
module asm "__kstrtabns_no_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_default_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22default_llseek\22\09\09\09\09\09"
module asm "__kstrtabns_default_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_llseek\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_read:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_read\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kernel_write:\09\09\09\09\09"
module asm "\09.asciz \09\22__kernel_write\22\09\09\09\09\09"
module asm "__kstrtabns___kernel_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_write:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_write\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_iocb_iter_read:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_iocb_iter_read\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_iocb_iter_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_iter_read:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_iter_read\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_iter_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_iocb_iter_write:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_iocb_iter_write\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_iocb_iter_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_iter_write:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_iter_write\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_iter_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_copy_file_range:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_copy_file_range\22\09\09\09\09\09"
module asm "__kstrtabns_generic_copy_file_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_copy_file_range:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_copy_file_range\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_copy_file_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_write_checks:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_write_checks\22\09\09\09\09\09"
module asm "__kstrtabns_generic_write_checks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.93, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.94, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.95, ptr, %struct.address_space, %struct.list_head, %union.anon.96, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.93 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.94 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.95 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.96 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.61, %union.anon.62 }
%union.anon.61 = type { ptr }
%union.anon.62 = type { i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.cpumask = type { [1 x i32] }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.io_context = type { %struct.atomic_t, %struct.atomic_t, i16 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.59, %struct.list_head, %struct.list_head, %union.anon.60 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { i64 }
%union.anon.59 = type { %struct.list_head }
%union.anon.60 = type { %struct.hlist_node }
%struct.iovec = type { ptr, i32 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }

@generic_ro_fops = dso_local constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @generic_file_read_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_readonly_mmap, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_generic_ro_fops = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_ro_fops = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_ro_fops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_ro_fops to i32), ptr @__kstrtab_generic_ro_fops, ptr @__kstrtabns_generic_ro_fops }, section "___ksymtab+generic_ro_fops", align 4
@__kstrtab_vfs_setpos = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_setpos = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_setpos = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_setpos to i32), ptr @__kstrtab_vfs_setpos, ptr @__kstrtabns_vfs_setpos }, section "___ksymtab+vfs_setpos", align 4
@__kstrtab_generic_file_llseek_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_file_llseek_size = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_file_llseek_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_file_llseek_size to i32), ptr @__kstrtab_generic_file_llseek_size, ptr @__kstrtabns_generic_file_llseek_size }, section "___ksymtab+generic_file_llseek_size", align 4
@__kstrtab_generic_file_llseek = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_file_llseek = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_file_llseek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_file_llseek to i32), ptr @__kstrtab_generic_file_llseek, ptr @__kstrtabns_generic_file_llseek }, section "___ksymtab+generic_file_llseek", align 4
@__kstrtab_fixed_size_llseek = external dso_local constant [0 x i8], align 1
@__kstrtabns_fixed_size_llseek = external dso_local constant [0 x i8], align 1
@__ksymtab_fixed_size_llseek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fixed_size_llseek to i32), ptr @__kstrtab_fixed_size_llseek, ptr @__kstrtabns_fixed_size_llseek }, section "___ksymtab+fixed_size_llseek", align 4
@__kstrtab_no_seek_end_llseek = external dso_local constant [0 x i8], align 1
@__kstrtabns_no_seek_end_llseek = external dso_local constant [0 x i8], align 1
@__ksymtab_no_seek_end_llseek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @no_seek_end_llseek to i32), ptr @__kstrtab_no_seek_end_llseek, ptr @__kstrtabns_no_seek_end_llseek }, section "___ksymtab+no_seek_end_llseek", align 4
@__kstrtab_no_seek_end_llseek_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_no_seek_end_llseek_size = external dso_local constant [0 x i8], align 1
@__ksymtab_no_seek_end_llseek_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @no_seek_end_llseek_size to i32), ptr @__kstrtab_no_seek_end_llseek_size, ptr @__kstrtabns_no_seek_end_llseek_size }, section "___ksymtab+no_seek_end_llseek_size", align 4
@__kstrtab_noop_llseek = external dso_local constant [0 x i8], align 1
@__kstrtabns_noop_llseek = external dso_local constant [0 x i8], align 1
@__ksymtab_noop_llseek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @noop_llseek to i32), ptr @__kstrtab_noop_llseek, ptr @__kstrtabns_noop_llseek }, section "___ksymtab+noop_llseek", align 4
@__kstrtab_no_llseek = external dso_local constant [0 x i8], align 1
@__kstrtabns_no_llseek = external dso_local constant [0 x i8], align 1
@__ksymtab_no_llseek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @no_llseek to i32), ptr @__kstrtab_no_llseek, ptr @__kstrtabns_no_llseek }, section "___ksymtab+no_llseek", align 4
@__kstrtab_default_llseek = external dso_local constant [0 x i8], align 1
@__kstrtabns_default_llseek = external dso_local constant [0 x i8], align 1
@__ksymtab_default_llseek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @default_llseek to i32), ptr @__kstrtab_default_llseek, ptr @__kstrtabns_default_llseek }, section "___ksymtab+default_llseek", align 4
@__kstrtab_vfs_llseek = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_llseek = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_llseek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_llseek to i32), ptr @__kstrtab_vfs_llseek, ptr @__kstrtabns_vfs_llseek }, section "___ksymtab+vfs_llseek", align 4
@__kernel_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [16 x i8] c"fs/read_write.c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@__kstrtab_kernel_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_read = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_read to i32), ptr @__kstrtab_kernel_read, ptr @__kstrtabns_kernel_read }, section "___ksymtab+kernel_read", align 4
@__kernel_write.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@__kstrtab___kernel_write = external dso_local constant [0 x i8], align 1
@__kstrtabns___kernel_write = external dso_local constant [0 x i8], align 1
@__ksymtab___kernel_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kernel_write to i32), ptr @__kstrtab___kernel_write, ptr @__kstrtabns___kernel_write }, section "___ksymtab_gpl+__kernel_write", align 4
@__kstrtab_kernel_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_write = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_write to i32), ptr @__kstrtab_kernel_write, ptr @__kstrtabns_kernel_write }, section "___ksymtab+kernel_write", align 4
@__kstrtab_vfs_iocb_iter_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_iocb_iter_read = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_iocb_iter_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_iocb_iter_read to i32), ptr @__kstrtab_vfs_iocb_iter_read, ptr @__kstrtabns_vfs_iocb_iter_read }, section "___ksymtab+vfs_iocb_iter_read", align 4
@__kstrtab_vfs_iter_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_iter_read = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_iter_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_iter_read to i32), ptr @__kstrtab_vfs_iter_read, ptr @__kstrtabns_vfs_iter_read }, section "___ksymtab+vfs_iter_read", align 4
@__kstrtab_vfs_iocb_iter_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_iocb_iter_write = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_iocb_iter_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_iocb_iter_write to i32), ptr @__kstrtab_vfs_iocb_iter_write, ptr @__kstrtabns_vfs_iocb_iter_write }, section "___ksymtab+vfs_iocb_iter_write", align 4
@__kstrtab_vfs_iter_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_iter_write = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_iter_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_iter_write to i32), ptr @__kstrtab_vfs_iter_write, ptr @__kstrtabns_vfs_iter_write }, section "___ksymtab+vfs_iter_write", align 4
@__kstrtab_generic_copy_file_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_copy_file_range = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_copy_file_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_copy_file_range to i32), ptr @__kstrtab_generic_copy_file_range, ptr @__kstrtabns_generic_copy_file_range }, section "___ksymtab+generic_copy_file_range", align 4
@vfs_copy_file_range.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_vfs_copy_file_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_copy_file_range = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_copy_file_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_copy_file_range to i32), ptr @__kstrtab_vfs_copy_file_range, ptr @__kstrtabns_vfs_copy_file_range }, section "___ksymtab+vfs_copy_file_range", align 4
@__kstrtab_generic_write_checks = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_write_checks = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_write_checks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_write_checks to i32), ptr @__kstrtab_generic_write_checks, ptr @__kstrtabns_generic_write_checks }, section "___ksymtab+generic_write_checks", align 4
@warn_unsupported._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.warn_unsupported = private unnamed_addr constant [17 x i8] c"warn_unsupported\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"\014kernel %s not supported for file %pD4 (pid: %d comm: %.20s)\0A\00", align 1
@llvm.compiler.used = appending global [21 x ptr] [ptr @__ksymtab___kernel_write, ptr @__ksymtab_default_llseek, ptr @__ksymtab_fixed_size_llseek, ptr @__ksymtab_generic_copy_file_range, ptr @__ksymtab_generic_file_llseek, ptr @__ksymtab_generic_file_llseek_size, ptr @__ksymtab_generic_ro_fops, ptr @__ksymtab_generic_write_checks, ptr @__ksymtab_kernel_read, ptr @__ksymtab_kernel_write, ptr @__ksymtab_no_llseek, ptr @__ksymtab_no_seek_end_llseek, ptr @__ksymtab_no_seek_end_llseek_size, ptr @__ksymtab_noop_llseek, ptr @__ksymtab_vfs_copy_file_range, ptr @__ksymtab_vfs_iocb_iter_read, ptr @__ksymtab_vfs_iocb_iter_write, ptr @__ksymtab_vfs_iter_read, ptr @__ksymtab_vfs_iter_write, ptr @__ksymtab_vfs_llseek, ptr @__ksymtab_vfs_setpos], section "llvm.metadata"

@sys_lseek = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_lseek
@sys_llseek = dso_local alias i32 (i32, i32, i32, ptr, i32), ptr @__se_sys_llseek
@sys_read = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_read
@sys_write = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_write
@sys_pread64 = dso_local alias i32 (i32, ptr, i32, i64), ptr @__se_sys_pread64
@sys_pwrite64 = dso_local alias i32 (i32, ptr, i32, i64), ptr @__se_sys_pwrite64
@sys_readv = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_readv
@sys_writev = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_writev
@sys_preadv = dso_local alias i32 (i32, ptr, i32, i32, i32), ptr @__se_sys_preadv
@sys_preadv2 = dso_local alias i32 (i32, ptr, i32, i32, i32, i32), ptr @__se_sys_preadv2
@sys_pwritev = dso_local alias i32 (i32, ptr, i32, i32, i32), ptr @__se_sys_pwritev
@sys_pwritev2 = dso_local alias i32 (i32, ptr, i32, i32, i32, i32), ptr @__se_sys_pwritev2
@sys_sendfile = dso_local alias i32 (i32, i32, ptr, i32), ptr @__se_sys_sendfile
@sys_sendfile64 = dso_local alias i32 (i32, i32, ptr, i32), ptr @__se_sys_sendfile64
@sys_copy_file_range = dso_local alias i32 (i32, ptr, i32, ptr, i32, i32), ptr @__se_sys_copy_file_range

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @generic_file_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 4
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 22
  %12 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  br label %13

13:                                               ; preds = %21, %3
  %14 = load volatile i32, ptr %11, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %17, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !10
  %18 = load volatile i32, ptr %11, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %17

21:                                               ; preds = %17, %13
  %22 = phi i32 [ %14, %13 ], [ %18, %17 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %23 = load i64, ptr %12, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  %24 = load volatile i32, ptr %11, align 4
  %25 = icmp eq i32 %24, %22
  br i1 %25, label %26, label %13

26:                                               ; preds = %21
  %27 = tail call i64 @generic_file_llseek_size(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %10, i64 noundef %23)
  ret i64 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_readonly_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i64 @vfs_setpos(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) #2 {
  %4 = icmp slt i64 %1, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 8192
  %9 = icmp eq i32 %8, 0
  %10 = icmp sgt i64 %1, %2
  %11 = or i1 %10, %9
  br i1 %11, label %20, label %14

12:                                               ; preds = %3
  %13 = icmp sgt i64 %1, %2
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %5
  %15 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  %16 = load i64, ptr %15, align 8
  %17 = icmp eq i64 %16, %1
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  store i64 %1, ptr %15, align 8
  %19 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 14
  store i64 0, ptr %19, align 8
  br label %20

20:                                               ; preds = %18, %14, %12, %5
  %21 = phi i64 [ -22, %5 ], [ -22, %12 ], [ %1, %18 ], [ %1, %14 ]
  ret i64 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @generic_file_llseek_size(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4) #0 {
  switch i32 %2, label %38 [
    i32 2, label %6
    i32 1, label %8
    i32 3, label %34
    i32 4, label %36
  ]

6:                                                ; preds = %5
  %7 = add i64 %4, %1
  br label %38

8:                                                ; preds = %5
  %9 = icmp eq i64 %1, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  %12 = load i64, ptr %11, align 8
  br label %56

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  %16 = load i64, ptr %15, align 8
  %17 = add i64 %16, %1
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 8192
  %23 = icmp eq i32 %22, 0
  %24 = icmp sgt i64 %17, %3
  %25 = or i1 %24, %23
  br i1 %25, label %30, label %28

26:                                               ; preds = %13
  %27 = icmp sgt i64 %17, %3
  br i1 %27, label %30, label %28

28:                                               ; preds = %26, %19
  store i64 %17, ptr %15, align 8
  %29 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 14
  store i64 0, ptr %29, align 8
  br label %30

30:                                               ; preds = %28, %26, %19
  %31 = phi i64 [ -22, %19 ], [ -22, %26 ], [ %17, %28 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %32 = load i16, ptr %14, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  br label %56

34:                                               ; preds = %5
  %35 = icmp ult i64 %1, %4
  br i1 %35, label %38, label %56

36:                                               ; preds = %5
  %37 = icmp ult i64 %1, %4
  br i1 %37, label %38, label %56

38:                                               ; preds = %36, %34, %6, %5
  %39 = phi i64 [ %1, %5 ], [ %1, %34 ], [ %7, %6 ], [ %4, %36 ]
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 8192
  %45 = icmp eq i32 %44, 0
  %46 = icmp sgt i64 %39, %3
  %47 = or i1 %46, %45
  br i1 %47, label %56, label %50

48:                                               ; preds = %38
  %49 = icmp sgt i64 %39, %3
  br i1 %49, label %56, label %50

50:                                               ; preds = %48, %41
  %51 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  %52 = load i64, ptr %51, align 8
  %53 = icmp eq i64 %52, %39
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  store i64 %39, ptr %51, align 8
  %55 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 14
  store i64 0, ptr %55, align 8
  br label %56

56:                                               ; preds = %54, %50, %48, %41, %36, %34, %30, %10
  %57 = phi i64 [ %12, %10 ], [ %31, %30 ], [ -6, %34 ], [ -6, %36 ], [ -22, %41 ], [ -22, %48 ], [ %39, %54 ], [ %39, %50 ]
  ret i64 %57
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @fixed_size_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = icmp ult i32 %2, 3
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call i64 @generic_file_llseek_size(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %3)
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i64 [ %7, %6 ], [ -22, %4 ]
  ret i64 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @no_seek_end_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = icmp ult i32 %2, 2
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i64 @generic_file_llseek_size(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef 9223372036854775807, i64 noundef 0)
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i64 [ %6, %5 ], [ -22, %3 ]
  ret i64 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @no_seek_end_llseek_size(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = icmp ult i32 %2, 2
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call i64 @generic_file_llseek_size(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef 0)
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i64 [ %7, %6 ], [ -22, %4 ]
  ret i64 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @noop_llseek(ptr nocapture noundef readonly %0, i64 %1, i32 %2) #4 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  %5 = load i64, ptr %4, align 8
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i64 @no_llseek(ptr nocapture readnone %0, i64 %1, i32 %2) #5 {
  ret i64 -29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @default_llseek(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 24
  tail call void @down_write(ptr noundef %6) #13
  switch i32 %2, label %39 [
    i32 2, label %7
    i32 1, label %25
    i32 3, label %31
    i32 4, label %35
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 22
  %9 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 13
  br label %10

10:                                               ; preds = %18, %7
  %11 = load volatile i32, ptr %8, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %14, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !10
  %15 = load volatile i32, ptr %8, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %14

18:                                               ; preds = %14, %10
  %19 = phi i32 [ %11, %10 ], [ %15, %14 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %20 = load i64, ptr %9, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  %21 = load volatile i32, ptr %8, align 4
  %22 = icmp eq i32 %21, %19
  br i1 %22, label %23, label %10

23:                                               ; preds = %18
  %24 = add i64 %20, %1
  br label %39

25:                                               ; preds = %3
  %26 = icmp eq i64 %1, 0
  %27 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  %28 = load i64, ptr %27, align 8
  br i1 %26, label %53, label %29

29:                                               ; preds = %25
  %30 = add i64 %28, %1
  br label %39

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 13
  %33 = load i64, ptr %32, align 8
  %34 = icmp sgt i64 %33, %1
  br i1 %34, label %39, label %53

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 13
  %37 = load i64, ptr %36, align 8
  %38 = icmp sgt i64 %37, %1
  br i1 %38, label %39, label %53

39:                                               ; preds = %35, %31, %29, %23, %3
  %40 = phi i64 [ %1, %3 ], [ %1, %31 ], [ %30, %29 ], [ %24, %23 ], [ %37, %35 ]
  %41 = icmp sgt i64 %40, -1
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 8192
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42, %39
  %48 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  %49 = load i64, ptr %48, align 8
  %50 = icmp eq i64 %40, %49
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  store i64 %40, ptr %48, align 8
  %52 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 14
  store i64 0, ptr %52, align 8
  br label %53

53:                                               ; preds = %51, %47, %42, %35, %31, %25
  %54 = phi i64 [ -22, %42 ], [ -6, %31 ], [ -6, %35 ], [ %40, %51 ], [ %40, %47 ], [ %28, %25 ]
  tail call void @up_write(ptr noundef %6) #13
  ret i64 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @vfs_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.file_operations, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr @no_llseek, ptr %12
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi ptr [ @no_llseek, %3 ], [ %14, %8 ]
  %17 = tail call i64 %16(ptr noundef %0, i64 noundef %1, i32 noundef %2) #13
  ret i64 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @__fdget_pos(i32 noundef %0) #13, !noalias !17
  %5 = and i32 %4, -4
  %6 = inttoptr i32 %5 to ptr
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %39, label %8

8:                                                ; preds = %3
  %9 = icmp ult i32 %2, 5
  br i1 %9, label %10, label %30

10:                                               ; preds = %8
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 8
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.file_operations, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr @no_llseek, ptr %20
  br label %23

23:                                               ; preds = %16, %10
  %24 = phi ptr [ @no_llseek, %10 ], [ %22, %16 ]
  %25 = tail call i64 %24(ptr noundef nonnull %6, i64 noundef %11, i32 noundef %2) #13
  %26 = trunc i64 %25 to i32
  %27 = sext i32 %26 to i64
  %28 = icmp eq i64 %25, %27
  %29 = select i1 %28, i32 %26, i32 -75
  br label %30

30:                                               ; preds = %23, %8
  %31 = phi i32 [ %29, %23 ], [ -22, %8 ]
  %32 = and i32 %4, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @__f_unlock_pos(ptr noundef nonnull %6) #13
  br label %35

35:                                               ; preds = %34, %30
  %36 = and i32 %4, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @fput(ptr noundef nonnull %6) #13
  br label %39

39:                                               ; preds = %38, %35, %3
  %40 = phi i32 [ -9, %3 ], [ %31, %35 ], [ %31, %38 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_llseek(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i64, align 8
  %7 = inttoptr i32 %3 to ptr
  %8 = tail call i32 @__fdget_pos(i32 noundef %0) #13, !noalias !20
  %9 = and i32 %8, -4
  %10 = inttoptr i32 %9 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  store i64 0, ptr %6, align 8, !annotation !23
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %57, label %12

12:                                               ; preds = %5
  %13 = icmp ugt i32 %4, 4
  br i1 %13, label %48, label %14

14:                                               ; preds = %12
  %15 = zext i32 %1 to i64
  %16 = shl nuw i64 %15, 32
  %17 = zext i32 %2 to i64
  %18 = or i64 %16, %17
  %19 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 8
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.file_operations, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, ptr @no_llseek, ptr %27
  br label %30

30:                                               ; preds = %23, %14
  %31 = phi ptr [ @no_llseek, %14 ], [ %29, %23 ]
  %32 = tail call i64 %31(ptr noundef nonnull %10, i64 noundef %18, i32 noundef %4) #13
  store i64 %32, ptr %6, align 8
  %33 = trunc i64 %32 to i32
  %34 = icmp sgt i64 %32, -1
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 8, i32 -1090519040) #14, !srcloc !24
  %37 = extractvalue { i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = tail call ptr @llvm.thread.pointer() #13
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %42 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %41) #11, !srcloc !25
  %43 = and i32 %42, -13
  %44 = or i32 %43, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #13, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !27
  %45 = call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef nonnull %6, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #13, !srcloc !26
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !27
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 0, i32 -14
  br label %48

48:                                               ; preds = %39, %35, %30, %12
  %49 = phi i32 [ -22, %12 ], [ %33, %30 ], [ -14, %35 ], [ %47, %39 ]
  %50 = and i32 %8, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  call void @__f_unlock_pos(ptr noundef nonnull %10) #13
  br label %53

53:                                               ; preds = %52, %48
  %54 = and i32 %8, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  call void @fput(ptr noundef nonnull %10) #13
  br label %57

57:                                               ; preds = %56, %53, %5
  %58 = phi i32 [ -9, %5 ], [ %49, %53 ], [ %49, %56 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  ret i32 %58
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @rw_verify_area(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = icmp slt i32 %3, 0
  br i1 %5, label %31, label %6, !prof !28

6:                                                ; preds = %4
  %7 = icmp eq ptr %2, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %6
  %9 = load i64, ptr %2, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %20, !prof !28

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 8192
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %11
  %17 = zext i32 %3 to i64
  %18 = sub i64 0, %9
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %31, label %29

20:                                               ; preds = %8
  %21 = zext i32 %3 to i64
  %22 = add nuw i64 %9, %21
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %31, !prof !28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 8192
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %16, %11
  %30 = phi i32 [ -22, %24 ], [ -75, %16 ], [ -22, %11 ]
  br label %31

31:                                               ; preds = %29, %24, %20, %16, %6, %4
  %32 = phi i32 [ -22, %4 ], [ %30, %29 ], [ 0, %20 ], [ 0, %24 ], [ 0, %16 ], [ 0, %6 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kernel_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.kvec, align 8
  %6 = alloca %struct.kiocb, align 8
  %7 = alloca %struct.iov_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr %1, ptr %5, align 8
  %8 = getelementptr inbounds %struct.kvec, ptr %5, i32 0, i32 1
  %9 = tail call i32 @llvm.umin.i32(i32 %2, i32 2147479552)
  store i32 %9, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i32 40, i1 false), !annotation !23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !23
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  %14 = load i1, ptr @__kernel_read.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !28

17:                                               ; preds = %4
  store i1 true, ptr @__kernel_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 425, i32 noundef 9, ptr noundef null) #13
  br label %18

18:                                               ; preds = %17, %4
  br i1 %13, label %140, label %19

19:                                               ; preds = %18
  %20 = load i32, ptr %10, align 8
  %21 = and i32 %20, 131072
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %140, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.file_operations, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29, !prof !28

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.file_operations, ptr %25, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33, !prof !29

33:                                               ; preds = %29, %23
  tail call fastcc void @warn_unsupported(ptr noundef %0, ptr noundef nonnull @.str.1)
  br label %140

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 6
  %38 = and i32 %37, 16
  %39 = shl i32 %36, 1
  %40 = and i32 %39, 131072
  %41 = or i32 %40, %38
  %42 = and i32 %36, 4096
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %46 = load ptr, ptr %45, align 8
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 8
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 10
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54, %44, %34
  %60 = or i32 %41, 2
  br label %61

61:                                               ; preds = %59, %54
  %62 = phi i32 [ %60, %59 ], [ %41, %54 ]
  %63 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.inode, ptr %68, i32 0, i32 20
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  br label %72

72:                                               ; preds = %66, %61
  %73 = phi i32 [ %71, %66 ], [ %64, %61 ]
  %74 = tail call ptr @llvm.thread.pointer() #13
  %75 = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 118
  %76 = load ptr, ptr %75, align 32
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.io_context, ptr %76, i32 0, i32 2
  %80 = load i16, ptr %79, align 4
  br label %81

81:                                               ; preds = %78, %72
  %82 = phi i16 [ %80, %78 ], [ 16388, %72 ]
  %83 = tail call i32 @llvm.umin.i32(i32 %73, i32 65536) #13
  %84 = trunc i32 %83 to i16
  %85 = lshr i32 %36, 18
  %86 = and i32 %85, 4
  %87 = or i32 %62, %86
  store ptr %0, ptr %6, align 8
  %88 = getelementptr inbounds i8, ptr %6, i32 8
  %89 = getelementptr inbounds i8, ptr %6, i32 24
  %90 = getelementptr inbounds i8, ptr %6, i32 16
  store i64 0, ptr %90, align 8
  store i32 %87, ptr %89, align 8
  %91 = getelementptr inbounds i8, ptr %6, i32 28
  store i16 %84, ptr %91, align 4
  %92 = getelementptr inbounds i8, ptr %6, i32 30
  store i16 %82, ptr %92, align 2
  %93 = getelementptr inbounds i8, ptr %6, i32 32
  store ptr null, ptr %93, align 8
  %94 = icmp eq ptr %3, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %81
  %96 = load i64, ptr %3, align 8
  br label %97

97:                                               ; preds = %95, %81
  %98 = phi i64 [ %96, %95 ], [ 0, %81 ]
  store i64 %98, ptr %88, align 8
  call void @iov_iter_kvec(ptr noundef nonnull %7, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 1, i32 noundef %9) #13
  %99 = load ptr, ptr %24, align 4
  %100 = getelementptr inbounds %struct.file_operations, ptr %99, i32 0, i32 4
  %101 = load ptr, ptr %100, align 4
  %102 = call i32 %101(ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %140

104:                                              ; preds = %97
  br i1 %94, label %107, label %105

105:                                              ; preds = %104
  %106 = load i64, ptr %88, align 8
  store i64 %106, ptr %3, align 8
  br label %107

107:                                              ; preds = %105, %104
  %108 = load i32, ptr %10, align 8
  %109 = and i32 %108, 67108864
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %140

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %113 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.dentry, ptr %114, i32 0, i32 5
  %116 = load ptr, ptr %115, align 8
  %117 = getelementptr inbounds %struct.inode, ptr %116, i32 0, i32 8
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.super_block, ptr %118, i32 0, i32 42
  %120 = load volatile i32, ptr %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %140, label %122

122:                                              ; preds = %111
  %123 = load i16, ptr %116, align 8
  %124 = and i16 %123, -4096
  %125 = icmp eq i16 %124, 16384
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, ptr %114, align 8
  %128 = and i32 %127, 16384
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %126, %122
  %131 = phi i32 [ 1073741825, %126 ], [ 1, %122 ]
  %132 = getelementptr inbounds %struct.dentry, ptr %114, i32 0, i32 3
  %133 = load ptr, ptr %132, align 8
  %134 = icmp eq ptr %133, %114
  br i1 %134, label %137, label %135

135:                                              ; preds = %130
  %136 = call i32 @__fsnotify_parent(ptr noundef %114, i32 noundef %131, ptr noundef %112, i32 noundef 1) #13
  br label %140

137:                                              ; preds = %130, %126
  %138 = phi i32 [ %131, %130 ], [ 1073741825, %126 ]
  %139 = call i32 @fsnotify(i32 noundef %138, ptr noundef %112, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %116, i32 noundef 0) #13
  br label %140

140:                                              ; preds = %137, %135, %111, %107, %97, %33, %19, %18
  %141 = phi i32 [ -22, %33 ], [ -22, %18 ], [ -22, %19 ], [ %102, %137 ], [ %102, %135 ], [ %102, %111 ], [ %102, %107 ], [ %102, %97 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret i32 %141
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @warn_unsupported(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @___ratelimit(ptr noundef nonnull @warn_unsupported._rs, ptr noundef nonnull @__func__.warn_unsupported) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #13
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 52
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 85
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef %0, i32 noundef %8, ptr noundef %9) #15
  br label %11

11:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = icmp slt i32 %2, 0
  br i1 %5, label %31, label %6, !prof !28

6:                                                ; preds = %4
  %7 = icmp eq ptr %3, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %6
  %9 = load i64, ptr %3, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %20, !prof !28

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 8192
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = zext i32 %2 to i64
  %18 = sub i64 0, %9
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %29, label %31

20:                                               ; preds = %8
  %21 = zext i32 %2 to i64
  %22 = add nuw i64 %9, %21
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %29, !prof !28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 8192
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24, %20, %16, %6
  %30 = tail call i32 @__kernel_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %31

31:                                               ; preds = %29, %24, %16, %11, %4
  %32 = phi i32 [ %30, %29 ], [ -22, %4 ], [ -22, %24 ], [ -75, %16 ], [ -22, %11 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.iovec, align 8
  %6 = alloca %struct.kiocb, align 8
  %7 = alloca %struct.iov_iter, align 8
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %164, label %12

12:                                               ; preds = %4
  %13 = and i32 %9, 131072
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %164, label %15

15:                                               ; preds = %12
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #14, !srcloc !30
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %164, !prof !29

19:                                               ; preds = %15
  %20 = icmp slt i32 %2, 0
  br i1 %20, label %164, label %21, !prof !28

21:                                               ; preds = %19
  %22 = icmp eq ptr %3, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %21
  %24 = load i64, ptr %3, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %33, !prof !28

26:                                               ; preds = %23
  %27 = and i32 %9, 8192
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %164, label %29

29:                                               ; preds = %26
  %30 = zext i32 %2 to i64
  %31 = sub i64 0, %24
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %40, label %164

33:                                               ; preds = %23
  %34 = zext i32 %2 to i64
  %35 = add nuw i64 %24, %34
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40, !prof !28

37:                                               ; preds = %33
  %38 = and i32 %9, 8192
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %164, label %40

40:                                               ; preds = %37, %33, %29, %21
  %41 = tail call i32 @llvm.umin.i32(i32 %2, i32 2147479552)
  %42 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.file_operations, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = tail call i32 %45(ptr noundef %0, ptr noundef %1, i32 noundef %41, ptr noundef %3) #13
  br label %128

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.file_operations, ptr %43, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %164, label %53

53:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr %1, ptr %5, align 8
  %54 = getelementptr inbounds %struct.iovec, ptr %5, i32 0, i32 1
  store i32 %41, ptr %54, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i32 40, i1 false) #13, !annotation !23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i32 24, i1 false) #13, !annotation !23
  %55 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %56 = load i32, ptr %55, align 4
  %57 = lshr i32 %56, 6
  %58 = and i32 %57, 16
  %59 = shl i32 %56, 1
  %60 = and i32 %59, 131072
  %61 = or i32 %60, %58
  %62 = and i32 %56, 4096
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %66 = load ptr, ptr %65, align 8
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.inode, ptr %67, i32 0, i32 8
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.super_block, ptr %69, i32 0, i32 10
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.inode, ptr %67, i32 0, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %74, %64, %53
  %80 = or i32 %61, 2
  br label %81

81:                                               ; preds = %79, %74
  %82 = phi i32 [ %80, %79 ], [ %61, %74 ]
  %83 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.inode, ptr %88, i32 0, i32 20
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  br label %92

92:                                               ; preds = %86, %81
  %93 = phi i32 [ %91, %86 ], [ %84, %81 ]
  %94 = tail call ptr @llvm.thread.pointer() #13
  %95 = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 118
  %96 = load ptr, ptr %95, align 32
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.io_context, ptr %96, i32 0, i32 2
  %100 = load i16, ptr %99, align 4
  br label %101

101:                                              ; preds = %98, %92
  %102 = phi i16 [ %100, %98 ], [ 16388, %92 ]
  %103 = tail call i32 @llvm.umin.i32(i32 %93, i32 65536) #13
  %104 = trunc i32 %103 to i16
  %105 = lshr i32 %56, 18
  %106 = and i32 %105, 4
  %107 = or i32 %82, %106
  store ptr %0, ptr %6, align 8
  %108 = getelementptr inbounds i8, ptr %6, i32 8
  %109 = getelementptr inbounds i8, ptr %6, i32 24
  %110 = getelementptr inbounds i8, ptr %6, i32 16
  store i64 0, ptr %110, align 8
  store i32 %107, ptr %109, align 8
  %111 = getelementptr inbounds i8, ptr %6, i32 28
  store i16 %104, ptr %111, align 4
  %112 = getelementptr inbounds i8, ptr %6, i32 30
  store i16 %102, ptr %112, align 2
  %113 = getelementptr inbounds i8, ptr %6, i32 32
  store ptr null, ptr %113, align 8
  br i1 %22, label %116, label %114

114:                                              ; preds = %101
  %115 = load i64, ptr %3, align 8
  br label %116

116:                                              ; preds = %114, %101
  %117 = phi i64 [ %115, %114 ], [ 0, %101 ]
  store i64 %117, ptr %108, align 8
  call void @iov_iter_init(ptr noundef nonnull %7, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 1, i32 noundef %41) #13
  %118 = load ptr, ptr %42, align 4
  %119 = getelementptr inbounds %struct.file_operations, ptr %118, i32 0, i32 4
  %120 = load ptr, ptr %119, align 4
  %121 = call i32 %120(ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %122 = icmp eq i32 %121, -529
  br i1 %122, label %123, label %124, !prof !28

123:                                              ; preds = %116
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/read_write.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 401, 0\0A.popsection", ""() #13, !srcloc !31
  unreachable

124:                                              ; preds = %116
  br i1 %22, label %127, label %125

125:                                              ; preds = %124
  %126 = load i64, ptr %108, align 8
  store i64 %126, ptr %3, align 8
  br label %127

127:                                              ; preds = %125, %124
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  br label %128

128:                                              ; preds = %127, %47
  %129 = phi i32 [ %48, %47 ], [ %121, %127 ]
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %164

131:                                              ; preds = %128
  %132 = load i32, ptr %8, align 8
  %133 = and i32 %132, 67108864
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %164

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %137 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.dentry, ptr %138, i32 0, i32 5
  %140 = load ptr, ptr %139, align 8
  %141 = getelementptr inbounds %struct.inode, ptr %140, i32 0, i32 8
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.super_block, ptr %142, i32 0, i32 42
  %144 = load volatile i32, ptr %143, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %164, label %146

146:                                              ; preds = %135
  %147 = load i16, ptr %140, align 8
  %148 = and i16 %147, -4096
  %149 = icmp eq i16 %148, 16384
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load i32, ptr %138, align 8
  %152 = and i32 %151, 16384
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %150, %146
  %155 = phi i32 [ 1073741825, %150 ], [ 1, %146 ]
  %156 = getelementptr inbounds %struct.dentry, ptr %138, i32 0, i32 3
  %157 = load ptr, ptr %156, align 8
  %158 = icmp eq ptr %157, %138
  br i1 %158, label %161, label %159

159:                                              ; preds = %154
  %160 = call i32 @__fsnotify_parent(ptr noundef %138, i32 noundef %155, ptr noundef %136, i32 noundef 1) #13
  br label %164

161:                                              ; preds = %154, %150
  %162 = phi i32 [ %155, %154 ], [ 1073741825, %150 ]
  %163 = call i32 @fsnotify(i32 noundef %162, ptr noundef %136, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %140, i32 noundef 0) #13
  br label %164

164:                                              ; preds = %161, %159, %135, %131, %128, %49, %37, %29, %26, %19, %15, %12, %4
  %165 = phi i32 [ -9, %4 ], [ -22, %12 ], [ -14, %15 ], [ -22, %19 ], [ %129, %128 ], [ %129, %131 ], [ %129, %135 ], [ %129, %159 ], [ %129, %161 ], [ -22, %37 ], [ -75, %29 ], [ -22, %26 ], [ -22, %49 ]
  ret i32 %165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kernel_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.kvec, align 8
  %6 = alloca %struct.kiocb, align 8
  %7 = alloca %struct.iov_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr %1, ptr %5, align 8
  %8 = getelementptr inbounds %struct.kvec, ptr %5, i32 0, i32 1
  %9 = tail call i32 @llvm.umin.i32(i32 %2, i32 2147479552)
  store i32 %9, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i32 40, i1 false), !annotation !23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !23
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  %14 = load i1, ptr @__kernel_write.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !28

17:                                               ; preds = %4
  store i1 true, ptr @__kernel_write.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 521, i32 noundef 9, ptr noundef null) #13
  br label %18

18:                                               ; preds = %17, %4
  br i1 %13, label %140, label %19

19:                                               ; preds = %18
  %20 = load i32, ptr %10, align 8
  %21 = and i32 %20, 262144
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %140, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.file_operations, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29, !prof !28

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.file_operations, ptr %25, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33, !prof !29

33:                                               ; preds = %29, %23
  tail call fastcc void @warn_unsupported(ptr noundef %0, ptr noundef nonnull @.str.2)
  br label %140

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 6
  %38 = and i32 %37, 16
  %39 = shl i32 %36, 1
  %40 = and i32 %39, 131072
  %41 = or i32 %40, %38
  %42 = and i32 %36, 4096
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %46 = load ptr, ptr %45, align 8
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 8
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 10
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54, %44, %34
  %60 = or i32 %41, 2
  br label %61

61:                                               ; preds = %59, %54
  %62 = phi i32 [ %60, %59 ], [ %41, %54 ]
  %63 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.inode, ptr %68, i32 0, i32 20
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  br label %72

72:                                               ; preds = %66, %61
  %73 = phi i32 [ %71, %66 ], [ %64, %61 ]
  %74 = tail call ptr @llvm.thread.pointer() #13
  %75 = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 118
  %76 = load ptr, ptr %75, align 32
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.io_context, ptr %76, i32 0, i32 2
  %80 = load i16, ptr %79, align 4
  br label %81

81:                                               ; preds = %78, %72
  %82 = phi i16 [ %80, %78 ], [ 16388, %72 ]
  %83 = tail call i32 @llvm.umin.i32(i32 %73, i32 65536) #13
  %84 = trunc i32 %83 to i16
  %85 = lshr i32 %36, 18
  %86 = and i32 %85, 4
  %87 = or i32 %62, %86
  store ptr %0, ptr %6, align 8
  %88 = getelementptr inbounds i8, ptr %6, i32 8
  %89 = getelementptr inbounds i8, ptr %6, i32 24
  %90 = getelementptr inbounds i8, ptr %6, i32 16
  store i64 0, ptr %90, align 8
  store i32 %87, ptr %89, align 8
  %91 = getelementptr inbounds i8, ptr %6, i32 28
  store i16 %84, ptr %91, align 4
  %92 = getelementptr inbounds i8, ptr %6, i32 30
  store i16 %82, ptr %92, align 2
  %93 = getelementptr inbounds i8, ptr %6, i32 32
  store ptr null, ptr %93, align 8
  %94 = icmp eq ptr %3, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %81
  %96 = load i64, ptr %3, align 8
  br label %97

97:                                               ; preds = %95, %81
  %98 = phi i64 [ %96, %95 ], [ 0, %81 ]
  store i64 %98, ptr %88, align 8
  call void @iov_iter_kvec(ptr noundef nonnull %7, i32 noundef 1, ptr noundef nonnull %5, i32 noundef 1, i32 noundef %9) #13
  %99 = load ptr, ptr %24, align 4
  %100 = getelementptr inbounds %struct.file_operations, ptr %99, i32 0, i32 5
  %101 = load ptr, ptr %100, align 4
  %102 = call i32 %101(ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %140

104:                                              ; preds = %97
  br i1 %94, label %107, label %105

105:                                              ; preds = %104
  %106 = load i64, ptr %88, align 8
  store i64 %106, ptr %3, align 8
  br label %107

107:                                              ; preds = %105, %104
  %108 = load i32, ptr %10, align 8
  %109 = and i32 %108, 67108864
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %140

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %113 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.dentry, ptr %114, i32 0, i32 5
  %116 = load ptr, ptr %115, align 8
  %117 = getelementptr inbounds %struct.inode, ptr %116, i32 0, i32 8
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.super_block, ptr %118, i32 0, i32 42
  %120 = load volatile i32, ptr %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %140, label %122

122:                                              ; preds = %111
  %123 = load i16, ptr %116, align 8
  %124 = and i16 %123, -4096
  %125 = icmp eq i16 %124, 16384
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, ptr %114, align 8
  %128 = and i32 %127, 16384
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %126, %122
  %131 = phi i32 [ 1073741826, %126 ], [ 2, %122 ]
  %132 = getelementptr inbounds %struct.dentry, ptr %114, i32 0, i32 3
  %133 = load ptr, ptr %132, align 8
  %134 = icmp eq ptr %133, %114
  br i1 %134, label %137, label %135

135:                                              ; preds = %130
  %136 = call i32 @__fsnotify_parent(ptr noundef %114, i32 noundef %131, ptr noundef %112, i32 noundef 1) #13
  br label %140

137:                                              ; preds = %130, %126
  %138 = phi i32 [ %131, %130 ], [ 1073741826, %126 ]
  %139 = call i32 @fsnotify(i32 noundef %138, ptr noundef %112, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %116, i32 noundef 0) #13
  br label %140

140:                                              ; preds = %137, %135, %111, %107, %97, %33, %19, %18
  %141 = phi i32 [ -22, %33 ], [ -9, %18 ], [ -22, %19 ], [ %102, %137 ], [ %102, %135 ], [ %102, %111 ], [ %102, %107 ], [ %102, %97 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = icmp slt i32 %2, 0
  br i1 %5, label %95, label %6, !prof !28

6:                                                ; preds = %4
  %7 = icmp eq ptr %3, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %6
  %9 = load i64, ptr %3, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %20, !prof !28

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 8192
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %95, label %16

16:                                               ; preds = %11
  %17 = zext i32 %2 to i64
  %18 = sub i64 0, %9
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %29, label %95

20:                                               ; preds = %8
  %21 = zext i32 %2 to i64
  %22 = add nuw i64 %9, %21
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %29, !prof !28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 8192
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %95, label %29

29:                                               ; preds = %24, %20, %16, %6
  %30 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = load i16, ptr %31, align 8
  %33 = and i16 %32, -4096
  %34 = icmp eq i16 %33, -32768
  br i1 %34, label %35, label %56

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr %struct.super_block, ptr %37, i32 0, i32 26, i32 2
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %39 = load volatile i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %53, !prof !29

41:                                               ; preds = %35
  %42 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %43 = getelementptr %struct.super_block, ptr %37, i32 0, i32 26, i32 2, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = ptrtoint ptr %44 to i32
  %46 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %47 = inttoptr i32 %46 to ptr
  %48 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %47) #11, !srcloc !34
  %49 = add i32 %48, %45
  %50 = inttoptr i32 %49 to ptr
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %42) #13, !srcloc !35
  br label %55

53:                                               ; preds = %35
  %54 = tail call zeroext i1 @__percpu_down_read(ptr noundef %38, i1 noundef zeroext false) #13
  br label %55

55:                                               ; preds = %53, %41
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !36
  br label %56

56:                                               ; preds = %55, %29
  %57 = tail call i32 @__kernel_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  %58 = load ptr, ptr %30, align 8
  %59 = load i16, ptr %58, align 8
  %60 = and i16 %59, -4096
  %61 = icmp eq i16 %60, -32768
  br i1 %61, label %62, label %95

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.inode, ptr %58, i32 0, i32 8
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr %struct.super_block, ptr %64, i32 0, i32 26, i32 2
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  %66 = load volatile i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %80, !prof !29

68:                                               ; preds = %62
  %69 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %70 = getelementptr %struct.super_block, ptr %64, i32 0, i32 26, i32 2, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = ptrtoint ptr %71 to i32
  %73 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %74 = inttoptr i32 %73 to ptr
  %75 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %74) #11, !srcloc !34
  %76 = add i32 %75, %72
  %77 = inttoptr i32 %76 to ptr
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, -1
  store i32 %79, ptr %77, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %69) #13, !srcloc !35
  br label %94

80:                                               ; preds = %62
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !38
  %81 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %82 = getelementptr %struct.super_block, ptr %64, i32 0, i32 26, i32 2, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = ptrtoint ptr %83 to i32
  %85 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %86 = inttoptr i32 %85 to ptr
  %87 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %86) #11, !srcloc !34
  %88 = add i32 %87, %84
  %89 = inttoptr i32 %88 to ptr
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, -1
  store i32 %91, ptr %89, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %81) #13, !srcloc !35
  %92 = getelementptr %struct.super_block, ptr %64, i32 0, i32 26, i32 2, i32 0, i32 2
  %93 = tail call i32 @rcuwait_wake_up(ptr noundef %92) #13
  br label %94

94:                                               ; preds = %80, %68
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !39
  br label %95

95:                                               ; preds = %94, %56, %24, %16, %11, %4
  %96 = phi i32 [ -22, %4 ], [ %57, %56 ], [ %57, %94 ], [ -22, %24 ], [ -75, %16 ], [ -22, %11 ]
  ret i32 %96
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @file_start_write(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, -4096
  %6 = icmp eq i16 %5, -32768
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.super_block, ptr %9, i32 0, i32 26, i32 2
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25, !prof !29

13:                                               ; preds = %7
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %15 = getelementptr %struct.super_block, ptr %9, i32 0, i32 26, i32 2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #11, !srcloc !34
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #13, !srcloc !35
  br label %27

25:                                               ; preds = %7
  %26 = tail call zeroext i1 @__percpu_down_read(ptr noundef %10, i1 noundef zeroext false) #13
  br label %27

27:                                               ; preds = %25, %13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !36
  br label %28

28:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @file_end_write(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, -4096
  %6 = icmp eq i16 %5, -32768
  br i1 %6, label %7, label %40

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.super_block, ptr %9, i32 0, i32 26, i32 2
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25, !prof !29

13:                                               ; preds = %7
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %15 = getelementptr %struct.super_block, ptr %9, i32 0, i32 26, i32 2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #11, !srcloc !34
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, -1
  store i32 %24, ptr %22, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #13, !srcloc !35
  br label %39

25:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !38
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %27 = getelementptr %struct.super_block, ptr %9, i32 0, i32 26, i32 2, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %31 = inttoptr i32 %30 to ptr
  %32 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %31) #11, !srcloc !34
  %33 = add i32 %32, %29
  %34 = inttoptr i32 %33 to ptr
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr %34, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #13, !srcloc !35
  %37 = getelementptr %struct.super_block, ptr %9, i32 0, i32 26, i32 2, i32 0, i32 2
  %38 = tail call i32 @rcuwait_wake_up(ptr noundef %37) #13
  br label %39

39:                                               ; preds = %25, %13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !39
  br label %40

40:                                               ; preds = %39, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.iovec, align 8
  %6 = alloca %struct.kiocb, align 8
  %7 = alloca %struct.iov_iter, align 8
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %232, label %12

12:                                               ; preds = %4
  %13 = and i32 %9, 262144
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %232, label %15

15:                                               ; preds = %12
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #14, !srcloc !40
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %232, !prof !29

19:                                               ; preds = %15
  %20 = icmp slt i32 %2, 0
  br i1 %20, label %232, label %21, !prof !28

21:                                               ; preds = %19
  %22 = icmp eq ptr %3, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %21
  %24 = load i64, ptr %3, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %33, !prof !28

26:                                               ; preds = %23
  %27 = and i32 %9, 8192
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %232, label %29

29:                                               ; preds = %26
  %30 = zext i32 %2 to i64
  %31 = sub i64 0, %24
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %40, label %232

33:                                               ; preds = %23
  %34 = zext i32 %2 to i64
  %35 = add nuw i64 %24, %34
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40, !prof !28

37:                                               ; preds = %33
  %38 = and i32 %9, 8192
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %232, label %40

40:                                               ; preds = %37, %33, %29, %21
  %41 = tail call i32 @llvm.umin.i32(i32 %2, i32 2147479552)
  %42 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  %44 = load i16, ptr %43, align 8
  %45 = and i16 %44, -4096
  %46 = icmp eq i16 %45, -32768
  br i1 %46, label %47, label %68

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.inode, ptr %43, i32 0, i32 8
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr %struct.super_block, ptr %49, i32 0, i32 26, i32 2
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %51 = load volatile i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %65, !prof !29

53:                                               ; preds = %47
  %54 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %55 = getelementptr %struct.super_block, ptr %49, i32 0, i32 26, i32 2, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = ptrtoint ptr %56 to i32
  %58 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %59 = inttoptr i32 %58 to ptr
  %60 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %59) #11, !srcloc !34
  %61 = add i32 %60, %57
  %62 = inttoptr i32 %61 to ptr
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %54) #13, !srcloc !35
  br label %67

65:                                               ; preds = %47
  %66 = tail call zeroext i1 @__percpu_down_read(ptr noundef %50, i1 noundef zeroext false) #13
  br label %67

67:                                               ; preds = %65, %53
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !36
  br label %68

68:                                               ; preds = %67, %40
  %69 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.file_operations, ptr %70, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  %75 = tail call i32 %72(ptr noundef %0, ptr noundef %1, i32 noundef %41, ptr noundef %3) #13
  br label %157

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.file_operations, ptr %70, i32 0, i32 5
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %193, label %80

80:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr %1, ptr %5, align 8
  %81 = getelementptr inbounds %struct.iovec, ptr %5, i32 0, i32 1
  store i32 %41, ptr %81, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i32 40, i1 false) #13, !annotation !23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i32 24, i1 false) #13, !annotation !23
  %82 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %83 = load i32, ptr %82, align 4
  %84 = lshr i32 %83, 6
  %85 = and i32 %84, 16
  %86 = shl i32 %83, 1
  %87 = and i32 %86, 131072
  %88 = or i32 %87, %85
  %89 = and i32 %83, 4096
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %93 = load ptr, ptr %92, align 8
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.inode, ptr %94, i32 0, i32 8
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.super_block, ptr %96, i32 0, i32 10
  %98 = load i32, ptr %97, align 4
  %99 = and i32 %98, 16
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.inode, ptr %94, i32 0, i32 4
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %101, %91, %80
  %107 = or i32 %88, 2
  br label %108

108:                                              ; preds = %106, %101
  %109 = phi i32 [ %107, %106 ], [ %88, %101 ]
  %110 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 5
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load ptr, ptr %42, align 8
  %115 = getelementptr inbounds %struct.inode, ptr %114, i32 0, i32 20
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  br label %118

118:                                              ; preds = %113, %108
  %119 = phi i32 [ %117, %113 ], [ %111, %108 ]
  %120 = tail call ptr @llvm.thread.pointer() #13
  %121 = getelementptr inbounds %struct.task_struct, ptr %120, i32 0, i32 118
  %122 = load ptr, ptr %121, align 32
  %123 = icmp eq ptr %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.io_context, ptr %122, i32 0, i32 2
  %126 = load i16, ptr %125, align 4
  br label %127

127:                                              ; preds = %124, %118
  %128 = phi i16 [ %126, %124 ], [ 16388, %118 ]
  %129 = tail call i32 @llvm.umin.i32(i32 %119, i32 65536) #13
  %130 = trunc i32 %129 to i16
  %131 = lshr i32 %83, 18
  %132 = and i32 %131, 4
  %133 = or i32 %109, %132
  store ptr %0, ptr %6, align 8
  %134 = getelementptr inbounds i8, ptr %6, i32 8
  %135 = getelementptr inbounds i8, ptr %6, i32 24
  %136 = getelementptr inbounds i8, ptr %6, i32 16
  store i64 0, ptr %136, align 8
  store i32 %133, ptr %135, align 8
  %137 = getelementptr inbounds i8, ptr %6, i32 28
  store i16 %130, ptr %137, align 4
  %138 = getelementptr inbounds i8, ptr %6, i32 30
  store i16 %128, ptr %138, align 2
  %139 = getelementptr inbounds i8, ptr %6, i32 32
  store ptr null, ptr %139, align 8
  %140 = icmp ne ptr %3, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %127
  %142 = load i64, ptr %3, align 8
  br label %143

143:                                              ; preds = %141, %127
  %144 = phi i64 [ %142, %141 ], [ 0, %127 ]
  store i64 %144, ptr %134, align 8
  call void @iov_iter_init(ptr noundef nonnull %7, i32 noundef 1, ptr noundef nonnull %5, i32 noundef 1, i32 noundef %41) #13
  %145 = load ptr, ptr %69, align 4
  %146 = getelementptr inbounds %struct.file_operations, ptr %145, i32 0, i32 5
  %147 = load ptr, ptr %146, align 4
  %148 = call i32 %147(ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %149 = icmp eq i32 %148, -529
  br i1 %149, label %150, label %151, !prof !28

150:                                              ; preds = %143
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/read_write.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 504, 0\0A.popsection", ""() #13, !srcloc !41
  unreachable

151:                                              ; preds = %143
  %152 = icmp sgt i32 %148, 0
  %153 = and i1 %140, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i64, ptr %134, align 8
  store i64 %155, ptr %3, align 8
  br label %156

156:                                              ; preds = %154, %151
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  br label %157

157:                                              ; preds = %156, %74
  %158 = phi i32 [ %75, %74 ], [ %148, %156 ]
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %193

160:                                              ; preds = %157
  %161 = load i32, ptr %8, align 8
  %162 = and i32 %161, 67108864
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %193

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %166 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.dentry, ptr %167, i32 0, i32 5
  %169 = load ptr, ptr %168, align 8
  %170 = getelementptr inbounds %struct.inode, ptr %169, i32 0, i32 8
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.super_block, ptr %171, i32 0, i32 42
  %173 = load volatile i32, ptr %172, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %193, label %175

175:                                              ; preds = %164
  %176 = load i16, ptr %169, align 8
  %177 = and i16 %176, -4096
  %178 = icmp eq i16 %177, 16384
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  %180 = load i32, ptr %167, align 8
  %181 = and i32 %180, 16384
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %179, %175
  %184 = phi i32 [ 1073741826, %179 ], [ 2, %175 ]
  %185 = getelementptr inbounds %struct.dentry, ptr %167, i32 0, i32 3
  %186 = load ptr, ptr %185, align 8
  %187 = icmp eq ptr %186, %167
  br i1 %187, label %190, label %188

188:                                              ; preds = %183
  %189 = call i32 @__fsnotify_parent(ptr noundef %167, i32 noundef %184, ptr noundef %165, i32 noundef 1) #13
  br label %193

190:                                              ; preds = %183, %179
  %191 = phi i32 [ %184, %183 ], [ 1073741826, %179 ]
  %192 = call i32 @fsnotify(i32 noundef %191, ptr noundef %165, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %169, i32 noundef 0) #13
  br label %193

193:                                              ; preds = %190, %188, %164, %160, %157, %76
  %194 = phi i32 [ %158, %157 ], [ %158, %160 ], [ %158, %164 ], [ %158, %188 ], [ %158, %190 ], [ -22, %76 ]
  %195 = load ptr, ptr %42, align 8
  %196 = load i16, ptr %195, align 8
  %197 = and i16 %196, -4096
  %198 = icmp eq i16 %197, -32768
  br i1 %198, label %199, label %232

199:                                              ; preds = %193
  %200 = getelementptr inbounds %struct.inode, ptr %195, i32 0, i32 8
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr %struct.super_block, ptr %201, i32 0, i32 26, i32 2
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  %203 = load volatile i32, ptr %202, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %217, !prof !29

205:                                              ; preds = %199
  %206 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %207 = getelementptr %struct.super_block, ptr %201, i32 0, i32 26, i32 2, i32 0, i32 1
  %208 = load ptr, ptr %207, align 4
  %209 = ptrtoint ptr %208 to i32
  %210 = call i32 @llvm.read_register.i32(metadata !0) #13
  %211 = inttoptr i32 %210 to ptr
  %212 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %211) #11, !srcloc !34
  %213 = add i32 %212, %209
  %214 = inttoptr i32 %213 to ptr
  %215 = load i32, ptr %214, align 4
  %216 = add i32 %215, -1
  store i32 %216, ptr %214, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %206) #13, !srcloc !35
  br label %231

217:                                              ; preds = %199
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !38
  %218 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %219 = getelementptr %struct.super_block, ptr %201, i32 0, i32 26, i32 2, i32 0, i32 1
  %220 = load ptr, ptr %219, align 4
  %221 = ptrtoint ptr %220 to i32
  %222 = call i32 @llvm.read_register.i32(metadata !0) #13
  %223 = inttoptr i32 %222 to ptr
  %224 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %223) #11, !srcloc !34
  %225 = add i32 %224, %221
  %226 = inttoptr i32 %225 to ptr
  %227 = load i32, ptr %226, align 4
  %228 = add i32 %227, -1
  store i32 %228, ptr %226, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %218) #13, !srcloc !35
  %229 = getelementptr %struct.super_block, ptr %201, i32 0, i32 26, i32 2, i32 0, i32 2
  %230 = call i32 @rcuwait_wake_up(ptr noundef %229) #13
  br label %231

231:                                              ; preds = %217, %205
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !39
  br label %232

232:                                              ; preds = %231, %193, %37, %29, %26, %19, %15, %12, %4
  %233 = phi i32 [ -9, %4 ], [ -22, %12 ], [ -14, %15 ], [ -22, %19 ], [ %194, %193 ], [ %194, %231 ], [ -22, %37 ], [ -75, %29 ], [ -22, %26 ]
  ret i32 %233
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksys_read(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = tail call i32 @__fdget_pos(i32 noundef %0) #13, !noalias !42
  %6 = and i32 %5, -4
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store i64 0, ptr %4, align 8, !annotation !23
  %10 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 2097152
  %13 = icmp ne i32 %12, 0
  %14 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 10
  %15 = icmp eq ptr %14, null
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %9
  %18 = load i64, ptr %14, align 8
  store i64 %18, ptr %4, align 8
  br label %19

19:                                               ; preds = %17, %9
  %20 = phi ptr [ %4, %17 ], [ null, %9 ]
  %21 = call i32 @vfs_read(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %2, ptr noundef %20)
  %22 = icmp sgt i32 %21, -1
  %23 = icmp ne ptr %20, null
  %24 = and i1 %23, %22
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i64, ptr %4, align 8
  store i64 %26, ptr %14, align 8
  br label %27

27:                                               ; preds = %25, %19
  %28 = and i32 %5, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  call void @__f_unlock_pos(ptr noundef nonnull %7) #13
  br label %31

31:                                               ; preds = %30, %27
  %32 = and i32 %5, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  call void @fput(ptr noundef nonnull %7) #13
  br label %35

35:                                               ; preds = %34, %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %36

36:                                               ; preds = %35, %3
  %37 = phi i32 [ %21, %35 ], [ -9, %3 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_read(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %1 to ptr
  %5 = tail call i32 @ksys_read(i32 noundef %0, ptr noundef %4, i32 noundef %2) #13
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksys_write(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = tail call i32 @__fdget_pos(i32 noundef %0) #13, !noalias !45
  %6 = and i32 %5, -4
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store i64 0, ptr %4, align 8, !annotation !23
  %10 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 2097152
  %13 = icmp ne i32 %12, 0
  %14 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 10
  %15 = icmp eq ptr %14, null
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %9
  %18 = load i64, ptr %14, align 8
  store i64 %18, ptr %4, align 8
  br label %19

19:                                               ; preds = %17, %9
  %20 = phi ptr [ %4, %17 ], [ null, %9 ]
  %21 = call i32 @vfs_write(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %2, ptr noundef %20)
  %22 = icmp sgt i32 %21, -1
  %23 = icmp ne ptr %20, null
  %24 = and i1 %23, %22
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i64, ptr %4, align 8
  store i64 %26, ptr %14, align 8
  br label %27

27:                                               ; preds = %25, %19
  %28 = and i32 %5, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  call void @__f_unlock_pos(ptr noundef nonnull %7) #13
  br label %31

31:                                               ; preds = %30, %27
  %32 = and i32 %5, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  call void @fput(ptr noundef nonnull %7) #13
  br label %35

35:                                               ; preds = %34, %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %36

36:                                               ; preds = %35, %3
  %37 = phi i32 [ %21, %35 ], [ -9, %3 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_write(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %1 to ptr
  %5 = tail call i32 @ksys_write(i32 noundef %0, ptr noundef %4, i32 noundef %2) #13
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksys_pread64(i32 noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  store i64 %3, ptr %5, align 8
  %6 = icmp slt i64 %3, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @__fdget(i32 noundef %0) #13, !noalias !48
  %9 = and i32 %8, -4
  %10 = inttoptr i32 %9 to ptr
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 8
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = call i32 @vfs_read(ptr noundef nonnull %10, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5)
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i32 [ %18, %17 ], [ -29, %12 ]
  %21 = and i32 %8, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  call void @fput(ptr noundef nonnull %10) #13
  br label %24

24:                                               ; preds = %23, %19, %7, %4
  %25 = phi i32 [ -22, %4 ], [ -9, %7 ], [ %20, %19 ], [ %20, %23 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pread64(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store i64 %3, ptr %5, align 8
  %7 = icmp slt i64 %3, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @__fdget(i32 noundef %0) #13, !noalias !51
  %10 = and i32 %9, -4
  %11 = inttoptr i32 %10 to ptr
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 8
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 @vfs_read(ptr noundef nonnull %11, ptr noundef %6, i32 noundef %2, ptr noundef nonnull %5) #13
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ %19, %18 ], [ -29, %13 ]
  %22 = and i32 %9, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  call void @fput(ptr noundef nonnull %11) #13
  br label %25

25:                                               ; preds = %24, %20, %8, %4
  %26 = phi i32 [ -22, %4 ], [ -9, %8 ], [ %21, %20 ], [ %21, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksys_pwrite64(i32 noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  store i64 %3, ptr %5, align 8
  %6 = icmp slt i64 %3, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @__fdget(i32 noundef %0) #13, !noalias !54
  %9 = and i32 %8, -4
  %10 = inttoptr i32 %9 to ptr
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 8
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = call i32 @vfs_write(ptr noundef nonnull %10, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5)
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i32 [ %18, %17 ], [ -29, %12 ]
  %21 = and i32 %8, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  call void @fput(ptr noundef nonnull %10) #13
  br label %24

24:                                               ; preds = %23, %19, %7, %4
  %25 = phi i32 [ -22, %4 ], [ -9, %7 ], [ %20, %19 ], [ %20, %23 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pwrite64(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store i64 %3, ptr %5, align 8
  %7 = icmp slt i64 %3, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @__fdget(i32 noundef %0) #13, !noalias !57
  %10 = and i32 %9, -4
  %11 = inttoptr i32 %10 to ptr
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 8
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 @vfs_write(ptr noundef nonnull %11, ptr noundef %6, i32 noundef %2, ptr noundef nonnull %5) #13
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ %19, %18 ], [ -29, %13 ]
  %22 = and i32 %9, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  call void @fput(ptr noundef nonnull %11) #13
  br label %25

25:                                               ; preds = %24, %20, %8, %4
  %26 = phi i32 [ -22, %4 ], [ -9, %8 ], [ %21, %20 ], [ %21, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_iocb_iter_read(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.file_operations, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %82, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %82, label %14

14:                                               ; preds = %9
  %15 = and i32 %11, 131072
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %82, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %48, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.kiocb, ptr %1, i32 0, i32 1
  %23 = icmp slt i32 %19, 0
  br i1 %23, label %82, label %24, !prof !28

24:                                               ; preds = %21
  %25 = icmp eq ptr %22, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %24
  %27 = load i64, ptr %22, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %36, !prof !28

29:                                               ; preds = %26
  %30 = and i32 %11, 8192
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %82, label %32

32:                                               ; preds = %29
  %33 = zext i32 %19 to i64
  %34 = sub i64 0, %27
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %43, label %82

36:                                               ; preds = %26
  %37 = zext i32 %19 to i64
  %38 = add nuw i64 %27, %37
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43, !prof !28

40:                                               ; preds = %36
  %41 = and i32 %11, 8192
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %82, label %43

43:                                               ; preds = %40, %36, %32, %24
  %44 = tail call i32 %7(ptr noundef %1, ptr noundef %2) #13
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %46, label %82

46:                                               ; preds = %43
  %47 = load i32, ptr %10, align 8
  br label %48

48:                                               ; preds = %46, %17
  %49 = phi i32 [ %47, %46 ], [ %11, %17 ]
  %50 = phi i32 [ %44, %46 ], [ 0, %17 ]
  %51 = and i32 %49, 67108864
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %55 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.dentry, ptr %56, i32 0, i32 5
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.inode, ptr %58, i32 0, i32 8
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 42
  %62 = load volatile i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %82, label %64

64:                                               ; preds = %53
  %65 = load i16, ptr %58, align 8
  %66 = and i16 %65, -4096
  %67 = icmp eq i16 %66, 16384
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, ptr %56, align 8
  %70 = and i32 %69, 16384
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %68, %64
  %73 = phi i32 [ 1073741825, %68 ], [ 1, %64 ]
  %74 = getelementptr inbounds %struct.dentry, ptr %56, i32 0, i32 3
  %75 = load ptr, ptr %74, align 8
  %76 = icmp eq ptr %75, %56
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = tail call i32 @__fsnotify_parent(ptr noundef %56, i32 noundef %73, ptr noundef %54, i32 noundef 1) #13
  br label %82

79:                                               ; preds = %72, %68
  %80 = phi i32 [ %73, %72 ], [ 1073741825, %68 ]
  %81 = tail call i32 @fsnotify(i32 noundef %80, ptr noundef %54, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %58, i32 noundef 0) #13
  br label %82

82:                                               ; preds = %79, %77, %53, %48, %43, %40, %32, %29, %21, %14, %9, %3
  %83 = phi i32 [ -22, %3 ], [ -9, %9 ], [ -22, %14 ], [ %44, %43 ], [ -22, %21 ], [ %50, %48 ], [ %50, %53 ], [ %50, %77 ], [ %50, %79 ], [ -22, %40 ], [ -75, %32 ], [ -22, %29 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_iter_read(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.file_operations, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call fastcc i32 @do_iter_read(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ %11, %10 ], [ -22, %4 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_iter_read(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %128, label %9

9:                                                ; preds = %4
  %10 = and i32 %6, 131072
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %128, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %94, label %16

16:                                               ; preds = %12
  %17 = icmp slt i32 %14, 0
  br i1 %17, label %128, label %18, !prof !28

18:                                               ; preds = %16
  %19 = icmp eq ptr %2, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %18
  %21 = load i64, ptr %2, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %30, !prof !28

23:                                               ; preds = %20
  %24 = and i32 %6, 8192
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %128, label %26

26:                                               ; preds = %23
  %27 = zext i32 %14 to i64
  %28 = sub i64 0, %21
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %37, label %128

30:                                               ; preds = %20
  %31 = zext i32 %14 to i64
  %32 = add nuw i64 %21, %31
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37, !prof !28

34:                                               ; preds = %30
  %35 = and i32 %6, 8192
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %128, label %37

37:                                               ; preds = %34, %30, %26, %18
  %38 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.file_operations, ptr %39, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = tail call fastcc i32 @do_iter_readv_writev(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef %3)
  br label %89

45:                                               ; preds = %37
  %46 = icmp ult i32 %3, 2
  br i1 %46, label %47, label %128

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 5
  %49 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 3
  %50 = load ptr, ptr %48, align 4, !noalias !60
  %51 = load ptr, ptr %50, align 4, !noalias !60
  %52 = load i32, ptr %49, align 4, !noalias !60
  %53 = getelementptr i8, ptr %51, i32 %52
  %54 = getelementptr inbounds %struct.iovec, ptr %50, i32 0, i32 1
  %55 = load i32, ptr %54, align 4, !noalias !60
  %56 = sub i32 %55, %52
  %57 = tail call i32 @llvm.umin.i32(i32 %14, i32 %56) #13
  %58 = getelementptr inbounds %struct.file_operations, ptr %39, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 %59(ptr noundef %0, ptr noundef %53, i32 noundef %57, ptr noundef %2) #13
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %75, %47
  %63 = phi i32 [ 0, %47 ], [ %70, %75 ]
  %64 = phi i32 [ %60, %47 ], [ %87, %75 ]
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %128, label %89

66:                                               ; preds = %75, %47
  %67 = phi i32 [ %87, %75 ], [ %60, %47 ]
  %68 = phi i32 [ %84, %75 ], [ %57, %47 ]
  %69 = phi i32 [ %70, %75 ], [ 0, %47 ]
  %70 = add i32 %67, %69
  %71 = icmp eq i32 %67, %68
  br i1 %71, label %72, label %89

72:                                               ; preds = %66
  tail call void @iov_iter_advance(ptr noundef %1, i32 noundef %68) #13
  %73 = load i32, ptr %13, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %89, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr %38, align 4
  %77 = load ptr, ptr %48, align 4, !noalias !60
  %78 = load ptr, ptr %77, align 4, !noalias !60
  %79 = load i32, ptr %49, align 4, !noalias !60
  %80 = getelementptr i8, ptr %78, i32 %79
  %81 = getelementptr inbounds %struct.iovec, ptr %77, i32 0, i32 1
  %82 = load i32, ptr %81, align 4, !noalias !60
  %83 = sub i32 %82, %79
  %84 = tail call i32 @llvm.umin.i32(i32 %73, i32 %83) #13
  %85 = getelementptr inbounds %struct.file_operations, ptr %76, i32 0, i32 2
  %86 = load ptr, ptr %85, align 4
  %87 = tail call i32 %86(ptr noundef %0, ptr noundef %80, i32 noundef %84, ptr noundef %2) #13
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %62, label %66

89:                                               ; preds = %72, %66, %62, %43
  %90 = phi i32 [ %44, %43 ], [ %63, %62 ], [ %70, %66 ], [ %70, %72 ]
  %91 = icmp sgt i32 %90, -1
  br i1 %91, label %92, label %128

92:                                               ; preds = %89
  %93 = load i32, ptr %5, align 8
  br label %94

94:                                               ; preds = %92, %12
  %95 = phi i32 [ %93, %92 ], [ %6, %12 ]
  %96 = phi i32 [ %90, %92 ], [ 0, %12 ]
  %97 = and i32 %95, 67108864
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %128

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %101 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.dentry, ptr %102, i32 0, i32 5
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr inbounds %struct.inode, ptr %104, i32 0, i32 8
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.super_block, ptr %106, i32 0, i32 42
  %108 = load volatile i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %128, label %110

110:                                              ; preds = %99
  %111 = load i16, ptr %104, align 8
  %112 = and i16 %111, -4096
  %113 = icmp eq i16 %112, 16384
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32, ptr %102, align 8
  %116 = and i32 %115, 16384
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %114, %110
  %119 = phi i32 [ 1073741825, %114 ], [ 1, %110 ]
  %120 = getelementptr inbounds %struct.dentry, ptr %102, i32 0, i32 3
  %121 = load ptr, ptr %120, align 8
  %122 = icmp eq ptr %121, %102
  br i1 %122, label %125, label %123

123:                                              ; preds = %118
  %124 = tail call i32 @__fsnotify_parent(ptr noundef %102, i32 noundef %119, ptr noundef %100, i32 noundef 1) #13
  br label %128

125:                                              ; preds = %118, %114
  %126 = phi i32 [ %119, %118 ], [ 1073741825, %114 ]
  %127 = tail call i32 @fsnotify(i32 noundef %126, ptr noundef %100, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %104, i32 noundef 0) #13
  br label %128

128:                                              ; preds = %125, %123, %99, %94, %89, %62, %45, %34, %26, %23, %16, %9, %4
  %129 = phi i32 [ -9, %4 ], [ -22, %9 ], [ %90, %89 ], [ -22, %16 ], [ %96, %94 ], [ %96, %99 ], [ %96, %123 ], [ %96, %125 ], [ -22, %34 ], [ -75, %26 ], [ -22, %23 ], [ -95, %45 ], [ %64, %62 ]
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_iocb_iter_write(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.file_operations, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %79, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %79, label %14

14:                                               ; preds = %9
  %15 = and i32 %11, 262144
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %79, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.iov_iter, ptr %2, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %79, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.kiocb, ptr %1, i32 0, i32 1
  %23 = icmp slt i32 %19, 0
  br i1 %23, label %79, label %24, !prof !28

24:                                               ; preds = %21
  %25 = icmp eq ptr %22, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %24
  %27 = load i64, ptr %22, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %36, !prof !28

29:                                               ; preds = %26
  %30 = and i32 %11, 8192
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %79, label %32

32:                                               ; preds = %29
  %33 = zext i32 %19 to i64
  %34 = sub i64 0, %27
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %43, label %79

36:                                               ; preds = %26
  %37 = zext i32 %19 to i64
  %38 = add nuw i64 %27, %37
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43, !prof !28

40:                                               ; preds = %36
  %41 = and i32 %11, 8192
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %79, label %43

43:                                               ; preds = %40, %36, %32, %24
  %44 = tail call i32 %7(ptr noundef %1, ptr noundef %2) #13
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %79

46:                                               ; preds = %43
  %47 = load i32, ptr %10, align 8
  %48 = and i32 %47, 67108864
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %79

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %52 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.dentry, ptr %53, i32 0, i32 5
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 8
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.super_block, ptr %57, i32 0, i32 42
  %59 = load volatile i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %50
  %62 = load i16, ptr %55, align 8
  %63 = and i16 %62, -4096
  %64 = icmp eq i16 %63, 16384
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, ptr %53, align 8
  %67 = and i32 %66, 16384
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %65, %61
  %70 = phi i32 [ 1073741826, %65 ], [ 2, %61 ]
  %71 = getelementptr inbounds %struct.dentry, ptr %53, i32 0, i32 3
  %72 = load ptr, ptr %71, align 8
  %73 = icmp eq ptr %72, %53
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = tail call i32 @__fsnotify_parent(ptr noundef %53, i32 noundef %70, ptr noundef %51, i32 noundef 1) #13
  br label %79

76:                                               ; preds = %69, %65
  %77 = phi i32 [ %70, %69 ], [ 1073741826, %65 ]
  %78 = tail call i32 @fsnotify(i32 noundef %77, ptr noundef %51, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %55, i32 noundef 0) #13
  br label %79

79:                                               ; preds = %76, %74, %50, %46, %43, %40, %32, %29, %21, %17, %14, %9, %3
  %80 = phi i32 [ -22, %3 ], [ -9, %9 ], [ -22, %14 ], [ 0, %17 ], [ %44, %43 ], [ -22, %21 ], [ %44, %46 ], [ %44, %50 ], [ %44, %74 ], [ %44, %76 ], [ -22, %40 ], [ -75, %32 ], [ -22, %29 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_iter_write(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.file_operations, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call fastcc i32 @do_iter_write(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ %11, %10 ], [ -22, %4 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_iter_write(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %125, label %9

9:                                                ; preds = %4
  %10 = and i32 %6, 262144
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %125, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %125, label %16

16:                                               ; preds = %12
  %17 = icmp slt i32 %14, 0
  br i1 %17, label %125, label %18, !prof !28

18:                                               ; preds = %16
  %19 = icmp eq ptr %2, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %18
  %21 = load i64, ptr %2, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %30, !prof !28

23:                                               ; preds = %20
  %24 = and i32 %6, 8192
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %125, label %26

26:                                               ; preds = %23
  %27 = zext i32 %14 to i64
  %28 = sub i64 0, %21
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %37, label %125

30:                                               ; preds = %20
  %31 = zext i32 %14 to i64
  %32 = add nuw i64 %21, %31
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37, !prof !28

34:                                               ; preds = %30
  %35 = and i32 %6, 8192
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %125, label %37

37:                                               ; preds = %34, %30, %26, %18
  %38 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.file_operations, ptr %39, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = tail call fastcc i32 @do_iter_readv_writev(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1, i32 noundef %3)
  br label %89

45:                                               ; preds = %37
  %46 = icmp ult i32 %3, 2
  br i1 %46, label %47, label %125

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 5
  %49 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 3
  %50 = load ptr, ptr %48, align 4, !noalias !63
  %51 = load ptr, ptr %50, align 4, !noalias !63
  %52 = load i32, ptr %49, align 4, !noalias !63
  %53 = getelementptr i8, ptr %51, i32 %52
  %54 = getelementptr inbounds %struct.iovec, ptr %50, i32 0, i32 1
  %55 = load i32, ptr %54, align 4, !noalias !63
  %56 = sub i32 %55, %52
  %57 = tail call i32 @llvm.umin.i32(i32 %14, i32 %56) #13
  %58 = getelementptr inbounds %struct.file_operations, ptr %39, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 %59(ptr noundef %0, ptr noundef %53, i32 noundef %57, ptr noundef %2) #13
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %75, %47
  %63 = phi i32 [ 0, %47 ], [ %70, %75 ]
  %64 = phi i32 [ %60, %47 ], [ %87, %75 ]
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %125, label %89

66:                                               ; preds = %75, %47
  %67 = phi i32 [ %87, %75 ], [ %60, %47 ]
  %68 = phi i32 [ %84, %75 ], [ %57, %47 ]
  %69 = phi i32 [ %70, %75 ], [ 0, %47 ]
  %70 = add i32 %67, %69
  %71 = icmp eq i32 %67, %68
  br i1 %71, label %72, label %89

72:                                               ; preds = %66
  tail call void @iov_iter_advance(ptr noundef %1, i32 noundef %68) #13
  %73 = load i32, ptr %13, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %89, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr %38, align 4
  %77 = load ptr, ptr %48, align 4, !noalias !63
  %78 = load ptr, ptr %77, align 4, !noalias !63
  %79 = load i32, ptr %49, align 4, !noalias !63
  %80 = getelementptr i8, ptr %78, i32 %79
  %81 = getelementptr inbounds %struct.iovec, ptr %77, i32 0, i32 1
  %82 = load i32, ptr %81, align 4, !noalias !63
  %83 = sub i32 %82, %79
  %84 = tail call i32 @llvm.umin.i32(i32 %73, i32 %83) #13
  %85 = getelementptr inbounds %struct.file_operations, ptr %76, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = tail call i32 %86(ptr noundef %0, ptr noundef %80, i32 noundef %84, ptr noundef %2) #13
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %62, label %66

89:                                               ; preds = %72, %66, %62, %43
  %90 = phi i32 [ %44, %43 ], [ %63, %62 ], [ %70, %66 ], [ %70, %72 ]
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %125

92:                                               ; preds = %89
  %93 = load i32, ptr %5, align 8
  %94 = and i32 %93, 67108864
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %125

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %98 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.dentry, ptr %99, i32 0, i32 5
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.inode, ptr %101, i32 0, i32 8
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.super_block, ptr %103, i32 0, i32 42
  %105 = load volatile i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %125, label %107

107:                                              ; preds = %96
  %108 = load i16, ptr %101, align 8
  %109 = and i16 %108, -4096
  %110 = icmp eq i16 %109, 16384
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, ptr %99, align 8
  %113 = and i32 %112, 16384
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %111, %107
  %116 = phi i32 [ 1073741826, %111 ], [ 2, %107 ]
  %117 = getelementptr inbounds %struct.dentry, ptr %99, i32 0, i32 3
  %118 = load ptr, ptr %117, align 8
  %119 = icmp eq ptr %118, %99
  br i1 %119, label %122, label %120

120:                                              ; preds = %115
  %121 = tail call i32 @__fsnotify_parent(ptr noundef %99, i32 noundef %116, ptr noundef %97, i32 noundef 1) #13
  br label %125

122:                                              ; preds = %115, %111
  %123 = phi i32 [ %116, %115 ], [ 1073741826, %111 ]
  %124 = tail call i32 @fsnotify(i32 noundef %123, ptr noundef %97, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %101, i32 noundef 0) #13
  br label %125

125:                                              ; preds = %122, %120, %96, %92, %89, %62, %45, %34, %26, %23, %16, %12, %9, %4
  %126 = phi i32 [ -9, %4 ], [ -22, %9 ], [ 0, %12 ], [ %90, %89 ], [ -22, %16 ], [ %90, %92 ], [ %90, %96 ], [ %90, %120 ], [ %90, %122 ], [ -22, %34 ], [ -75, %26 ], [ -22, %23 ], [ -95, %45 ], [ %64, %62 ]
  ret i32 %126
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_readv(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %1 to ptr
  %5 = tail call fastcc i32 @do_readv(i32 noundef %0, ptr noundef %4, i32 noundef %2, i32 noundef 0) #13
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_writev(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %1 to ptr
  %5 = tail call fastcc i32 @do_writev(i32 noundef %0, ptr noundef %4, i32 noundef %2, i32 noundef 0) #13
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_preadv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = inttoptr i32 %1 to ptr
  %7 = zext i32 %4 to i64
  %8 = shl nuw i64 %7, 32
  %9 = zext i32 %3 to i64
  %10 = or i64 %8, %9
  %11 = tail call fastcc i32 @do_preadv(i32 noundef %0, ptr noundef %6, i32 noundef %2, i64 noundef %10, i32 noundef 0) #13
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_preadv2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = inttoptr i32 %1 to ptr
  %8 = zext i32 %4 to i64
  %9 = shl nuw i64 %8, 32
  %10 = zext i32 %3 to i64
  %11 = or i64 %9, %10
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = tail call fastcc i32 @do_readv(i32 noundef %0, ptr noundef %7, i32 noundef %2, i32 noundef %5) #13
  br label %17

15:                                               ; preds = %6
  %16 = tail call fastcc i32 @do_preadv(i32 noundef %0, ptr noundef %7, i32 noundef %2, i64 noundef %11, i32 noundef %5) #13
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pwritev(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i64, align 8
  %7 = inttoptr i32 %1 to ptr
  %8 = zext i32 %4 to i64
  %9 = shl nuw i64 %8, 32
  %10 = zext i32 %3 to i64
  %11 = or i64 %9, %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  store i64 %11, ptr %6, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %5
  %14 = tail call i32 @__fdget(i32 noundef %0) #13, !noalias !66
  %15 = and i32 %14, -4
  %16 = inttoptr i32 %15 to ptr
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 8
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = call fastcc i32 @vfs_writev(ptr noundef nonnull %16, ptr noundef %7, i32 noundef %2, ptr noundef nonnull %6, i32 noundef 0) #13
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi i32 [ %24, %23 ], [ -29, %18 ]
  %27 = and i32 %14, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  call void @fput(ptr noundef nonnull %16) #13
  br label %30

30:                                               ; preds = %29, %25, %13, %5
  %31 = phi i32 [ -22, %5 ], [ -9, %13 ], [ %26, %29 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pwritev2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i64, align 8
  %8 = inttoptr i32 %1 to ptr
  %9 = zext i32 %4 to i64
  %10 = shl nuw i64 %9, 32
  %11 = zext i32 %3 to i64
  %12 = or i64 %10, %11
  %13 = icmp eq i64 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %6
  %15 = tail call fastcc i32 @do_writev(i32 noundef %0, ptr noundef %8, i32 noundef %2, i32 noundef %5) #13
  br label %37

16:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  store i64 %12, ptr %7, align 8
  %17 = icmp slt i64 %12, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %16
  %19 = tail call i32 @__fdget(i32 noundef %0) #13, !noalias !69
  %20 = and i32 %19, -4
  %21 = inttoptr i32 %20 to ptr
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.file, ptr %21, i32 0, i32 8
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = call fastcc i32 @vfs_writev(ptr noundef nonnull %21, ptr noundef %8, i32 noundef %2, ptr noundef nonnull %7, i32 noundef %5) #13
  br label %30

30:                                               ; preds = %28, %23
  %31 = phi i32 [ %29, %28 ], [ -29, %23 ]
  %32 = and i32 %19, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  call void @fput(ptr noundef nonnull %21) #13
  br label %35

35:                                               ; preds = %34, %30, %18, %16
  %36 = phi i32 [ -22, %16 ], [ -9, %18 ], [ %31, %34 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br label %37

37:                                               ; preds = %35, %14
  %38 = phi i32 [ %15, %14 ], [ %36, %35 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sendfile(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @llvm.thread.pointer() #13
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #11, !srcloc !25
  %12 = and i32 %11, -13
  %13 = or i32 %12, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #13, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !27
  %14 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %6, i32 -1090519041) #13, !srcloc !72
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #13, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !27
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31, !prof !29

17:                                               ; preds = %8
  %18 = extractvalue { i32, i32 } %14, 1
  %19 = sext i32 %18 to i64
  store i64 %19, ptr %5, align 8
  %20 = call fastcc i32 @do_sendfile(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %5, i32 noundef %3, i64 noundef 2147483647) #13
  %21 = load i64, ptr %5, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #11, !srcloc !25
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #13, !srcloc !26
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !27
  %26 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %6, i32 %22, i32 -1090519041) #13, !srcloc !73
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #13, !srcloc !26
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !27
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 %20, i32 -14, !prof !29
  br label %31

29:                                               ; preds = %4
  %30 = tail call fastcc i32 @do_sendfile(i32 noundef %0, i32 noundef %1, ptr noundef null, i32 noundef %3, i64 noundef 0) #13
  br label %31

31:                                               ; preds = %29, %17, %8
  %32 = phi i32 [ %30, %29 ], [ -14, %8 ], [ %28, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sendfile64(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store i64 0, ptr %5, align 8, !annotation !23
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %4
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %6, i32 8, i32 -1090519040) #14, !srcloc !74
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20, !prof !29

12:                                               ; preds = %8
  %13 = tail call ptr @llvm.thread.pointer() #13
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #11, !srcloc !25
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #13, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !27
  %18 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #13, !srcloc !26
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !27
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !29

20:                                               ; preds = %12, %8
  %21 = phi i32 [ %18, %12 ], [ 8, %8 ]
  %22 = sub i32 8, %21
  %23 = getelementptr i8, ptr %5, i32 %22
  call void @llvm.memset.p0.i32(ptr align 1 %23, i8 0, i32 %21, i1 false) #13
  br label %35

24:                                               ; preds = %12
  %25 = call fastcc i32 @do_sendfile(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %5, i32 noundef %3, i64 noundef 0) #13
  %26 = load i64, ptr %5, align 8
  %27 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #11, !srcloc !25
  %28 = and i32 %27, -13
  %29 = or i32 %28, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #13, !srcloc !26
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !27
  %30 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %6, i64 %26, i32 -1090519041) #13, !srcloc !75
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #13, !srcloc !26
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !27
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 %25, i32 -14, !prof !29
  br label %35

33:                                               ; preds = %4
  %34 = tail call fastcc i32 @do_sendfile(i32 noundef %0, i32 noundef %1, ptr noundef null, i32 noundef %3, i64 noundef 0) #13
  br label %35

35:                                               ; preds = %33, %24, %20
  %36 = phi i32 [ %34, %33 ], [ %32, %24 ], [ -14, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_copy_file_range(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %1, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  %9 = tail call i32 @llvm.umin.i32(i32 %4, i32 2147479552)
  %10 = call i32 @do_splice_direct(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull %8, i32 noundef %9, i32 noundef 0) #13
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_splice_direct(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_copy_file_range(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %10, label %338

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = zext i32 %4 to i64
  %16 = load i16, ptr %12, align 8
  %17 = and i16 %16, -4096
  %18 = icmp eq i16 %17, 16384
  br i1 %18, label %338, label %19

19:                                               ; preds = %10
  %20 = load i16, ptr %14, align 8
  %21 = and i16 %20, -4096
  %22 = icmp eq i16 %21, 16384
  br i1 %22, label %338, label %23

23:                                               ; preds = %19
  %24 = icmp eq i16 %17, -32768
  %25 = icmp eq i16 %21, -32768
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %338

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %338, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 8
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %338, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 1024
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %338

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %338

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 256
  %51 = icmp eq i32 %50, 0
  %52 = and i32 %44, 256
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %338

55:                                               ; preds = %47
  %56 = xor i64 %1, -1
  %57 = icmp ugt i64 %15, %56
  %58 = xor i64 %3, -1
  %59 = icmp ugt i64 %15, %58
  %60 = or i1 %57, %59
  br i1 %60, label %338, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 22
  %63 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 13
  br label %64

64:                                               ; preds = %72, %61
  %65 = load volatile i32, ptr %62, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %68, %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !10
  %69 = load volatile i32, ptr %62, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %68

72:                                               ; preds = %68, %64
  %73 = phi i32 [ %65, %64 ], [ %69, %68 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %74 = load i64, ptr %63, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  %75 = load volatile i32, ptr %62, align 4
  %76 = icmp eq i32 %75, %73
  br i1 %76, label %77, label %64

77:                                               ; preds = %72
  %78 = icmp sgt i64 %74, %1
  %79 = sub i64 %74, %1
  %80 = tail call i64 @llvm.umin.i64(i64 %15, i64 %79) #13
  %81 = select i1 %78, i64 %80, i64 0
  %82 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 17
  %83 = load ptr, ptr %82, align 8
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.inode, ptr %84, i32 0, i32 8
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.super_block, ptr %86, i32 0, i32 4
  %88 = load i64, ptr %87, align 8
  %89 = tail call ptr @llvm.thread.pointer() #13
  %90 = getelementptr inbounds %struct.task_struct, ptr %89, i32 0, i32 93
  %91 = load ptr, ptr %90, align 16
  %92 = getelementptr %struct.signal_struct, ptr %91, i32 0, i32 50, i32 1
  %93 = load volatile i32, ptr %92, align 8
  %94 = zext i32 %93 to i64
  %95 = icmp eq i32 %93, -1
  br i1 %95, label %103, label %96

96:                                               ; preds = %77
  %97 = icmp sgt i64 %94, %3
  br i1 %97, label %100, label %98

98:                                               ; preds = %96
  %99 = tail call i32 @send_sig(i32 noundef 25, ptr noundef %89, i32 noundef 0) #13
  br label %338

100:                                              ; preds = %96
  %101 = sub i64 %94, %3
  %102 = tail call i64 @llvm.smin.i64(i64 %81, i64 %101) #13
  br label %103

103:                                              ; preds = %100, %77
  %104 = phi i64 [ %81, %77 ], [ %102, %100 ]
  %105 = load i32, ptr %38, align 4
  %106 = and i32 %105, 131072
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %107, i64 2147483647, i64 %88
  %109 = icmp sgt i64 %108, %3
  br i1 %109, label %110, label %338, !prof !29

110:                                              ; preds = %103
  %111 = sub i64 %108, %3
  %112 = tail call i64 @llvm.smin.i64(i64 %104, i64 %111) #13
  %113 = icmp eq ptr %12, %14
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = add i64 %112, %3
  %116 = icmp ugt i64 %115, %1
  %117 = add i64 %112, %1
  %118 = icmp ugt i64 %117, %3
  %119 = and i1 %116, %118
  br i1 %119, label %338, label %120

120:                                              ; preds = %114, %110
  %121 = trunc i64 %112 to i32
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %338, label %123, !prof !28

123:                                              ; preds = %120
  %124 = icmp slt i64 %1, 0
  br i1 %124, label %125, label %133, !prof !28

125:                                              ; preds = %123
  %126 = load i32, ptr %28, align 8
  %127 = and i32 %126, 8192
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %338, label %129

129:                                              ; preds = %125
  %130 = and i64 %112, 4294967295
  %131 = sub i64 0, %1
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %141, label %338

133:                                              ; preds = %123
  %134 = and i64 %112, 4294967295
  %135 = add nuw i64 %134, %1
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %141, !prof !28

137:                                              ; preds = %133
  %138 = load i32, ptr %28, align 8
  %139 = and i32 %138, 8192
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %338, label %141

141:                                              ; preds = %137, %133, %129
  %142 = icmp slt i64 %3, 0
  br i1 %142, label %143, label %151, !prof !28

143:                                              ; preds = %141
  %144 = load i32, ptr %33, align 8
  %145 = and i32 %144, 8192
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %338, label %147

147:                                              ; preds = %143
  %148 = and i64 %112, 4294967295
  %149 = sub i64 0, %3
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %159, label %338

151:                                              ; preds = %141
  %152 = and i64 %112, 4294967295
  %153 = add nuw i64 %152, %3
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %159, !prof !28

155:                                              ; preds = %151
  %156 = load i32, ptr %33, align 8
  %157 = and i32 %156, 8192
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %338, label %159

159:                                              ; preds = %155, %151, %147
  %160 = icmp eq i32 %121, 0
  br i1 %160, label %338, label %161

161:                                              ; preds = %159
  %162 = load ptr, ptr %13, align 8
  %163 = load i16, ptr %162, align 8
  %164 = and i16 %163, -4096
  %165 = icmp eq i16 %164, -32768
  br i1 %165, label %166, label %187

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.inode, ptr %162, i32 0, i32 8
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr %struct.super_block, ptr %168, i32 0, i32 26, i32 2
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %170 = load volatile i32, ptr %169, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %184, !prof !29

172:                                              ; preds = %166
  %173 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %174 = getelementptr %struct.super_block, ptr %168, i32 0, i32 26, i32 2, i32 0, i32 1
  %175 = load ptr, ptr %174, align 4
  %176 = ptrtoint ptr %175 to i32
  %177 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %178 = inttoptr i32 %177 to ptr
  %179 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %178) #11, !srcloc !34
  %180 = add i32 %179, %176
  %181 = inttoptr i32 %180 to ptr
  %182 = load i32, ptr %181, align 4
  %183 = add i32 %182, 1
  store i32 %183, ptr %181, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %173) #13, !srcloc !35
  br label %186

184:                                              ; preds = %166
  %185 = tail call zeroext i1 @__percpu_down_read(ptr noundef %169, i1 noundef zeroext false) #13
  br label %186

186:                                              ; preds = %184, %172
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !36
  br label %187

187:                                              ; preds = %186, %161
  %188 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.file_operations, ptr %189, i32 0, i32 30
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %207, label %193

193:                                              ; preds = %187
  %194 = load ptr, ptr %11, align 8
  %195 = getelementptr inbounds %struct.inode, ptr %194, i32 0, i32 8
  %196 = load ptr, ptr %195, align 4
  %197 = load ptr, ptr %13, align 8
  %198 = getelementptr inbounds %struct.inode, ptr %197, i32 0, i32 8
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %196, %199
  br i1 %200, label %201, label %207

201:                                              ; preds = %193
  %202 = tail call i32 @llvm.umin.i32(i32 %121, i32 2147479552)
  %203 = zext i32 %202 to i64
  %204 = tail call i64 %191(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %203, i32 noundef 2) #13
  %205 = icmp sgt i64 %204, 0
  %206 = trunc i64 %204 to i32
  br i1 %205, label %230, label %207

207:                                              ; preds = %201, %193, %187
  %208 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 3
  %209 = load ptr, ptr %208, align 4
  %210 = getelementptr inbounds %struct.file_operations, ptr %209, i32 0, i32 29
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %220, label %213

213:                                              ; preds = %207
  %214 = load ptr, ptr %188, align 4
  %215 = getelementptr inbounds %struct.file_operations, ptr %214, i32 0, i32 29
  %216 = load ptr, ptr %215, align 4
  %217 = icmp eq ptr %211, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  %219 = tail call i32 %211(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %121, i32 noundef 0) #13
  br label %223

220:                                              ; preds = %213, %207
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  store i64 %1, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  %221 = tail call i32 @llvm.umin.i32(i32 %121, i32 2147479552) #13
  %222 = call i32 @do_splice_direct(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull %8, i32 noundef %221, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  br label %223

223:                                              ; preds = %220, %218
  %224 = phi i32 [ %219, %218 ], [ %222, %220 ]
  %225 = icmp eq i32 %224, -95
  %226 = load i1, ptr @vfs_copy_file_range.__already_done, align 1
  %227 = xor i1 %226, true
  %228 = select i1 %225, i1 %227, i1 false
  br i1 %228, label %229, label %230, !prof !28

229:                                              ; preds = %223
  store i1 true, ptr @vfs_copy_file_range.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1510, i32 noundef 9, ptr noundef null) #13
  br label %299

230:                                              ; preds = %223, %201
  %231 = phi i32 [ %206, %201 ], [ %224, %223 ]
  %232 = icmp sgt i32 %231, 0
  br i1 %232, label %233, label %299

233:                                              ; preds = %230
  %234 = load i32, ptr %28, align 8
  %235 = and i32 %234, 67108864
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %266

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %239 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %240 = load ptr, ptr %239, align 4
  %241 = getelementptr inbounds %struct.dentry, ptr %240, i32 0, i32 5
  %242 = load ptr, ptr %241, align 8
  %243 = getelementptr inbounds %struct.inode, ptr %242, i32 0, i32 8
  %244 = load ptr, ptr %243, align 4
  %245 = getelementptr inbounds %struct.super_block, ptr %244, i32 0, i32 42
  %246 = load volatile i32, ptr %245, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %266, label %248

248:                                              ; preds = %237
  %249 = load i16, ptr %242, align 8
  %250 = and i16 %249, -4096
  %251 = icmp eq i16 %250, 16384
  br i1 %251, label %252, label %256

252:                                              ; preds = %248
  %253 = load i32, ptr %240, align 8
  %254 = and i32 %253, 16384
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %263, label %256

256:                                              ; preds = %252, %248
  %257 = phi i32 [ 1073741825, %252 ], [ 1, %248 ]
  %258 = getelementptr inbounds %struct.dentry, ptr %240, i32 0, i32 3
  %259 = load ptr, ptr %258, align 8
  %260 = icmp eq ptr %259, %240
  br i1 %260, label %263, label %261

261:                                              ; preds = %256
  %262 = call i32 @__fsnotify_parent(ptr noundef %240, i32 noundef %257, ptr noundef %238, i32 noundef 1) #13
  br label %266

263:                                              ; preds = %256, %252
  %264 = phi i32 [ %257, %256 ], [ 1073741825, %252 ]
  %265 = call i32 @fsnotify(i32 noundef %264, ptr noundef %238, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %242, i32 noundef 0) #13
  br label %266

266:                                              ; preds = %263, %261, %237, %233
  %267 = load i32, ptr %33, align 8
  %268 = and i32 %267, 67108864
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %299

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 1
  %272 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 1, i32 1
  %273 = load ptr, ptr %272, align 4
  %274 = getelementptr inbounds %struct.dentry, ptr %273, i32 0, i32 5
  %275 = load ptr, ptr %274, align 8
  %276 = getelementptr inbounds %struct.inode, ptr %275, i32 0, i32 8
  %277 = load ptr, ptr %276, align 4
  %278 = getelementptr inbounds %struct.super_block, ptr %277, i32 0, i32 42
  %279 = load volatile i32, ptr %278, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %299, label %281

281:                                              ; preds = %270
  %282 = load i16, ptr %275, align 8
  %283 = and i16 %282, -4096
  %284 = icmp eq i16 %283, 16384
  br i1 %284, label %285, label %289

285:                                              ; preds = %281
  %286 = load i32, ptr %273, align 8
  %287 = and i32 %286, 16384
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %296, label %289

289:                                              ; preds = %285, %281
  %290 = phi i32 [ 1073741826, %285 ], [ 2, %281 ]
  %291 = getelementptr inbounds %struct.dentry, ptr %273, i32 0, i32 3
  %292 = load ptr, ptr %291, align 8
  %293 = icmp eq ptr %292, %273
  br i1 %293, label %296, label %294

294:                                              ; preds = %289
  %295 = call i32 @__fsnotify_parent(ptr noundef %273, i32 noundef %290, ptr noundef %271, i32 noundef 1) #13
  br label %299

296:                                              ; preds = %289, %285
  %297 = phi i32 [ %290, %289 ], [ 1073741826, %285 ]
  %298 = call i32 @fsnotify(i32 noundef %297, ptr noundef %271, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %275, i32 noundef 0) #13
  br label %299

299:                                              ; preds = %296, %294, %270, %266, %230, %229
  %300 = phi i32 [ -95, %229 ], [ %231, %230 ], [ %231, %266 ], [ %231, %270 ], [ %231, %294 ], [ %231, %296 ]
  %301 = load ptr, ptr %13, align 8
  %302 = load i16, ptr %301, align 8
  %303 = and i16 %302, -4096
  %304 = icmp eq i16 %303, -32768
  br i1 %304, label %305, label %338

305:                                              ; preds = %299
  %306 = getelementptr inbounds %struct.inode, ptr %301, i32 0, i32 8
  %307 = load ptr, ptr %306, align 4
  %308 = getelementptr %struct.super_block, ptr %307, i32 0, i32 26, i32 2
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  %309 = load volatile i32, ptr %308, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %323, !prof !29

311:                                              ; preds = %305
  %312 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %313 = getelementptr %struct.super_block, ptr %307, i32 0, i32 26, i32 2, i32 0, i32 1
  %314 = load ptr, ptr %313, align 4
  %315 = ptrtoint ptr %314 to i32
  %316 = call i32 @llvm.read_register.i32(metadata !0) #13
  %317 = inttoptr i32 %316 to ptr
  %318 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %317) #11, !srcloc !34
  %319 = add i32 %318, %315
  %320 = inttoptr i32 %319 to ptr
  %321 = load i32, ptr %320, align 4
  %322 = add i32 %321, -1
  store i32 %322, ptr %320, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %312) #13, !srcloc !35
  br label %337

323:                                              ; preds = %305
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !38
  %324 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %325 = getelementptr %struct.super_block, ptr %307, i32 0, i32 26, i32 2, i32 0, i32 1
  %326 = load ptr, ptr %325, align 4
  %327 = ptrtoint ptr %326 to i32
  %328 = call i32 @llvm.read_register.i32(metadata !0) #13
  %329 = inttoptr i32 %328 to ptr
  %330 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %329) #11, !srcloc !34
  %331 = add i32 %330, %327
  %332 = inttoptr i32 %331 to ptr
  %333 = load i32, ptr %332, align 4
  %334 = add i32 %333, -1
  store i32 %334, ptr %332, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %324) #13, !srcloc !35
  %335 = getelementptr %struct.super_block, ptr %307, i32 0, i32 26, i32 2, i32 0, i32 2
  %336 = call i32 @rcuwait_wake_up(ptr noundef %335) #13
  br label %337

337:                                              ; preds = %323, %311
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !39
  br label %338

338:                                              ; preds = %337, %299, %159, %155, %147, %143, %137, %129, %125, %120, %114, %103, %98, %55, %47, %42, %37, %32, %27, %23, %19, %10, %6
  %339 = phi i32 [ -22, %6 ], [ 0, %159 ], [ -22, %120 ], [ -22, %155 ], [ -75, %147 ], [ -22, %143 ], [ %300, %299 ], [ %300, %337 ], [ -27, %103 ], [ -27, %98 ], [ -21, %19 ], [ -21, %10 ], [ -22, %23 ], [ -9, %32 ], [ -9, %27 ], [ -9, %37 ], [ -22, %114 ], [ -75, %55 ], [ -26, %47 ], [ -1, %42 ], [ -22, %137 ], [ -75, %129 ], [ -22, %125 ]
  ret i32 %339
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_copy_file_range(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = inttoptr i32 %1 to ptr
  %10 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  store i64 0, ptr %7, align 8, !annotation !23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  store i64 0, ptr %8, align 8, !annotation !23
  %11 = tail call i32 @__fdget(i32 noundef %0) #13, !noalias !76
  %12 = and i32 %11, -4
  %13 = inttoptr i32 %12 to ptr
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %118, label %15

15:                                               ; preds = %6
  %16 = tail call i32 @__fdget(i32 noundef %2) #13, !noalias !79
  %17 = and i32 %16, -4
  %18 = inttoptr i32 %17 to ptr
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %113, label %20

20:                                               ; preds = %15
  %21 = icmp eq i32 %1, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %20
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %9, i32 8, i32 -1090519040) #14, !srcloc !74
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34, !prof !29

26:                                               ; preds = %22
  %27 = tail call ptr @llvm.thread.pointer() #13
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %28) #11, !srcloc !25
  %30 = and i32 %29, -13
  %31 = or i32 %30, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #13, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !27
  %32 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef nonnull %9, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #13, !srcloc !26
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !27
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34, !prof !29

34:                                               ; preds = %26, %22
  %35 = phi i32 [ %32, %26 ], [ 8, %22 ]
  %36 = sub i32 8, %35
  %37 = getelementptr i8, ptr %7, i32 %36
  call void @llvm.memset.p0.i32(ptr align 1 %37, i8 0, i32 %35, i1 false) #13
  br label %108

38:                                               ; preds = %20
  %39 = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 10
  %40 = load i64, ptr %39, align 8
  store i64 %40, ptr %7, align 8
  br label %41

41:                                               ; preds = %38, %26
  %42 = icmp eq i32 %3, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %41
  %44 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %10, i32 8, i32 -1090519040) #14, !srcloc !74
  %45 = extractvalue { i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %57, !prof !29

47:                                               ; preds = %43
  %48 = tail call ptr @llvm.thread.pointer() #13
  %49 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %50 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %49) #11, !srcloc !25
  %51 = and i32 %50, -13
  %52 = or i32 %51, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #13, !srcloc !26
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !27
  %53 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef nonnull %10, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #13, !srcloc !26
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !27
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57, !prof !29

55:                                               ; preds = %47
  %56 = load i64, ptr %8, align 8
  br label %64

57:                                               ; preds = %47, %43
  %58 = phi i32 [ %53, %47 ], [ 8, %43 ]
  %59 = sub i32 8, %58
  %60 = getelementptr i8, ptr %8, i32 %59
  call void @llvm.memset.p0.i32(ptr align 1 %60, i8 0, i32 %58, i1 false) #13
  br label %108

61:                                               ; preds = %41
  %62 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 10
  %63 = load i64, ptr %62, align 8
  store i64 %63, ptr %8, align 8
  br label %64

64:                                               ; preds = %61, %55
  %65 = phi i64 [ %56, %55 ], [ %63, %61 ]
  %66 = load i64, ptr %7, align 8
  %67 = call i32 @vfs_copy_file_range(ptr noundef nonnull %13, i64 noundef %66, ptr noundef nonnull %18, i64 noundef %65, i32 noundef %4, i32 noundef %5) #13
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %108

69:                                               ; preds = %64
  %70 = zext i32 %67 to i64
  %71 = load i64, ptr %7, align 8
  %72 = add i64 %71, %70
  store i64 %72, ptr %7, align 8
  %73 = load i64, ptr %8, align 8
  %74 = add i64 %73, %70
  store i64 %74, ptr %8, align 8
  br i1 %21, label %88, label %75

75:                                               ; preds = %69
  %76 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %9, i32 8, i32 -1090519040) #14, !srcloc !24
  %77 = extractvalue { i32, i32 } %76, 0
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = tail call ptr @llvm.thread.pointer() #13
  %81 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 3
  %82 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %81) #11, !srcloc !25
  %83 = and i32 %82, -13
  %84 = or i32 %83, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %84) #13, !srcloc !26
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !27
  %85 = call i32 @arm_copy_to_user(ptr noundef nonnull %9, ptr noundef nonnull %7, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #13, !srcloc !26
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !27
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, i32 %67, i32 -14
  br label %90

88:                                               ; preds = %69
  %89 = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 10
  store i64 %72, ptr %89, align 8
  br label %90

90:                                               ; preds = %88, %79, %75
  %91 = phi i32 [ %67, %88 ], [ -14, %75 ], [ %87, %79 ]
  br i1 %42, label %105, label %92

92:                                               ; preds = %90
  %93 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %10, i32 8, i32 -1090519040) #14, !srcloc !24
  %94 = extractvalue { i32, i32 } %93, 0
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = tail call ptr @llvm.thread.pointer() #13
  %98 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 3
  %99 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %98) #11, !srcloc !25
  %100 = and i32 %99, -13
  %101 = or i32 %100, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %101) #13, !srcloc !26
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !27
  %102 = call i32 @arm_copy_to_user(ptr noundef nonnull %10, ptr noundef nonnull %8, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %99) #13, !srcloc !26
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !27
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %103, i32 %91, i32 -14
  br label %108

105:                                              ; preds = %90
  %106 = load i64, ptr %8, align 8
  %107 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 10
  store i64 %106, ptr %107, align 8
  br label %108

108:                                              ; preds = %105, %96, %92, %64, %57, %34
  %109 = phi i32 [ %91, %105 ], [ %67, %64 ], [ -14, %34 ], [ -14, %57 ], [ -14, %92 ], [ %104, %96 ]
  %110 = and i32 %16, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  call void @fput(ptr noundef nonnull %18) #13
  br label %113

113:                                              ; preds = %112, %108, %15
  %114 = phi i32 [ -9, %15 ], [ %109, %108 ], [ %109, %112 ]
  %115 = and i32 %11, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  call void @fput(ptr noundef nonnull %13) #13
  br label %118

118:                                              ; preds = %117, %113, %6
  %119 = phi i32 [ -9, %6 ], [ %114, %113 ], [ %114, %117 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_write_check_limits(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 4
  %10 = load i64, ptr %9, align 8
  %11 = tail call ptr @llvm.thread.pointer() #13
  %12 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 93
  %13 = load ptr, ptr %12, align 16
  %14 = getelementptr %struct.signal_struct, ptr %13, i32 0, i32 50, i32 1
  %15 = load volatile i32, ptr %14, align 8
  %16 = zext i32 %15 to i64
  %17 = icmp eq i32 %15, -1
  br i1 %17, label %26, label %18

18:                                               ; preds = %3
  %19 = icmp sgt i64 %16, %1
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = tail call i32 @send_sig(i32 noundef 25, ptr noundef %11, i32 noundef 0) #13
  br label %37

22:                                               ; preds = %18
  %23 = load i64, ptr %2, align 8
  %24 = sub i64 %16, %1
  %25 = tail call i64 @llvm.smin.i64(i64 %23, i64 %24)
  store i64 %25, ptr %2, align 8
  br label %26

26:                                               ; preds = %22, %3
  %27 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 131072
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i64 2147483647, i64 %10
  %32 = icmp sgt i64 %31, %1
  br i1 %32, label %33, label %37, !prof !29

33:                                               ; preds = %26
  %34 = load i64, ptr %2, align 8
  %35 = sub i64 %31, %1
  %36 = tail call i64 @llvm.smin.i64(i64 %34, i64 %35)
  store i64 %36, ptr %2, align 8
  br label %37

37:                                               ; preds = %33, %26, %20
  %38 = phi i32 [ -27, %20 ], [ 0, %33 ], [ -27, %26 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_write_checks(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %82

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %82, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 22
  %22 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  br label %23

23:                                               ; preds = %31, %20
  %24 = load volatile i32, ptr %21, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %27, %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !10
  %28 = load volatile i32, ptr %21, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %27

31:                                               ; preds = %27, %23
  %32 = phi i32 [ %24, %23 ], [ %28, %27 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %33 = load i64, ptr %22, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  %34 = load volatile i32, ptr %21, align 4
  %35 = icmp eq i32 %34, %32
  br i1 %35, label %36, label %23

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  store i64 %33, ptr %37, align 8
  %38 = load i32, ptr %16, align 8
  br label %39

39:                                               ; preds = %36, %15
  %40 = phi i32 [ %38, %36 ], [ %17, %15 ]
  %41 = and i32 %40, 131080
  %42 = icmp eq i32 %41, 8
  br i1 %42, label %82, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %12, align 8
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %47 = load i64, ptr %46, align 8
  %48 = load ptr, ptr %4, align 8
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.inode, ptr %49, i32 0, i32 8
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.super_block, ptr %51, i32 0, i32 4
  %53 = load i64, ptr %52, align 8
  %54 = tail call ptr @llvm.thread.pointer() #13
  %55 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 93
  %56 = load ptr, ptr %55, align 16
  %57 = getelementptr %struct.signal_struct, ptr %56, i32 0, i32 50, i32 1
  %58 = load volatile i32, ptr %57, align 8
  %59 = zext i32 %58 to i64
  %60 = icmp eq i32 %58, -1
  br i1 %60, label %68, label %61

61:                                               ; preds = %43
  %62 = icmp slt i64 %47, %59
  br i1 %62, label %65, label %63

63:                                               ; preds = %61
  %64 = tail call i32 @send_sig(i32 noundef 25, ptr noundef %54, i32 noundef 0) #13
  br label %82

65:                                               ; preds = %61
  %66 = sub i64 %59, %47
  %67 = tail call i64 @llvm.smin.i64(i64 %45, i64 %66) #13
  br label %68

68:                                               ; preds = %65, %43
  %69 = phi i64 [ %45, %43 ], [ %67, %65 ]
  %70 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 7
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 131072
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i64 2147483647, i64 %53
  %75 = icmp sgt i64 %74, %47
  br i1 %75, label %76, label %82, !prof !29

76:                                               ; preds = %68
  %77 = sub i64 %74, %47
  %78 = tail call i64 @llvm.smin.i64(i64 %69, i64 %77) #13
  %79 = icmp ult i64 %78, %45
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = trunc i64 %78 to i32
  store i32 %81, ptr %12, align 8
  br label %82

82:                                               ; preds = %80, %76, %68, %63, %39, %11, %2
  %83 = phi i32 [ -26, %2 ], [ 0, %11 ], [ -22, %39 ], [ -27, %63 ], [ -27, %68 ], [ %44, %76 ], [ %81, %80 ]
  ret i32 %83
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @generic_file_rw_checks(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, -4096
  %7 = icmp eq i16 %6, 16384
  br i1 %7, label %34, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, -4096
  %13 = icmp eq i16 %12, 16384
  br i1 %13, label %34, label %14

14:                                               ; preds = %8
  %15 = icmp eq i16 %6, -32768
  %16 = icmp eq i16 %12, -32768
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 1024
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 0, i32 -9
  br label %34

34:                                               ; preds = %28, %23, %18, %14, %8, %2
  %35 = phi i32 [ -21, %8 ], [ -21, %2 ], [ -22, %14 ], [ -9, %23 ], [ -9, %18 ], [ %33, %28 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget_pos(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__f_unlock_pos(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_iter_readv_writev(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.kiocb, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i32 40, i1 false), !annotation !23
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 6
  %10 = and i32 %9, 16
  %11 = shl i32 %8, 1
  %12 = and i32 %11, 131072
  %13 = or i32 %12, %10
  %14 = and i32 %8, 4096
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %18 = load ptr, ptr %17, align 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26, %16, %5
  %32 = or i32 %13, 2
  br label %33

33:                                               ; preds = %31, %26
  %34 = phi i32 [ %32, %31 ], [ %13, %26 ]
  %35 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 20
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  br label %44

44:                                               ; preds = %38, %33
  %45 = phi i32 [ %43, %38 ], [ %36, %33 ]
  %46 = tail call ptr @llvm.thread.pointer() #13
  %47 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 118
  %48 = load ptr, ptr %47, align 32
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.io_context, ptr %48, i32 0, i32 2
  %52 = load i16, ptr %51, align 4
  br label %53

53:                                               ; preds = %50, %44
  %54 = phi i16 [ %52, %50 ], [ 16388, %44 ]
  %55 = tail call i32 @llvm.umin.i32(i32 %45, i32 65536) #13
  %56 = trunc i32 %55 to i16
  %57 = lshr i32 %8, 18
  %58 = and i32 %57, 4
  %59 = or i32 %34, %58
  store ptr %0, ptr %6, align 8
  %60 = getelementptr inbounds i8, ptr %6, i32 8
  %61 = getelementptr inbounds i8, ptr %6, i32 24
  %62 = getelementptr inbounds i8, ptr %6, i32 16
  store i64 0, ptr %62, align 8
  store i32 %59, ptr %61, align 8
  %63 = getelementptr inbounds i8, ptr %6, i32 28
  store i16 %56, ptr %63, align 4
  %64 = getelementptr inbounds i8, ptr %6, i32 30
  store i16 %54, ptr %64, align 2
  %65 = icmp eq i32 %4, 0
  br i1 %65, label %83, label %66

66:                                               ; preds = %53
  %67 = icmp ult i32 %4, 32
  br i1 %67, label %68, label %102, !prof !29

68:                                               ; preds = %66
  %69 = and i32 %4, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 134217728
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %102, label %76

76:                                               ; preds = %71, %68
  %77 = phi i32 [ 0, %68 ], [ 1048576, %71 ]
  %78 = lshr i32 %4, 1
  %79 = and i32 %78, 2
  %80 = or i32 %79, %4
  %81 = or i32 %80, %77
  %82 = or i32 %81, %59
  store i32 %82, ptr %61, align 8
  br label %83

83:                                               ; preds = %76, %53
  %84 = icmp eq ptr %2, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %83
  %86 = load i64, ptr %2, align 8
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i64 [ %86, %85 ], [ 0, %83 ]
  store i64 %88, ptr %60, align 8
  %89 = icmp eq i32 %3, 0
  %90 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.file_operations, ptr %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.file_operations, ptr %91, i32 0, i32 5
  %94 = select i1 %89, ptr %92, ptr %93
  %95 = load ptr, ptr %94, align 4
  %96 = call i32 %95(ptr noundef nonnull %6, ptr noundef %1) #13
  %97 = icmp eq i32 %96, -529
  br i1 %97, label %98, label %99, !prof !28

98:                                               ; preds = %87
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/read_write.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 726, 0\0A.popsection", ""() #13, !srcloc !82
  unreachable

99:                                               ; preds = %87
  br i1 %84, label %102, label %100

100:                                              ; preds = %99
  %101 = load i64, ptr %60, align 8
  store i64 %101, ptr %2, align 8
  br label %102

102:                                              ; preds = %100, %99, %71, %66
  %103 = phi i32 [ %96, %100 ], [ %96, %99 ], [ -95, %66 ], [ -95, %71 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #13
  ret i32 %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_readv(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [8 x %struct.iovec], align 4
  %6 = alloca ptr, align 4
  %7 = alloca %struct.iov_iter, align 8
  %8 = alloca i64, align 8
  %9 = tail call i32 @__fdget_pos(i32 noundef %0) #13, !noalias !83
  %10 = and i32 %9, -4
  %11 = inttoptr i32 %10 to ptr
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %46, label %13

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  store i64 0, ptr %8, align 8, !annotation !23
  %14 = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 8
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 2097152
  %17 = icmp ne i32 %16, 0
  %18 = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 10
  %19 = icmp eq ptr %18, null
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %23, label %21

21:                                               ; preds = %13
  %22 = load i64, ptr %18, align 8
  store i64 %22, ptr %8, align 8
  br label %23

23:                                               ; preds = %21, %13
  %24 = phi ptr [ %8, %21 ], [ null, %13 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false) #13, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr %5, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i32 24, i1 false) #13, !annotation !23
  %25 = call i32 @import_iovec(i32 noundef 0, ptr noundef %1, i32 noundef %2, i32 noundef 8, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  br label %36

28:                                               ; preds = %23
  %29 = call fastcc i32 @do_iter_read(ptr noundef nonnull %11, ptr noundef nonnull %7, ptr noundef %24, i32 noundef %3) #13
  %30 = load ptr, ptr %6, align 4
  call void @kfree(ptr noundef %30) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  %31 = icmp sgt i32 %29, -1
  %32 = icmp ne ptr %24, null
  %33 = and i1 %32, %31
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, ptr %8, align 8
  store i64 %35, ptr %18, align 8
  br label %36

36:                                               ; preds = %34, %28, %27
  %37 = phi i32 [ %25, %27 ], [ %29, %34 ], [ %29, %28 ]
  %38 = and i32 %9, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  call void @__f_unlock_pos(ptr noundef nonnull %11) #13
  br label %41

41:                                               ; preds = %40, %36
  %42 = and i32 %9, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  call void @fput(ptr noundef nonnull %11) #13
  br label %45

45:                                               ; preds = %44, %41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  br label %46

46:                                               ; preds = %45, %4
  %47 = phi i32 [ %37, %45 ], [ -9, %4 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_iovec(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_writev(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = tail call i32 @__fdget_pos(i32 noundef %0) #13, !noalias !86
  %7 = and i32 %6, -4
  %8 = inttoptr i32 %7 to ptr
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store i64 0, ptr %5, align 8, !annotation !23
  %11 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 8
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 2097152
  %14 = icmp ne i32 %13, 0
  %15 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 10
  %16 = icmp eq ptr %15, null
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %10
  %19 = load i64, ptr %15, align 8
  store i64 %19, ptr %5, align 8
  br label %20

20:                                               ; preds = %18, %10
  %21 = phi ptr [ %5, %18 ], [ null, %10 ]
  %22 = call fastcc i32 @vfs_writev(ptr noundef nonnull %8, ptr noundef %1, i32 noundef %2, ptr noundef %21, i32 noundef %3)
  %23 = icmp sgt i32 %22, -1
  %24 = icmp ne ptr %21, null
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i64, ptr %5, align 8
  store i64 %27, ptr %15, align 8
  br label %28

28:                                               ; preds = %26, %20
  %29 = and i32 %6, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  call void @__f_unlock_pos(ptr noundef nonnull %8) #13
  br label %32

32:                                               ; preds = %31, %28
  %33 = and i32 %6, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  call void @fput(ptr noundef nonnull %8) #13
  br label %36

36:                                               ; preds = %35, %32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  br label %37

37:                                               ; preds = %36, %4
  %38 = phi i32 [ %22, %36 ], [ -9, %4 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vfs_writev(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [8 x %struct.iovec], align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.iov_iter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %6, i8 0, i32 64, i1 false), !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store ptr %6, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i32 24, i1 false), !annotation !23
  %9 = call i32 @import_iovec(i32 noundef 1, ptr noundef %1, i32 noundef %2, i32 noundef 8, ptr noundef nonnull %7, ptr noundef nonnull %8) #13
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %79

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, -4096
  %16 = icmp eq i16 %15, -32768
  br i1 %16, label %17, label %38

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.super_block, ptr %19, i32 0, i32 26, i32 2
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %21 = load volatile i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %35, !prof !29

23:                                               ; preds = %17
  %24 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %25 = getelementptr %struct.super_block, ptr %19, i32 0, i32 26, i32 2, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = call i32 @llvm.read_register.i32(metadata !0) #13
  %29 = inttoptr i32 %28 to ptr
  %30 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %29) #11, !srcloc !34
  %31 = add i32 %30, %27
  %32 = inttoptr i32 %31 to ptr
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %24) #13, !srcloc !35
  br label %37

35:                                               ; preds = %17
  %36 = call zeroext i1 @__percpu_down_read(ptr noundef %20, i1 noundef zeroext false) #13
  br label %37

37:                                               ; preds = %35, %23
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !36
  br label %38

38:                                               ; preds = %37, %11
  %39 = call fastcc i32 @do_iter_write(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %3, i32 noundef %4)
  %40 = load ptr, ptr %12, align 8
  %41 = load i16, ptr %40, align 8
  %42 = and i16 %41, -4096
  %43 = icmp eq i16 %42, -32768
  br i1 %43, label %44, label %77

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 8
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr %struct.super_block, ptr %46, i32 0, i32 26, i32 2
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  %48 = load volatile i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %62, !prof !29

50:                                               ; preds = %44
  %51 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %52 = getelementptr %struct.super_block, ptr %46, i32 0, i32 26, i32 2, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = ptrtoint ptr %53 to i32
  %55 = call i32 @llvm.read_register.i32(metadata !0) #13
  %56 = inttoptr i32 %55 to ptr
  %57 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %56) #11, !srcloc !34
  %58 = add i32 %57, %54
  %59 = inttoptr i32 %58 to ptr
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, -1
  store i32 %61, ptr %59, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %51) #13, !srcloc !35
  br label %76

62:                                               ; preds = %44
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !38
  %63 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %64 = getelementptr %struct.super_block, ptr %46, i32 0, i32 26, i32 2, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = ptrtoint ptr %65 to i32
  %67 = call i32 @llvm.read_register.i32(metadata !0) #13
  %68 = inttoptr i32 %67 to ptr
  %69 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %68) #11, !srcloc !34
  %70 = add i32 %69, %66
  %71 = inttoptr i32 %70 to ptr
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, -1
  store i32 %73, ptr %71, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %63) #13, !srcloc !35
  %74 = getelementptr %struct.super_block, ptr %46, i32 0, i32 26, i32 2, i32 0, i32 2
  %75 = call i32 @rcuwait_wake_up(ptr noundef %74) #13
  br label %76

76:                                               ; preds = %62, %50
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !39
  br label %77

77:                                               ; preds = %76, %38
  %78 = load ptr, ptr %7, align 4
  call void @kfree(ptr noundef %78) #13
  br label %79

79:                                               ; preds = %77, %5
  %80 = phi i32 [ %39, %77 ], [ %9, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_preadv(i32 noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [8 x %struct.iovec], align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.iov_iter, align 8
  %9 = alloca i64, align 8
  store i64 %3, ptr %9, align 8
  %10 = icmp slt i64 %3, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %5
  %12 = tail call i32 @__fdget(i32 noundef %0) #13, !noalias !89
  %13 = and i32 %12, -4
  %14 = inttoptr i32 %13 to ptr
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 8
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %6, i8 0, i32 64, i1 false) #13, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store ptr %6, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i32 24, i1 false) #13, !annotation !23
  %22 = call i32 @import_iovec(i32 noundef 0, ptr noundef %1, i32 noundef %2, i32 noundef 8, ptr noundef nonnull %7, ptr noundef nonnull %8) #13
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = call fastcc i32 @do_iter_read(ptr noundef nonnull %14, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %4) #13
  %26 = load ptr, ptr %7, align 4
  call void @kfree(ptr noundef %26) #13
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i32 [ %25, %24 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  br label %29

29:                                               ; preds = %27, %16
  %30 = phi i32 [ %28, %27 ], [ -29, %16 ]
  %31 = and i32 %12, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  call void @fput(ptr noundef nonnull %14) #13
  br label %34

34:                                               ; preds = %33, %29, %11, %5
  %35 = phi i32 [ -22, %5 ], [ -9, %11 ], [ %30, %33 ], [ %30, %29 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_sendfile(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4) unnamed_addr #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  store i64 0, ptr %6, align 8, !annotation !23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  store i64 0, ptr %7, align 8, !annotation !23
  %8 = tail call i32 @__fdget(i32 noundef %1) #13, !noalias !92
  %9 = and i32 %8, -4
  %10 = inttoptr i32 %9 to ptr
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %186, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 8
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %181, label %17

17:                                               ; preds = %12
  %18 = icmp eq ptr %2, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 10
  %21 = load i64, ptr %20, align 8
  store i64 %21, ptr %6, align 8
  br label %26

22:                                               ; preds = %17
  %23 = load i64, ptr %2, align 8
  store i64 %23, ptr %6, align 8
  %24 = and i32 %14, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %181, label %26

26:                                               ; preds = %22, %19
  %27 = phi i64 [ %23, %22 ], [ %21, %19 ]
  %28 = icmp slt i32 %3, 0
  br i1 %28, label %181, label %29, !prof !28

29:                                               ; preds = %26
  %30 = icmp slt i64 %27, 0
  br i1 %30, label %31, label %38, !prof !28

31:                                               ; preds = %29
  %32 = and i32 %14, 8192
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %181, label %34

34:                                               ; preds = %31
  %35 = zext i32 %3 to i64
  %36 = sub i64 0, %27
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %45, label %181

38:                                               ; preds = %29
  %39 = zext i32 %3 to i64
  %40 = add nuw i64 %27, %39
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45, !prof !28

42:                                               ; preds = %38
  %43 = and i32 %14, 8192
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %181, label %45

45:                                               ; preds = %42, %38, %34
  %46 = tail call i32 @llvm.umin.i32(i32 %3, i32 2147479552)
  %47 = tail call i32 @__fdget(i32 noundef %0) #13, !noalias !95
  %48 = and i32 %47, -4
  %49 = inttoptr i32 %48 to ptr
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %181, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.file, ptr %49, i32 0, i32 8
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %176, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.file, ptr %49, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.file, ptr %49, i32 0, i32 10
  %62 = load i64, ptr %61, align 8
  store i64 %62, ptr %7, align 8
  %63 = icmp eq i64 %4, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.inode, ptr %58, i32 0, i32 8
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.super_block, ptr %66, i32 0, i32 4
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr inbounds %struct.inode, ptr %60, i32 0, i32 8
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.super_block, ptr %70, i32 0, i32 4
  %72 = load i64, ptr %71, align 8
  %73 = tail call i64 @llvm.smin.i64(i64 %68, i64 %72)
  br label %74

74:                                               ; preds = %64, %56
  %75 = phi i64 [ %4, %56 ], [ %73, %64 ]
  %76 = zext i32 %46 to i64
  %77 = add i64 %27, %76
  %78 = icmp sgt i64 %77, %75
  br i1 %78, label %79, label %84, !prof !28

79:                                               ; preds = %74
  %80 = icmp sgt i64 %75, %27
  br i1 %80, label %81, label %176

81:                                               ; preds = %79
  %82 = sub i64 %75, %27
  %83 = trunc i64 %82 to i32
  br label %84

84:                                               ; preds = %81, %74
  %85 = phi i32 [ %83, %81 ], [ %46, %74 ]
  %86 = tail call ptr @get_pipe_info(ptr noundef nonnull %49, i1 noundef zeroext true) #13
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = call i32 @rw_verify_area(i32 noundef 1, ptr noundef nonnull %49, ptr noundef nonnull %7, i32 noundef %85)
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %176, label %91

91:                                               ; preds = %88
  call fastcc void @file_start_write(ptr noundef nonnull %49)
  %92 = call i32 @do_splice_direct(ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %49, ptr noundef nonnull %7, i32 noundef %85, i32 noundef 0) #13
  call fastcc void @file_end_write(ptr noundef nonnull %49)
  br label %95

93:                                               ; preds = %84
  %94 = call i32 @splice_file_to_pipe(ptr noundef nonnull %10, ptr noundef nonnull %86, ptr noundef nonnull %6, i32 noundef %85, i32 noundef 0) #13
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %94, %93 ], [ %92, %91 ]
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = load i64, ptr %6, align 8
  br label %172

100:                                              ; preds = %95
  %101 = load i32, ptr %13, align 8
  %102 = and i32 %101, 67108864
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %133

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 1
  %106 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 1, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.dentry, ptr %107, i32 0, i32 5
  %109 = load ptr, ptr %108, align 8
  %110 = getelementptr inbounds %struct.inode, ptr %109, i32 0, i32 8
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.super_block, ptr %111, i32 0, i32 42
  %113 = load volatile i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %133, label %115

115:                                              ; preds = %104
  %116 = load i16, ptr %109, align 8
  %117 = and i16 %116, -4096
  %118 = icmp eq i16 %117, 16384
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i32, ptr %107, align 8
  %121 = and i32 %120, 16384
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %119, %115
  %124 = phi i32 [ 1073741825, %119 ], [ 1, %115 ]
  %125 = getelementptr inbounds %struct.dentry, ptr %107, i32 0, i32 3
  %126 = load ptr, ptr %125, align 8
  %127 = icmp eq ptr %126, %107
  br i1 %127, label %130, label %128

128:                                              ; preds = %123
  %129 = call i32 @__fsnotify_parent(ptr noundef %107, i32 noundef %124, ptr noundef %105, i32 noundef 1) #13
  br label %133

130:                                              ; preds = %123, %119
  %131 = phi i32 [ %124, %123 ], [ 1073741825, %119 ]
  %132 = call i32 @fsnotify(i32 noundef %131, ptr noundef %105, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %109, i32 noundef 0) #13
  br label %133

133:                                              ; preds = %130, %128, %104, %100
  %134 = load i32, ptr %52, align 8
  %135 = and i32 %134, 67108864
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %166

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.file, ptr %49, i32 0, i32 1
  %139 = getelementptr inbounds %struct.file, ptr %49, i32 0, i32 1, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.dentry, ptr %140, i32 0, i32 5
  %142 = load ptr, ptr %141, align 8
  %143 = getelementptr inbounds %struct.inode, ptr %142, i32 0, i32 8
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.super_block, ptr %144, i32 0, i32 42
  %146 = load volatile i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %166, label %148

148:                                              ; preds = %137
  %149 = load i16, ptr %142, align 8
  %150 = and i16 %149, -4096
  %151 = icmp eq i16 %150, 16384
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load i32, ptr %140, align 8
  %154 = and i32 %153, 16384
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %152, %148
  %157 = phi i32 [ 1073741826, %152 ], [ 2, %148 ]
  %158 = getelementptr inbounds %struct.dentry, ptr %140, i32 0, i32 3
  %159 = load ptr, ptr %158, align 8
  %160 = icmp eq ptr %159, %140
  br i1 %160, label %163, label %161

161:                                              ; preds = %156
  %162 = call i32 @__fsnotify_parent(ptr noundef %140, i32 noundef %157, ptr noundef %138, i32 noundef 1) #13
  br label %166

163:                                              ; preds = %156, %152
  %164 = phi i32 [ %157, %156 ], [ 1073741826, %152 ]
  %165 = call i32 @fsnotify(i32 noundef %164, ptr noundef %138, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %142, i32 noundef 0) #13
  br label %166

166:                                              ; preds = %163, %161, %137, %133
  %167 = load i64, ptr %7, align 8
  store i64 %167, ptr %61, align 8
  %168 = load i64, ptr %6, align 8
  br i1 %18, label %170, label %169

169:                                              ; preds = %166
  store i64 %168, ptr %2, align 8
  br label %172

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 10
  store i64 %168, ptr %171, align 8
  br label %172

172:                                              ; preds = %170, %169, %98
  %173 = phi i64 [ %99, %98 ], [ %168, %169 ], [ %168, %170 ]
  %174 = icmp sgt i64 %173, %75
  %175 = select i1 %174, i32 -75, i32 %96
  br label %176

176:                                              ; preds = %172, %88, %79, %51
  %177 = phi i32 [ -75, %79 ], [ %89, %88 ], [ -9, %51 ], [ %175, %172 ]
  %178 = and i32 %47, 1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %176
  call void @fput(ptr noundef nonnull %49) #13
  br label %181

181:                                              ; preds = %180, %176, %45, %42, %34, %31, %26, %22, %12
  %182 = phi i32 [ -9, %45 ], [ -29, %22 ], [ -9, %12 ], [ -22, %26 ], [ %177, %176 ], [ %177, %180 ], [ -22, %42 ], [ -75, %34 ], [ -22, %31 ]
  %183 = and i32 %8, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %181
  call void @fput(ptr noundef nonnull %10) #13
  br label %186

186:                                              ; preds = %185, %181, %5
  %187 = phi i32 [ -9, %5 ], [ %182, %181 ], [ %182, %185 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  ret i32 %187
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pipe_info(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @splice_file_to_pipe(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { cold nounwind }

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
!9 = !{i64 2151541237}
!10 = !{i64 2151541079}
!11 = !{i64 2151541381}
!12 = !{i64 2149205021}
!13 = !{i64 2148962216}
!14 = !{i64 2148958040}
!15 = !{i64 2148958115, i64 2148958142, i64 2148958189, i64 2148958211, i64 2148958239, i64 2148958259}
!16 = !{i64 2148985219}
!17 = !{!18}
!18 = distinct !{!18, !19, !"fdget_pos: argument 0"}
!19 = distinct !{!19, !"fdget_pos"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"fdget_pos: argument 0"}
!22 = distinct !{!22, !"fdget_pos"}
!23 = !{!"auto-init"}
!24 = !{i64 2151226894, i64 2151226919}
!25 = !{i64 3722428}
!26 = !{i64 3722625}
!27 = !{i64 2151207904}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2154115379, i64 2154115404}
!31 = !{i64 2154107763, i64 2154108243, i64 2154107800, i64 2154107856, i64 2154107890, i64 2154107914, i64 2154107955, i64 2154107976, i64 2154108004, i64 2154108038}
!32 = !{i64 2151390892}
!33 = !{i64 699290, i64 699351}
!34 = !{i64 717990}
!35 = !{i64 702307}
!36 = !{i64 2151398509}
!37 = !{i64 2151406974}
!38 = !{i64 2151415285}
!39 = !{i64 2151423503}
!40 = !{i64 2154123299, i64 2154123324}
!41 = !{i64 2154116062, i64 2154116542, i64 2154116099, i64 2154116155, i64 2154116189, i64 2154116213, i64 2154116254, i64 2154116275, i64 2154116303, i64 2154116337}
!42 = !{!43}
!43 = distinct !{!43, !44, !"fdget_pos: argument 0"}
!44 = distinct !{!44, !"fdget_pos"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"fdget_pos: argument 0"}
!47 = distinct !{!47, !"fdget_pos"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"fdget: argument 0"}
!50 = distinct !{!50, !"fdget"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"fdget: argument 0"}
!53 = distinct !{!53, !"fdget"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"fdget: argument 0"}
!56 = distinct !{!56, !"fdget"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"fdget: argument 0"}
!59 = distinct !{!59, !"fdget"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"iov_iter_iovec: argument 0"}
!62 = distinct !{!62, !"iov_iter_iovec"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"iov_iter_iovec: argument 0"}
!65 = distinct !{!65, !"iov_iter_iovec"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"fdget: argument 0"}
!68 = distinct !{!68, !"fdget"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"fdget: argument 0"}
!71 = distinct !{!71, !"fdget"}
!72 = !{i64 2154304285, i64 2154304595, i64 2154304909, i64 2154305223}
!73 = !{i64 2154319471, i64 2154319781, i64 2154320095, i64 2154320409}
!74 = !{i64 2151226316, i64 2151226341}
!75 = !{i64 2154346888, i64 2154347198, i64 2154347512, i64 2154347826}
!76 = !{!77}
!77 = distinct !{!77, !78, !"fdget: argument 0"}
!78 = distinct !{!78, !"fdget"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"fdget: argument 0"}
!81 = distinct !{!81, !"fdget"}
!82 = !{i64 2154166813, i64 2154171354, i64 2154166850, i64 2154166906, i64 2154166940, i64 2154166964, i64 2154167005, i64 2154167026, i64 2154167054, i64 2154167088}
!83 = !{!84}
!84 = distinct !{!84, !85, !"fdget_pos: argument 0"}
!85 = distinct !{!85, !"fdget_pos"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"fdget_pos: argument 0"}
!88 = distinct !{!88, !"fdget_pos"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"fdget: argument 0"}
!91 = distinct !{!91, !"fdget"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"fdget: argument 0"}
!94 = distinct !{!94, !"fdget"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"fdget: argument 0"}
!97 = distinct !{!97, !"fdget"}
