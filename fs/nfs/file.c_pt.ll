; ModuleID = '/llk/IR/fs/nfs/file.c_pt.bc'
source_filename = "../fs/nfs/file.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_check_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_check_flags\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_check_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_file_release:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_file_release\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_file_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_file_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_file_llseek\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_file_llseek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_file_read:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_file_read\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_file_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_file_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_file_mmap\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_file_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_file_fsync:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_file_fsync\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_file_fsync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_file_write:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_file_write\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_file_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_lock\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_flock:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_flock\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_flock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_file_operations:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_file_operations\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_file_operations:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.151, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.152, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.153, ptr, %struct.address_space, %struct.list_head, %union.anon.154, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.151 = type { i32 }
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
%union.anon.152 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.153 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.154 = type { ptr }
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
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.__kernel_sockaddr_storage = type { %union.anon.85 }
%union.anon.85 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.nfs_iostats = type { [8 x i64], [27 x i32], [20 x i8] }
%struct.file = type { %union.anon.6, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.6 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.16, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfs_open_context = type { %struct.nfs_lock_context, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.callback_head }
%struct.nfs_lock_context = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.atomic_t, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pnfs_layoutdriver_type = type { %struct.list_head, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.7, %union.anon.34, %struct.atomic_t }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.34 = type { %struct.atomic_t }
%struct.anon.36 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.swap_info_struct = type { %struct.percpu_ref, i32, i16, %struct.plist_node, i8, i32, ptr, ptr, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.rb_root, ptr, ptr, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.percpu_ref = type { i32, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.145, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.125 }
%struct.llist_node = type { ptr }
%union.anon.125 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.126 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.145 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.84 }
%union.anon.84 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_fault = type { %struct.anon.18, i32, ptr, ptr, %union.anon.19, ptr, ptr, ptr, ptr, ptr }
%struct.anon.18 = type { ptr, i32, i32, i32 }
%union.anon.19 = type { i32 }

@__kstrtab_nfs_check_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_check_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_check_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_check_flags to i32), ptr @__kstrtab_nfs_check_flags, ptr @__kstrtabns_nfs_check_flags }, section "___ksymtab_gpl+nfs_check_flags", align 4
@__kstrtab_nfs_file_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_file_release = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_file_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_file_release to i32), ptr @__kstrtab_nfs_file_release, ptr @__kstrtabns_nfs_file_release }, section "___ksymtab_gpl+nfs_file_release", align 4
@__kstrtab_nfs_file_llseek = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_file_llseek = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_file_llseek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_file_llseek to i32), ptr @__kstrtab_nfs_file_llseek, ptr @__kstrtabns_nfs_file_llseek }, section "___ksymtab_gpl+nfs_file_llseek", align 4
@__kstrtab_nfs_file_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_file_read = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_file_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_file_read to i32), ptr @__kstrtab_nfs_file_read, ptr @__kstrtabns_nfs_file_read }, section "___ksymtab_gpl+nfs_file_read", align 4
@nfs_file_vm_ops = internal constant %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @filemap_fault, ptr null, ptr @filemap_map_pages, ptr null, ptr @nfs_vm_page_mkwrite, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_nfs_file_mmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_file_mmap = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_file_mmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_file_mmap to i32), ptr @__kstrtab_nfs_file_mmap, ptr @__kstrtabns_nfs_file_mmap }, section "___ksymtab_gpl+nfs_file_mmap", align 4
@__kstrtab_nfs_file_fsync = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_file_fsync = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_file_fsync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_file_fsync to i32), ptr @__kstrtab_nfs_file_fsync, ptr @__kstrtabns_nfs_file_fsync }, section "___ksymtab_gpl+nfs_file_fsync", align 4
@nfs_file_aops = dso_local local_unnamed_addr constant %struct.address_space_operations { ptr @nfs_writepage, ptr @nfs_readpage, ptr @nfs_writepages, ptr @__set_page_dirty_nobuffers, ptr @nfs_readpages, ptr null, ptr @nfs_write_begin, ptr @nfs_write_end, ptr null, ptr @nfs_invalidate_page, ptr @nfs_release_page, ptr null, ptr @nfs_direct_IO, ptr @nfs_migrate_page, ptr null, ptr null, ptr @nfs_launder_page, ptr null, ptr @nfs_check_dirty_writeback, ptr @generic_error_remove_page, ptr @nfs_swap_activate, ptr @nfs_swap_deactivate }, align 4
@.str = private unnamed_addr constant [46 x i8] c"\016NFS: attempt to write to active swap file!\0A\00", align 1
@__kstrtab_nfs_file_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_file_write = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_file_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_file_write to i32), ptr @__kstrtab_nfs_file_write, ptr @__kstrtabns_nfs_file_write }, section "___ksymtab_gpl+nfs_file_write", align 4
@__kstrtab_nfs_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_lock to i32), ptr @__kstrtab_nfs_lock, ptr @__kstrtabns_nfs_lock }, section "___ksymtab_gpl+nfs_lock", align 4
@__kstrtab_nfs_flock = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_flock = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_flock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_flock to i32), ptr @__kstrtab_nfs_flock, ptr @__kstrtabns_nfs_flock }, section "___ksymtab_gpl+nfs_flock", align 4
@nfs_file_operations = dso_local constant %struct.file_operations { ptr null, ptr @nfs_file_llseek, ptr null, ptr null, ptr @nfs_file_read, ptr @nfs_file_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfs_file_mmap, i32 0, ptr @nfs_file_open, ptr @nfs_file_flush, ptr @nfs_file_release, ptr @nfs_file_fsync, ptr null, ptr @nfs_lock, ptr null, ptr null, ptr @nfs_check_flags, ptr @nfs_flock, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr @simple_nosetlease, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_nfs_file_operations = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_file_operations = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_file_operations = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_file_operations to i32), ptr @__kstrtab_nfs_file_operations, ptr @__kstrtabns_nfs_file_operations }, section "___ksymtab_gpl+nfs_file_operations", align 4
@__tracepoint_nfs_fsync_enter = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_nfs_fsync_exit = external dso_local global %struct.tracepoint, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"\014swap activate: swapfile has holes\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_nfs_check_flags, ptr @__ksymtab_nfs_file_fsync, ptr @__ksymtab_nfs_file_llseek, ptr @__ksymtab_nfs_file_mmap, ptr @__ksymtab_nfs_file_operations, ptr @__ksymtab_nfs_file_read, ptr @__ksymtab_nfs_file_release, ptr @__ksymtab_nfs_file_write, ptr @__ksymtab_nfs_flock, ptr @__ksymtab_nfs_lock], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @nfs_check_flags(i32 noundef %0) #0 {
  %2 = and i32 %0, 66560
  %3 = icmp eq i32 %2, 66560
  %4 = select i1 %3, i32 -22, i32 0
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_file_release(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !9
  %8 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr %struct.nfs_iostats, ptr %9, i32 0, i32 1, i32 17
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #6, !srcloc !10
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #8, !srcloc !11
  tail call void @nfs_file_clear_open_context(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_file_clear_open_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @nfs_file_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #1 {
  %4 = icmp ugt i32 %2, 1
  br i1 %4, label %5, label %23

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 65536
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = tail call zeroext i1 @nfs_check_cache_invalid(ptr noundef %8, i32 noundef 2048) #8
  br i1 %18, label %19, label %23

19:                                               ; preds = %17, %5
  %20 = tail call i32 @__nfs_revalidate_inode(ptr noundef %12, ptr noundef %8) #8
  %21 = icmp sgt i32 %20, -1
  %22 = sext i32 %20 to i64
  br i1 %21, label %23, label %25

23:                                               ; preds = %19, %17, %3
  %24 = tail call i64 @generic_file_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #8
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i64 [ %22, %19 ], [ %24, %23 ]
  ret i64 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_file_read(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 131072
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @nfs_file_direct_read(ptr noundef %0, ptr noundef %1) #8
  br label %40

12:                                               ; preds = %2
  tail call void @nfs_start_io_read(ptr noundef %5) #8
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 17
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @nfs_revalidate_mapping(ptr noundef %5, ptr noundef %15) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %12
  %19 = tail call i32 @generic_file_read_iter(ptr noundef %0, ptr noundef %1) #8
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 27
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !9
  %27 = zext i32 %19 to i64
  %28 = getelementptr inbounds %struct.nfs_server, ptr %25, i32 0, i32 6
  %29 = load ptr, ptr %28, align 8
  %30 = ptrtoint ptr %29 to i32
  %31 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %32) #6, !srcloc !10
  %34 = add i32 %33, %30
  %35 = inttoptr i32 %34 to ptr
  %36 = load i64, ptr %35, align 8
  %37 = add i64 %36, %27
  store i64 %37, ptr %35, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #8, !srcloc !11
  br label %38

38:                                               ; preds = %21, %18, %12
  %39 = phi i32 [ %16, %12 ], [ %19, %21 ], [ %19, %18 ]
  tail call void @nfs_end_io_read(ptr noundef %5) #8
  br label %40

40:                                               ; preds = %38, %10
  %41 = phi i32 [ %11, %10 ], [ %39, %38 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_file_direct_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_start_io_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_revalidate_mapping(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_end_io_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_file_mmap(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @generic_file_mmap(ptr noundef %0, ptr noundef %1) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  store ptr @nfs_file_vm_ops, ptr %8, align 4
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @nfs_revalidate_mapping(ptr noundef %4, ptr noundef %10) #8
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i32 [ %5, %2 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_file_fsync(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_fsync_enter, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %4
  %12 = tail call ptr @llvm.thread.pointer() #8
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  %23 = tail call i32 @__traceiter_nfs_fsync_enter(ptr noundef null, ptr noundef %8) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  br label %24

24:                                               ; preds = %22, %11, %4
  %25 = icmp ne i32 %3, 0
  %26 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %27 = getelementptr inbounds %struct.nfs_open_context, ptr %6, i32 0, i32 7
  br label %28

28:                                               ; preds = %68, %24
  %29 = phi i64 [ %2, %24 ], [ 9223372036854775807, %68 ]
  %30 = phi i64 [ %1, %24 ], [ 0, %68 ]
  %31 = tail call i32 @file_write_and_wait_range(ptr noundef %0, i64 noundef %30, i64 noundef %29) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %71

33:                                               ; preds = %28
  %34 = load ptr, ptr %7, align 8
  %35 = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 27
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !9
  %40 = getelementptr inbounds %struct.nfs_server, ptr %38, i32 0, i32 6
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr %struct.nfs_iostats, ptr %41, i32 0, i32 1, i32 15
  %43 = ptrtoint ptr %42 to i32
  %44 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %45 = inttoptr i32 %44 to ptr
  %46 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %45) #6, !srcloc !10
  %47 = add i32 %46, %43
  %48 = inttoptr i32 %47 to ptr
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %39) #8, !srcloc !11
  %51 = tail call i32 @nfs_commit_inode(ptr noundef %34, i32 noundef 1) #8
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %33
  %54 = tail call i32 @file_check_and_advance_wb_err(ptr noundef %0) #8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = load ptr, ptr %26, align 4
  %58 = getelementptr inbounds %struct.super_block, ptr %57, i32 0, i32 27
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nfs_server, ptr %59, i32 0, i32 44
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %61, i32 0, i32 18
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 %65(ptr noundef %8, i1 noundef zeroext %25) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63, %56
  %69 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %27) #8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %28

71:                                               ; preds = %68, %63, %53, %33, %28
  %72 = phi i32 [ %31, %28 ], [ %54, %53 ], [ %66, %63 ], [ 0, %68 ], [ %51, %33 ]
  %73 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_fsync_exit, i32 0, i32 1), align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = tail call ptr @llvm.thread.pointer() #8
  %77 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %78 = load i32, ptr %77, align 8
  %79 = lshr i32 %78, 5
  %80 = getelementptr i32, ptr @__cpu_online_mask, i32 %79
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %78, 31
  %83 = shl nuw i32 1, %82
  %84 = and i32 %83, %81
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %75
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %87 = tail call i32 @__traceiter_nfs_fsync_exit(ptr noundef null, ptr noundef %8, i32 noundef %72) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br label %88

88:                                               ; preds = %86, %75, %71
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_writepage(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_readpage(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_writepages(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_nobuffers(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_readpages(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_write_begin(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef readnone %6) #1 {
  %8 = lshr i64 %2, 12
  %9 = trunc i64 %8 to i32
  %10 = trunc i64 %2 to i32
  %11 = and i32 %10, 4095
  %12 = add i32 %11, %3
  %13 = icmp eq i32 %11, 0
  %14 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %15 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  br label %16

16:                                               ; preds = %179, %7
  %17 = phi i1 [ false, %179 ], [ true, %7 ]
  %18 = tail call ptr @grab_cache_page_write_begin(ptr noundef %1, i32 noundef %9, i32 noundef %4) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %181, label %20

20:                                               ; preds = %16
  store ptr %18, ptr %5, align 4
  %21 = tail call i32 @nfs_flush_incompatible(ptr noundef %0, ptr noundef nonnull %18) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %20
  tail call void @unlock_page(ptr noundef nonnull %18) #8
  %24 = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 1
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28, !prof !16

28:                                               ; preds = %23
  %29 = add i32 %25, -1
  br label %32

30:                                               ; preds = %23
  %31 = ptrtoint ptr %18 to i32
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = inttoptr i32 %33 to ptr
  %35 = getelementptr inbounds %struct.page, ptr %34, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #8, !srcloc !18
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #8, !srcloc !19
  %37 = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %181

39:                                               ; preds = %32
  tail call void @__put_page(ptr noundef %34) #8
  br label %181

40:                                               ; preds = %20
  br i1 %17, label %41, label %181

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 1
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46, !prof !16

46:                                               ; preds = %41
  %47 = add i32 %43, -1
  br label %50

48:                                               ; preds = %41
  %49 = ptrtoint ptr %18 to i32
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = inttoptr i32 %51 to ptr
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %53, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  br label %181

57:                                               ; preds = %50
  %58 = load volatile i32, ptr %18, align 4
  %59 = and i32 %58, 8192
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %181

61:                                               ; preds = %57
  %62 = load volatile i32, ptr %42, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65, !prof !16

65:                                               ; preds = %61
  %66 = add i32 %62, -1
  br label %69

67:                                               ; preds = %61
  %68 = ptrtoint ptr %18 to i32
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = inttoptr i32 %70 to ptr
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %72, 524288
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load volatile i32, ptr %71, align 4
  %77 = and i32 %76, 1024
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79, !prof !16

79:                                               ; preds = %75
  %80 = tail call ptr @swapcache_mapping(ptr noundef %71) #8
  br label %84

81:                                               ; preds = %75, %69
  %82 = getelementptr inbounds %struct.anon.36, ptr %71, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  br label %84

84:                                               ; preds = %81, %79
  %85 = phi ptr [ %80, %79 ], [ %83, %81 ]
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.inode, ptr %86, i32 0, i32 22
  %88 = getelementptr inbounds %struct.inode, ptr %86, i32 0, i32 13
  br label %89

89:                                               ; preds = %97, %84
  %90 = load volatile i32, ptr %87, align 4
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %93, %89
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !23
  %94 = load volatile i32, ptr %87, align 4
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %93

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %90, %89 ], [ %94, %93 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  %99 = load i64, ptr %88, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  %100 = load volatile i32, ptr %87, align 4
  %101 = icmp eq i32 %100, %98
  br i1 %101, label %102, label %89

102:                                              ; preds = %97
  %103 = icmp sgt i64 %99, 0
  br i1 %103, label %104, label %181

104:                                              ; preds = %102
  %105 = load volatile i32, ptr %42, align 4
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108, !prof !16

108:                                              ; preds = %104
  %109 = add i32 %105, -1
  br label %112

110:                                              ; preds = %104
  %111 = ptrtoint ptr %18 to i32
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  %114 = inttoptr i32 %113 to ptr
  %115 = load volatile i32, ptr %114, align 4
  %116 = and i32 %115, 524288
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %112
  %119 = load volatile i32, ptr %114, align 4
  %120 = and i32 %119, 1024
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122, !prof !16

122:                                              ; preds = %118
  %123 = tail call i32 @__page_file_index(ptr noundef nonnull %18) #8
  br label %127

124:                                              ; preds = %118, %112
  %125 = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 1, i32 0, i32 2
  %126 = load i32, ptr %125, align 4
  br label %127

127:                                              ; preds = %124, %122
  %128 = phi i32 [ %123, %122 ], [ %126, %124 ]
  %129 = add nsw i64 %99, -1
  %130 = lshr i64 %129, 12
  %131 = trunc i64 %130 to i32
  %132 = icmp ult i32 %128, %131
  br i1 %132, label %139, label %133

133:                                              ; preds = %127
  %134 = icmp eq i32 %128, %131
  br i1 %134, label %135, label %181

135:                                              ; preds = %133
  %136 = trunc i64 %129 to i32
  %137 = and i32 %136, 4095
  %138 = add nuw nsw i32 %137, 1
  br label %139

139:                                              ; preds = %135, %127
  %140 = phi i32 [ 4096, %127 ], [ %138, %135 ]
  %141 = icmp uge i32 %12, %140
  %142 = and i1 %13, %141
  br i1 %142, label %181, label %143

143:                                              ; preds = %139
  %144 = load ptr, ptr %14, align 8
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.inode, ptr %145, i32 0, i32 8
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.super_block, ptr %147, i32 0, i32 27
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.nfs_server, ptr %149, i32 0, i32 44
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %158, label %153

153:                                              ; preds = %143
  %154 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %151, i32 0, i32 4
  %155 = load i32, ptr %154, align 4
  %156 = and i32 %155, 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153, %143
  %159 = load i32, ptr %15, align 8
  %160 = and i32 %159, 1
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %181, label %162

162:                                              ; preds = %158, %153
  %163 = tail call i32 @nfs_readpage(ptr noundef %0, ptr noundef nonnull %18) #8
  %164 = load volatile i32, ptr %42, align 4
  %165 = and i32 %164, 1
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167, !prof !16

167:                                              ; preds = %162
  %168 = add i32 %164, -1
  br label %171

169:                                              ; preds = %162
  %170 = ptrtoint ptr %18 to i32
  br label %171

171:                                              ; preds = %169, %167
  %172 = phi i32 [ %168, %167 ], [ %170, %169 ]
  %173 = inttoptr i32 %172 to ptr
  %174 = getelementptr inbounds %struct.page, ptr %173, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %174) #8, !srcloc !18
  %175 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %174, ptr %174, i32 1, ptr elementtype(i32) %174) #8, !srcloc !19
  %176 = extractvalue { i32, i32 } %175, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  tail call void @__put_page(ptr noundef %173) #8
  br label %179

179:                                              ; preds = %178, %171
  %180 = icmp eq i32 %163, 0
  br i1 %180, label %16, label %181

181:                                              ; preds = %179, %158, %139, %133, %102, %57, %56, %40, %39, %32, %16
  %182 = phi i32 [ %21, %32 ], [ %21, %39 ], [ 0, %56 ], [ 0, %102 ], [ 0, %133 ], [ 0, %57 ], [ 0, %139 ], [ 0, %158 ], [ %163, %179 ], [ 0, %40 ], [ -12, %16 ]
  ret i32 %182
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_write_end(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef readnone %6) #1 {
  %8 = trunc i64 %2 to i32
  %9 = and i32 %8, 4095
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !16

16:                                               ; preds = %7
  %17 = add i32 %13, -1
  br label %20

18:                                               ; preds = %7
  %19 = ptrtoint ptr %5 to i32
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = inttoptr i32 %21 to ptr
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  br label %115

27:                                               ; preds = %20
  %28 = load volatile i32, ptr %12, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31, !prof !16

31:                                               ; preds = %27
  %32 = add i32 %28, -1
  br label %35

33:                                               ; preds = %27
  %34 = ptrtoint ptr %5 to i32
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = inttoptr i32 %36 to ptr
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 524288
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load volatile i32, ptr %37, align 4
  %43 = and i32 %42, 1024
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45, !prof !16

45:                                               ; preds = %41
  %46 = tail call ptr @swapcache_mapping(ptr noundef %37) #8
  br label %50

47:                                               ; preds = %41, %35
  %48 = getelementptr inbounds %struct.anon.36, ptr %37, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi ptr [ %46, %45 ], [ %49, %47 ]
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 22
  %54 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 13
  br label %55

55:                                               ; preds = %63, %50
  %56 = load volatile i32, ptr %53, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %59, %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !23
  %60 = load volatile i32, ptr %53, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %59

63:                                               ; preds = %59, %55
  %64 = phi i32 [ %56, %55 ], [ %60, %59 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  %65 = load i64, ptr %54, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  %66 = load volatile i32, ptr %53, align 4
  %67 = icmp eq i32 %66, %64
  br i1 %67, label %68, label %55

68:                                               ; preds = %63
  %69 = icmp sgt i64 %65, 0
  br i1 %69, label %70, label %105

70:                                               ; preds = %68
  %71 = load volatile i32, ptr %12, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74, !prof !16

74:                                               ; preds = %70
  %75 = add i32 %71, -1
  br label %78

76:                                               ; preds = %70
  %77 = ptrtoint ptr %5 to i32
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = inttoptr i32 %79 to ptr
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %81, 524288
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load volatile i32, ptr %80, align 4
  %86 = and i32 %85, 1024
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88, !prof !16

88:                                               ; preds = %84
  %89 = tail call i32 @__page_file_index(ptr noundef %5) #8
  br label %93

90:                                               ; preds = %84, %78
  %91 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1, i32 0, i32 2
  %92 = load i32, ptr %91, align 4
  br label %93

93:                                               ; preds = %90, %88
  %94 = phi i32 [ %89, %88 ], [ %92, %90 ]
  %95 = add nsw i64 %65, -1
  %96 = lshr i64 %95, 12
  %97 = trunc i64 %96 to i32
  %98 = icmp ult i32 %94, %97
  br i1 %98, label %107, label %99

99:                                               ; preds = %93
  %100 = icmp eq i32 %94, %97
  br i1 %100, label %101, label %105

101:                                              ; preds = %99
  %102 = trunc i64 %95 to i32
  %103 = and i32 %102, 4095
  %104 = add nuw nsw i32 %103, 1
  br label %107

105:                                              ; preds = %99, %68
  %106 = add i32 %9, %4
  tail call void @zero_user_segments(ptr noundef %5, i32 noundef 0, i32 noundef %9, i32 noundef %106, i32 noundef 4096) #8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !26
  tail call void @_set_bit(i32 noundef 2, ptr noundef %5) #8
  br label %115

107:                                              ; preds = %101, %93
  %108 = phi i32 [ 4096, %93 ], [ %104, %101 ]
  %109 = add i32 %9, %4
  %110 = icmp ult i32 %109, %108
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  tail call void @zero_user_segments(ptr noundef %5, i32 noundef %109, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  %112 = icmp eq i32 %9, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %111
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !26
  tail call void @_set_bit(i32 noundef 2, ptr noundef %5) #8
  br label %115

114:                                              ; preds = %107
  tail call void @zero_user_segments(ptr noundef %5, i32 noundef %108, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  br label %115

115:                                              ; preds = %114, %113, %111, %105, %26
  %116 = tail call i32 @nfs_updatepage(ptr noundef %0, ptr noundef %5, i32 noundef %9, i32 noundef %4) #8
  tail call void @unlock_page(ptr noundef %5) #8
  %117 = load volatile i32, ptr %12, align 4
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120, !prof !16

120:                                              ; preds = %115
  %121 = add i32 %117, -1
  br label %124

122:                                              ; preds = %115
  %123 = ptrtoint ptr %5 to i32
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  %126 = inttoptr i32 %125 to ptr
  %127 = getelementptr inbounds %struct.page, ptr %126, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %127) #8, !srcloc !18
  %128 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %127, ptr %127, i32 1, ptr elementtype(i32) %127) #8, !srcloc !19
  %129 = extractvalue { i32, i32 } %128, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  tail call void @__put_page(ptr noundef %126) #8
  br label %132

132:                                              ; preds = %131, %124
  %133 = icmp slt i32 %116, 0
  br i1 %133, label %147, label %134

134:                                              ; preds = %132
  %135 = zext i32 %4 to i64
  %136 = load ptr, ptr %1, align 4
  %137 = getelementptr i8, ptr %136, i32 -16
  %138 = load i64, ptr %137, align 8
  %139 = add i64 %138, %135
  store i64 %139, ptr %137, align 8
  %140 = load ptr, ptr %1, align 4
  %141 = tail call zeroext i1 @nfs_ctx_key_to_expire(ptr noundef %11, ptr noundef %140) #8
  br i1 %141, label %142, label %146

142:                                              ; preds = %134
  %143 = load ptr, ptr %1, align 4
  %144 = tail call i32 @nfs_wb_all(ptr noundef %143) #8
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %142, %134
  br label %147

147:                                              ; preds = %146, %142, %132
  %148 = phi i32 [ %4, %146 ], [ %116, %132 ], [ %144, %142 ]
  ret i32 %148
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_invalidate_page(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = icmp ne i32 %1, 0
  %5 = icmp ult i32 %2, 4096
  %6 = or i1 %4, %5
  br i1 %6, label %45, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !16

12:                                               ; preds = %7
  %13 = add i32 %9, -1
  br label %16

14:                                               ; preds = %7
  %15 = ptrtoint ptr %0 to i32
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = inttoptr i32 %17 to ptr
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 524288
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load volatile i32, ptr %18, align 4
  %24 = and i32 %23, 1024
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26, !prof !16

26:                                               ; preds = %22
  %27 = tail call ptr @swapcache_mapping(ptr noundef %18) #8
  br label %31

28:                                               ; preds = %22, %16
  %29 = getelementptr inbounds %struct.anon.36, ptr %18, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi ptr [ %27, %26 ], [ %30, %28 ]
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @nfs_wb_page_cancel(ptr noundef %33, ptr noundef %0) #8
  %35 = load volatile i32, ptr %8, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38, !prof !16

38:                                               ; preds = %31
  %39 = add i32 %35, -1
  br label %42

40:                                               ; preds = %31
  %41 = ptrtoint ptr %0 to i32
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = inttoptr i32 %43 to ptr
  tail call void @folio_wait_private_2(ptr noundef %44) #8
  br label %45

45:                                               ; preds = %42, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nfs_release_page(ptr noundef %0, i32 noundef %1) #3 {
  %3 = load volatile i32, ptr %0, align 4
  %4 = lshr i32 %3, 13
  %5 = and i32 %4, 1
  %6 = xor i32 %5, 1
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_direct_IO(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_migrate_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_launder_page(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !16

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 524288
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load volatile i32, ptr %12, align 4
  %18 = and i32 %17, 1024
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !16

20:                                               ; preds = %16
  %21 = tail call ptr @swapcache_mapping(ptr noundef %12) #8
  br label %25

22:                                               ; preds = %16, %10
  %23 = getelementptr inbounds %struct.anon.36, ptr %12, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi ptr [ %21, %20 ], [ %24, %22 ]
  %27 = load ptr, ptr %26, align 4
  %28 = load volatile i32, ptr %2, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31, !prof !16

31:                                               ; preds = %25
  %32 = add i32 %28, -1
  br label %35

33:                                               ; preds = %25
  %34 = ptrtoint ptr %0 to i32
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = inttoptr i32 %36 to ptr
  tail call void @folio_wait_private_2(ptr noundef %37) #8
  %38 = tail call i32 @nfs_wb_page(ptr noundef %27, ptr noundef %0) #8
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_check_dirty_writeback(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !16

8:                                                ; preds = %3
  %9 = add i32 %5, -1
  br label %12

10:                                               ; preds = %3
  %11 = ptrtoint ptr %0 to i32
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = inttoptr i32 %13 to ptr
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 524288
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load volatile i32, ptr %14, align 4
  %20 = and i32 %19, 1024
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !16

22:                                               ; preds = %18
  %23 = tail call ptr @swapcache_mapping(ptr noundef %14) #8
  br label %27

24:                                               ; preds = %18, %12
  %25 = getelementptr inbounds %struct.anon.36, ptr %14, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi ptr [ %23, %22 ], [ %26, %24 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %59, label %30

30:                                               ; preds = %27
  %31 = load volatile i32, ptr %4, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34, !prof !16

34:                                               ; preds = %30
  %35 = add i32 %31, -1
  br label %38

36:                                               ; preds = %30
  %37 = ptrtoint ptr %0 to i32
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = inttoptr i32 %39 to ptr
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 524288
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load volatile i32, ptr %40, align 4
  %46 = and i32 %45, 1024
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %44, %38
  %49 = load ptr, ptr %28, align 4
  %50 = getelementptr i8, ptr %49, i32 -108
  %51 = load volatile i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load volatile i32, ptr %0, align 4
  %55 = and i32 %54, 8192
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53, %48
  %58 = phi ptr [ %2, %48 ], [ %1, %53 ]
  store i8 1, ptr %58, align 1
  br label %59

59:                                               ; preds = %57, %53, %44, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_error_remove_page(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_swap_activate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 21
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  %12 = load i64, ptr %11, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !27
  %13 = load i16, ptr %7, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !30
  %15 = shl i32 %10, 9
  %16 = zext i32 %15 to i64
  %17 = icmp sgt i64 %12, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #9
  br label %24

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = zext i32 %22 to i64
  store i64 %23, ptr %2, align 8
  br label %24

24:                                               ; preds = %20, %18
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal void @nfs_swap_deactivate(ptr nocapture noundef %0) #4 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_file_write(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = tail call i32 @nfs_key_timeout_notify(ptr noundef %3, ptr noundef %5) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %149

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 131072
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = tail call i32 @nfs_file_direct_write(ptr noundef %0, ptr noundef %1) #8
  br label %149

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 256
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %147

26:                                               ; preds = %21
  %27 = and i32 %16, 16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 22
  %33 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 13
  br label %34

34:                                               ; preds = %42, %29
  %35 = load volatile i32, ptr %32, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %38, %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !23
  %39 = load volatile i32, ptr %32, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %38

42:                                               ; preds = %38, %34
  %43 = phi i32 [ %35, %34 ], [ %39, %38 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  %44 = load i64, ptr %33, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  %45 = load volatile i32, ptr %32, align 4
  %46 = icmp eq i32 %45, %43
  br i1 %46, label %47, label %34

47:                                               ; preds = %42
  %48 = icmp sgt i64 %31, %44
  br i1 %48, label %49, label %62

49:                                               ; preds = %47, %26
  %50 = load ptr, ptr %6, align 4
  %51 = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 27
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 65536
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = tail call zeroext i1 @nfs_check_cache_invalid(ptr noundef %5, i32 noundef 2048) #8
  br i1 %58, label %59, label %62

59:                                               ; preds = %57, %49
  %60 = tail call i32 @__nfs_revalidate_inode(ptr noundef %52, ptr noundef %5) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %149

62:                                               ; preds = %59, %57, %47
  %63 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 17
  %64 = load ptr, ptr %63, align 8
  %65 = tail call i32 @nfs_clear_invalid_mapping(ptr noundef %64) #8
  %66 = load ptr, ptr %63, align 8
  %67 = getelementptr inbounds %struct.address_space, ptr %66, i32 0, i32 11
  %68 = tail call i32 @errseq_sample(ptr noundef %67) #8
  tail call void @nfs_start_io_write(ptr noundef %5) #8
  %69 = tail call i32 @generic_write_checks(ptr noundef %0, ptr noundef %1) #8
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  tail call void @nfs_end_io_write(ptr noundef %5) #8
  br label %149

72:                                               ; preds = %62
  %73 = tail call ptr @inode_to_bdi(ptr noundef %5) #8
  %74 = tail call ptr @llvm.thread.pointer() #8
  %75 = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 117
  store ptr %73, ptr %75, align 4
  %76 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %77 = load i64, ptr %76, align 8
  %78 = tail call i32 @generic_perform_write(ptr noundef %3, ptr noundef %1, i64 noundef %77) #8
  store ptr null, ptr %75, align 4
  tail call void @nfs_end_io_write(ptr noundef %5) #8
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %149, label %80

80:                                               ; preds = %72
  %81 = zext i32 %78 to i64
  %82 = load i64, ptr %76, align 8
  %83 = add i64 %82, %81
  store i64 %83, ptr %76, align 8
  %84 = and i32 %11, 16777216
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %80
  %87 = load ptr, ptr %63, align 8
  %88 = add i64 %83, -1
  %89 = tail call i32 @filemap_fdatawrite_range(ptr noundef %87, i64 noundef %82, i64 noundef %88) #8
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %149, label %91

91:                                               ; preds = %86, %80
  %92 = and i32 %11, 33554432
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr %63, align 8
  %96 = load i64, ptr %76, align 8
  %97 = sub i64 %96, %81
  %98 = add i64 %96, -1
  %99 = tail call i32 @filemap_fdatawait_range(ptr noundef %95, i64 noundef %97, i64 noundef %98) #8
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %149, label %101

101:                                              ; preds = %94, %91
  %102 = load i32, ptr %15, align 8
  %103 = and i32 %102, 2
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr %0, align 8
  %107 = load i64, ptr %76, align 8
  %108 = sub i64 %107, %81
  %109 = add i64 %107, -1
  %110 = lshr i32 %102, 2
  %111 = and i32 %110, 1
  %112 = xor i32 %111, 1
  %113 = tail call i32 @vfs_fsync_range(ptr noundef %106, i64 noundef %108, i64 noundef %109, i32 noundef %112) #8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %105
  %116 = icmp slt i32 %113, 0
  br i1 %116, label %149, label %117

117:                                              ; preds = %115, %105, %101
  %118 = phi i32 [ %113, %115 ], [ %78, %101 ], [ %78, %105 ]
  %119 = load ptr, ptr %63, align 8
  %120 = getelementptr inbounds %struct.address_space, ptr %119, i32 0, i32 11
  %121 = tail call i32 @errseq_check(ptr noundef %120, i32 noundef %68) #8
  switch i32 %121, label %122 [
    i32 -7, label %126
    i32 -116, label %126
    i32 -30, label %126
    i32 -12, label %126
    i32 -110, label %126
    i32 -13, label %126
    i32 -122, label %126
    i32 -27, label %126
    i32 -5, label %126
    i32 -28, label %126
  ]

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15
  %124 = load ptr, ptr %123, align 8
  %125 = tail call zeroext i1 @nfs_ctx_key_to_expire(ptr noundef %124, ptr noundef %5) #8
  br i1 %125, label %126, label %130

126:                                              ; preds = %122, %117, %117, %117, %117, %117, %117, %117, %117, %117, %117
  %127 = tail call i32 @nfs_wb_all(ptr noundef %5) #8
  %128 = icmp slt i32 %127, 0
  %129 = select i1 %128, i32 %127, i32 %118
  br label %130

130:                                              ; preds = %126, %122
  %131 = phi i32 [ %129, %126 ], [ %118, %122 ]
  %132 = load ptr, ptr %6, align 4
  %133 = getelementptr inbounds %struct.super_block, ptr %132, i32 0, i32 27
  %134 = load ptr, ptr %133, align 4
  %135 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !9
  %136 = getelementptr inbounds %struct.nfs_server, ptr %134, i32 0, i32 6
  %137 = load ptr, ptr %136, align 8
  %138 = getelementptr [8 x i64], ptr %137, i32 0, i32 1
  %139 = ptrtoint ptr %138 to i32
  %140 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %141 = inttoptr i32 %140 to ptr
  %142 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %141) #6, !srcloc !10
  %143 = add i32 %142, %139
  %144 = inttoptr i32 %143 to ptr
  %145 = load i64, ptr %144, align 8
  %146 = add i64 %145, %81
  store i64 %146, ptr %144, align 8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %135) #8, !srcloc !11
  br label %149

147:                                              ; preds = %21
  %148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %149

149:                                              ; preds = %147, %130, %115, %94, %86, %72, %71, %59, %19, %2
  %150 = phi i32 [ %20, %19 ], [ -26, %147 ], [ %12, %2 ], [ %60, %59 ], [ %78, %72 ], [ %89, %86 ], [ %99, %94 ], [ %113, %115 ], [ %131, %130 ], [ %69, %71 ]
  ret i32 %150
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_key_timeout_notify(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_file_direct_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_clear_invalid_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_start_io_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_checks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_perform_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_end_io_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_wb_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_lock(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !9
  %12 = getelementptr inbounds %struct.nfs_server, ptr %10, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr %struct.nfs_iostats, ptr %13, i32 0, i32 1, i32 16
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #6, !srcloc !10
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #8, !srcloc !11
  %23 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 6
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 4096
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %84

27:                                               ; preds = %3
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 27
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nfs_server, ptr %30, i32 0, i32 8
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 21
  %34 = and i32 %33, 1
  %35 = load ptr, ptr %30, align 8
  %36 = getelementptr inbounds %struct.nfs_client, ptr %35, i32 0, i32 12
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %37, i32 0, i32 43
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %27
  %42 = tail call i32 %39(ptr noundef %2) #8
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %84, label %44

44:                                               ; preds = %41, %27
  switch i32 %1, label %76 [
    i32 12, label %45
    i32 5, label %45
  ]

45:                                               ; preds = %44, %44
  %46 = load ptr, ptr %4, align 8
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 7
  %49 = load i8, ptr %48, align 4
  tail call void @posix_test_lock(ptr noundef %0, ptr noundef %2) #8
  %50 = load i8, ptr %48, align 4
  %51 = icmp eq i8 %50, 2
  br i1 %51, label %52, label %84

52:                                               ; preds = %45
  store i8 %49, ptr %48, align 4
  %53 = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 8
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.super_block, ptr %54, i32 0, i32 27
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.nfs_client, ptr %57, i32 0, i32 12
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %59, i32 0, i32 47
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 %61(ptr noundef %47, i32 noundef 1) #8
  %63 = or i32 %62, %34
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %52
  %66 = load ptr, ptr %53, align 4
  %67 = getelementptr inbounds %struct.super_block, ptr %66, i32 0, i32 27
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.nfs_client, ptr %69, i32 0, i32 12
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %71, i32 0, i32 42
  %73 = load ptr, ptr %72, align 4
  %74 = tail call i32 %73(ptr noundef %0, i32 noundef %1, ptr noundef %2) #8
  br label %84

75:                                               ; preds = %52
  store i8 2, ptr %48, align 4
  br label %84

76:                                               ; preds = %44
  %77 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 7
  %78 = load i8, ptr %77, align 4
  %79 = icmp eq i8 %78, 2
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = tail call fastcc i32 @do_unlk(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %34)
  br label %84

82:                                               ; preds = %76
  %83 = tail call fastcc i32 @do_setlk(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %34)
  br label %84

84:                                               ; preds = %82, %80, %75, %65, %45, %41, %3
  %85 = phi i32 [ -531, %3 ], [ %42, %41 ], [ %81, %80 ], [ %83, %82 ], [ 0, %45 ], [ 0, %75 ], [ %74, %65 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_unlk(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @nfs_wb_all(ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  %11 = tail call ptr @nfs_get_lock_context(ptr noundef %10) #8
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %21, label %13

13:                                               ; preds = %4
  %14 = tail call i32 @nfs_iocounter_wait(ptr noundef %11) #8
  tail call void @nfs_put_lock_context(ptr noundef %11) #8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 6
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %16, %13, %4
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 27
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nfs_client, ptr %28, i32 0, i32 12
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %30, i32 0, i32 42
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %0, i32 noundef %1, ptr noundef %2) #8
  br label %38

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = tail call i32 @locks_lock_inode_wait(ptr noundef %36, ptr noundef %2) #8
  br label %38

38:                                               ; preds = %34, %23, %16
  %39 = phi i32 [ %14, %16 ], [ %37, %34 ], [ %33, %23 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_setlk(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @nfs_sync_mapping(ptr noundef %6) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %4
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nfs_client, ptr %17, i32 0, i32 12
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %19, i32 0, i32 42
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %0, i32 noundef %1, ptr noundef %2) #8
  br label %27

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = tail call i32 @locks_lock_inode_wait(ptr noundef %25, ptr noundef %2) #8
  br label %27

27:                                               ; preds = %23, %12
  %28 = phi i32 [ %26, %23 ], [ %22, %12 ]
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %5, align 8
  %32 = tail call i32 @nfs_sync_mapping(ptr noundef %31) #8
  %33 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 27
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.nfs_client, ptr %37, i32 0, i32 12
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %39, i32 0, i32 47
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 %41(ptr noundef %7, i32 noundef 1) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %30
  tail call void @nfs_zap_caches(ptr noundef %7) #8
  %45 = load ptr, ptr %5, align 8
  %46 = getelementptr inbounds %struct.address_space, ptr %45, i32 0, i32 5
  %47 = load volatile ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = tail call i32 @nfs_revalidate_mapping(ptr noundef %7, ptr noundef %45) #8
  br label %51

51:                                               ; preds = %49, %44, %30, %27, %4
  %52 = phi i32 [ %8, %4 ], [ %28, %27 ], [ %28, %30 ], [ %28, %49 ], [ %28, %44 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_flock(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 27
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nfs_server, ptr %15, i32 0, i32 8
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 20
  %19 = and i32 %18, 1
  %20 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 7
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 2
  br i1 %22, label %23, label %25

23:                                               ; preds = %8
  %24 = tail call fastcc i32 @do_unlk(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %19)
  br label %27

25:                                               ; preds = %8
  %26 = tail call fastcc i32 @do_setlk(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %19)
  br label %27

27:                                               ; preds = %25, %23, %3
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ], [ -37, %3 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_file_open(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !9
  %8 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr %struct.nfs_iostats, ptr %9, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #6, !srcloc !10
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #8, !srcloc !11
  %19 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 66560
  %22 = icmp eq i32 %21, 66560
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = tail call i32 @nfs_open(ptr noundef %0, ptr noundef %1) #8
  br label %25

25:                                               ; preds = %23, %2
  %26 = phi i32 [ %24, %23 ], [ -22, %2 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_file_flush(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !9
  %10 = getelementptr inbounds %struct.nfs_server, ptr %8, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr %struct.nfs_iostats, ptr %11, i32 0, i32 1, i32 14
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #6, !srcloc !10
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #8, !srcloc !11
  %21 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.address_space, ptr %27, i32 0, i32 11
  %29 = tail call i32 @errseq_sample(ptr noundef %28) #8
  %30 = tail call i32 @nfs_wb_all(ptr noundef %4) #8
  %31 = load ptr, ptr %26, align 8
  %32 = getelementptr inbounds %struct.address_space, ptr %31, i32 0, i32 11
  %33 = tail call i32 @errseq_check(ptr noundef %32, i32 noundef %29) #8
  br label %34

34:                                               ; preds = %25, %2
  %35 = phi i32 [ %33, %25 ], [ 0, %2 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_nosetlease(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs_check_cache_invalid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nfs_revalidate_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_fsync_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_commit_inode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_check_and_advance_wb_err(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_fsync_exit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @grab_cache_page_write_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_flush_incompatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @swapcache_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_file_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_updatepage(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs_ctx_key_to_expire(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_wb_page_cancel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_wait_private_2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_wb_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fault(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_map_pages(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_vm_page_mkwrite(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.super_block, ptr %10, i32 0, i32 26, i32 2, i32 1
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !31
  %12 = load volatile i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %26, !prof !16

14:                                               ; preds = %1
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !9
  %16 = getelementptr %struct.super_block, ptr %10, i32 0, i32 26, i32 2, i32 1, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #6, !srcloc !10
  %22 = add i32 %21, %18
  %23 = inttoptr i32 %22 to ptr
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #8, !srcloc !11
  br label %28

26:                                               ; preds = %1
  %27 = tail call zeroext i1 @__percpu_down_read(ptr noundef %11, i1 noundef zeroext false) #8
  br label %28

28:                                               ; preds = %26, %14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !32
  %29 = load volatile i32, ptr %3, align 4
  %30 = and i32 %29, 16384
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 1
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38, !prof !16

38:                                               ; preds = %32
  %39 = add i32 %35, -1
  br label %42

40:                                               ; preds = %32
  %41 = ptrtoint ptr %33 to i32
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = inttoptr i32 %43 to ptr
  %45 = tail call i32 @folio_wait_private_2_killable(ptr noundef %44) #8
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %190, label %47

47:                                               ; preds = %42, %28
  %48 = getelementptr i8, ptr %8, i32 -156
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %48, i32 noundef 3, ptr noundef nonnull @nfs_wait_bit_killable, i32 noundef 258) #8
  br label %54

54:                                               ; preds = %52, %47
  %55 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59, !prof !16

59:                                               ; preds = %54
  %60 = add i32 %56, -1
  br label %63

61:                                               ; preds = %54
  %62 = ptrtoint ptr %3 to i32
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = inttoptr i32 %64 to ptr
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %65) #8, !srcloc !18
  %70 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %65, ptr %65, i32 1, ptr elementtype(i32) %65) #8, !srcloc !33
  %71 = extractvalue { i32, i32, i32 } %70, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !34
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69, %63
  tail call void @__folio_lock(ptr noundef %65) #8
  br label %75

75:                                               ; preds = %74, %69
  %76 = load volatile i32, ptr %55, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79, !prof !16

79:                                               ; preds = %75
  %80 = add i32 %76, -1
  br label %83

81:                                               ; preds = %75
  %82 = ptrtoint ptr %3 to i32
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = inttoptr i32 %84 to ptr
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %86, 524288
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load volatile i32, ptr %85, align 4
  %91 = and i32 %90, 1024
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93, !prof !16

93:                                               ; preds = %89
  %94 = tail call ptr @swapcache_mapping(ptr noundef %85) #8
  br label %98

95:                                               ; preds = %89, %83
  %96 = getelementptr inbounds %struct.anon.36, ptr %85, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  br label %98

98:                                               ; preds = %95, %93
  %99 = phi ptr [ %94, %93 ], [ %97, %95 ]
  %100 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 9
  %101 = load ptr, ptr %100, align 8
  %102 = icmp eq ptr %99, %101
  br i1 %102, label %103, label %188

103:                                              ; preds = %98
  tail call void @wait_on_page_writeback(ptr noundef %3) #8
  %104 = load volatile i32, ptr %55, align 4
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107, !prof !16

107:                                              ; preds = %103
  %108 = add i32 %104, -1
  br label %111

109:                                              ; preds = %103
  %110 = ptrtoint ptr %3 to i32
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = inttoptr i32 %112 to ptr
  %114 = load volatile i32, ptr %113, align 4
  %115 = and i32 %114, 524288
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %111
  %118 = load volatile i32, ptr %113, align 4
  %119 = and i32 %118, 1024
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121, !prof !16

121:                                              ; preds = %117
  %122 = tail call ptr @swapcache_mapping(ptr noundef %113) #8
  br label %126

123:                                              ; preds = %117, %111
  %124 = getelementptr inbounds %struct.anon.36, ptr %113, i32 0, i32 2
  %125 = load ptr, ptr %124, align 4
  br label %126

126:                                              ; preds = %123, %121
  %127 = phi ptr [ %122, %121 ], [ %125, %123 ]
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.inode, ptr %128, i32 0, i32 22
  %130 = getelementptr inbounds %struct.inode, ptr %128, i32 0, i32 13
  br label %131

131:                                              ; preds = %139, %126
  %132 = load volatile i32, ptr %129, align 4
  %133 = and i32 %132, 1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %135, %131
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !23
  %136 = load volatile i32, ptr %129, align 4
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %135

139:                                              ; preds = %135, %131
  %140 = phi i32 [ %132, %131 ], [ %136, %135 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  %141 = load i64, ptr %130, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  %142 = load volatile i32, ptr %129, align 4
  %143 = icmp eq i32 %142, %140
  br i1 %143, label %144, label %131

144:                                              ; preds = %139
  %145 = icmp sgt i64 %141, 0
  br i1 %145, label %146, label %188

146:                                              ; preds = %144
  %147 = load volatile i32, ptr %55, align 4
  %148 = and i32 %147, 1
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %152, label %150, !prof !16

150:                                              ; preds = %146
  %151 = add i32 %147, -1
  br label %154

152:                                              ; preds = %146
  %153 = ptrtoint ptr %3 to i32
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  %156 = inttoptr i32 %155 to ptr
  %157 = load volatile i32, ptr %156, align 4
  %158 = and i32 %157, 524288
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %154
  %161 = load volatile i32, ptr %156, align 4
  %162 = and i32 %161, 1024
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164, !prof !16

164:                                              ; preds = %160
  %165 = tail call i32 @__page_file_index(ptr noundef %3) #8
  br label %169

166:                                              ; preds = %160, %154
  %167 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1, i32 0, i32 2
  %168 = load i32, ptr %167, align 4
  br label %169

169:                                              ; preds = %166, %164
  %170 = phi i32 [ %165, %164 ], [ %168, %166 ]
  %171 = add nsw i64 %141, -1
  %172 = lshr i64 %171, 12
  %173 = trunc i64 %172 to i32
  %174 = icmp ult i32 %170, %173
  br i1 %174, label %181, label %175

175:                                              ; preds = %169
  %176 = icmp eq i32 %170, %173
  br i1 %176, label %177, label %188

177:                                              ; preds = %175
  %178 = trunc i64 %171 to i32
  %179 = and i32 %178, 4095
  %180 = add nuw nsw i32 %179, 1
  br label %181

181:                                              ; preds = %177, %169
  %182 = phi i32 [ 4096, %169 ], [ %180, %177 ]
  %183 = tail call i32 @nfs_flush_incompatible(ptr noundef %6, ptr noundef %3) #8
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = tail call i32 @nfs_updatepage(ptr noundef %6, ptr noundef %3, i32 noundef 0, i32 noundef %182) #8
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %185, %181, %175, %144, %98
  %189 = phi i32 [ 256, %98 ], [ 2, %185 ], [ 2, %181 ], [ 256, %175 ], [ 256, %144 ]
  tail call void @unlock_page(ptr noundef %3) #8
  br label %190

190:                                              ; preds = %188, %185, %42
  %191 = phi i32 [ %189, %188 ], [ 512, %185 ], [ 1024, %42 ]
  %192 = load ptr, ptr %9, align 4
  %193 = getelementptr %struct.super_block, ptr %192, i32 0, i32 26, i32 2, i32 1
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !35
  %194 = load volatile i32, ptr %193, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %208, !prof !16

196:                                              ; preds = %190
  %197 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !9
  %198 = getelementptr %struct.super_block, ptr %192, i32 0, i32 26, i32 2, i32 1, i32 1
  %199 = load ptr, ptr %198, align 4
  %200 = ptrtoint ptr %199 to i32
  %201 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %202 = inttoptr i32 %201 to ptr
  %203 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %202) #6, !srcloc !10
  %204 = add i32 %203, %200
  %205 = inttoptr i32 %204 to ptr
  %206 = load i32, ptr %205, align 4
  %207 = add i32 %206, -1
  store i32 %207, ptr %205, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %197) #8, !srcloc !11
  br label %222

208:                                              ; preds = %190
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !36
  %209 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !9
  %210 = getelementptr %struct.super_block, ptr %192, i32 0, i32 26, i32 2, i32 1, i32 1
  %211 = load ptr, ptr %210, align 4
  %212 = ptrtoint ptr %211 to i32
  %213 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %214 = inttoptr i32 %213 to ptr
  %215 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %214) #6, !srcloc !10
  %216 = add i32 %215, %212
  %217 = inttoptr i32 %216 to ptr
  %218 = load i32, ptr %217, align 4
  %219 = add i32 %218, -1
  store i32 %219, ptr %217, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %209) #8, !srcloc !11
  %220 = getelementptr %struct.super_block, ptr %192, i32 0, i32 26, i32 2, i32 1, i32 2
  %221 = tail call i32 @rcuwait_wake_up(ptr noundef %220) #8
  br label %222

222:                                              ; preds = %208, %196
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !37
  ret i32 %191
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_wait_bit_killable(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @folio_wait_private_2_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_sample(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_check(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @posix_test_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_get_lock_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_iocounter_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_put_lock_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @locks_lock_inode_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_sync_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_zap_caches(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_open(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{i64 468108, i64 468169}
!10 = !{i64 486808}
!11 = !{i64 471125}
!12 = !{i64 2156700217}
!13 = !{i64 2156700369}
!14 = !{i64 2156716518}
!15 = !{i64 2156716682}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2148164495}
!18 = !{i64 562430, i64 2148052401, i64 2148052427, i64 2148052474, i64 2148052496, i64 2148052524, i64 2148052544}
!19 = !{i64 2148066857, i64 2148066889, i64 2148066918, i64 2148066952, i64 2148066983, i64 2148067006}
!20 = !{i64 2148164698}
!21 = !{i64 2149802437}
!22 = !{i64 2152139129}
!23 = !{i64 2152138971}
!24 = !{i64 2152139273}
!25 = !{i64 2149402531}
!26 = !{i64 2149803458}
!27 = !{i64 2148946955}
!28 = !{i64 2148942779}
!29 = !{i64 2148942854, i64 2148942881, i64 2148942928, i64 2148942950, i64 2148942978, i64 2148942998}
!30 = !{i64 2148969958}
!31 = !{i64 2151984723}
!32 = !{i64 2151992340}
!33 = !{i64 2148072278, i64 2148072310, i64 2148072339, i64 2148072373, i64 2148072404, i64 2148072427}
!34 = !{i64 2148173618}
!35 = !{i64 2152000805}
!36 = !{i64 2152009116}
!37 = !{i64 2152017334}
