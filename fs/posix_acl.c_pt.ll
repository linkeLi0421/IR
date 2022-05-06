; ModuleID = '/llk/IR/fs/posix_acl.c_pt.bc'
source_filename = "../fs/posix_acl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_cached_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22get_cached_acl\22\09\09\09\09\09"
module asm "__kstrtabns_get_cached_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_cached_acl_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22get_cached_acl_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_get_cached_acl_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_cached_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22set_cached_acl\22\09\09\09\09\09"
module asm "__kstrtabns_set_cached_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_forget_cached_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22forget_cached_acl\22\09\09\09\09\09"
module asm "__kstrtabns_forget_cached_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_forget_all_cached_acls:\09\09\09\09\09"
module asm "\09.asciz \09\22forget_all_cached_acls\22\09\09\09\09\09"
module asm "__kstrtabns_forget_all_cached_acls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22get_acl\22\09\09\09\09\09"
module asm "__kstrtabns_get_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_init:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_init\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_valid\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_equiv_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_equiv_mode\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_equiv_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_from_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_from_mode\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_from_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___posix_acl_create:\09\09\09\09\09"
module asm "\09.asciz \09\22__posix_acl_create\22\09\09\09\09\09"
module asm "__kstrtabns___posix_acl_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___posix_acl_chmod:\09\09\09\09\09"
module asm "\09.asciz \09\22__posix_acl_chmod\22\09\09\09\09\09"
module asm "__kstrtabns___posix_acl_chmod:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_chmod:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_chmod\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_chmod:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_create:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_create\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_update_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_update_mode\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_update_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_from_xattr:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_from_xattr\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_from_xattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_to_xattr:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_to_xattr\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_to_xattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_posix_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22set_posix_acl\22\09\09\09\09\09"
module asm "__kstrtabns_set_posix_acl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_access_xattr_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_access_xattr_handler\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_access_xattr_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_acl_default_xattr_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_acl_default_xattr_handler\22\09\09\09\09\09"
module asm "__kstrtabns_posix_acl_default_xattr_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.67 = type { ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.posix_acl_entry = type { i16, i16, %union.anon }
%union.anon = type { %struct.kuid_t }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%struct.llist_node = type { ptr }
%union.anon.18 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.39 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.58 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.29 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.29 = type { %struct.callback_head }
%struct.posix_acl_xattr_header = type { i32 }
%struct.posix_acl_xattr_entry = type { i16, i16, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.0, ptr }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.1 }
%union.anon.1 = type { i64 }
%union.anon.62 = type { %struct.list_head }
%union.anon.63 = type { %struct.hlist_node }

@__kstrtab_get_cached_acl = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_cached_acl = external dso_local constant [0 x i8], align 1
@__ksymtab_get_cached_acl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_cached_acl to i32), ptr @__kstrtab_get_cached_acl, ptr @__kstrtabns_get_cached_acl }, section "___ksymtab+get_cached_acl", align 4
@__kstrtab_get_cached_acl_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_cached_acl_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_get_cached_acl_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_cached_acl_rcu to i32), ptr @__kstrtab_get_cached_acl_rcu, ptr @__kstrtabns_get_cached_acl_rcu }, section "___ksymtab+get_cached_acl_rcu", align 4
@__kstrtab_set_cached_acl = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_cached_acl = external dso_local constant [0 x i8], align 1
@__ksymtab_set_cached_acl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_cached_acl to i32), ptr @__kstrtab_set_cached_acl, ptr @__kstrtabns_set_cached_acl }, section "___ksymtab+set_cached_acl", align 4
@__kstrtab_forget_cached_acl = external dso_local constant [0 x i8], align 1
@__kstrtabns_forget_cached_acl = external dso_local constant [0 x i8], align 1
@__ksymtab_forget_cached_acl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @forget_cached_acl to i32), ptr @__kstrtab_forget_cached_acl, ptr @__kstrtabns_forget_cached_acl }, section "___ksymtab+forget_cached_acl", align 4
@__kstrtab_forget_all_cached_acls = external dso_local constant [0 x i8], align 1
@__kstrtabns_forget_all_cached_acls = external dso_local constant [0 x i8], align 1
@__ksymtab_forget_all_cached_acls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @forget_all_cached_acls to i32), ptr @__kstrtab_forget_all_cached_acls, ptr @__kstrtabns_forget_all_cached_acls }, section "___ksymtab+forget_all_cached_acls", align 4
@__kstrtab_get_acl = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_acl = external dso_local constant [0 x i8], align 1
@__ksymtab_get_acl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_acl to i32), ptr @__kstrtab_get_acl, ptr @__kstrtabns_get_acl }, section "___ksymtab+get_acl", align 4
@__kstrtab_posix_acl_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_init = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_init to i32), ptr @__kstrtab_posix_acl_init, ptr @__kstrtabns_posix_acl_init }, section "___ksymtab+posix_acl_init", align 4
@__kstrtab_posix_acl_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_alloc to i32), ptr @__kstrtab_posix_acl_alloc, ptr @__kstrtabns_posix_acl_alloc }, section "___ksymtab+posix_acl_alloc", align 4
@__kstrtab_posix_acl_valid = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_valid = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_valid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_valid to i32), ptr @__kstrtab_posix_acl_valid, ptr @__kstrtabns_posix_acl_valid }, section "___ksymtab+posix_acl_valid", align 4
@__kstrtab_posix_acl_equiv_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_equiv_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_equiv_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_equiv_mode to i32), ptr @__kstrtab_posix_acl_equiv_mode, ptr @__kstrtabns_posix_acl_equiv_mode }, section "___ksymtab+posix_acl_equiv_mode", align 4
@__kstrtab_posix_acl_from_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_from_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_from_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_from_mode to i32), ptr @__kstrtab_posix_acl_from_mode, ptr @__kstrtabns_posix_acl_from_mode }, section "___ksymtab+posix_acl_from_mode", align 4
@__kstrtab___posix_acl_create = external dso_local constant [0 x i8], align 1
@__kstrtabns___posix_acl_create = external dso_local constant [0 x i8], align 1
@__ksymtab___posix_acl_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__posix_acl_create to i32), ptr @__kstrtab___posix_acl_create, ptr @__kstrtabns___posix_acl_create }, section "___ksymtab+__posix_acl_create", align 4
@__kstrtab___posix_acl_chmod = external dso_local constant [0 x i8], align 1
@__kstrtabns___posix_acl_chmod = external dso_local constant [0 x i8], align 1
@__ksymtab___posix_acl_chmod = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__posix_acl_chmod to i32), ptr @__kstrtab___posix_acl_chmod, ptr @__kstrtabns___posix_acl_chmod }, section "___ksymtab+__posix_acl_chmod", align 4
@__kstrtab_posix_acl_chmod = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_chmod = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_chmod = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_chmod to i32), ptr @__kstrtab_posix_acl_chmod, ptr @__kstrtabns_posix_acl_chmod }, section "___ksymtab+posix_acl_chmod", align 4
@__kstrtab_posix_acl_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_create = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_create to i32), ptr @__kstrtab_posix_acl_create, ptr @__kstrtabns_posix_acl_create }, section "___ksymtab_gpl+posix_acl_create", align 4
@__kstrtab_posix_acl_update_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_update_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_update_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_update_mode to i32), ptr @__kstrtab_posix_acl_update_mode, ptr @__kstrtabns_posix_acl_update_mode }, section "___ksymtab+posix_acl_update_mode", align 4
@__kstrtab_posix_acl_from_xattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_from_xattr = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_from_xattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_from_xattr to i32), ptr @__kstrtab_posix_acl_from_xattr, ptr @__kstrtabns_posix_acl_from_xattr }, section "___ksymtab+posix_acl_from_xattr", align 4
@__kstrtab_posix_acl_to_xattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_to_xattr = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_to_xattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_to_xattr to i32), ptr @__kstrtab_posix_acl_to_xattr, ptr @__kstrtabns_posix_acl_to_xattr }, section "___ksymtab+posix_acl_to_xattr", align 4
@__kstrtab_set_posix_acl = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_posix_acl = external dso_local constant [0 x i8], align 1
@__ksymtab_set_posix_acl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_posix_acl to i32), ptr @__kstrtab_set_posix_acl, ptr @__kstrtabns_set_posix_acl }, section "___ksymtab+set_posix_acl", align 4
@.str = private unnamed_addr constant [24 x i8] c"system.posix_acl_access\00", align 1
@posix_acl_access_xattr_handler = dso_local constant %struct.xattr_handler { ptr @.str, ptr null, i32 32768, ptr @posix_acl_xattr_list, ptr @posix_acl_xattr_get, ptr @posix_acl_xattr_set }, align 4
@__kstrtab_posix_acl_access_xattr_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_access_xattr_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_access_xattr_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_access_xattr_handler to i32), ptr @__kstrtab_posix_acl_access_xattr_handler, ptr @__kstrtabns_posix_acl_access_xattr_handler }, section "___ksymtab_gpl+posix_acl_access_xattr_handler", align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"system.posix_acl_default\00", align 1
@posix_acl_default_xattr_handler = dso_local constant %struct.xattr_handler { ptr @.str.1, ptr null, i32 16384, ptr @posix_acl_xattr_list, ptr @posix_acl_xattr_get, ptr @posix_acl_xattr_set }, align 4
@__kstrtab_posix_acl_default_xattr_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_acl_default_xattr_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_acl_default_xattr_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_acl_default_xattr_handler to i32), ptr @__kstrtab_posix_acl_default_xattr_handler, ptr @__kstrtabns_posix_acl_default_xattr_handler }, section "___ksymtab_gpl+posix_acl_default_xattr_handler", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [21 x ptr] [ptr @__ksymtab___posix_acl_chmod, ptr @__ksymtab___posix_acl_create, ptr @__ksymtab_forget_all_cached_acls, ptr @__ksymtab_forget_cached_acl, ptr @__ksymtab_get_acl, ptr @__ksymtab_get_cached_acl, ptr @__ksymtab_get_cached_acl_rcu, ptr @__ksymtab_posix_acl_access_xattr_handler, ptr @__ksymtab_posix_acl_alloc, ptr @__ksymtab_posix_acl_chmod, ptr @__ksymtab_posix_acl_create, ptr @__ksymtab_posix_acl_default_xattr_handler, ptr @__ksymtab_posix_acl_equiv_mode, ptr @__ksymtab_posix_acl_from_mode, ptr @__ksymtab_posix_acl_from_xattr, ptr @__ksymtab_posix_acl_init, ptr @__ksymtab_posix_acl_to_xattr, ptr @__ksymtab_posix_acl_update_mode, ptr @__ksymtab_posix_acl_valid, ptr @__ksymtab_set_cached_acl, ptr @__ksymtab_set_posix_acl], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_cached_acl(ptr noundef %0, i32 noundef %1) #0 {
  switch i32 %1, label %7 [
    i32 32768, label %3
    i32 16384, label %5
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 5
  br label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 6
  br label %8

7:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/posix_acl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 36, 0\0A.popsection", ""() #13, !srcloc !8
  unreachable

8:                                                ; preds = %5, %3
  %9 = phi ptr [ %6, %5 ], [ %4, %3 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = ptrtoint ptr %10 to i32
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  %15 = select i1 %11, i1 true, i1 %14
  br i1 %15, label %47, label %16

16:                                               ; preds = %40, %8
  %17 = phi ptr [ %41, %40 ], [ %10, %8 ]
  %18 = load volatile i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %30, %16
  %21 = phi i32 [ %28, %30 ], [ %18, %16 ]
  %22 = add i32 %21, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #13, !srcloc !10
  br label %23

23:                                               ; preds = %23, %20
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 %21, i32 %22, ptr elementtype(i32) %17) #13, !srcloc !11
  %25 = extractvalue { i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %23

27:                                               ; preds = %23
  %28 = extractvalue { i32, i32 } %24, 1
  %29 = icmp eq i32 %28, %21
  br i1 %29, label %32, label %30, !prof !12

30:                                               ; preds = %27
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %32, label %20

32:                                               ; preds = %30, %27, %16
  %33 = phi i32 [ 0, %16 ], [ 0, %30 ], [ %21, %27 ]
  %34 = add i32 %33, 1
  %35 = or i32 %34, %33
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %38, label %37, !prof !12

37:                                               ; preds = %32
  tail call void @refcount_warn_saturate(ptr noundef %17, i32 noundef 0) #13
  br label %38

38:                                               ; preds = %37, %32
  %39 = icmp eq i32 %33, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %41 = load volatile ptr, ptr %9, align 4
  %42 = icmp eq ptr %41, null
  %43 = ptrtoint ptr %41 to i32
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  %46 = select i1 %42, i1 true, i1 %45
  br i1 %46, label %47, label %16

47:                                               ; preds = %40, %38, %8
  %48 = phi ptr [ %10, %8 ], [ %41, %40 ], [ %17, %38 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  ret ptr %48
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_cached_acl_rcu(ptr noundef %0, i32 noundef %1) #0 {
  switch i32 %1, label %7 [
    i32 32768, label %3
    i32 16384, label %5
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 5
  br label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 6
  br label %8

7:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/posix_acl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 36, 0\0A.popsection", ""() #13, !srcloc !8
  unreachable

8:                                                ; preds = %5, %3
  %9 = phi ptr [ %6, %5 ], [ %4, %3 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, inttoptr (i32 -3 to ptr)
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 7
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.inode_operations, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr %16(ptr noundef %0, i32 noundef %1, i1 noundef zeroext true) #13
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  %19 = select i1 %18, ptr inttoptr (i32 -3 to ptr), ptr %17
  br label %20

20:                                               ; preds = %12, %8
  %21 = phi ptr [ %19, %12 ], [ %10, %8 ]
  ret ptr %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_cached_acl(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  switch i32 %1, label %8 [
    i32 32768, label %4
    i32 16384, label %6
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 5
  br label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 6
  br label %9

8:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/posix_acl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 36, 0\0A.popsection", ""() #13, !srcloc !8
  unreachable

9:                                                ; preds = %6, %4
  %10 = phi ptr [ %7, %6 ], [ %5, %4 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %11 = icmp eq ptr %2, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %2) #13, !srcloc !10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #13, !srcloc !17
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !18

16:                                               ; preds = %12
  %17 = add i32 %14, 1
  %18 = or i32 %17, %14
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %22, label %20, !prof !12

20:                                               ; preds = %16, %12
  %21 = phi i32 [ 2, %12 ], [ 1, %16 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %2, i32 noundef %21) #13
  br label %22

22:                                               ; preds = %20, %16, %9
  %23 = ptrtoint ptr %2 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #13, !srcloc !10
  %24 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %23, ptr %10) #13, !srcloc !19
  %25 = extractvalue { i32, i32 } %24, 0
  %26 = inttoptr i32 %25 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  %27 = and i32 %25, 1
  %28 = icmp ne i32 %27, 0
  %29 = icmp eq i32 %25, 0
  %30 = or i1 %29, %28
  br i1 %30, label %40, label %31

31:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %26) #13, !srcloc !10
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %26, ptr nonnull %26, i32 1, ptr nonnull elementtype(i32) %26) #13, !srcloc !22
  %33 = extractvalue { i32, i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = icmp sgt i32 %33, 0
  br i1 %36, label %40, label %37, !prof !12

37:                                               ; preds = %35
  tail call void @refcount_warn_saturate(ptr noundef nonnull %26, i32 noundef 3) #13
  br label %40

38:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %39 = getelementptr inbounds %struct.posix_acl, ptr %26, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %39, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %40

40:                                               ; preds = %38, %37, %35, %22
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @posix_acl_release(ptr noundef %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #13, !srcloc !10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #13, !srcloc !22
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %12, label %9, !prof !12

9:                                                ; preds = %7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #13
  br label %12

10:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %11 = getelementptr inbounds %struct.posix_acl, ptr %0, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %11, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %12

12:                                               ; preds = %10, %9, %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @forget_cached_acl(ptr noundef %0, i32 noundef %1) #0 {
  switch i32 %1, label %7 [
    i32 32768, label %3
    i32 16384, label %5
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 5
  br label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 6
  br label %8

7:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/posix_acl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 36, 0\0A.popsection", ""() #13, !srcloc !8
  unreachable

8:                                                ; preds = %5, %3
  %9 = phi ptr [ %6, %5 ], [ %4, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #13, !srcloc !10
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 -1, ptr %9) #13, !srcloc !19
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = inttoptr i32 %11 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !25
  %13 = and i32 %11, 1
  %14 = icmp ne i32 %13, 0
  %15 = icmp eq i32 %11, 0
  %16 = or i1 %15, %14
  br i1 %16, label %26, label %17

17:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %12) #13, !srcloc !10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %12, ptr nonnull %12, i32 1, ptr nonnull elementtype(i32) %12) #13, !srcloc !22
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = icmp sgt i32 %19, 0
  br i1 %22, label %26, label %23, !prof !12

23:                                               ; preds = %21
  tail call void @refcount_warn_saturate(ptr noundef nonnull %12, i32 noundef 3) #13
  br label %26

24:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %25 = getelementptr inbounds %struct.posix_acl, ptr %12, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %25, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %26

26:                                               ; preds = %24, %23, %21, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @forget_all_cached_acls(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #13, !srcloc !10
  %3 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 -1, ptr %2) #13, !srcloc !19
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = inttoptr i32 %4 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !25
  %6 = and i32 %4, 1
  %7 = icmp ne i32 %6, 0
  %8 = icmp eq i32 %4, 0
  %9 = or i1 %8, %7
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #13, !srcloc !10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #13, !srcloc !22
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = icmp sgt i32 %12, 0
  br i1 %15, label %19, label %16, !prof !12

16:                                               ; preds = %14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #13
  br label %19

17:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %18 = getelementptr inbounds %struct.posix_acl, ptr %5, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %18, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %19

19:                                               ; preds = %17, %16, %14, %1
  %20 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #13, !srcloc !10
  %21 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 -1, ptr %20) #13, !srcloc !19
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = inttoptr i32 %22 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !25
  %24 = and i32 %22, 1
  %25 = icmp ne i32 %24, 0
  %26 = icmp eq i32 %22, 0
  %27 = or i1 %26, %25
  br i1 %27, label %37, label %28

28:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %23) #13, !srcloc !10
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %23, ptr nonnull %23, i32 1, ptr nonnull elementtype(i32) %23) #13, !srcloc !22
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = icmp sgt i32 %30, 0
  br i1 %33, label %37, label %34, !prof !12

34:                                               ; preds = %32
  tail call void @refcount_warn_saturate(ptr noundef nonnull %23, i32 noundef 3) #13
  br label %37

35:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %36 = getelementptr inbounds %struct.posix_acl, ptr %23, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %36, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %37

37:                                               ; preds = %35, %34, %32, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_acl(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @get_cached_acl(ptr noundef %0, i32 noundef %1)
  %4 = ptrtoint ptr %3 to i32
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %91, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65536
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %91, label %14

14:                                               ; preds = %7
  %15 = tail call ptr @llvm.thread.pointer() #13
  %16 = getelementptr i8, ptr %15, i32 1
  switch i32 %1, label %21 [
    i32 32768, label %17
    i32 16384, label %19
  ]

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 5
  br label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 6
  br label %22

21:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/posix_acl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 36, 0\0A.popsection", ""() #13, !srcloc !8
  unreachable

22:                                               ; preds = %19, %17
  %23 = phi ptr [ %20, %19 ], [ %18, %17 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !26
  %24 = ptrtoint ptr %16 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #13, !srcloc !10
  br label %25

25:                                               ; preds = %25, %22
  %26 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %23, i32 -1, i32 %24) #13, !srcloc !27
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %25

29:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !28
  %30 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 7
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.inode_operations, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %59

35:                                               ; preds = %29
  switch i32 %1, label %40 [
    i32 32768, label %36
    i32 16384, label %38
  ]

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 5
  br label %41

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 6
  br label %41

40:                                               ; preds = %35
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/posix_acl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 36, 0\0A.popsection", ""() #13, !srcloc !8
  unreachable

41:                                               ; preds = %38, %36
  %42 = phi ptr [ %39, %38 ], [ %37, %36 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #13, !srcloc !10
  %43 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %42) #13, !srcloc !19
  %44 = extractvalue { i32, i32 } %43, 0
  %45 = inttoptr i32 %44 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  %46 = and i32 %44, 1
  %47 = icmp ne i32 %46, 0
  %48 = icmp eq i32 %44, 0
  %49 = or i1 %48, %47
  br i1 %49, label %91, label %50

50:                                               ; preds = %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %45) #13, !srcloc !10
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %45, ptr nonnull %45, i32 1, ptr nonnull elementtype(i32) %45) #13, !srcloc !22
  %52 = extractvalue { i32, i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = icmp sgt i32 %52, 0
  br i1 %55, label %91, label %56, !prof !12

56:                                               ; preds = %54
  tail call void @refcount_warn_saturate(ptr noundef nonnull %45, i32 noundef 3) #13
  br label %91

57:                                               ; preds = %50
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %58 = getelementptr inbounds %struct.posix_acl, ptr %45, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %58, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %91

59:                                               ; preds = %29
  %60 = tail call ptr %33(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false) #13
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #13, !srcloc !10
  br label %63

63:                                               ; preds = %63, %62
  %64 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %23, i32 %24, i32 -1) #13, !srcloc !27
  %65 = extractvalue { i32, i32 } %64, 0
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %63

67:                                               ; preds = %63
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !30
  br label %91

68:                                               ; preds = %59
  %69 = icmp eq ptr %60, null
  br i1 %69, label %80, label %70

70:                                               ; preds = %68
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %60) #13, !srcloc !10
  %71 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %60, ptr nonnull %60, i32 1, ptr nonnull elementtype(i32) %60) #13, !srcloc !17
  %72 = extractvalue { i32, i32, i32 } %71, 0
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74, !prof !18

74:                                               ; preds = %70
  %75 = add i32 %72, 1
  %76 = or i32 %75, %72
  %77 = icmp sgt i32 %76, -1
  br i1 %77, label %80, label %78, !prof !12

78:                                               ; preds = %74, %70
  %79 = phi i32 [ 2, %70 ], [ 1, %74 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %60, i32 noundef %79) #13
  br label %80

80:                                               ; preds = %78, %74, %68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !31
  %81 = ptrtoint ptr %60 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #13, !srcloc !10
  br label %82

82:                                               ; preds = %82, %80
  %83 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %23, i32 %24, i32 %81) #13, !srcloc !27
  %84 = extractvalue { i32, i32 } %83, 0
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %82

86:                                               ; preds = %82
  %87 = extractvalue { i32, i32 } %83, 1
  %88 = inttoptr i32 %87 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !32
  %89 = icmp eq ptr %16, %88
  br i1 %89, label %91, label %90, !prof !12

90:                                               ; preds = %86
  tail call fastcc void @posix_acl_release(ptr noundef %60)
  br label %91

91:                                               ; preds = %90, %86, %67, %57, %56, %54, %41, %7, %2
  %92 = phi ptr [ %60, %67 ], [ %3, %2 ], [ null, %7 ], [ %60, %90 ], [ %60, %86 ], [ null, %41 ], [ null, %54 ], [ null, %56 ], [ null, %57 ]
  ret ptr %92
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @posix_acl_init(ptr noundef %0, i32 noundef %1) #3 {
  store volatile i32 1, ptr %0, align 4
  %3 = getelementptr inbounds %struct.posix_acl, ptr %0, i32 0, i32 2
  store i32 %1, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @posix_acl_alloc(i32 noundef %0, i32 noundef %1) #0 {
  %3 = shl i32 %0, 3
  %4 = add i32 %3, 16
  %5 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %4, i32 noundef %1) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  store volatile i32 1, ptr %5, align 64
  %8 = getelementptr inbounds %struct.posix_acl, ptr %5, i32 0, i32 2
  store i32 %0, ptr %8, align 4
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi ptr [ %5, %7 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @posix_acl_valid(ptr nocapture readnone %0, ptr noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.posix_acl, ptr %1, i32 0, i32 3
  %4 = getelementptr inbounds %struct.posix_acl, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr %struct.posix_acl_entry, ptr %3, i32 %5
  %7 = icmp ult ptr %3, %6
  br i1 %7, label %8, label %48

8:                                                ; preds = %42, %2
  %9 = phi i32 [ %45, %42 ], [ 0, %2 ]
  %10 = phi i32 [ %44, %42 ], [ 1, %2 ]
  %11 = phi ptr [ %46, %42 ], [ %3, %2 ]
  %12 = getelementptr inbounds %struct.posix_acl_entry, ptr %11, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = icmp ult i16 %13, 8
  br i1 %14, label %15, label %48

15:                                               ; preds = %8
  %16 = load i16, ptr %11, align 4
  %17 = sext i16 %16 to i32
  switch i32 %17, label %48 [
    i32 1, label %18
    i32 2, label %20
    i32 4, label %26
    i32 8, label %28
    i32 16, label %34
    i32 32, label %36
  ]

18:                                               ; preds = %15
  %19 = icmp eq i32 %10, 1
  br i1 %19, label %42, label %48

20:                                               ; preds = %15
  %21 = icmp eq i32 %10, 2
  br i1 %21, label %22, label %48

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.posix_acl_entry, ptr %11, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %48, label %42

26:                                               ; preds = %15
  %27 = icmp eq i32 %10, 2
  br i1 %27, label %42, label %48

28:                                               ; preds = %15
  %29 = icmp eq i32 %10, 8
  br i1 %29, label %30, label %48

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.posix_acl_entry, ptr %11, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %48, label %42

34:                                               ; preds = %15
  %35 = icmp eq i32 %10, 8
  br i1 %35, label %42, label %48

36:                                               ; preds = %15
  %37 = icmp eq i32 %10, 32
  br i1 %37, label %42, label %38

38:                                               ; preds = %36
  %39 = icmp ne i32 %10, 8
  %40 = icmp ne i32 %9, 0
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %38, %36, %34, %30, %26, %22, %18
  %43 = phi i32 [ 0, %36 ], [ 0, %38 ], [ -22, %34 ], [ -22, %30 ], [ -22, %26 ], [ -22, %22 ], [ -22, %18 ]
  %44 = phi i32 [ 0, %36 ], [ 0, %38 ], [ 32, %34 ], [ 8, %30 ], [ 8, %26 ], [ 2, %22 ], [ 2, %18 ]
  %45 = phi i32 [ %9, %36 ], [ 0, %38 ], [ %9, %34 ], [ 1, %30 ], [ %9, %26 ], [ 1, %22 ], [ %9, %18 ]
  %46 = getelementptr %struct.posix_acl_entry, ptr %11, i32 1
  %47 = icmp ult ptr %46, %6
  br i1 %47, label %8, label %48

48:                                               ; preds = %42, %38, %34, %30, %28, %26, %22, %20, %18, %15, %8, %2
  %49 = phi i32 [ -22, %2 ], [ -22, %15 ], [ -22, %38 ], [ -22, %34 ], [ -22, %30 ], [ -22, %28 ], [ -22, %26 ], [ -22, %22 ], [ -22, %20 ], [ -22, %18 ], [ -22, %8 ], [ %43, %42 ]
  ret i32 %49
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @posix_acl_equiv_mode(ptr noundef readonly %0, ptr noundef %1) #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %53, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.posix_acl, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.posix_acl, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.posix_acl_entry, ptr %5, i32 %7
  %9 = icmp ult ptr %5, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %40, %4
  %11 = phi i32 [ %42, %40 ], [ 0, %4 ]
  %12 = phi i16 [ %41, %40 ], [ 0, %4 ]
  %13 = phi ptr [ %43, %40 ], [ %5, %4 ]
  %14 = load i16, ptr %13, align 4
  %15 = sext i16 %14 to i32
  switch i32 %15, label %53 [
    i32 1, label %16
    i32 4, label %22
    i32 32, label %28
    i32 16, label %33
    i32 2, label %40
    i32 8, label %40
  ]

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.posix_acl_entry, ptr %13, i32 0, i32 1
  %18 = load i16, ptr %17, align 2
  %19 = shl i16 %18, 6
  %20 = and i16 %19, 448
  %21 = or i16 %20, %12
  br label %40

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.posix_acl_entry, ptr %13, i32 0, i32 1
  %24 = load i16, ptr %23, align 2
  %25 = shl i16 %24, 3
  %26 = and i16 %25, 56
  %27 = or i16 %26, %12
  br label %40

28:                                               ; preds = %10
  %29 = getelementptr inbounds %struct.posix_acl_entry, ptr %13, i32 0, i32 1
  %30 = load i16, ptr %29, align 2
  %31 = and i16 %30, 7
  %32 = or i16 %31, %12
  br label %40

33:                                               ; preds = %10
  %34 = and i16 %12, -57
  %35 = getelementptr inbounds %struct.posix_acl_entry, ptr %13, i32 0, i32 1
  %36 = load i16, ptr %35, align 2
  %37 = shl i16 %36, 3
  %38 = and i16 %37, 56
  %39 = or i16 %38, %34
  br label %40

40:                                               ; preds = %33, %28, %22, %16, %10, %10
  %41 = phi i16 [ %39, %33 ], [ %32, %28 ], [ %27, %22 ], [ %21, %16 ], [ %12, %10 ], [ %12, %10 ]
  %42 = phi i32 [ 1, %33 ], [ %11, %28 ], [ %11, %22 ], [ %11, %16 ], [ 1, %10 ], [ 1, %10 ]
  %43 = getelementptr %struct.posix_acl_entry, ptr %13, i32 1
  %44 = icmp ult ptr %43, %8
  br i1 %44, label %10, label %45

45:                                               ; preds = %40, %4
  %46 = phi i16 [ 0, %4 ], [ %41, %40 ]
  %47 = phi i32 [ 0, %4 ], [ %42, %40 ]
  %48 = icmp eq ptr %1, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i16, ptr %1, align 2
  %51 = and i16 %50, -512
  %52 = or i16 %51, %46
  store i16 %52, ptr %1, align 2
  br label %53

53:                                               ; preds = %49, %45, %10, %2
  %54 = phi i32 [ 0, %2 ], [ %47, %49 ], [ %47, %45 ], [ -22, %10 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @posix_acl_from_mode(i16 noundef zeroext %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !12

5:                                                ; preds = %2
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 1, i32 2
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 0, %2 ], [ %8, %5 ]
  %11 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %10, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef %1, i32 noundef 40) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %9
  store volatile i32 1, ptr %13, align 8
  %16 = getelementptr inbounds %struct.posix_acl, ptr %13, i32 0, i32 2
  store i32 3, ptr %16, align 4
  %17 = getelementptr inbounds %struct.posix_acl, ptr %13, i32 0, i32 3
  store i16 1, ptr %17, align 8
  %18 = lshr i16 %0, 6
  %19 = and i16 %18, 7
  %20 = getelementptr inbounds %struct.posix_acl_entry, ptr %17, i32 0, i32 1
  store i16 %19, ptr %20, align 2
  %21 = getelementptr %struct.posix_acl, ptr %13, i32 1, i32 1, i32 1
  store i16 4, ptr %21, align 8
  %22 = lshr i16 %0, 3
  %23 = and i16 %22, 7
  %24 = getelementptr inbounds %struct.posix_acl_entry, ptr %21, i32 0, i32 1
  store i16 %23, ptr %24, align 2
  %25 = getelementptr %struct.posix_acl, ptr %13, i32 2
  store i16 32, ptr %25, align 8
  %26 = and i16 %0, 7
  %27 = getelementptr inbounds %struct.posix_acl_entry, ptr %25, i32 0, i32 1
  store i16 %26, ptr %27, align 2
  br label %28

28:                                               ; preds = %15, %9
  %29 = phi ptr [ %13, %15 ], [ inttoptr (i32 -12 to ptr), %9 ]
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @posix_acl_permission(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = and i32 %3, 7
  %6 = getelementptr inbounds %struct.posix_acl, ptr %2, i32 0, i32 3
  %7 = getelementptr inbounds %struct.posix_acl, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.posix_acl_entry, ptr %6, i32 %8
  %10 = icmp ult ptr %6, %9
  br i1 %10, label %11, label %90

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %13 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  br label %14

14:                                               ; preds = %62, %11
  %15 = phi ptr [ %6, %11 ], [ %64, %62 ]
  %16 = phi i32 [ 0, %11 ], [ %63, %62 ]
  %17 = load i16, ptr %15, align 4
  %18 = sext i16 %17 to i32
  switch i32 %18, label %90 [
    i32 1, label %19
    i32 2, label %27
    i32 4, label %37
    i32 8, label %48
    i32 16, label %62
    i32 32, label %60
  ]

19:                                               ; preds = %14
  %20 = load i32, ptr %13, align 4
  %21 = tail call ptr @llvm.thread.pointer() #13
  %22 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 83
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %20, %25
  br i1 %26, label %83, label %62

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.posix_acl_entry, ptr %15, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = tail call ptr @llvm.thread.pointer() #13
  %31 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 83
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.cred, ptr %32, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %29, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %54, %42, %27
  br label %66

37:                                               ; preds = %14
  %38 = load i32, ptr %12, align 8
  %39 = insertvalue [1 x i32] poison, i32 %38, 0
  %40 = tail call i32 @in_group_p([1 x i32] %39) #13
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %62, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.posix_acl_entry, ptr %15, i32 0, i32 1
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  %46 = and i32 %5, %45
  %47 = icmp eq i32 %46, %5
  br i1 %47, label %36, label %62

48:                                               ; preds = %14
  %49 = getelementptr inbounds %struct.posix_acl_entry, ptr %15, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = insertvalue [1 x i32] poison, i32 %50, 0
  %52 = tail call i32 @in_group_p([1 x i32] %51) #13
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.posix_acl_entry, ptr %15, i32 0, i32 1
  %56 = load i16, ptr %55, align 2
  %57 = zext i16 %56 to i32
  %58 = and i32 %5, %57
  %59 = icmp eq i32 %58, %5
  br i1 %59, label %36, label %62

60:                                               ; preds = %14
  %61 = icmp eq i32 %16, 0
  br i1 %61, label %83, label %90

62:                                               ; preds = %54, %48, %42, %37, %27, %19, %14
  %63 = phi i32 [ %16, %14 ], [ 1, %54 ], [ %16, %48 ], [ 1, %42 ], [ %16, %37 ], [ %16, %27 ], [ %16, %19 ]
  %64 = getelementptr %struct.posix_acl_entry, ptr %15, i32 1
  %65 = icmp ult ptr %64, %9
  br i1 %65, label %14, label %90

66:                                               ; preds = %70, %36
  %67 = phi ptr [ %68, %70 ], [ %15, %36 ]
  %68 = getelementptr %struct.posix_acl_entry, ptr %67, i32 1
  %69 = icmp eq ptr %68, %9
  br i1 %69, label %83, label %70

70:                                               ; preds = %66
  %71 = load i16, ptr %68, align 4
  %72 = icmp eq i16 %71, 16
  br i1 %72, label %73, label %66

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.posix_acl_entry, ptr %15, i32 0, i32 1
  %75 = load i16, ptr %74, align 2
  %76 = getelementptr %struct.posix_acl_entry, ptr %67, i32 1, i32 1
  %77 = load i16, ptr %76, align 2
  %78 = and i16 %77, %75
  %79 = zext i16 %78 to i32
  %80 = and i32 %5, %79
  %81 = icmp eq i32 %80, %5
  %82 = select i1 %81, i32 0, i32 -13
  br label %90

83:                                               ; preds = %66, %60, %19
  %84 = getelementptr inbounds %struct.posix_acl_entry, ptr %15, i32 0, i32 1
  %85 = load i16, ptr %84, align 2
  %86 = zext i16 %85 to i32
  %87 = and i32 %5, %86
  %88 = icmp eq i32 %87, %5
  %89 = select i1 %88, i32 0, i32 -13
  br label %90

90:                                               ; preds = %83, %73, %62, %60, %14, %4
  %91 = phi i32 [ -13, %60 ], [ %82, %73 ], [ %89, %83 ], [ -5, %4 ], [ -5, %62 ], [ -5, %14 ]
  ret i32 %91
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__posix_acl_create(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.posix_acl, ptr %4, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 3
  %10 = add i32 %9, 16
  %11 = tail call ptr @kmemdup(ptr noundef nonnull %4, i32 noundef %10, i32 noundef %1) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %6
  store volatile i32 1, ptr %11, align 4
  %14 = tail call fastcc i32 @posix_acl_create_masq(ptr noundef nonnull %11, ptr noundef %2)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %11) #13, !srcloc !10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #13, !srcloc !22
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = icmp sgt i32 %18, 0
  br i1 %21, label %25, label %22, !prof !12

22:                                               ; preds = %20
  tail call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef 3) #13
  br label %25

23:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %24 = getelementptr inbounds %struct.posix_acl, ptr %11, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %24, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %25

25:                                               ; preds = %23, %22, %20, %13, %6
  %26 = phi ptr [ null, %6 ], [ null, %23 ], [ null, %22 ], [ null, %20 ], [ %11, %13 ]
  %27 = phi i32 [ -12, %6 ], [ %14, %23 ], [ %14, %22 ], [ %14, %20 ], [ %14, %13 ]
  %28 = load ptr, ptr %0, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %28) #13, !srcloc !10
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %28, ptr nonnull %28, i32 1, ptr nonnull elementtype(i32) %28) #13, !srcloc !22
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = icmp sgt i32 %32, 0
  br i1 %35, label %39, label %36, !prof !12

36:                                               ; preds = %34
  tail call void @refcount_warn_saturate(ptr noundef nonnull %28, i32 noundef 3) #13
  br label %39

37:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %38 = getelementptr inbounds %struct.posix_acl, ptr %28, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %38, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %39

39:                                               ; preds = %37, %36, %34, %25, %3
  %40 = phi i32 [ %27, %25 ], [ %27, %34 ], [ %27, %36 ], [ %27, %37 ], [ -12, %3 ]
  %41 = phi ptr [ %26, %25 ], [ %26, %34 ], [ %26, %36 ], [ %26, %37 ], [ null, %3 ]
  store ptr %41, ptr %0, align 4
  ret i32 %40
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @posix_acl_create_masq(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.posix_acl, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.posix_acl, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr %struct.posix_acl_entry, ptr %3, i32 %5
  %7 = icmp ult ptr %3, %6
  br i1 %7, label %8, label %67

8:                                                ; preds = %2
  %9 = load i16, ptr %1, align 2
  br label %10

10:                                               ; preds = %36, %8
  %11 = phi i32 [ %40, %36 ], [ 0, %8 ]
  %12 = phi i16 [ %39, %36 ], [ %9, %8 ]
  %13 = phi ptr [ %38, %36 ], [ null, %8 ]
  %14 = phi ptr [ %37, %36 ], [ null, %8 ]
  %15 = phi ptr [ %41, %36 ], [ %3, %8 ]
  %16 = load i16, ptr %15, align 4
  %17 = sext i16 %16 to i32
  switch i32 %17, label %67 [
    i32 1, label %18
    i32 2, label %36
    i32 8, label %36
    i32 4, label %27
    i32 32, label %28
    i32 16, label %35
  ]

18:                                               ; preds = %10
  %19 = lshr i16 %12, 6
  %20 = or i16 %19, -8
  %21 = getelementptr inbounds %struct.posix_acl_entry, ptr %15, i32 0, i32 1
  %22 = load i16, ptr %21, align 2
  %23 = and i16 %22, %20
  store i16 %23, ptr %21, align 2
  %24 = shl i16 %23, 6
  %25 = or i16 %24, -449
  %26 = and i16 %25, %12
  br label %36

27:                                               ; preds = %10
  br label %36

28:                                               ; preds = %10
  %29 = or i16 %12, -8
  %30 = getelementptr inbounds %struct.posix_acl_entry, ptr %15, i32 0, i32 1
  %31 = load i16, ptr %30, align 2
  %32 = and i16 %31, %29
  store i16 %32, ptr %30, align 2
  %33 = or i16 %32, -8
  %34 = and i16 %33, %12
  br label %36

35:                                               ; preds = %10
  br label %36

36:                                               ; preds = %35, %28, %27, %18, %10, %10
  %37 = phi ptr [ %14, %35 ], [ %14, %28 ], [ %15, %27 ], [ %14, %18 ], [ %14, %10 ], [ %14, %10 ]
  %38 = phi ptr [ %15, %35 ], [ %13, %28 ], [ %13, %27 ], [ %13, %18 ], [ %13, %10 ], [ %13, %10 ]
  %39 = phi i16 [ %12, %35 ], [ %34, %28 ], [ %12, %27 ], [ %26, %18 ], [ %12, %10 ], [ %12, %10 ]
  %40 = phi i32 [ 1, %35 ], [ %11, %28 ], [ %11, %27 ], [ %11, %18 ], [ 1, %10 ], [ 1, %10 ]
  %41 = getelementptr %struct.posix_acl_entry, ptr %15, i32 1
  %42 = icmp ult ptr %41, %6
  br i1 %42, label %10, label %43

43:                                               ; preds = %36
  %44 = icmp eq ptr %38, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %43
  %46 = lshr i16 %39, 3
  %47 = or i16 %46, -8
  %48 = getelementptr inbounds %struct.posix_acl_entry, ptr %38, i32 0, i32 1
  %49 = load i16, ptr %48, align 2
  %50 = and i16 %49, %47
  store i16 %50, ptr %48, align 2
  br label %59

51:                                               ; preds = %43
  %52 = icmp eq ptr %37, null
  br i1 %52, label %67, label %53

53:                                               ; preds = %51
  %54 = lshr i16 %39, 3
  %55 = or i16 %54, -8
  %56 = getelementptr inbounds %struct.posix_acl_entry, ptr %37, i32 0, i32 1
  %57 = load i16, ptr %56, align 2
  %58 = and i16 %57, %55
  store i16 %58, ptr %56, align 2
  br label %59

59:                                               ; preds = %53, %45
  %60 = phi i16 [ %50, %45 ], [ %58, %53 ]
  %61 = shl i16 %60, 3
  %62 = or i16 %61, -57
  %63 = and i16 %62, %39
  %64 = load i16, ptr %1, align 2
  %65 = and i16 %64, -512
  %66 = or i16 %63, %65
  store i16 %66, ptr %1, align 2
  br label %67

67:                                               ; preds = %59, %51, %10, %2
  %68 = phi i32 [ %40, %59 ], [ -5, %51 ], [ -5, %2 ], [ -5, %10 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__posix_acl_chmod(ptr nocapture noundef %0, i32 noundef %1, i16 noundef zeroext %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %72, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.posix_acl, ptr %4, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 3
  %10 = add i32 %9, 16
  %11 = tail call ptr @kmemdup(ptr noundef nonnull %4, i32 noundef %10, i32 noundef %1) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %58, label %13

13:                                               ; preds = %6
  store volatile i32 1, ptr %11, align 4
  %14 = getelementptr inbounds %struct.posix_acl, ptr %11, i32 0, i32 3
  %15 = getelementptr inbounds %struct.posix_acl, ptr %11, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.posix_acl_entry, ptr %14, i32 %16
  %18 = icmp ult ptr %14, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %13
  %20 = and i16 %2, 7
  %21 = lshr i16 %2, 6
  %22 = and i16 %21, 7
  br label %23

23:                                               ; preds = %35, %19
  %24 = phi ptr [ %14, %19 ], [ %38, %35 ]
  %25 = phi ptr [ null, %19 ], [ %37, %35 ]
  %26 = phi ptr [ null, %19 ], [ %36, %35 ]
  %27 = load i16, ptr %24, align 4
  %28 = sext i16 %27 to i32
  switch i32 %28, label %49 [
    i32 1, label %29
    i32 2, label %35
    i32 8, label %35
    i32 4, label %31
    i32 16, label %32
    i32 32, label %33
  ]

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.posix_acl_entry, ptr %24, i32 0, i32 1
  store i16 %22, ptr %30, align 2
  br label %35

31:                                               ; preds = %23
  br label %35

32:                                               ; preds = %23
  br label %35

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.posix_acl_entry, ptr %24, i32 0, i32 1
  store i16 %20, ptr %34, align 2
  br label %35

35:                                               ; preds = %33, %32, %31, %29, %23, %23
  %36 = phi ptr [ %26, %33 ], [ %26, %32 ], [ %24, %31 ], [ %26, %23 ], [ %26, %23 ], [ %26, %29 ]
  %37 = phi ptr [ %25, %33 ], [ %24, %32 ], [ %25, %31 ], [ %25, %23 ], [ %25, %23 ], [ %25, %29 ]
  %38 = getelementptr %struct.posix_acl_entry, ptr %24, i32 1
  %39 = icmp ult ptr %38, %17
  br i1 %39, label %23, label %40

40:                                               ; preds = %35
  %41 = icmp eq ptr %37, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  %43 = icmp eq ptr %36, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %42, %40
  %45 = phi ptr [ %37, %40 ], [ %36, %42 ]
  %46 = lshr i16 %2, 3
  %47 = and i16 %46, 7
  %48 = getelementptr inbounds %struct.posix_acl_entry, ptr %45, i32 0, i32 1
  store i16 %47, ptr %48, align 2
  br label %58

49:                                               ; preds = %42, %23, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %11) #13, !srcloc !10
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #13, !srcloc !22
  %51 = extractvalue { i32, i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = icmp sgt i32 %51, 0
  br i1 %54, label %58, label %55, !prof !12

55:                                               ; preds = %53
  tail call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef 3) #13
  br label %58

56:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %57 = getelementptr inbounds %struct.posix_acl, ptr %11, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %57, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %58

58:                                               ; preds = %56, %55, %53, %44, %6
  %59 = phi ptr [ null, %6 ], [ null, %56 ], [ null, %55 ], [ null, %53 ], [ %11, %44 ]
  %60 = phi i32 [ -12, %6 ], [ -5, %56 ], [ -5, %55 ], [ -5, %53 ], [ 0, %44 ]
  %61 = load ptr, ptr %0, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %72, label %63

63:                                               ; preds = %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %61) #13, !srcloc !10
  %64 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %61, ptr nonnull %61, i32 1, ptr nonnull elementtype(i32) %61) #13, !srcloc !22
  %65 = extractvalue { i32, i32, i32 } %64, 0
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = icmp sgt i32 %65, 0
  br i1 %68, label %72, label %69, !prof !12

69:                                               ; preds = %67
  tail call void @refcount_warn_saturate(ptr noundef nonnull %61, i32 noundef 3) #13
  br label %72

70:                                               ; preds = %63
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %71 = getelementptr inbounds %struct.posix_acl, ptr %61, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %71, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %72

72:                                               ; preds = %70, %69, %67, %58, %3
  %73 = phi i32 [ %60, %58 ], [ %60, %67 ], [ %60, %69 ], [ %60, %70 ], [ -12, %3 ]
  %74 = phi ptr [ %59, %58 ], [ %59, %67 ], [ %59, %69 ], [ %59, %70 ], [ null, %3 ]
  store ptr %74, ptr %0, align 4
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @posix_acl_chmod(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 65536
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %45, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 7
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.inode_operations, ptr %13, i32 0, i32 20
  %15 = load ptr, ptr %14, align 16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %45, label %17

17:                                               ; preds = %11
  %18 = tail call ptr @get_acl(ptr noundef %1, i32 noundef 32768)
  store ptr %18, ptr %4, align 4
  %19 = icmp eq ptr %18, null
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  %21 = or i1 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = icmp eq ptr %18, inttoptr (i32 -95 to ptr)
  %24 = ptrtoint ptr %18 to i32
  %25 = select i1 %23, i32 0, i32 %24
  br label %45

26:                                               ; preds = %17
  %27 = call i32 @__posix_acl_chmod(ptr noundef nonnull %4, i32 noundef 3264, i16 noundef zeroext %2)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load ptr, ptr %12, align 8
  %31 = getelementptr inbounds %struct.inode_operations, ptr %30, i32 0, i32 20
  %32 = load ptr, ptr %31, align 16
  %33 = load ptr, ptr %4, align 4
  %34 = tail call i32 %32(ptr noundef %0, ptr noundef %1, ptr noundef %33, i32 noundef 32768) #13
  %35 = icmp eq ptr %33, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %33) #13, !srcloc !10
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %33, ptr nonnull %33, i32 1, ptr nonnull elementtype(i32) %33) #13, !srcloc !22
  %38 = extractvalue { i32, i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = icmp sgt i32 %38, 0
  br i1 %41, label %45, label %42, !prof !12

42:                                               ; preds = %40
  tail call void @refcount_warn_saturate(ptr noundef nonnull %33, i32 noundef 3) #13
  br label %45

43:                                               ; preds = %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %44 = getelementptr inbounds %struct.posix_acl, ptr %33, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %44, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %45

45:                                               ; preds = %43, %42, %40, %29, %26, %22, %11, %3
  %46 = phi i32 [ 0, %3 ], [ -95, %11 ], [ %27, %26 ], [ %34, %29 ], [ %34, %40 ], [ %34, %42 ], [ %34, %43 ], [ %25, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @posix_acl_create(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  store ptr null, ptr %3, align 4
  store ptr null, ptr %2, align 4
  %5 = load i16, ptr %1, align 2
  %6 = and i16 %5, -4096
  %7 = icmp eq i16 %6, -24576
  br i1 %7, label %57, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 65536
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %57, label %15

15:                                               ; preds = %8
  %16 = tail call ptr @get_acl(ptr noundef %0, i32 noundef 16384)
  %17 = ptrtoint ptr %16 to i32
  switch i32 %17, label %24 [
    i32 0, label %18
    i32 -95, label %18
  ]

18:                                               ; preds = %15, %15
  %19 = tail call i32 @current_umask() #13
  %20 = load i16, ptr %1, align 2
  %21 = trunc i32 %19 to i16
  %22 = xor i16 %21, -1
  %23 = and i16 %20, %22
  store i16 %23, ptr %1, align 2
  br label %57

24:                                               ; preds = %15
  %25 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %57, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.posix_acl, ptr %16, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 %28, 3
  %30 = add i32 %29, 16
  %31 = tail call ptr @kmemdup(ptr noundef nonnull %16, i32 noundef %30, i32 noundef 3136) #13
  %32 = icmp eq ptr %31, null
  br i1 %32, label %47, label %33

33:                                               ; preds = %26
  store volatile i32 1, ptr %31, align 4
  %34 = tail call fastcc i32 @posix_acl_create_masq(ptr noundef nonnull %31, ptr noundef %1)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %33
  %37 = icmp eq i32 %34, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  tail call fastcc void @posix_acl_release(ptr noundef nonnull %31)
  br label %40

39:                                               ; preds = %36
  store ptr %31, ptr %3, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = load i16, ptr %1, align 2
  %42 = and i16 %41, -4096
  %43 = icmp eq i16 %42, 16384
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call fastcc void @posix_acl_release(ptr noundef nonnull %16)
  br label %57

45:                                               ; preds = %40
  store ptr %16, ptr %2, align 4
  br label %57

46:                                               ; preds = %33
  tail call fastcc void @posix_acl_release(ptr noundef nonnull %31)
  br label %47

47:                                               ; preds = %46, %26
  %48 = phi i32 [ %34, %46 ], [ -12, %26 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %16) #13, !srcloc !10
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %16, ptr nonnull %16, i32 1, ptr nonnull elementtype(i32) %16) #13, !srcloc !22
  %50 = extractvalue { i32, i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = icmp sgt i32 %50, 0
  br i1 %53, label %57, label %54, !prof !12

54:                                               ; preds = %52
  tail call void @refcount_warn_saturate(ptr noundef nonnull %16, i32 noundef 3) #13
  br label %57

55:                                               ; preds = %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %56 = getelementptr inbounds %struct.posix_acl, ptr %16, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %56, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %57

57:                                               ; preds = %55, %54, %52, %45, %44, %24, %18, %8, %4
  %58 = phi i32 [ 0, %18 ], [ 0, %8 ], [ 0, %4 ], [ 0, %45 ], [ 0, %44 ], [ %48, %52 ], [ %48, %54 ], [ %48, %55 ], [ %17, %24 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @posix_acl_update_mode(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3) #0 {
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  %6 = load i16, ptr %1, align 8
  store i16 %6, ptr %5, align 2
  %7 = load ptr, ptr %3, align 4
  %8 = call i32 @posix_acl_equiv_mode(ptr noundef %7, ptr noundef nonnull %5)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %4
  %11 = icmp eq i32 %8, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  store ptr null, ptr %3, align 4
  br label %13

13:                                               ; preds = %12, %10
  %14 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %15 = load i32, ptr %14, align 8
  %16 = insertvalue [1 x i32] poison, i32 %15, 0
  %17 = call i32 @in_group_p([1 x i32] %16) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %0, ptr noundef %1, i32 noundef 4) #13
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = load i16, ptr %5, align 2
  %23 = and i16 %22, -1025
  store i16 %23, ptr %5, align 2
  br label %24

24:                                               ; preds = %21, %19, %13
  %25 = load i16, ptr %5, align 2
  store i16 %25, ptr %2, align 2
  br label %26

26:                                               ; preds = %24, %4
  %27 = phi i32 [ 0, %24 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable_wrt_inode_uidgid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @posix_acl_fix_xattr_from_user(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @posix_acl_fix_xattr_to_user(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @posix_acl_from_xattr(ptr nocapture readnone %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr %struct.posix_acl_xattr_header, ptr %1, i32 1
  %5 = icmp eq ptr %1, null
  br i1 %5, label %53, label %6

6:                                                ; preds = %3
  %7 = icmp ult i32 %2, 4
  br i1 %7, label %53, label %8

8:                                                ; preds = %6
  %9 = load i32, ptr %1, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %53

11:                                               ; preds = %8
  %12 = add i32 %2, -4
  %13 = and i32 %12, 7
  %14 = icmp eq i32 %13, 0
  %15 = lshr i32 %12, 3
  %16 = select i1 %14, i32 %15, i32 -1
  br i1 %14, label %17, label %53

17:                                               ; preds = %11
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %53, label %19

19:                                               ; preds = %17
  %20 = shl nuw i32 %16, 3
  %21 = add i32 %20, 16
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3136) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %53, label %24

24:                                               ; preds = %19
  store volatile i32 1, ptr %22, align 64
  %25 = getelementptr inbounds %struct.posix_acl, ptr %22, i32 0, i32 2
  store i32 %16, ptr %25, align 4
  %26 = getelementptr %struct.posix_acl_xattr_entry, ptr %4, i32 %16
  %27 = icmp eq ptr %4, %26
  br i1 %27, label %53, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.posix_acl, ptr %22, i32 0, i32 3
  br label %30

30:                                               ; preds = %48, %28
  %31 = phi ptr [ %49, %48 ], [ %29, %28 ]
  %32 = phi ptr [ %50, %48 ], [ %4, %28 ]
  %33 = load i16, ptr %32, align 4
  store i16 %33, ptr %31, align 4
  %34 = getelementptr inbounds %struct.posix_acl_xattr_entry, ptr %32, i32 0, i32 1
  %35 = load i16, ptr %34, align 2
  %36 = getelementptr inbounds %struct.posix_acl_entry, ptr %31, i32 0, i32 1
  store i16 %35, ptr %36, align 2
  %37 = sext i16 %33 to i32
  switch i32 %37, label %52 [
    i32 1, label %48
    i32 4, label %48
    i32 16, label %48
    i32 32, label %48
    i32 2, label %38
    i32 8, label %43
  ]

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.posix_acl_entry, ptr %31, i32 0, i32 2
  %40 = getelementptr inbounds %struct.posix_acl_xattr_entry, ptr %32, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  store i32 %41, ptr %39, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %52, label %48

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.posix_acl_entry, ptr %31, i32 0, i32 2
  %45 = getelementptr inbounds %struct.posix_acl_xattr_entry, ptr %32, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr %44, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %52, label %48

48:                                               ; preds = %43, %38, %30, %30, %30, %30
  %49 = getelementptr %struct.posix_acl_entry, ptr %31, i32 1
  %50 = getelementptr %struct.posix_acl_xattr_entry, ptr %32, i32 1
  %51 = icmp eq ptr %50, %26
  br i1 %51, label %53, label %30

52:                                               ; preds = %43, %38, %30
  tail call fastcc void @posix_acl_release(ptr noundef nonnull %22)
  br label %53

53:                                               ; preds = %52, %48, %24, %19, %17, %11, %8, %6, %3
  %54 = phi ptr [ inttoptr (i32 -22 to ptr), %52 ], [ null, %3 ], [ null, %17 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -95 to ptr), %8 ], [ inttoptr (i32 -22 to ptr), %11 ], [ inttoptr (i32 -12 to ptr), %19 ], [ %22, %24 ], [ %22, %48 ]
  ret ptr %54
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @posix_acl_to_xattr(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2, i32 noundef %3) #5 {
  %5 = getelementptr inbounds %struct.posix_acl, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 %6, 3
  %8 = or i32 %7, 4
  %9 = icmp eq ptr %2, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %4
  %11 = icmp ugt i32 %8, %3
  br i1 %11, label %37, label %12

12:                                               ; preds = %10
  store i32 2, ptr %2, align 4
  %13 = load i32, ptr %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %12
  %16 = getelementptr %struct.posix_acl_xattr_header, ptr %2, i32 1
  br label %17

17:                                               ; preds = %30, %15
  %18 = phi i32 [ %33, %30 ], [ 0, %15 ]
  %19 = phi ptr [ %34, %30 ], [ %16, %15 ]
  %20 = getelementptr %struct.posix_acl, ptr %1, i32 0, i32 3, i32 %18
  %21 = load i16, ptr %20, align 4
  store i16 %21, ptr %19, align 4
  %22 = getelementptr %struct.posix_acl, ptr %1, i32 0, i32 3, i32 %18, i32 1
  %23 = load i16, ptr %22, align 2
  %24 = getelementptr inbounds %struct.posix_acl_xattr_entry, ptr %19, i32 0, i32 1
  store i16 %23, ptr %24, align 2
  %25 = load i16, ptr %20, align 4
  %26 = sext i16 %25 to i32
  switch i32 %26, label %30 [
    i32 2, label %27
    i32 8, label %27
  ]

27:                                               ; preds = %17, %17
  %28 = getelementptr %struct.posix_acl, ptr %1, i32 0, i32 3, i32 %18, i32 2
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %17
  %31 = phi i32 [ -1, %17 ], [ %29, %27 ]
  %32 = getelementptr inbounds %struct.posix_acl_xattr_entry, ptr %19, i32 0, i32 2
  store i32 %31, ptr %32, align 4
  %33 = add nuw i32 %18, 1
  %34 = getelementptr %struct.posix_acl_xattr_entry, ptr %19, i32 1
  %35 = load i32, ptr %5, align 4
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %17, label %37

37:                                               ; preds = %30, %12, %10, %4
  %38 = phi i32 [ %8, %4 ], [ -34, %10 ], [ %8, %12 ], [ %8, %30 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_posix_acl(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 65536
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 7
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.inode_operations, ptr %13, i32 0, i32 20
  %15 = load ptr, ptr %14, align 16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %38, label %17

17:                                               ; preds = %11
  %18 = icmp eq i32 %2, 16384
  br i1 %18, label %19, label %26

19:                                               ; preds = %17
  %20 = load i16, ptr %1, align 8
  %21 = and i16 %20, -4096
  %22 = icmp eq i16 %21, 16384
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = icmp eq ptr %3, null
  %25 = select i1 %24, i32 0, i32 -13
  br label %38

26:                                               ; preds = %19, %17
  %27 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %0, ptr noundef %1) #13
  br i1 %27, label %28, label %38

28:                                               ; preds = %26
  %29 = icmp eq ptr %3, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %28
  %31 = tail call i32 @posix_acl_valid(ptr undef, ptr noundef nonnull %3)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30, %28
  %34 = load ptr, ptr %12, align 8
  %35 = getelementptr inbounds %struct.inode_operations, ptr %34, i32 0, i32 20
  %36 = load ptr, ptr %35, align 16
  %37 = tail call i32 %36(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %2) #13
  br label %38

38:                                               ; preds = %33, %30, %26, %23, %11, %4
  %39 = phi i32 [ %31, %30 ], [ %37, %33 ], [ %25, %23 ], [ -95, %4 ], [ -95, %11 ], [ -1, %26 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @posix_acl_xattr_list(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 65536
  %9 = icmp ne i32 %8, 0
  ret i1 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_acl_xattr_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr nocapture noundef readnone %3, ptr noundef writeonly %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 65536
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %69, label %13

13:                                               ; preds = %6
  %14 = load i16, ptr %2, align 8
  %15 = and i16 %14, -4096
  %16 = icmp eq i16 %15, -24576
  br i1 %16, label %69, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.xattr_handler, ptr %0, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = tail call ptr @get_acl(ptr noundef %2, i32 noundef %19)
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = ptrtoint ptr %20 to i32
  br label %69

24:                                               ; preds = %17
  %25 = icmp eq ptr %20, null
  br i1 %25, label %69, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.posix_acl, ptr %20, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 %28, 3
  %30 = or i32 %29, 4
  %31 = icmp eq ptr %4, null
  br i1 %31, label %59, label %32

32:                                               ; preds = %26
  %33 = icmp ugt i32 %30, %5
  br i1 %33, label %59, label %34

34:                                               ; preds = %32
  store i32 2, ptr %4, align 4
  %35 = load i32, ptr %27, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %59, label %37

37:                                               ; preds = %34
  %38 = getelementptr %struct.posix_acl_xattr_header, ptr %4, i32 1
  br label %39

39:                                               ; preds = %52, %37
  %40 = phi i32 [ %55, %52 ], [ 0, %37 ]
  %41 = phi ptr [ %56, %52 ], [ %38, %37 ]
  %42 = getelementptr %struct.posix_acl, ptr %20, i32 0, i32 3, i32 %40
  %43 = load i16, ptr %42, align 4
  store i16 %43, ptr %41, align 4
  %44 = getelementptr %struct.posix_acl, ptr %20, i32 0, i32 3, i32 %40, i32 1
  %45 = load i16, ptr %44, align 2
  %46 = getelementptr inbounds %struct.posix_acl_xattr_entry, ptr %41, i32 0, i32 1
  store i16 %45, ptr %46, align 2
  %47 = load i16, ptr %42, align 4
  %48 = sext i16 %47 to i32
  switch i32 %48, label %52 [
    i32 2, label %49
    i32 8, label %49
  ]

49:                                               ; preds = %39, %39
  %50 = getelementptr %struct.posix_acl, ptr %20, i32 0, i32 3, i32 %40, i32 2
  %51 = load i32, ptr %50, align 4
  br label %52

52:                                               ; preds = %49, %39
  %53 = phi i32 [ -1, %39 ], [ %51, %49 ]
  %54 = getelementptr inbounds %struct.posix_acl_xattr_entry, ptr %41, i32 0, i32 2
  store i32 %53, ptr %54, align 4
  %55 = add nuw i32 %40, 1
  %56 = getelementptr %struct.posix_acl_xattr_entry, ptr %41, i32 1
  %57 = load i32, ptr %27, align 4
  %58 = icmp ult i32 %55, %57
  br i1 %58, label %39, label %59

59:                                               ; preds = %52, %34, %32, %26
  %60 = phi i32 [ %30, %26 ], [ -34, %32 ], [ %30, %34 ], [ %30, %52 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %20) #13, !srcloc !10
  %61 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %20, ptr nonnull %20, i32 1, ptr nonnull elementtype(i32) %20) #13, !srcloc !22
  %62 = extractvalue { i32, i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = icmp sgt i32 %62, 0
  br i1 %65, label %69, label %66, !prof !12

66:                                               ; preds = %64
  tail call void @refcount_warn_saturate(ptr noundef nonnull %20, i32 noundef 3) #13
  br label %69

67:                                               ; preds = %59
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %68 = getelementptr inbounds %struct.posix_acl, ptr %20, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %68, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %69

69:                                               ; preds = %67, %66, %64, %24, %22, %13, %6
  %70 = phi i32 [ %23, %22 ], [ -95, %6 ], [ -95, %13 ], [ -61, %24 ], [ %60, %64 ], [ %60, %66 ], [ %60, %67 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @posix_acl_xattr_set(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3, ptr nocapture noundef readnone %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = icmp eq ptr %5, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = tail call ptr @posix_acl_from_xattr(ptr undef, ptr noundef nonnull %5, i32 noundef %6)
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = ptrtoint ptr %11 to i32
  br label %65

15:                                               ; preds = %10, %8
  %16 = phi ptr [ %11, %10 ], [ null, %8 ]
  %17 = getelementptr inbounds %struct.xattr_handler, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 65536
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %52, label %25

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 7
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.inode_operations, ptr %27, i32 0, i32 20
  %29 = load ptr, ptr %28, align 16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %52, label %31

31:                                               ; preds = %25
  %32 = icmp eq i32 %18, 16384
  br i1 %32, label %33, label %40

33:                                               ; preds = %31
  %34 = load i16, ptr %3, align 8
  %35 = and i16 %34, -4096
  %36 = icmp eq i16 %35, 16384
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = icmp eq ptr %16, null
  %39 = select i1 %38, i32 0, i32 -13
  br label %52

40:                                               ; preds = %33, %31
  %41 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %1, ptr noundef %3) #13
  br i1 %41, label %42, label %52

42:                                               ; preds = %40
  %43 = icmp eq ptr %16, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %42
  %45 = tail call i32 @posix_acl_valid(ptr undef, ptr noundef nonnull %16) #13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44, %42
  %48 = load ptr, ptr %26, align 8
  %49 = getelementptr inbounds %struct.inode_operations, ptr %48, i32 0, i32 20
  %50 = load ptr, ptr %49, align 16
  %51 = tail call i32 %50(ptr noundef %1, ptr noundef %3, ptr noundef %16, i32 noundef %18) #13
  br label %52

52:                                               ; preds = %47, %40, %37, %25, %15
  %53 = phi i32 [ %51, %47 ], [ %39, %37 ], [ -95, %15 ], [ -95, %25 ], [ -1, %40 ]
  %54 = icmp eq ptr %16, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %52, %44
  %56 = phi i32 [ %53, %52 ], [ %45, %44 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %16) #13, !srcloc !10
  %57 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %16, ptr nonnull %16, i32 1, ptr nonnull elementtype(i32) %16) #13, !srcloc !22
  %58 = extractvalue { i32, i32, i32 } %57, 0
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = icmp sgt i32 %58, 0
  br i1 %61, label %65, label %62, !prof !12

62:                                               ; preds = %60
  tail call void @refcount_warn_saturate(ptr noundef nonnull %16, i32 noundef 3) #13
  br label %65

63:                                               ; preds = %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %64 = getelementptr inbounds %struct.posix_acl, ptr %16, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %64, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %65

65:                                               ; preds = %63, %62, %60, %52, %13
  %66 = phi i32 [ %14, %13 ], [ %53, %52 ], [ %56, %60 ], [ %56, %62 ], [ %56, %63 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_set_acl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i16, align 2
  %6 = alloca %struct.timespec64, align 8
  %7 = icmp eq i32 %3, 32768
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  %9 = load i16, ptr %1, align 8
  store i16 %9, ptr %5, align 2
  %10 = call i32 @posix_acl_equiv_mode(ptr noundef %2, ptr noundef nonnull %5) #13
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = icmp eq i32 %10, 0
  %14 = select i1 %13, ptr null, ptr %2
  %15 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %16 = load i32, ptr %15, align 8
  %17 = insertvalue [1 x i32] poison, i32 %16, 0
  %18 = call i32 @in_group_p([1 x i32] %17) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %0, ptr noundef %1, i32 noundef 4) #13
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = load i16, ptr %5, align 2
  %24 = and i16 %23, -1025
  store i16 %24, ptr %5, align 2
  br label %25

25:                                               ; preds = %22, %20, %12
  %26 = load i16, ptr %5, align 2
  store i16 %26, ptr %1, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  br label %28

27:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  br label %31

28:                                               ; preds = %25, %4
  %29 = phi ptr [ %2, %4 ], [ %14, %25 ]
  %30 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %6, ptr noundef %1) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  call void @set_cached_acl(ptr noundef %1, i32 noundef %3, ptr noundef %29)
  br label %31

31:                                               ; preds = %28, %27
  %32 = phi i32 [ 0, %28 ], [ %10, %27 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_acl_create(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store ptr null, ptr %3, align 4, !annotation !33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4, !annotation !33
  %5 = call i32 @posix_acl_create(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 4
  tail call void @set_cached_acl(ptr noundef %1, i32 noundef 16384, ptr noundef %8)
  %9 = load ptr, ptr %4, align 4
  tail call void @set_cached_acl(ptr noundef %1, i32 noundef 32768, ptr noundef %9)
  %10 = icmp eq ptr %8, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %8) #13, !srcloc !10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %8, ptr nonnull %8, i32 1, ptr nonnull elementtype(i32) %8) #13, !srcloc !22
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = icmp sgt i32 %13, 0
  br i1 %16, label %20, label %17, !prof !12

17:                                               ; preds = %15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %8, i32 noundef 3) #13
  br label %20

18:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %19 = getelementptr inbounds %struct.posix_acl, ptr %8, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %19, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %20

20:                                               ; preds = %18, %17, %15, %7
  %21 = icmp eq ptr %9, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #13, !srcloc !10
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #13, !srcloc !22
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = icmp sgt i32 %24, 0
  br i1 %27, label %31, label %28, !prof !12

28:                                               ; preds = %26
  tail call void @refcount_warn_saturate(ptr noundef nonnull %9, i32 noundef 3) #13
  br label %31

29:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %30 = getelementptr inbounds %struct.posix_acl, ptr %9, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %30, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %31

31:                                               ; preds = %29, %28, %26, %20, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

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
!8 = !{i64 2152104983, i64 2152105461, i64 2152105020, i64 2152105076, i64 2152105110, i64 2152105134, i64 2152105175, i64 2152105196, i64 2152105224, i64 2152105258}
!9 = !{i64 2149345436}
!10 = !{i64 432713, i64 2147922684, i64 2147922710, i64 2147922757, i64 2147922779, i64 2147922807, i64 2147922827}
!11 = !{i64 418776, i64 418800, i64 418821, i64 418838, i64 418855}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149345653}
!14 = !{i64 2152109340}
!15 = !{i64 2152109182}
!16 = !{i64 2152116854}
!17 = !{i64 2147936354, i64 2147936386, i64 2147936415, i64 2147936449, i64 2147936480, i64 2147936503}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 442160, i64 442177, i64 442201, i64 442227, i64 442245}
!20 = !{i64 2152117188}
!21 = !{i64 2148036552}
!22 = !{i64 2147938711, i64 2147938743, i64 2147938772, i64 2147938806, i64 2147938837, i64 2147938860}
!23 = !{i64 2149296016}
!24 = !{i64 2152119218}
!25 = !{i64 2152119548}
!26 = !{i64 2152127297}
!27 = !{i64 444884, i64 444905, i64 444928, i64 444947, i64 444966}
!28 = !{i64 2152127692}
!29 = !{i64 2152128684}
!30 = !{i64 2152129079}
!31 = !{i64 2152130803}
!32 = !{i64 2152131096}
!33 = !{!"auto-init"}
