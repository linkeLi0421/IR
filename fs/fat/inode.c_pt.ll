; ModuleID = '/llk/IR/fs/fat/inode.c_pt.bc'
source_filename = "../fs/fat/inode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_attach\22\09\09\09\09\09"
module asm "__kstrtabns_fat_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_detach\22\09\09\09\09\09"
module asm "__kstrtabns_fat_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_build_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_build_inode\22\09\09\09\09\09"
module asm "__kstrtabns_fat_build_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_sync_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_sync_inode\22\09\09\09\09\09"
module asm "__kstrtabns_fat_sync_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_fill_super:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_fill_super\22\09\09\09\09\09"
module asm "__kstrtabns_fat_fill_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fat_flush_inodes:\09\09\09\09\09"
module asm "\09.asciz \09\22fat_flush_inodes\22\09\09\09\09\09"
module asm "__kstrtabns_fat_flush_inodes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.export_operations = type opaque
%struct.lock_class_key = type {}
%struct.match_token = type { i32, ptr }
%struct.fat_floppy_defaults = type { i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.68 = type { ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
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
%struct.msdos_sb_info = type { i16, i16, i32, i8, i8, i16, i32, i32, i16, i32, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fat_mount_options, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.spinlock, [256 x %struct.hlist_head], i32, %struct.callback_head }
%struct.fat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, i32, ptr, i16, i8, i8, i8, i16, i16 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.msdos_inode_info = type { %struct.spinlock, %struct.list_head, i32, i32, i64, i32, i32, i32, i64, %struct.hlist_node, %struct.hlist_node, %struct.rw_semaphore, %struct.inode }
%struct.msdos_dir_entry = type { [11 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i32 }
%struct.substring_t = type { ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.59, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.39 }
%struct.llist_node = type { ptr }
%union.anon.39 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.59 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.31 = type { %struct.callback_head }
%struct.fat_boot_sector = type { [3 x i8], [8 x i8], [2 x i8], i8, i16, i8, [2 x i8], [2 x i8], i8, i16, i16, i16, i32, i32, %union.anon.71 }
%union.anon.71 = type { %struct.anon.73 }
%struct.anon.73 = type { i32, i16, [2 x i8], i32, i16, i16, [6 x i16], i8, i8, i8, [4 x i8], [11 x i8], [8 x i8] }
%struct.anon.72 = type { i8, i8, i8, [4 x i8], [11 x i8], [8 x i8] }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.fat_boot_fsinfo = type { i32, [120 x i32], i32, i32, i32, [4 x i32] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.18, %union.anon.19 }
%union.anon.18 = type { ptr }
%union.anon.19 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%union.anon.63 = type { %struct.list_head }
%union.anon.64 = type { %struct.hlist_node }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }

@__kstrtab_fat_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_attach to i32), ptr @__kstrtab_fat_attach, ptr @__kstrtabns_fat_attach }, section "___ksymtab_gpl+fat_attach", align 4
@__kstrtab_fat_detach = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_detach = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_detach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_detach to i32), ptr @__kstrtab_fat_detach, ptr @__kstrtabns_fat_detach }, section "___ksymtab_gpl+fat_detach", align 4
@fat_dir_operations = external dso_local constant %struct.file_operations, align 4
@fat_file_inode_operations = external dso_local constant %struct.inode_operations, align 64
@fat_file_operations = external dso_local constant %struct.file_operations, align 4
@fat_aops = internal constant %struct.address_space_operations { ptr @fat_writepage, ptr @fat_readpage, ptr @fat_writepages, ptr @__set_page_dirty_buffers, ptr null, ptr @fat_readahead, ptr @fat_write_begin, ptr @fat_write_end, ptr @_fat_bmap, ptr null, ptr null, ptr null, ptr @fat_direct_IO, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_fat_build_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_build_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_build_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_build_inode to i32), ptr @__kstrtab_fat_build_inode, ptr @__kstrtabns_fat_build_inode }, section "___ksymtab_gpl+fat_build_inode", align 4
@fat_inode_cachep = internal unnamed_addr global ptr null, align 4
@__kstrtab_fat_sync_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_sync_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_sync_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_sync_inode to i32), ptr @__kstrtab_fat_sync_inode, ptr @__kstrtabns_fat_sync_inode }, section "___ksymtab_gpl+fat_sync_inode", align 4
@fat_sops = internal constant %struct.super_operations { ptr @fat_alloc_inode, ptr null, ptr @fat_free_inode, ptr null, ptr @fat_write_inode, ptr null, ptr @fat_evict_inode, ptr @fat_put_super, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fat_statfs, ptr @fat_remount, ptr null, ptr @fat_show_options, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fat_export_ops = external dso_local constant %struct.export_operations, align 1
@fat_fill_super.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [27 x i8] c"&sbi->nfs_build_inode_lock\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"unable to read boot sector\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"logical sector size too small for device (logical sector size = %u)\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"unable to set blocksize %u\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"unable to read boot sector (logical sector size = %lu)\00", align 1
@fat_fill_super.__key.6 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"&sbi->s_lock\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"bread failed, FSINFO block (sector = %lu)\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\014\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"Invalid FSINFO signature: 0x%08x, 0x%08x (sector = %lu)\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"bogus number of directory entries (%u)\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"count of clusters too big (%u)\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"cp%d\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"codepage %s not found\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"IO charset %s not found\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"get root inode failed\00", align 1
@.str.17 = private unnamed_addr constant [72 x i8] c"mounting with \22discard\22 option, but the device does not support discard\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"Can't find a valid FAT filesystem\00", align 1
@__kstrtab_fat_fill_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_fill_super = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_fill_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_fill_super to i32), ptr @__kstrtab_fat_fill_super, ptr @__kstrtabns_fat_fill_super }, section "___ksymtab_gpl+fat_fill_super", align 4
@__kstrtab_fat_flush_inodes = external dso_local constant [0 x i8], align 1
@__kstrtabns_fat_flush_inodes = external dso_local constant [0 x i8], align 1
@__ksymtab_fat_flush_inodes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fat_flush_inodes to i32), ptr @__kstrtab_fat_flush_inodes, ptr @__kstrtabns_fat_flush_inodes }, section "___ksymtab_gpl+fat_flush_inodes", align 4
@__initcall__kmod_fat__269_1974_init_fat_fs6 = internal global ptr @init_fat_fs, section ".initcall6.init", align 4
@__exitcall_exit_fat_fs = internal global ptr @exit_fat_fs, section ".exitcall.exit", align 4
@__UNIQUE_ID_file270 = internal constant [20 x i8] c"fat.file=fs/fat/fat\00", section ".modinfo", align 1
@__UNIQUE_ID_license271 = internal constant [16 x i8] c"fat.license=GPL\00", section ".modinfo", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"corrupted file size (i_pos %lld, %lld)\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"invalid FAT chain (i_pos %lld, last_block %llu)\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"corrupted directory (invalid entries)\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"corrupted directory (invalid i_start)\00", align 1
@__const.is_exec.exe_extensions = private unnamed_addr constant [10 x i8] c"EXECOMBAT\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"unable to read inode block for updating (i_pos %lld)\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@fat_alloc_inode.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"&ei->truncate_lock\00", align 1
@.str.26 = private unnamed_addr constant [103 x i8] c"Failed to update on disk inode for unused fallocated blocks, inode could be corrupted. Please run fsck\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c",fmask=%04o\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c",dmask=%04o\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c",allow_utime=%04o\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c",codepage=%s\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c",iocharset=%s\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c",shortname=win95\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c",shortname=winnt\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c",shortname=mixed\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c",shortname=lower\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c",shortname=unknown\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c",check=%c\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c",usefree\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c",quiet\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c",showexec\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c",sys_immutable\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c",dotsOK=yes\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c",nocase\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c",utf8\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c",uni_xlate\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c",nonumtail\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c",rodir\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c",flush\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c",time_offset=%d\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c",tz=UTC\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c",errors=continue\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c",errors=panic\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c",errors=remount-ro\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c",nfs=nostale_ro\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c",nfs=stale_rw\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c",discard\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c",dos1xfloppy\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@.str.60 = private unnamed_addr constant [2 x i8] c",\00", align 1
@fat_tokens = internal constant [42 x %struct.match_token] [%struct.match_token { i32 1, ptr @.str.65 }, %struct.match_token { i32 2, ptr @.str.66 }, %struct.match_token { i32 0, ptr @.str.67 }, %struct.match_token { i32 1, ptr @.str.68 }, %struct.match_token { i32 2, ptr @.str.69 }, %struct.match_token { i32 0, ptr @.str.70 }, %struct.match_token { i32 3, ptr @.str.71 }, %struct.match_token { i32 4, ptr @.str.72 }, %struct.match_token { i32 5, ptr @.str.73 }, %struct.match_token { i32 6, ptr @.str.74 }, %struct.match_token { i32 7, ptr @.str.75 }, %struct.match_token { i32 8, ptr @.str.76 }, %struct.match_token { i32 9, ptr @.str.77 }, %struct.match_token { i32 10, ptr @.str.78 }, %struct.match_token { i32 11, ptr @.str.79 }, %struct.match_token { i32 12, ptr @.str.80 }, %struct.match_token { i32 13, ptr @.str.81 }, %struct.match_token { i32 14, ptr @.str.82 }, %struct.match_token { i32 15, ptr @.str.83 }, %struct.match_token { i32 30, ptr @.str.84 }, %struct.match_token { i32 31, ptr @.str.85 }, %struct.match_token { i32 38, ptr @.str.86 }, %struct.match_token { i32 33, ptr @.str.87 }, %struct.match_token { i32 34, ptr @.str.88 }, %struct.match_token { i32 35, ptr @.str.89 }, %struct.match_token { i32 36, ptr @.str.90 }, %struct.match_token { i32 39, ptr @.str.91 }, %struct.match_token { i32 39, ptr @.str.92 }, %struct.match_token { i32 40, ptr @.str.93 }, %struct.match_token { i32 42, ptr @.str.94 }, %struct.match_token { i32 29, ptr @.str.95 }, %struct.match_token { i32 29, ptr @.str.96 }, %struct.match_token { i32 29, ptr @.str.97 }, %struct.match_token { i32 29, ptr @.str.98 }, %struct.match_token { i32 29, ptr @.str.99 }, %struct.match_token { i32 29, ptr @.str.100 }, %struct.match_token { i32 29, ptr @.str.101 }, %struct.match_token { i32 29, ptr @.str.102 }, %struct.match_token { i32 29, ptr @.str.103 }, %struct.match_token { i32 29, ptr @.str.104 }, %struct.match_token { i32 29, ptr @.str.105 }, %struct.match_token { i32 41, ptr null }], align 4
@vfat_tokens = internal constant [28 x %struct.match_token] [%struct.match_token { i32 18, ptr @.str.106 }, %struct.match_token { i32 19, ptr @.str.107 }, %struct.match_token { i32 20, ptr @.str.108 }, %struct.match_token { i32 21, ptr @.str.109 }, %struct.match_token { i32 22, ptr @.str.110 }, %struct.match_token { i32 23, ptr @.str.111 }, %struct.match_token { i32 23, ptr @.str.112 }, %struct.match_token { i32 23, ptr @.str.113 }, %struct.match_token { i32 24, ptr @.str.114 }, %struct.match_token { i32 24, ptr @.str.115 }, %struct.match_token { i32 24, ptr @.str.116 }, %struct.match_token { i32 24, ptr @.str.63 }, %struct.match_token { i32 25, ptr @.str.117 }, %struct.match_token { i32 25, ptr @.str.118 }, %struct.match_token { i32 25, ptr @.str.119 }, %struct.match_token { i32 26, ptr @.str.120 }, %struct.match_token { i32 26, ptr @.str.121 }, %struct.match_token { i32 26, ptr @.str.122 }, %struct.match_token { i32 26, ptr @.str.123 }, %struct.match_token { i32 27, ptr @.str.124 }, %struct.match_token { i32 27, ptr @.str.125 }, %struct.match_token { i32 27, ptr @.str.126 }, %struct.match_token { i32 28, ptr @.str.127 }, %struct.match_token { i32 28, ptr @.str.128 }, %struct.match_token { i32 28, ptr @.str.129 }, %struct.match_token { i32 28, ptr @.str.130 }, %struct.match_token { i32 32, ptr @.str.131 }, %struct.match_token { i32 41, ptr null }], align 4
@msdos_tokens = internal constant [5 x %struct.match_token] [%struct.match_token { i32 17, ptr @.str.132 }, %struct.match_token { i32 17, ptr @.str.133 }, %struct.match_token { i32 16, ptr @.str.134 }, %struct.match_token { i32 16, ptr @.str.135 }, %struct.match_token { i32 41, ptr null }], align 4
@.str.61 = private unnamed_addr constant [43 x i8] c"\22%s\22 option is obsolete, not supported now\00", align 1
@.str.62 = private unnamed_addr constant [48 x i8] c"Unrecognized mount option \22%s\22 or missing value\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str.64 = private unnamed_addr constant [93 x i8] c"utf8 is not a recommended IO charset for FAT filesystems, filesystem will be case sensitive!\00", align 1
@fat_export_ops_nostale = external dso_local constant %struct.export_operations, align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"check=relaxed\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"check=strict\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"check=normal\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"check=r\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"check=s\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"check=n\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"uid=%u\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"gid=%u\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"umask=%o\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"dmask=%o\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"fmask=%o\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"allow_utime=%o\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"codepage=%u\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"usefree\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"nocase\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"showexec\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"sys_immutable\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"tz=UTC\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"time_offset=%d\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"errors=continue\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"errors=panic\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"errors=remount-ro\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"discard\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"nfs=stale_rw\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"nfs=nostale_ro\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"dos1xfloppy\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"conv=binary\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"conv=text\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"conv=auto\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"conv=b\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"conv=t\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"conv=a\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"fat=%u\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"blocksize=%u\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"cvf_format=%20s\00", align 1
@.str.104 = private unnamed_addr constant [18 x i8] c"cvf_options=%100s\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"posix\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"iocharset=%s\00", align 1
@.str.107 = private unnamed_addr constant [16 x i8] c"shortname=lower\00", align 1
@.str.108 = private unnamed_addr constant [16 x i8] c"shortname=win95\00", align 1
@.str.109 = private unnamed_addr constant [16 x i8] c"shortname=winnt\00", align 1
@.str.110 = private unnamed_addr constant [16 x i8] c"shortname=mixed\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"utf8=0\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"utf8=no\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"utf8=false\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"utf8=1\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"utf8=yes\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"utf8=true\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"uni_xlate=0\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"uni_xlate=no\00", align 1
@.str.119 = private unnamed_addr constant [16 x i8] c"uni_xlate=false\00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"uni_xlate=1\00", align 1
@.str.121 = private unnamed_addr constant [14 x i8] c"uni_xlate=yes\00", align 1
@.str.122 = private unnamed_addr constant [15 x i8] c"uni_xlate=true\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"uni_xlate\00", align 1
@.str.124 = private unnamed_addr constant [12 x i8] c"nonumtail=0\00", align 1
@.str.125 = private unnamed_addr constant [13 x i8] c"nonumtail=no\00", align 1
@.str.126 = private unnamed_addr constant [16 x i8] c"nonumtail=false\00", align 1
@.str.127 = private unnamed_addr constant [12 x i8] c"nonumtail=1\00", align 1
@.str.128 = private unnamed_addr constant [14 x i8] c"nonumtail=yes\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c"nonumtail=true\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"nonumtail\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"rodir\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"nodots\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"dotsOK=no\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"dots\00", align 1
@.str.135 = private unnamed_addr constant [11 x i8] c"dotsOK=yes\00", align 1
@.str.136 = private unnamed_addr constant [33 x i8] c"bogus number of reserved sectors\00", align 1
@.str.137 = private unnamed_addr constant [30 x i8] c"bogus number of FAT structure\00", align 1
@.str.138 = private unnamed_addr constant [29 x i8] c"invalid media value (0x%02x)\00", align 1
@.str.139 = private unnamed_addr constant [29 x i8] c"bogus logical sector size %u\00", align 1
@.str.140 = private unnamed_addr constant [29 x i8] c"bogus sectors per cluster %u\00", align 1
@.str.141 = private unnamed_addr constant [28 x i8] c"bogus number of FAT sectors\00", align 1
@.str.142 = private unnamed_addr constant [40 x i8] c"This doesn't look like a DOS 1.x volume\00", align 1
@.str.143 = private unnamed_addr constant [26 x i8] c"%s; no bootstrapping code\00", align 1
@.str.144 = private unnamed_addr constant [28 x i8] c"%s; DOS 2.x BPB is non-zero\00", align 1
@floppy_defaults = internal unnamed_addr constant [4 x %struct.fat_floppy_defaults] [%struct.fat_floppy_defaults { i32 320, i32 1, i32 64, i32 254, i32 1 }, %struct.fat_floppy_defaults { i32 360, i32 1, i32 64, i32 252, i32 2 }, %struct.fat_floppy_defaults { i32 640, i32 2, i32 112, i32 255, i32 1 }, %struct.fat_floppy_defaults { i32 720, i32 2, i32 112, i32 253, i32 2 }], align 4
@.str.145 = private unnamed_addr constant [84 x i8] c"This looks like a DOS 1.x volume, but isn't a recognized floppy size (%llu sectors)\00", align 1
@.str.146 = private unnamed_addr constant [62 x i8] c"This looks like a DOS 1.x volume; assuming default BPB values\00", align 1
@.str.147 = private unnamed_addr constant [78 x i8] c"Volume was not properly unmounted. Some data may be corrupt. Please run fsck.\00", align 1
@.str.148 = private unnamed_addr constant [47 x i8] c"unable to read boot sector to mark fs as dirty\00", align 1
@fat_default_iocharset = internal global [10 x i8] c"iso8859-1\00", align 1
@.str.149 = private unnamed_addr constant [16 x i8] c"fat_inode_cache\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_file270, ptr @__UNIQUE_ID_license271, ptr @__exitcall_exit_fat_fs, ptr @__initcall__kmod_fat__269_1974_init_fat_fs6, ptr @__ksymtab_fat_attach, ptr @__ksymtab_fat_build_inode, ptr @__ksymtab_fat_detach, ptr @__ksymtab_fat_fill_super, ptr @__ksymtab_fat_flush_inodes, ptr @__ksymtab_fat_sync_inode, ptr @exit_fat_fs, ptr @fat_destroy_inodecache], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_add_cluster(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = call i32 @fat_alloc_clusters(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4
  %7 = call i32 @fat_chain_add(ptr noundef %0, i32 noundef %6, i32 noundef 1) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %2, align 4
  %11 = call i32 @fat_free_clusters(ptr noundef %0, i32 noundef %10) #12
  br label %12

12:                                               ; preds = %9, %5, %1
  %13 = phi i32 [ %3, %1 ], [ %7, %9 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_alloc_clusters(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_chain_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_free_clusters(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_block_truncate_page(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @block_truncate_page(ptr noundef %4, i64 noundef %1, ptr noundef nonnull @fat_get_block) #12
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_truncate_page(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat_get_block(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 19
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = lshr i32 %11, %14
  %16 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  store i64 0, ptr %7, align 8, !annotation !8
  %18 = call i32 @fat_bmap(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %6, i32 noundef %3, i1 noundef zeroext false) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %123

20:                                               ; preds = %4
  %21 = load i64, ptr %7, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %20
  %24 = load volatile i32, ptr %2, align 4
  %25 = and i32 %24, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  call void @_set_bit(i32 noundef 4, ptr noundef %2) #12
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 20
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 6
  store ptr %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 3
  store i64 %21, ptr %32, align 8
  %33 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 3
  %34 = load i32, ptr %33, align 16
  store i32 %34, ptr %10, align 8
  %35 = load i32, ptr %6, align 4
  %36 = call i32 @llvm.umin.i32(i32 %35, i32 %15) #12
  br label %125

37:                                               ; preds = %20
  %38 = icmp eq i32 %3, 0
  br i1 %38, label %125, label %39

39:                                               ; preds = %37
  %40 = getelementptr i8, ptr %0, i32 -72
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 2
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i64
  %45 = ashr i64 %41, %44
  %46 = icmp eq i64 %45, %1
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = getelementptr i8, ptr %0, i32 -48
  %49 = load i64, ptr %48, align 8
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.20, i64 noundef %49, i64 noundef %41) #13
  br label %123

50:                                               ; preds = %39
  %51 = zext i8 %43 to i32
  %52 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  %53 = load i64, ptr %52, align 8
  %54 = add nsw i32 %51, -9
  %55 = zext i32 %54 to i64
  %56 = lshr i64 %53, %55
  %57 = trunc i64 %1 to i32
  %58 = load i16, ptr %17, align 4
  %59 = zext i16 %58 to i32
  %60 = add nsw i32 %59, -1
  %61 = and i32 %60, %57
  %62 = icmp ne i32 %61, 0
  %63 = icmp ugt i64 %56, %1
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %83, label %65

65:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !8
  %66 = call i32 @fat_alloc_clusters(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 1) #12
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i32, ptr %5, align 4
  %70 = call i32 @fat_chain_add(ptr noundef %0, i32 noundef %69, i32 noundef 1) #12
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = load i32, ptr %5, align 4
  %74 = call i32 @fat_free_clusters(ptr noundef %0, i32 noundef %73) #12
  br label %75

75:                                               ; preds = %72, %65
  %76 = phi i32 [ %70, %72 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %123

77:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %78 = load i16, ptr %17, align 4
  %79 = zext i16 %78 to i32
  %80 = load i8, ptr %42, align 4
  %81 = load i64, ptr %40, align 8
  %82 = zext i8 %80 to i32
  br label %83

83:                                               ; preds = %77, %50
  %84 = phi i32 [ %82, %77 ], [ %51, %50 ]
  %85 = phi i64 [ %81, %77 ], [ %41, %50 ]
  %86 = phi i32 [ %79, %77 ], [ %59, %50 ]
  %87 = sub i32 %86, %61
  store i32 %87, ptr %6, align 4
  %88 = call i32 @llvm.umin.i32(i32 %87, i32 %15) #12
  %89 = shl i32 %88, %84
  %90 = zext i32 %89 to i64
  %91 = add i64 %85, %90
  store i64 %91, ptr %40, align 8
  %92 = call i32 @fat_bmap(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %6, i32 noundef %3, i1 noundef zeroext false) #12
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %123

94:                                               ; preds = %83
  %95 = load i64, ptr %7, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = getelementptr i8, ptr %0, i32 -48
  %99 = load i64, ptr %98, align 8
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.21, i64 noundef %99, i64 noundef %56) #13
  br label %123

100:                                              ; preds = %94
  %101 = load i32, ptr %6, align 4
  %102 = icmp eq i32 %88, %101
  br i1 %102, label %104, label %103, !prof !9

103:                                              ; preds = %100
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 176, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

104:                                              ; preds = %100
  %105 = load volatile i32, ptr %2, align 4
  %106 = and i32 %105, 32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  call void @_set_bit(i32 noundef 5, ptr noundef %2) #12
  %109 = load i64, ptr %7, align 8
  br label %110

110:                                              ; preds = %108, %104
  %111 = phi i64 [ %95, %104 ], [ %109, %108 ]
  %112 = load volatile i32, ptr %2, align 4
  %113 = and i32 %112, 16
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  call void @_set_bit(i32 noundef 4, ptr noundef %2) #12
  br label %116

116:                                              ; preds = %115, %110
  %117 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 20
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 6
  store ptr %118, ptr %119, align 8
  %120 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 3
  store i64 %111, ptr %120, align 8
  %121 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 3
  %122 = load i32, ptr %121, align 16
  store i32 %122, ptr %10, align 8
  br label %125

123:                                              ; preds = %97, %83, %75, %47, %4
  %124 = phi i32 [ %76, %75 ], [ %92, %83 ], [ %18, %4 ], [ -5, %97 ], [ -5, %47 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  br label %131

125:                                              ; preds = %116, %37, %28
  %126 = phi i32 [ %15, %37 ], [ %88, %116 ], [ %36, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %127 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 2
  %128 = load i8, ptr %127, align 4
  %129 = zext i8 %128 to i32
  %130 = shl i32 %126, %129
  store i32 %130, ptr %10, align 8
  br label %131

131:                                              ; preds = %125, %123
  %132 = phi i32 [ 0, %125 ], [ %124, %123 ]
  ret i32 %132
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fat_attach(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 32
  %12 = trunc i64 %1 to i32
  %13 = mul i32 %12, 1640531527
  %14 = lshr i32 %13, 24
  %15 = getelementptr %struct.hlist_head, ptr %11, i32 %14
  %16 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %16) #12
  %17 = getelementptr i8, ptr %0, i32 -48
  store i64 %1, ptr %17, align 8
  %18 = getelementptr i8, ptr %0, i32 -40
  %19 = load ptr, ptr %15, align 4
  store volatile ptr %19, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  store volatile ptr %18, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %10
  store volatile ptr %18, ptr %15, align 4
  %24 = getelementptr i8, ptr %0, i32 -36
  store volatile ptr %15, ptr %24, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %25 = load i16, ptr %16, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %27

27:                                               ; preds = %23, %2
  %28 = load i16, ptr %0, align 8
  %29 = and i16 %28, -4096
  %30 = icmp eq i16 %29, 16384
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 19, i32 10
  %33 = load i8, ptr %32, align 4
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 34
  %37 = getelementptr i8, ptr %0, i32 -60
  %38 = load i32, ptr %37, align 4
  %39 = mul i32 %38, 1640531527
  %40 = lshr i32 %39, 24
  %41 = getelementptr %struct.hlist_head, ptr %36, i32 %40
  %42 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %42) #12
  %43 = getelementptr i8, ptr %0, i32 -32
  %44 = load ptr, ptr %41, align 4
  store volatile ptr %44, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.hlist_node, ptr %44, i32 0, i32 1
  store volatile ptr %43, ptr %47, align 4
  br label %48

48:                                               ; preds = %46, %35
  store volatile ptr %43, ptr %41, align 4
  %49 = getelementptr i8, ptr %0, i32 -28
  store volatile ptr %41, ptr %49, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %50 = load i16, ptr %42, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %52

52:                                               ; preds = %48, %31, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fat_detach(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %6) #12
  %7 = getelementptr i8, ptr %0, i32 -48
  store i64 0, ptr %7, align 8
  %8 = getelementptr i8, ptr %0, i32 -40
  %9 = getelementptr i8, ptr %0, i32 -36
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %8, align 4
  store volatile ptr %13, ptr %10, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  store volatile ptr %10, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %12
  store ptr null, ptr %8, align 4
  store ptr null, ptr %9, align 4
  br label %18

18:                                               ; preds = %17, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %19 = load i16, ptr %6, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %21 = load i16, ptr %0, align 8
  %22 = and i16 %21, -4096
  %23 = icmp eq i16 %22, 16384
  br i1 %23, label %24, label %43

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 19, i32 10
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %29) #12
  %30 = getelementptr i8, ptr %0, i32 -32
  %31 = getelementptr i8, ptr %0, i32 -28
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %30, align 4
  store volatile ptr %35, ptr %32, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.hlist_node, ptr %35, i32 0, i32 1
  store volatile ptr %32, ptr %38, align 4
  br label %39

39:                                               ; preds = %37, %34
  store ptr null, ptr %30, align 4
  store ptr null, ptr %31, align 4
  br label %40

40:                                               ; preds = %39, %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %41 = load i16, ptr %29, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %29, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  br label %43

43:                                               ; preds = %40, %24, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fat_iget(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msdos_sb_info, ptr %4, i32 0, i32 32
  %6 = trunc i64 %1 to i32
  %7 = mul i32 %6, 1640531527
  %8 = lshr i32 %7, 24
  %9 = getelementptr %struct.hlist_head, ptr %5, i32 %8
  %10 = getelementptr inbounds %struct.msdos_sb_info, ptr %4, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %10) #12
  %11 = load ptr, ptr %9, align 4
  %12 = icmp eq ptr %11, null
  %13 = getelementptr i8, ptr %11, i32 -56
  %14 = icmp eq ptr %13, null
  %15 = or i1 %12, %14
  br i1 %15, label %37, label %16

16:                                               ; preds = %30, %2
  %17 = phi ptr [ %34, %30 ], [ %13, %2 ]
  %18 = getelementptr inbounds %struct.msdos_inode_info, ptr %17, i32 0, i32 12
  %19 = getelementptr inbounds %struct.msdos_inode_info, ptr %17, i32 0, i32 12, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %23, label %22, !prof !9

22:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 459, 0\0A.popsection", ""() #12, !srcloc !15
  unreachable

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.msdos_inode_info, ptr %17, i32 0, i32 8
  %25 = load i64, ptr %24, align 8
  %26 = icmp eq i64 %25, %1
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = tail call ptr @igrab(ptr noundef %18) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27, %23
  %31 = getelementptr inbounds %struct.msdos_inode_info, ptr %17, i32 0, i32 9
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  %34 = getelementptr i8, ptr %32, i32 -56
  %35 = icmp eq ptr %34, null
  %36 = or i1 %33, %35
  br i1 %36, label %37, label %16

37:                                               ; preds = %30, %27, %2
  %38 = phi ptr [ null, %2 ], [ %28, %27 ], [ null, %30 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %39 = load i16, ptr %10, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  ret ptr %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_fill_inode(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [10 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 -48
  store i64 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 2
  %12 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 19
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 3
  %15 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 19, i32 1
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %14, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %17 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 33
  %18 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %17, ptr elementtype(i64) %17) #12, !srcloc !17
  br label %19

19:                                               ; preds = %27, %2
  %20 = phi i64 [ %18, %2 ], [ %28, %27 ]
  %21 = add i64 %20, 2
  %22 = and i64 %21, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #12, !srcloc !19
  br label %23

23:                                               ; preds = %23, %19
  %24 = tail call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %17, ptr %17, i64 %20, i64 %22, ptr elementtype(i64) %17) #12, !srcloc !20
  %25 = extractvalue { i32, i64 } %24, 0
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %23

27:                                               ; preds = %23
  %28 = extractvalue { i32, i64 } %24, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  %29 = icmp eq i64 %28, %20
  br i1 %29, label %30, label %19, !prof !9

30:                                               ; preds = %27
  %31 = tail call i32 @prandom_u32() #12
  %32 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 44
  store i32 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.msdos_dir_entry, ptr %1, i32 0, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, 16
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %125, label %37

37:                                               ; preds = %30
  %38 = load i8, ptr %1, align 4
  switch i8 %38, label %39 [
    i8 0, label %125
    i8 -27, label %125
  ]

39:                                               ; preds = %37
  %40 = and i32 %31, -2
  store i32 %40, ptr %32, align 8
  %41 = load i8, ptr %33, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  %45 = and i32 %42, 16
  %46 = icmp eq i32 %45, 0
  br i1 %44, label %54, label %47

47:                                               ; preds = %39
  br i1 %46, label %58, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 19, i32 12
  %50 = load i16, ptr %49, align 4
  %51 = and i16 %50, 4096
  %52 = icmp eq i16 %51, 0
  %53 = select i1 %52, i16 511, i16 365
  br label %55

54:                                               ; preds = %39
  br i1 %46, label %58, label %55

55:                                               ; preds = %54, %48
  %56 = phi i16 [ 511, %54 ], [ %53, %48 ]
  %57 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 19, i32 3
  br label %61

58:                                               ; preds = %54, %47
  %59 = phi i16 [ 511, %54 ], [ 365, %47 ]
  %60 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 19, i32 2
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi ptr [ %60, %58 ], [ %57, %55 ]
  %63 = phi i16 [ %59, %58 ], [ %56, %55 ]
  %64 = phi i16 [ -32768, %58 ], [ 16384, %55 ]
  %65 = load i16, ptr %62, align 2
  %66 = xor i16 %65, -1
  %67 = and i16 %63, %66
  %68 = or i16 %67, %64
  store i16 %68, ptr %0, align 8
  %69 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 22
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 7
  store ptr %70, ptr %71, align 8
  %72 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 39
  store ptr @fat_dir_operations, ptr %72, align 8
  %73 = getelementptr inbounds %struct.msdos_dir_entry, ptr %1, i32 0, i32 10
  %74 = load i16, ptr %73, align 2
  %75 = zext i16 %74 to i32
  %76 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 4
  %77 = load i8, ptr %76, align 1
  %78 = icmp eq i8 %77, 32
  br i1 %78, label %79, label %85

79:                                               ; preds = %61
  %80 = getelementptr inbounds %struct.msdos_dir_entry, ptr %1, i32 0, i32 7
  %81 = load i16, ptr %80, align 4
  %82 = zext i16 %81 to i32
  %83 = shl nuw i32 %82, 16
  %84 = or i32 %83, %75
  br label %85

85:                                               ; preds = %79, %61
  %86 = phi i32 [ %84, %79 ], [ %75, %61 ]
  %87 = getelementptr i8, ptr %0, i32 -64
  store i32 %86, ptr %87, align 8
  %88 = getelementptr i8, ptr %0, i32 -60
  store i32 %86, ptr %88, align 4
  %89 = load ptr, ptr %6, align 4
  %90 = getelementptr inbounds %struct.super_block, ptr %89, i32 0, i32 27
  %91 = load ptr, ptr %90, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !8
  %92 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  store i64 0, ptr %92, align 8
  %93 = icmp eq i32 %86, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %85
  %95 = call i32 @fat_get_cluster(ptr noundef %0, i32 noundef 268435455, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %94
  %98 = load i32, ptr %4, align 4
  %99 = add i32 %98, 1
  %100 = getelementptr inbounds %struct.msdos_sb_info, ptr %91, i32 0, i32 1
  %101 = load i16, ptr %100, align 2
  %102 = zext i16 %101 to i32
  %103 = shl i32 %99, %102
  %104 = sext i32 %103 to i64
  store i64 %104, ptr %92, align 8
  br label %106

105:                                              ; preds = %94
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %276

106:                                              ; preds = %97, %85
  %107 = phi i64 [ %104, %97 ], [ 0, %85 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %108 = getelementptr i8, ptr %0, i32 -72
  store i64 %107, ptr %108, align 8
  %109 = call i32 @fat_subdirs(ptr noundef %0) #12
  call void @set_nlink(ptr noundef %0, i32 noundef %109) #12
  %110 = load ptr, ptr %6, align 4
  %111 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 11
  %112 = load i32, ptr %111, align 8
  %113 = icmp ult i32 %112, 2
  br i1 %113, label %123, label %114

114:                                              ; preds = %106
  %115 = load i32, ptr %87, align 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.super_block, ptr %110, i32 0, i32 27
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.msdos_sb_info, ptr %119, i32 0, i32 11
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %115, %121
  br i1 %122, label %123, label %200

123:                                              ; preds = %117, %114, %106
  %124 = phi ptr [ @.str.22, %106 ], [ @.str.23, %117 ], [ @.str.23, %114 ]
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %110, i32 noundef 1, ptr noundef nonnull %124) #13
  br label %276

125:                                              ; preds = %37, %37, %30
  %126 = or i32 %31, 1
  store i32 %126, ptr %32, align 8
  %127 = load i8, ptr %33, align 1
  %128 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 19, i32 12
  %129 = load i16, ptr %128, align 4
  %130 = and i16 %129, 2
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %144, label %132

132:                                              ; preds = %125
  %133 = getelementptr i8, ptr %1, i32 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %3, ptr noundef nonnull align 1 dereferenceable(10) @__const.is_exec.exe_extensions, i32 10, i1 false) #12
  br label %138

134:                                              ; preds = %138
  %135 = getelementptr i8, ptr %139, i32 3
  %136 = load i8, ptr %135, align 1
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %134, %132
  %139 = phi ptr [ %135, %134 ], [ %3, %132 ]
  %140 = call i32 @strncmp(ptr noundef %133, ptr noundef %139, i32 noundef 3) #12
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %134

142:                                              ; preds = %138
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #12
  br label %144

143:                                              ; preds = %134
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #12
  br label %144

144:                                              ; preds = %143, %142, %125
  %145 = phi i16 [ 511, %125 ], [ 438, %143 ], [ 511, %142 ]
  %146 = zext i8 %127 to i32
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %147, 0
  %149 = and i32 %146, 16
  br i1 %148, label %157, label %150

150:                                              ; preds = %144
  %151 = icmp ne i32 %149, 0
  %152 = and i16 %129, 4096
  %153 = icmp eq i16 %152, 0
  %154 = select i1 %151, i1 %153, i1 false
  br i1 %154, label %160, label %155

155:                                              ; preds = %150
  %156 = and i16 %145, 365
  br label %157

157:                                              ; preds = %155, %144
  %158 = phi i16 [ %156, %155 ], [ %145, %144 ]
  %159 = icmp eq i32 %149, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %157, %150
  %161 = phi i16 [ %158, %157 ], [ %145, %150 ]
  %162 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 19, i32 3
  br label %165

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 19, i32 2
  br label %165

165:                                              ; preds = %163, %160
  %166 = phi ptr [ %164, %163 ], [ %162, %160 ]
  %167 = phi i16 [ %158, %163 ], [ %161, %160 ]
  %168 = phi i16 [ -32768, %163 ], [ 16384, %160 ]
  %169 = load i16, ptr %166, align 2
  %170 = xor i16 %169, -1
  %171 = and i16 %167, %170
  %172 = or i16 %171, %168
  store i16 %172, ptr %0, align 8
  %173 = getelementptr inbounds %struct.msdos_dir_entry, ptr %1, i32 0, i32 10
  %174 = load i16, ptr %173, align 2
  %175 = zext i16 %174 to i32
  %176 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 4
  %177 = load i8, ptr %176, align 1
  %178 = icmp eq i8 %177, 32
  br i1 %178, label %179, label %185

179:                                              ; preds = %165
  %180 = getelementptr inbounds %struct.msdos_dir_entry, ptr %1, i32 0, i32 7
  %181 = load i16, ptr %180, align 4
  %182 = zext i16 %181 to i32
  %183 = shl nuw i32 %182, 16
  %184 = or i32 %183, %175
  br label %185

185:                                              ; preds = %179, %165
  %186 = phi i32 [ %184, %179 ], [ %175, %165 ]
  %187 = getelementptr i8, ptr %0, i32 -64
  store i32 %186, ptr %187, align 8
  %188 = getelementptr i8, ptr %0, i32 -60
  store i32 %186, ptr %188, align 4
  %189 = getelementptr inbounds %struct.msdos_dir_entry, ptr %1, i32 0, i32 11
  %190 = load i32, ptr %189, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  store i64 %191, ptr %192, align 8
  %193 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 7
  store ptr @fat_file_inode_operations, ptr %193, align 8
  %194 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 39
  store ptr @fat_file_operations, ptr %194, align 8
  %195 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %196 = load ptr, ptr %195, align 8
  %197 = getelementptr inbounds %struct.address_space, ptr %196, i32 0, i32 9
  store ptr @fat_aops, ptr %197, align 4
  %198 = load i64, ptr %192, align 8
  %199 = getelementptr i8, ptr %0, i32 -72
  store i64 %198, ptr %199, align 8
  br label %200

200:                                              ; preds = %185, %117
  %201 = load i8, ptr %33, align 1
  %202 = and i8 %201, 4
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %214, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 19, i32 12
  %206 = load i16, ptr %205, align 4
  %207 = and i16 %206, 4
  %208 = icmp eq i16 %207, 0
  br i1 %208, label %214, label %209

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %211 = load i32, ptr %210, align 4
  %212 = or i32 %211, 8
  store i32 %212, ptr %210, align 4
  %213 = load i8, ptr %33, align 1
  br label %214

214:                                              ; preds = %209, %204, %200
  %215 = phi i8 [ %201, %204 ], [ %213, %209 ], [ %201, %200 ]
  %216 = load ptr, ptr %6, align 4
  %217 = getelementptr inbounds %struct.super_block, ptr %216, i32 0, i32 27
  %218 = load ptr, ptr %217, align 4
  %219 = load i16, ptr %0, align 8
  %220 = and i16 %219, -4096
  %221 = icmp eq i16 %220, 16384
  br i1 %221, label %222, label %229

222:                                              ; preds = %214
  %223 = getelementptr inbounds %struct.msdos_sb_info, ptr %218, i32 0, i32 19, i32 12
  %224 = load i16, ptr %223, align 4
  %225 = and i16 %224, 4096
  %226 = icmp eq i16 %225, 0
  br i1 %226, label %236, label %227

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct.msdos_sb_info, ptr %218, i32 0, i32 19, i32 3
  br label %231

229:                                              ; preds = %214
  %230 = getelementptr inbounds %struct.msdos_sb_info, ptr %218, i32 0, i32 19, i32 2
  br label %231

231:                                              ; preds = %229, %227
  %232 = phi ptr [ %228, %227 ], [ %230, %229 ]
  %233 = load i16, ptr %232, align 2
  %234 = and i16 %233, 146
  %235 = icmp eq i16 %234, 146
  br i1 %235, label %236, label %237

236:                                              ; preds = %231, %222
  br label %237

237:                                              ; preds = %236, %231
  %238 = phi i8 [ 47, %236 ], [ 46, %231 ]
  %239 = and i8 %238, %215
  %240 = zext i8 %239 to i32
  %241 = getelementptr i8, ptr %0, i32 -56
  store i32 %240, ptr %241, align 8
  %242 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %243 = load i64, ptr %242, align 8
  %244 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 2
  %245 = load i32, ptr %244, align 4
  %246 = add i32 %245, -1
  %247 = zext i32 %246 to i64
  %248 = add i64 %243, %247
  %249 = zext i32 %245 to i64
  %250 = sub nsw i64 0, %249
  %251 = and i64 %248, %250
  %252 = ashr i64 %251, 9
  %253 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  store i64 %252, ptr %253, align 8
  %254 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  %255 = getelementptr inbounds %struct.msdos_dir_entry, ptr %1, i32 0, i32 8
  %256 = load i16, ptr %255, align 2
  %257 = getelementptr inbounds %struct.msdos_dir_entry, ptr %1, i32 0, i32 9
  %258 = load i16, ptr %257, align 4
  call void @fat_time_fat2unix(ptr noundef %9, ptr noundef %254, i16 noundef zeroext %256, i16 noundef zeroext %258, i8 noundef zeroext 0) #12
  %259 = getelementptr inbounds %struct.msdos_sb_info, ptr %9, i32 0, i32 19, i32 12
  %260 = load i16, ptr %259, align 4
  %261 = and i16 %260, 16
  %262 = icmp eq i16 %261, 0
  br i1 %262, label %274, label %263

263:                                              ; preds = %237
  %264 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  %265 = getelementptr inbounds %struct.msdos_dir_entry, ptr %1, i32 0, i32 4
  %266 = load i16, ptr %265, align 2
  %267 = getelementptr inbounds %struct.msdos_dir_entry, ptr %1, i32 0, i32 5
  %268 = load i16, ptr %267, align 4
  %269 = getelementptr inbounds %struct.msdos_dir_entry, ptr %1, i32 0, i32 3
  %270 = load i8, ptr %269, align 1
  call void @fat_time_fat2unix(ptr noundef %9, ptr noundef %264, i16 noundef zeroext %266, i16 noundef zeroext %268, i8 noundef zeroext %270) #12
  %271 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14
  %272 = getelementptr inbounds %struct.msdos_dir_entry, ptr %1, i32 0, i32 6
  %273 = load i16, ptr %272, align 2
  call void @fat_time_fat2unix(ptr noundef %9, ptr noundef %271, i16 noundef zeroext 0, i16 noundef zeroext %273, i8 noundef zeroext 0) #12
  br label %276

274:                                              ; preds = %237
  %275 = call i32 @fat_truncate_time(ptr noundef %0, ptr noundef %254, i32 noundef 5) #12
  br label %276

276:                                              ; preds = %274, %263, %123, %105
  %277 = phi i32 [ %95, %105 ], [ 0, %274 ], [ 0, %263 ], [ -5, %123 ]
  ret i32 %277
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_subdirs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_time_fat2unix(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_truncate_time(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fat_build_inode(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 19, i32 10
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 2
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %10) #12
  %11 = load ptr, ptr %4, align 4
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %9 ]
  %14 = getelementptr inbounds %struct.msdos_sb_info, ptr %13, i32 0, i32 32
  %15 = trunc i64 %2 to i32
  %16 = mul i32 %15, 1640531527
  %17 = lshr i32 %16, 24
  %18 = getelementptr %struct.hlist_head, ptr %14, i32 %17
  %19 = getelementptr inbounds %struct.msdos_sb_info, ptr %13, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %19) #12
  %20 = load ptr, ptr %18, align 4
  %21 = icmp eq ptr %20, null
  %22 = getelementptr i8, ptr %20, i32 -56
  %23 = icmp eq ptr %22, null
  %24 = or i1 %21, %23
  br i1 %24, label %46, label %25

25:                                               ; preds = %39, %12
  %26 = phi ptr [ %43, %39 ], [ %22, %12 ]
  %27 = getelementptr inbounds %struct.msdos_inode_info, ptr %26, i32 0, i32 12
  %28 = getelementptr inbounds %struct.msdos_inode_info, ptr %26, i32 0, i32 12, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %0
  br i1 %30, label %32, label %31, !prof !9

31:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 459, 0\0A.popsection", ""() #12, !srcloc !15
  unreachable

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.msdos_inode_info, ptr %26, i32 0, i32 8
  %34 = load i64, ptr %33, align 8
  %35 = icmp eq i64 %34, %2
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = tail call ptr @igrab(ptr noundef %27) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %36, %32
  %40 = getelementptr inbounds %struct.msdos_inode_info, ptr %26, i32 0, i32 9
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  %43 = getelementptr i8, ptr %41, i32 -56
  %44 = icmp eq ptr %43, null
  %45 = or i1 %42, %44
  br i1 %45, label %46, label %25

46:                                               ; preds = %39, %36, %12
  %47 = phi ptr [ null, %12 ], [ null, %39 ], [ %37, %36 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %48 = load i16, ptr %19, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %50 = icmp eq ptr %47, null
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = tail call ptr @new_inode(ptr noundef %0) #12
  %53 = icmp eq ptr %52, null
  br i1 %53, label %65, label %54

54:                                               ; preds = %51
  %55 = tail call i32 @iunique(ptr noundef %0, i32 noundef 1) #12
  %56 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 10
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %57) #12, !srcloc !19
  %58 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %57, ptr %57, i64 2) #12, !srcloc !22
  %59 = tail call i32 @fat_fill_inode(ptr noundef nonnull %52, ptr noundef %1)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %54
  tail call void @iput(ptr noundef nonnull %52) #12
  %62 = inttoptr i32 %59 to ptr
  br label %65

63:                                               ; preds = %54
  tail call void @fat_attach(ptr noundef nonnull %52, i64 noundef %2)
  %64 = load i32, ptr %56, align 4
  tail call void @__insert_inode_hash(ptr noundef nonnull %52, i32 noundef %64) #12
  br label %65

65:                                               ; preds = %63, %61, %51, %46
  %66 = phi ptr [ %47, %46 ], [ %62, %61 ], [ %52, %63 ], [ inttoptr (i32 -12 to ptr), %51 ]
  %67 = load ptr, ptr %4, align 4
  %68 = getelementptr inbounds %struct.msdos_sb_info, ptr %67, i32 0, i32 19, i32 10
  %69 = load i8, ptr %68, align 4
  %70 = icmp eq i8 %69, 2
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.msdos_sb_info, ptr %67, i32 0, i32 14
  tail call void @mutex_unlock(ptr noundef %72) #12
  br label %73

73:                                               ; preds = %71, %65
  ret ptr %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iunique(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @fat_destroy_inodecache() #4 section ".exit.text" {
  tail call void @rcu_barrier() #12
  %1 = load ptr, ptr @fat_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_sync_inode(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @__fat_write_inode(ptr noundef %0, i32 noundef 1)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__fat_write_inode(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %122, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %12) #12
  %13 = getelementptr i8, ptr %0, i32 -48
  %14 = load i64, ptr %13, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %15 = load i16, ptr %12, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %17 = icmp eq i64 %14, 0
  br i1 %17, label %122, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 24
  %20 = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 23
  %21 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 20
  %22 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 3
  br label %23

23:                                               ; preds = %37, %18
  %24 = phi i64 [ %14, %18 ], [ %40, %37 ]
  %25 = load i32, ptr %19, align 4
  %26 = zext i32 %25 to i64
  %27 = ashr i64 %24, %26
  %28 = load i32, ptr %20, align 4
  %29 = load ptr, ptr %21, align 4
  %30 = load i32, ptr %22, align 16
  %31 = tail call ptr @__bread_gfp(ptr noundef %29, i64 noundef %27, i32 noundef %30, i32 noundef 8) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  tail call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24, i64 noundef %24) #13
  br label %122

34:                                               ; preds = %23
  tail call void @_raw_spin_lock(ptr noundef %12) #12
  %35 = load i64, ptr %13, align 8
  %36 = icmp eq i64 %24, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %38 = load i16, ptr %12, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  tail call void @__brelse(ptr noundef nonnull %31) #12
  tail call void @_raw_spin_lock(ptr noundef %12) #12
  %40 = load i64, ptr %13, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %41 = load i16, ptr %12, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %43 = icmp eq i64 %40, 0
  br i1 %43, label %122, label %23

44:                                               ; preds = %34
  %45 = add i32 %28, -1
  %46 = trunc i64 %24 to i32
  %47 = and i32 %45, %46
  %48 = getelementptr inbounds %struct.buffer_head, ptr %31, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = load i16, ptr %0, align 8
  %51 = and i16 %50, -4096
  %52 = icmp eq i16 %51, 16384
  br i1 %52, label %57, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %55 = load i64, ptr %54, align 8
  %56 = trunc i64 %55 to i32
  br label %57

57:                                               ; preds = %53, %44
  %58 = phi i32 [ %56, %53 ], [ 0, %44 ]
  %59 = getelementptr %struct.msdos_dir_entry, ptr %49, i32 %47, i32 11
  store i32 %58, ptr %59, align 4
  %60 = getelementptr i8, ptr %0, i32 -56
  %61 = load i32, ptr %60, align 8
  %62 = trunc i32 %61 to i8
  %63 = load i16, ptr %0, align 8
  %64 = and i16 %63, -4096
  %65 = icmp eq i16 %64, 16384
  %66 = or i8 %62, 16
  %67 = select i1 %65, i8 %66, i8 %62
  %68 = load ptr, ptr %4, align 4
  %69 = getelementptr inbounds %struct.super_block, ptr %68, i32 0, i32 27
  %70 = load ptr, ptr %69, align 4
  br i1 %65, label %71, label %78

71:                                               ; preds = %57
  %72 = getelementptr inbounds %struct.msdos_sb_info, ptr %70, i32 0, i32 19, i32 12
  %73 = load i16, ptr %72, align 4
  %74 = and i16 %73, 4096
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.msdos_sb_info, ptr %70, i32 0, i32 19, i32 3
  br label %80

78:                                               ; preds = %57
  %79 = getelementptr inbounds %struct.msdos_sb_info, ptr %70, i32 0, i32 19, i32 2
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi ptr [ %77, %76 ], [ %79, %78 ]
  %82 = load i16, ptr %81, align 2
  %83 = and i16 %82, 146
  %84 = icmp eq i16 %83, 146
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = and i16 %63, 146
  %87 = icmp eq i16 %86, 0
  %88 = zext i1 %87 to i8
  %89 = or i8 %67, %88
  br label %90

90:                                               ; preds = %85, %80, %71
  %91 = phi i8 [ %67, %80 ], [ %89, %85 ], [ %66, %71 ]
  %92 = getelementptr %struct.msdos_dir_entry, ptr %49, i32 %47, i32 1
  store i8 %91, ptr %92, align 1
  %93 = getelementptr i8, ptr %0, i32 -60
  %94 = load i32, ptr %93, align 4
  %95 = trunc i32 %94 to i16
  %96 = getelementptr %struct.msdos_dir_entry, ptr %49, i32 %47, i32 10
  store i16 %95, ptr %96, align 2
  %97 = lshr i32 %94, 16
  %98 = trunc i32 %97 to i16
  %99 = getelementptr %struct.msdos_dir_entry, ptr %49, i32 %47, i32 7
  store i16 %98, ptr %99, align 4
  %100 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  %101 = getelementptr %struct.msdos_dir_entry, ptr %49, i32 %47, i32 8
  %102 = getelementptr %struct.msdos_dir_entry, ptr %49, i32 %47, i32 9
  tail call void @fat_time_unix2fat(ptr noundef %7, ptr noundef %100, ptr noundef %101, ptr noundef %102, ptr noundef null) #12
  %103 = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 19, i32 12
  %104 = load i16, ptr %103, align 4
  %105 = and i16 %104, 16
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %90
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i16 0, ptr %3, align 2, !annotation !8
  %108 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  %109 = getelementptr %struct.msdos_dir_entry, ptr %49, i32 %47, i32 4
  %110 = getelementptr %struct.msdos_dir_entry, ptr %49, i32 %47, i32 5
  %111 = getelementptr %struct.msdos_dir_entry, ptr %49, i32 %47, i32 3
  tail call void @fat_time_unix2fat(ptr noundef %7, ptr noundef %108, ptr noundef %109, ptr noundef %110, ptr noundef %111) #12
  %112 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14
  %113 = getelementptr %struct.msdos_dir_entry, ptr %49, i32 %47, i32 6
  call void @fat_time_unix2fat(ptr noundef %7, ptr noundef %112, ptr noundef nonnull %3, ptr noundef %113, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  br label %114

114:                                              ; preds = %107, %90
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  %115 = load i16, ptr %12, align 4
  %116 = add i16 %115, 1
  store i16 %116, ptr %12, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  call void @mark_buffer_dirty(ptr noundef nonnull %31) #12
  %117 = icmp eq i32 %1, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  %119 = call i32 @sync_dirty_buffer(ptr noundef nonnull %31) #12
  br label %120

120:                                              ; preds = %118, %114
  %121 = phi i32 [ %119, %118 ], [ 0, %114 ]
  call void @__brelse(ptr noundef nonnull %31) #12
  br label %122

122:                                              ; preds = %120, %37, %33, %11, %2
  %123 = phi i32 [ %121, %120 ], [ -5, %33 ], [ 0, %2 ], [ 0, %11 ], [ 0, %37 ]
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_fill_super(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca [3 x %struct.substring_t], align 4
  %8 = alloca i32, align 4
  %9 = alloca [50 x i8], align 1
  %10 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %9) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(50) %9, i8 0, i32 50, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i32 16, i1 false), !annotation !8
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 2284) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %685, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  store ptr %12, ptr %15, align 4
  %16 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, 2048
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 12
  store i32 19780, ptr %19, align 4
  %20 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  store ptr @fat_sops, ptr %20, align 4
  %21 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 9
  store ptr @fat_export_ops, ptr %21, align 16
  %22 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 28
  store i32 1, ptr %22, align 32
  %23 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %23, ptr noundef nonnull @.str, ptr noundef nonnull @fat_fill_super.__key) #12
  %24 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 30
  %25 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 30, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %24, i8 0, i64 28, i1 false) #12
  store i32 500, ptr %25, align 8
  %26 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 30, i32 2
  store i32 10, ptr %26, align 4
  %27 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  store ptr %1, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !annotation !8
  %28 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 19, i32 12
  %29 = trunc i32 %3 to i16
  %30 = load i16, ptr %28, align 8
  %31 = shl i16 %29, 4
  %32 = and i16 %31, 16
  %33 = and i16 %30, -17
  %34 = or i16 %33, %32
  store i16 %34, ptr %28, align 8
  %35 = tail call ptr @llvm.thread.pointer() #12
  %36 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 83
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.cred, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  store i32 %39, ptr %27, align 8
  %40 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 19, i32 1
  %41 = load ptr, ptr %36, align 8
  %42 = getelementptr inbounds %struct.cred, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  store i32 %43, ptr %40, align 4
  %44 = tail call i32 @current_umask() #12
  %45 = trunc i32 %44 to i16
  %46 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 19, i32 3
  store i16 %45, ptr %46, align 2
  %47 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 19, i32 2
  store i16 %45, ptr %47, align 8
  %48 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 19, i32 11
  store i16 -1, ptr %48, align 2
  %49 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 19, i32 4
  store i16 437, ptr %49, align 4
  %50 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 19, i32 6
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, @fat_default_iocharset
  br i1 %52, label %54, label %53

53:                                               ; preds = %14
  tail call void @kfree(ptr noundef %51) #12
  store ptr @fat_default_iocharset, ptr %50, align 4
  br label %54

54:                                               ; preds = %53, %14
  %55 = icmp eq i32 %3, 0
  %56 = load i16, ptr %28, align 8
  %57 = and i16 %56, -7920
  %58 = select i1 %55, i16 0, i16 260
  %59 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 19, i32 7
  store i16 %58, ptr %59, align 8
  %60 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 19, i32 8
  store i8 110, ptr %60, align 2
  %61 = select i1 %55, i16 4224, i16 128
  %62 = or i16 %61, %57
  %63 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 19, i32 10
  store i8 0, ptr %63, align 4
  %64 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 19, i32 9
  store i8 3, ptr %64, align 1
  store i16 %62, ptr %28, align 8
  %65 = icmp eq ptr %1, null
  br i1 %65, label %219, label %66

66:                                               ; preds = %54
  %67 = call ptr @strsep(ptr noundef nonnull %6, ptr noundef nonnull @.str.60) #12
  %68 = icmp eq ptr %67, null
  br i1 %68, label %219, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 19, i32 5
  %71 = select i1 %55, ptr @msdos_tokens, ptr @vfat_tokens
  br label %72

72:                                               ; preds = %216, %69
  %73 = phi ptr [ %67, %69 ], [ %217, %216 ]
  %74 = load i8, ptr %73, align 1
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %216, label %76

76:                                               ; preds = %72
  %77 = call i32 @match_token(ptr noundef nonnull %73, ptr noundef nonnull @fat_tokens, ptr noundef nonnull %7) #12
  %78 = icmp eq i32 %77, 41
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 @match_token(ptr noundef nonnull %73, ptr noundef nonnull %71, ptr noundef nonnull %7) #12
  br label %81

81:                                               ; preds = %79, %76
  %82 = phi i32 [ %77, %76 ], [ %80, %79 ]
  switch i32 %82, label %213 [
    i32 2, label %83
    i32 1, label %84
    i32 0, label %85
    i32 10, label %86
    i32 11, label %89
    i32 12, label %94
    i32 13, label %97
    i32 14, label %216
    i32 15, label %100
    i32 3, label %103
    i32 4, label %109
    i32 5, label %115
    i32 6, label %121
    i32 7, label %127
    i32 8, label %133
    i32 9, label %140
    i32 30, label %146
    i32 38, label %149
    i32 31, label %159
    i32 33, label %162
    i32 34, label %163
    i32 35, label %164
    i32 39, label %165
    i32 40, label %166
    i32 42, label %167
    i32 16, label %170
    i32 17, label %173
    i32 18, label %176
    i32 19, label %184
    i32 20, label %185
    i32 21, label %186
    i32 22, label %187
    i32 23, label %188
    i32 24, label %191
    i32 25, label %194
    i32 26, label %197
    i32 27, label %200
    i32 28, label %203
    i32 32, label %206
    i32 36, label %209
    i32 29, label %212
  ]

83:                                               ; preds = %81
  store i8 115, ptr %60, align 2
  br label %216

84:                                               ; preds = %81
  store i8 114, ptr %60, align 2
  br label %216

85:                                               ; preds = %81
  store i8 110, ptr %60, align 2
  br label %216

86:                                               ; preds = %81
  %87 = load i16, ptr %28, align 8
  %88 = or i16 %87, 1024
  store i16 %88, ptr %28, align 8
  br label %216

89:                                               ; preds = %81
  br i1 %55, label %90, label %93

90:                                               ; preds = %89
  %91 = load i16, ptr %28, align 8
  %92 = or i16 %91, 512
  store i16 %92, ptr %28, align 8
  br label %216

93:                                               ; preds = %89
  store i16 258, ptr %59, align 8
  br label %216

94:                                               ; preds = %81
  %95 = load i16, ptr %28, align 8
  %96 = or i16 %95, 1
  store i16 %96, ptr %28, align 8
  br label %216

97:                                               ; preds = %81
  %98 = load i16, ptr %28, align 8
  %99 = or i16 %98, 2
  store i16 %99, ptr %28, align 8
  br label %216

100:                                              ; preds = %81
  %101 = load i16, ptr %28, align 8
  %102 = or i16 %101, 4
  store i16 %102, ptr %28, align 8
  br label %216

103:                                              ; preds = %81
  %104 = call i32 @match_int(ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %243

106:                                              ; preds = %103
  %107 = load i32, ptr %8, align 4
  store i32 %107, ptr %27, align 8
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %243, label %216

109:                                              ; preds = %81
  %110 = call i32 @match_int(ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %243

112:                                              ; preds = %109
  %113 = load i32, ptr %8, align 4
  store i32 %113, ptr %40, align 4
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %243, label %216

115:                                              ; preds = %81
  %116 = call i32 @match_octal(ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %243

118:                                              ; preds = %115
  %119 = load i32, ptr %8, align 4
  %120 = trunc i32 %119 to i16
  store i16 %120, ptr %46, align 2
  store i16 %120, ptr %47, align 8
  br label %216

121:                                              ; preds = %81
  %122 = call i32 @match_octal(ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %243

124:                                              ; preds = %121
  %125 = load i32, ptr %8, align 4
  %126 = trunc i32 %125 to i16
  store i16 %126, ptr %46, align 2
  br label %216

127:                                              ; preds = %81
  %128 = call i32 @match_octal(ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %243

130:                                              ; preds = %127
  %131 = load i32, ptr %8, align 4
  %132 = trunc i32 %131 to i16
  store i16 %132, ptr %47, align 8
  br label %216

133:                                              ; preds = %81
  %134 = call i32 @match_octal(ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %243

136:                                              ; preds = %133
  %137 = load i32, ptr %8, align 4
  %138 = trunc i32 %137 to i16
  %139 = and i16 %138, 18
  store i16 %139, ptr %48, align 2
  br label %216

140:                                              ; preds = %81
  %141 = call i32 @match_int(ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %243

143:                                              ; preds = %140
  %144 = load i32, ptr %8, align 4
  %145 = trunc i32 %144 to i16
  store i16 %145, ptr %49, align 4
  br label %216

146:                                              ; preds = %81
  %147 = load i16, ptr %28, align 8
  %148 = or i16 %147, 256
  store i16 %148, ptr %28, align 8
  br label %216

149:                                              ; preds = %81
  %150 = call i32 @match_int(ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %243

152:                                              ; preds = %149
  %153 = load i32, ptr %8, align 4
  %154 = add i32 %153, -1441
  %155 = icmp ult i32 %154, -2881
  br i1 %155, label %243, label %156

156:                                              ; preds = %152
  %157 = load i16, ptr %28, align 8
  %158 = or i16 %157, 2048
  store i16 %158, ptr %28, align 8
  store i32 %153, ptr %70, align 8
  br label %216

159:                                              ; preds = %81
  %160 = load i16, ptr %28, align 8
  %161 = or i16 %160, 2048
  store i16 %161, ptr %28, align 8
  store i32 0, ptr %70, align 8
  br label %216

162:                                              ; preds = %81
  store i8 1, ptr %64, align 1
  br label %216

163:                                              ; preds = %81
  store i8 2, ptr %64, align 1
  br label %216

164:                                              ; preds = %81
  store i8 3, ptr %64, align 1
  br label %216

165:                                              ; preds = %81
  store i8 1, ptr %63, align 4
  br label %216

166:                                              ; preds = %81
  store i8 2, ptr %63, align 4
  br label %216

167:                                              ; preds = %81
  %168 = load i16, ptr %28, align 8
  %169 = or i16 %168, 16384
  store i16 %169, ptr %28, align 8
  br label %216

170:                                              ; preds = %81
  %171 = load i16, ptr %28, align 8
  %172 = or i16 %171, 8
  store i16 %172, ptr %28, align 8
  br label %216

173:                                              ; preds = %81
  %174 = load i16, ptr %28, align 8
  %175 = and i16 %174, -9
  store i16 %175, ptr %28, align 8
  br label %216

176:                                              ; preds = %81
  %177 = load ptr, ptr %50, align 4
  %178 = icmp eq ptr %177, @fat_default_iocharset
  br i1 %178, label %180, label %179

179:                                              ; preds = %176
  call void @kfree(ptr noundef %177) #12
  store ptr @fat_default_iocharset, ptr %50, align 4
  br label %180

180:                                              ; preds = %179, %176
  %181 = call ptr @match_strdup(ptr noundef nonnull %7) #12
  %182 = icmp eq ptr %181, null
  br i1 %182, label %243, label %183

183:                                              ; preds = %180
  store ptr %181, ptr %50, align 4
  br label %216

184:                                              ; preds = %81
  store i16 257, ptr %59, align 8
  br label %216

185:                                              ; preds = %81
  store i16 258, ptr %59, align 8
  br label %216

186:                                              ; preds = %81
  store i16 516, ptr %59, align 8
  br label %216

187:                                              ; preds = %81
  store i16 260, ptr %59, align 8
  br label %216

188:                                              ; preds = %81
  %189 = load i16, ptr %28, align 8
  %190 = and i16 %189, -33
  store i16 %190, ptr %28, align 8
  br label %216

191:                                              ; preds = %81
  %192 = load i16, ptr %28, align 8
  %193 = or i16 %192, 32
  store i16 %193, ptr %28, align 8
  br label %216

194:                                              ; preds = %81
  %195 = load i16, ptr %28, align 8
  %196 = and i16 %195, -65
  store i16 %196, ptr %28, align 8
  br label %216

197:                                              ; preds = %81
  %198 = load i16, ptr %28, align 8
  %199 = or i16 %198, 64
  store i16 %199, ptr %28, align 8
  br label %216

200:                                              ; preds = %81
  %201 = load i16, ptr %28, align 8
  %202 = or i16 %201, 128
  store i16 %202, ptr %28, align 8
  br label %216

203:                                              ; preds = %81
  %204 = load i16, ptr %28, align 8
  %205 = and i16 %204, -129
  store i16 %205, ptr %28, align 8
  br label %216

206:                                              ; preds = %81
  %207 = load i16, ptr %28, align 8
  %208 = or i16 %207, 4096
  store i16 %208, ptr %28, align 8
  br label %216

209:                                              ; preds = %81
  %210 = load i16, ptr %28, align 8
  %211 = or i16 %210, 8192
  store i16 %211, ptr %28, align 8
  br label %216

212:                                              ; preds = %81
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.61, ptr noundef nonnull %73) #13
  br label %216

213:                                              ; preds = %81
  %214 = icmp eq i32 %2, 0
  br i1 %214, label %215, label %243

215:                                              ; preds = %213
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.62, ptr noundef nonnull %73) #13
  br label %243

216:                                              ; preds = %212, %209, %206, %203, %200, %197, %194, %191, %188, %187, %186, %185, %184, %183, %173, %170, %167, %166, %165, %164, %163, %162, %159, %156, %146, %143, %136, %130, %124, %118, %112, %106, %100, %97, %94, %93, %90, %86, %85, %84, %83, %81, %72
  %217 = call ptr @strsep(ptr noundef nonnull %6, ptr noundef nonnull @.str.60) #12
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %72

219:                                              ; preds = %216, %66, %54
  %220 = load ptr, ptr %50, align 4
  %221 = call i32 @strcmp(ptr noundef %220, ptr noundef nonnull dereferenceable(5) @.str.63) #12
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.64) #13
  br label %224

224:                                              ; preds = %223, %219
  %225 = load i16, ptr %48, align 2
  %226 = icmp eq i16 %225, -1
  br i1 %226, label %227, label %231

227:                                              ; preds = %224
  %228 = load i16, ptr %46, align 2
  %229 = and i16 %228, 18
  %230 = xor i16 %229, 18
  store i16 %230, ptr %48, align 2
  br label %231

231:                                              ; preds = %227, %224
  %232 = load i16, ptr %28, align 8
  %233 = and i16 %232, 64
  %234 = icmp eq i16 %233, 0
  br i1 %234, label %237, label %235

235:                                              ; preds = %231
  %236 = and i16 %232, -33
  store i16 %236, ptr %28, align 8
  br label %237

237:                                              ; preds = %235, %231
  %238 = load i8, ptr %63, align 4
  %239 = icmp eq i8 %238, 2
  br i1 %239, label %240, label %245

240:                                              ; preds = %237
  %241 = load i32, ptr %16, align 4
  %242 = or i32 %241, 1
  store i32 %242, ptr %16, align 4
  store ptr @fat_export_ops_nostale, ptr %21, align 16
  br label %245

243:                                              ; preds = %215, %213, %180, %152, %149, %140, %133, %127, %121, %115, %112, %109, %106, %103
  %244 = phi i32 [ -22, %215 ], [ -22, %213 ], [ -22, %103 ], [ -22, %106 ], [ -22, %109 ], [ -22, %112 ], [ -22, %115 ], [ -22, %121 ], [ -22, %127 ], [ -22, %133 ], [ -22, %140 ], [ -22, %149 ], [ -22, %152 ], [ -12, %180 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  br label %675

245:                                              ; preds = %240, %237
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  call void %4(ptr noundef %0) #12
  %246 = call i32 @sb_min_blocksize(ptr noundef %0, i32 noundef 512) #12
  %247 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %248 = load ptr, ptr %247, align 4
  %249 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %250 = load i32, ptr %249, align 16
  %251 = call ptr @__bread_gfp(ptr noundef %248, i64 noundef 0, i32 noundef %250, i32 noundef 8) #12
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %254

253:                                              ; preds = %245
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #13
  br label %675

254:                                              ; preds = %245
  %255 = getelementptr inbounds %struct.buffer_head, ptr %251, i32 0, i32 5
  %256 = load ptr, ptr %255, align 4
  %257 = getelementptr inbounds %struct.fat_boot_sector, ptr %256, i32 0, i32 2
  %258 = load i16, ptr %257, align 1
  %259 = getelementptr inbounds %struct.fat_boot_sector, ptr %256, i32 0, i32 3
  %260 = load i8, ptr %259, align 1
  %261 = getelementptr inbounds %struct.fat_boot_sector, ptr %256, i32 0, i32 4
  %262 = load i16, ptr %261, align 2
  %263 = getelementptr inbounds %struct.fat_boot_sector, ptr %256, i32 0, i32 5
  %264 = load i8, ptr %263, align 4
  %265 = getelementptr inbounds %struct.fat_boot_sector, ptr %256, i32 0, i32 6
  %266 = load i16, ptr %265, align 1
  %267 = getelementptr inbounds %struct.fat_boot_sector, ptr %256, i32 0, i32 7
  %268 = load i16, ptr %267, align 1
  %269 = getelementptr inbounds %struct.fat_boot_sector, ptr %256, i32 0, i32 9
  %270 = load i16, ptr %269, align 2
  %271 = getelementptr inbounds %struct.fat_boot_sector, ptr %256, i32 0, i32 13
  %272 = load i32, ptr %271, align 4
  %273 = getelementptr inbounds %struct.fat_boot_sector, ptr %256, i32 0, i32 14
  %274 = getelementptr inbounds %struct.anon.72, ptr %273, i32 0, i32 1
  %275 = load i8, ptr %274, align 1
  %276 = getelementptr inbounds %struct.anon.72, ptr %273, i32 0, i32 3
  %277 = load i32, ptr %276, align 1
  %278 = load i32, ptr %273, align 4
  %279 = getelementptr inbounds %struct.fat_boot_sector, ptr %256, i32 0, i32 14, i32 0, i32 3
  %280 = load i32, ptr %279, align 4
  %281 = getelementptr inbounds %struct.fat_boot_sector, ptr %256, i32 0, i32 14, i32 0, i32 4
  %282 = load i16, ptr %281, align 4
  %283 = getelementptr inbounds %struct.fat_boot_sector, ptr %256, i32 0, i32 14, i32 0, i32 8
  %284 = load i8, ptr %283, align 1
  %285 = getelementptr inbounds %struct.fat_boot_sector, ptr %256, i32 0, i32 14, i32 0, i32 10
  %286 = load i32, ptr %285, align 1
  %287 = icmp eq i16 %262, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %254
  %289 = icmp eq i32 %2, 0
  br i1 %289, label %290, label %332

290:                                              ; preds = %288
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.136) #13
  br label %332

291:                                              ; preds = %254
  %292 = icmp eq i8 %264, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %291
  %294 = icmp eq i32 %2, 0
  br i1 %294, label %295, label %332

295:                                              ; preds = %293
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.137) #13
  br label %332

296:                                              ; preds = %291
  %297 = getelementptr inbounds %struct.fat_boot_sector, ptr %256, i32 0, i32 8
  %298 = load i8, ptr %297, align 1
  switch i8 %298, label %299 [
    i8 -1, label %303
    i8 -2, label %303
    i8 -3, label %303
    i8 -4, label %303
    i8 -5, label %303
    i8 -6, label %303
    i8 -7, label %303
    i8 -8, label %303
    i8 -16, label %303
  ]

299:                                              ; preds = %296
  %300 = icmp eq i32 %2, 0
  br i1 %300, label %301, label %332

301:                                              ; preds = %299
  %302 = zext i8 %298 to i32
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.138, i32 noundef %302) #13
  br label %332

303:                                              ; preds = %296, %296, %296, %296, %296, %296, %296, %296, %296
  %304 = zext i16 %258 to i32
  %305 = icmp eq i16 %258, 0
  br i1 %305, label %313, label %306

306:                                              ; preds = %303
  %307 = call i32 @llvm.ctpop.i32(i32 %304) #12, !range !23
  %308 = icmp ugt i32 %307, 1
  %309 = icmp ult i16 %258, 512
  %310 = select i1 %308, i1 true, i1 %309
  %311 = icmp ugt i16 %258, 4096
  %312 = select i1 %310, i1 true, i1 %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %306, %303
  %314 = icmp eq i32 %2, 0
  br i1 %314, label %315, label %332

315:                                              ; preds = %313
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.139, i32 noundef %304) #13
  br label %332

316:                                              ; preds = %306
  %317 = zext i8 %260 to i32
  %318 = icmp ne i8 %260, 0
  %319 = call i32 @llvm.ctpop.i32(i32 %317) #12, !range !24
  %320 = icmp ult i32 %319, 2
  %321 = and i1 %318, %320
  br i1 %321, label %325, label %322

322:                                              ; preds = %316
  %323 = icmp eq i32 %2, 0
  br i1 %323, label %324, label %332

324:                                              ; preds = %322
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.140, i32 noundef %317) #13
  br label %332

325:                                              ; preds = %316
  %326 = icmp eq i16 %270, 0
  %327 = icmp eq i32 %278, 0
  %328 = select i1 %326, i1 %327, i1 false
  br i1 %328, label %329, label %417

329:                                              ; preds = %325
  %330 = icmp eq i32 %2, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %329
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.141) #13
  br label %332

332:                                              ; preds = %331, %329, %324, %322, %315, %313, %301, %299, %295, %293, %290, %288
  %333 = load i16, ptr %28, align 8
  %334 = and i16 %333, 16384
  %335 = icmp eq i16 %334, 0
  br i1 %335, label %668, label %336

336:                                              ; preds = %332
  %337 = load ptr, ptr %255, align 4
  %338 = load ptr, ptr %247, align 4
  %339 = getelementptr inbounds %struct.block_device, ptr %338, i32 0, i32 1
  %340 = load i64, ptr %339, align 8
  %341 = load i8, ptr %337, align 4
  %342 = icmp eq i8 %341, -21
  br i1 %342, label %343, label %347

343:                                              ; preds = %336
  %344 = getelementptr [3 x i8], ptr %337, i32 0, i32 2
  %345 = load i8, ptr %344, align 2
  %346 = icmp eq i8 %345, -112
  br i1 %346, label %350, label %347

347:                                              ; preds = %343, %336
  %348 = icmp eq i32 %2, 0
  br i1 %348, label %349, label %667

349:                                              ; preds = %347
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.142) #13
  br label %666

350:                                              ; preds = %343
  %351 = getelementptr inbounds %struct.fat_boot_sector, ptr %337, i32 0, i32 2
  %352 = load i16, ptr %351, align 1
  %353 = icmp eq i16 %352, 0
  br i1 %353, label %354, label %391

354:                                              ; preds = %350
  %355 = getelementptr inbounds %struct.fat_boot_sector, ptr %337, i32 0, i32 3
  %356 = load i8, ptr %355, align 1
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %358, label %391

358:                                              ; preds = %354
  %359 = getelementptr inbounds %struct.fat_boot_sector, ptr %337, i32 0, i32 4
  %360 = load i16, ptr %359, align 2
  %361 = icmp eq i16 %360, 0
  br i1 %361, label %362, label %391

362:                                              ; preds = %358
  %363 = getelementptr inbounds %struct.fat_boot_sector, ptr %337, i32 0, i32 5
  %364 = load i8, ptr %363, align 4
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %366, label %391

366:                                              ; preds = %362
  %367 = getelementptr inbounds %struct.fat_boot_sector, ptr %337, i32 0, i32 6
  %368 = load i16, ptr %367, align 1
  %369 = icmp eq i16 %368, 0
  br i1 %369, label %370, label %391

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct.fat_boot_sector, ptr %337, i32 0, i32 7
  %372 = load i16, ptr %371, align 1
  %373 = icmp eq i16 %372, 0
  br i1 %373, label %374, label %391

374:                                              ; preds = %370
  %375 = getelementptr inbounds %struct.fat_boot_sector, ptr %337, i32 0, i32 8
  %376 = load i8, ptr %375, align 1
  %377 = icmp eq i8 %376, 0
  br i1 %377, label %378, label %391

378:                                              ; preds = %374
  %379 = getelementptr inbounds %struct.fat_boot_sector, ptr %337, i32 0, i32 9
  %380 = load i16, ptr %379, align 2
  %381 = icmp eq i16 %380, 0
  br i1 %381, label %382, label %391

382:                                              ; preds = %378
  %383 = getelementptr inbounds %struct.fat_boot_sector, ptr %337, i32 0, i32 10
  %384 = load i16, ptr %383, align 4
  %385 = icmp eq i16 %384, 0
  br i1 %385, label %386, label %391

386:                                              ; preds = %382
  %387 = getelementptr inbounds %struct.fat_boot_sector, ptr %337, i32 0, i32 11
  %388 = load i16, ptr %387, align 2
  %389 = icmp eq i16 %388, 0
  br i1 %389, label %390, label %391

390:                                              ; preds = %386
  switch i64 %340, label %394 [
    i64 320, label %400
    i64 360, label %397
    i64 640, label %398
    i64 720, label %399
  ]

391:                                              ; preds = %386, %382, %378, %374, %370, %366, %362, %358, %354, %350
  %392 = icmp eq i32 %2, 0
  br i1 %392, label %393, label %667

393:                                              ; preds = %391
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.142) #13
  br label %666

394:                                              ; preds = %390
  %395 = icmp eq i32 %2, 0
  br i1 %395, label %396, label %667

396:                                              ; preds = %394
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.145, i64 noundef %340) #13
  br label %666

397:                                              ; preds = %390
  br label %400

398:                                              ; preds = %390
  br label %400

399:                                              ; preds = %390
  br label %400

400:                                              ; preds = %399, %398, %397, %390
  %401 = phi i32 [ 0, %390 ], [ 1, %397 ], [ 2, %398 ], [ 3, %399 ]
  %402 = phi ptr [ @floppy_defaults, %390 ], [ getelementptr inbounds ([4 x %struct.fat_floppy_defaults], ptr @floppy_defaults, i32 0, i32 1), %397 ], [ getelementptr inbounds ([4 x %struct.fat_floppy_defaults], ptr @floppy_defaults, i32 0, i32 2), %398 ], [ getelementptr inbounds ([4 x %struct.fat_floppy_defaults], ptr @floppy_defaults, i32 0, i32 3), %399 ]
  %403 = icmp eq i32 %2, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %400
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.146) #13
  br label %405

405:                                              ; preds = %404, %400
  %406 = getelementptr [4 x %struct.fat_floppy_defaults], ptr @floppy_defaults, i32 0, i32 %401, i32 1
  %407 = load i32, ptr %406, align 4
  %408 = trunc i32 %407 to i8
  %409 = getelementptr [4 x %struct.fat_floppy_defaults], ptr @floppy_defaults, i32 0, i32 %401, i32 2
  %410 = load i32, ptr %409, align 4
  %411 = trunc i32 %410 to i16
  %412 = load i32, ptr %402, align 4
  %413 = trunc i32 %412 to i16
  %414 = getelementptr [4 x %struct.fat_floppy_defaults], ptr @floppy_defaults, i32 0, i32 %401, i32 4
  %415 = load i32, ptr %414, align 4
  %416 = trunc i32 %415 to i16
  br label %417

417:                                              ; preds = %405, %325
  %418 = phi i16 [ %258, %325 ], [ 512, %405 ]
  %419 = phi i8 [ %260, %325 ], [ %408, %405 ]
  %420 = phi i16 [ %262, %325 ], [ 1, %405 ]
  %421 = phi i8 [ %264, %325 ], [ 2, %405 ]
  %422 = phi i16 [ %266, %325 ], [ %411, %405 ]
  %423 = phi i16 [ %268, %325 ], [ %413, %405 ]
  %424 = phi i16 [ %270, %325 ], [ %416, %405 ]
  %425 = phi i32 [ %272, %325 ], [ 0, %405 ]
  %426 = phi i8 [ %275, %325 ], [ 0, %405 ]
  %427 = phi i32 [ %277, %325 ], [ 0, %405 ]
  %428 = phi i32 [ %278, %325 ], [ 0, %405 ]
  %429 = phi i32 [ %280, %325 ], [ 0, %405 ]
  %430 = phi i16 [ %282, %325 ], [ 0, %405 ]
  %431 = phi i8 [ %284, %325 ], [ 0, %405 ]
  %432 = phi i32 [ %286, %325 ], [ 0, %405 ]
  call void @__brelse(ptr noundef nonnull %251) #12
  %433 = zext i8 %419 to i16
  store i16 %433, ptr %12, align 8
  %434 = zext i16 %418 to i32
  %435 = load i32, ptr %249, align 16
  %436 = icmp ugt i32 %435, %434
  br i1 %436, label %437, label %438

437:                                              ; preds = %417
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef %434) #13
  br label %675

438:                                              ; preds = %417
  %439 = icmp ult i32 %435, %434
  br i1 %439, label %440, label %452

440:                                              ; preds = %438
  %441 = call i32 @sb_set_blocksize(ptr noundef %0, i32 noundef %434) #12
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %443, label %444

443:                                              ; preds = %440
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef %434) #13
  br label %675

444:                                              ; preds = %440
  %445 = load ptr, ptr %247, align 4
  %446 = load i32, ptr %249, align 16
  %447 = call ptr @__bread_gfp(ptr noundef %445, i64 noundef 0, i32 noundef %446, i32 noundef 8) #12
  %448 = icmp eq ptr %447, null
  br i1 %448, label %449, label %451

449:                                              ; preds = %444
  %450 = load i32, ptr %249, align 16
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef %450) #13
  br label %675

451:                                              ; preds = %444
  call void @__brelse(ptr noundef nonnull %447) #12
  br label %452

452:                                              ; preds = %451, %438
  %453 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 15
  call void @__mutex_init(ptr noundef %453, ptr noundef nonnull @.str.7, ptr noundef nonnull @fat_fill_super.__key.6) #12
  %454 = load i32, ptr %249, align 16
  %455 = load i16, ptr %12, align 8
  %456 = zext i16 %455 to i32
  %457 = mul i32 %454, %456
  %458 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 2
  store i32 %457, ptr %458, align 4
  %459 = call i32 @llvm.cttz.i32(i32 %457, i1 true), !range !23
  %460 = icmp eq i32 %457, 0
  %461 = trunc i32 %459 to i16
  %462 = select i1 %460, i16 -1, i16 %461
  %463 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 1
  store i16 %462, ptr %463, align 2
  %464 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 3
  store i8 %421, ptr %464, align 8
  %465 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 4
  store i8 0, ptr %465, align 1
  %466 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 5
  store i16 %420, ptr %466, align 2
  %467 = zext i16 %424 to i32
  %468 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 6
  store i32 %467, ptr %468, align 4
  %469 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 11
  store i32 0, ptr %469, align 8
  %470 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 17
  store i32 -1, ptr %470, align 8
  %471 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 18
  store i32 0, ptr %471, align 4
  %472 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 16
  store i32 2, ptr %472, align 4
  %473 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 4
  store i64 4294967295, ptr %473, align 8
  call void @fat_time_fat2unix(ptr noundef nonnull %12, ptr noundef nonnull %10, i16 noundef zeroext 0, i16 noundef zeroext 33, i8 noundef zeroext 0) #12
  %474 = load i64, ptr %10, align 8
  %475 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29
  store i64 %474, ptr %475, align 8
  call void @fat_time_fat2unix(ptr noundef nonnull %12, ptr noundef nonnull %10, i16 noundef zeroext -16515, i16 noundef zeroext -97, i8 noundef zeroext 0) #12
  %476 = load i64, ptr %10, align 8
  %477 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 30
  store i64 %476, ptr %477, align 16
  %478 = load i32, ptr %468, align 4
  %479 = icmp eq i32 %478, 0
  %480 = icmp ne i32 %428, 0
  %481 = select i1 %479, i1 %480, i1 false
  br i1 %481, label %482, label %516

482:                                              ; preds = %452
  store i8 32, ptr %465, align 1
  store i32 %428, ptr %468, align 4
  store i32 %429, ptr %469, align 8
  %483 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 12
  %484 = icmp eq i16 %430, 0
  %485 = select i1 %484, i16 1, i16 %430
  %486 = zext i16 %485 to i32
  store i32 %486, ptr %483, align 4
  %487 = zext i16 %485 to i64
  %488 = load ptr, ptr %247, align 4
  %489 = load i32, ptr %249, align 16
  %490 = call ptr @__bread_gfp(ptr noundef %488, i64 noundef %487, i32 noundef %489, i32 noundef 8) #12
  %491 = icmp eq ptr %490, null
  br i1 %491, label %514, label %492

492:                                              ; preds = %482
  %493 = getelementptr inbounds %struct.buffer_head, ptr %490, i32 0, i32 5
  %494 = load ptr, ptr %493, align 4
  %495 = load i32, ptr %494, align 4
  %496 = icmp eq i32 %495, 1096897106
  %497 = getelementptr inbounds %struct.fat_boot_fsinfo, ptr %494, i32 0, i32 2
  %498 = load i32, ptr %497, align 4
  %499 = icmp eq i32 %498, 1631679090
  %500 = select i1 %496, i1 %499, i1 false
  br i1 %500, label %503, label %501

501:                                              ; preds = %492
  %502 = load i32, ptr %483, align 4
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %495, i32 noundef %498, i32 noundef %502) #13
  br label %513

503:                                              ; preds = %492
  %504 = load i16, ptr %28, align 8
  %505 = and i16 %504, 1024
  %506 = icmp eq i16 %505, 0
  br i1 %506, label %508, label %507

507:                                              ; preds = %503
  store i32 1, ptr %471, align 4
  br label %508

508:                                              ; preds = %507, %503
  %509 = getelementptr inbounds %struct.fat_boot_fsinfo, ptr %494, i32 0, i32 3
  %510 = load i32, ptr %509, align 4
  store i32 %510, ptr %470, align 8
  %511 = getelementptr inbounds %struct.fat_boot_fsinfo, ptr %494, i32 0, i32 4
  %512 = load i32, ptr %511, align 4
  store i32 %512, ptr %472, align 4
  br label %513

513:                                              ; preds = %508, %501
  call void @__brelse(ptr noundef nonnull %490) #12
  br label %516

514:                                              ; preds = %482
  %515 = load i32, ptr %483, align 4
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8, i32 noundef %515) #13
  br label %675

516:                                              ; preds = %513, %452
  %517 = load i8, ptr %465, align 1
  %518 = icmp eq i8 %517, 32
  %519 = select i1 %518, i32 %432, i32 %427
  %520 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 25
  store i32 %519, ptr %520, align 8
  %521 = load i32, ptr %249, align 16
  %522 = lshr i32 %521, 5
  %523 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 23
  store i32 %522, ptr %523, align 8
  %524 = call i32 @llvm.cttz.i32(i32 %522, i1 true), !range !23
  %525 = icmp ult i32 %521, 32
  %526 = select i1 %525, i32 -1, i32 %524
  %527 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 24
  store i32 %526, ptr %527, align 4
  %528 = load i16, ptr %466, align 2
  %529 = zext i16 %528 to i32
  %530 = load i8, ptr %464, align 8
  %531 = zext i8 %530 to i32
  %532 = load i32, ptr %468, align 4
  %533 = mul i32 %532, %531
  %534 = add i32 %533, %529
  %535 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 7
  store i32 %534, ptr %535, align 8
  %536 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 8
  store i16 %422, ptr %536, align 4
  %537 = zext i16 %422 to i32
  %538 = add nuw nsw i32 %522, 65535
  %539 = and i32 %538, %537
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %544, label %541

541:                                              ; preds = %516
  %542 = icmp eq i32 %2, 0
  br i1 %542, label %543, label %675

543:                                              ; preds = %541
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, i32 noundef %537) #13
  br label %670

544:                                              ; preds = %516
  %545 = shl nuw nsw i32 %537, 5
  %546 = udiv i32 %545, %521
  %547 = add i32 %546, %534
  %548 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 9
  store i32 %547, ptr %548, align 8
  %549 = zext i16 %423 to i32
  %550 = icmp eq i16 %423, 0
  %551 = select i1 %550, i32 %425, i32 %549
  %552 = sub i32 %551, %547
  %553 = load i16, ptr %12, align 8
  %554 = zext i16 %553 to i32
  %555 = udiv i32 %552, %554
  br i1 %518, label %559, label %556

556:                                              ; preds = %544
  %557 = icmp ugt i32 %555, 4084
  %558 = select i1 %557, i8 16, i8 12
  store i8 %558, ptr %465, align 1
  br label %559

559:                                              ; preds = %556, %544
  %560 = phi i8 [ %426, %556 ], [ %431, %544 ]
  %561 = and i8 %560, 1
  %562 = zext i8 %561 to i32
  %563 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 35
  store i32 %562, ptr %563, align 8
  %564 = load ptr, ptr %15, align 4
  %565 = getelementptr inbounds %struct.msdos_sb_info, ptr %564, i32 0, i32 4
  %566 = load i8, ptr %565, align 1
  %567 = icmp eq i8 %566, 12
  br i1 %567, label %575, label %568

568:                                              ; preds = %559
  %569 = shl i32 %521, 3
  %570 = zext i8 %566 to i32
  %571 = udiv i32 %569, %570
  %572 = getelementptr inbounds %struct.msdos_sb_info, ptr %564, i32 0, i32 6
  %573 = load i32, ptr %572, align 4
  %574 = mul i32 %573, %571
  br label %581

575:                                              ; preds = %559
  %576 = getelementptr inbounds %struct.msdos_sb_info, ptr %564, i32 0, i32 6
  %577 = load i32, ptr %576, align 4
  %578 = shl i32 %521, 3
  %579 = mul i32 %578, %577
  %580 = udiv i32 %579, 12
  br label %581

581:                                              ; preds = %575, %568
  %582 = phi i32 [ %580, %575 ], [ %574, %568 ]
  %583 = add i32 %582, -2
  %584 = call i32 @llvm.umin.i32(i32 %555, i32 %583)
  %585 = icmp eq i8 %566, 32
  %586 = icmp eq i8 %566, 16
  %587 = select i1 %586, i32 65524, i32 4084
  %588 = select i1 %585, i32 268435446, i32 %587
  %589 = icmp ugt i32 %584, %588
  br i1 %589, label %590, label %593

590:                                              ; preds = %581
  %591 = icmp eq i32 %2, 0
  br i1 %591, label %592, label %675

592:                                              ; preds = %590
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12, i32 noundef %584) #13
  br label %670

593:                                              ; preds = %581
  %594 = add i32 %584, 2
  %595 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 10
  store i32 %594, ptr %595, align 4
  %596 = load i32, ptr %470, align 8
  %597 = icmp ne i32 %596, -1
  %598 = icmp ugt i32 %596, %584
  %599 = select i1 %597, i1 %598, i1 false
  br i1 %599, label %600, label %601

600:                                              ; preds = %593
  store i32 -1, ptr %470, align 8
  br label %601

601:                                              ; preds = %600, %593
  %602 = load i32, ptr %472, align 4
  %603 = urem i32 %602, %594
  %604 = call i32 @llvm.umax.i32(i32 %603, i32 2)
  store i32 %604, ptr %472, align 4
  %605 = getelementptr inbounds %struct.msdos_sb_info, ptr %564, i32 0, i32 31
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(1028) %605, i8 0, i64 1028, i1 false) #12
  %606 = load ptr, ptr %15, align 4
  %607 = getelementptr inbounds %struct.msdos_sb_info, ptr %606, i32 0, i32 33
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(1028) %607, i8 0, i64 1028, i1 false) #12
  call void @fat_ent_access_init(ptr noundef %0) #12
  %608 = load i16, ptr %49, align 4
  %609 = zext i16 %608 to i32
  %610 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.13, i32 noundef %609)
  %611 = call ptr @load_nls(ptr noundef nonnull %9) #12
  %612 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 20
  store ptr %611, ptr %612, align 4
  %613 = icmp eq ptr %611, null
  br i1 %613, label %614, label %615

614:                                              ; preds = %601
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14, ptr noundef nonnull %9) #13
  br label %675

615:                                              ; preds = %601
  %616 = load i16, ptr %28, align 8
  %617 = and i16 %616, 16
  %618 = icmp eq i16 %617, 0
  br i1 %618, label %626, label %619

619:                                              ; preds = %615
  %620 = load ptr, ptr %50, align 4
  %621 = call ptr @load_nls(ptr noundef %620) #12
  %622 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 21
  store ptr %621, ptr %622, align 8
  %623 = icmp eq ptr %621, null
  br i1 %623, label %624, label %626

624:                                              ; preds = %619
  %625 = load ptr, ptr %50, align 4
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15, ptr noundef %625) #13
  br label %675

626:                                              ; preds = %619, %615
  %627 = call ptr @new_inode(ptr noundef %0) #12
  %628 = icmp eq ptr %627, null
  br i1 %628, label %675, label %629

629:                                              ; preds = %626
  %630 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 28
  store ptr %627, ptr %630, align 4
  %631 = call ptr @new_inode(ptr noundef %0) #12
  %632 = icmp eq ptr %631, null
  br i1 %632, label %673, label %633

633:                                              ; preds = %629
  %634 = getelementptr inbounds %struct.inode, ptr %631, i32 0, i32 10
  store i32 2, ptr %634, align 4
  %635 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 29
  store ptr %631, ptr %635, align 8
  %636 = load i32, ptr %634, align 4
  call void @__insert_inode_hash(ptr noundef nonnull %631, i32 noundef %636) #12
  %637 = call ptr @new_inode(ptr noundef %0) #12
  %638 = icmp eq ptr %637, null
  br i1 %638, label %671, label %639

639:                                              ; preds = %633
  %640 = getelementptr inbounds %struct.inode, ptr %637, i32 0, i32 10
  store i32 1, ptr %640, align 4
  %641 = getelementptr inbounds %struct.inode, ptr %637, i32 0, i32 33
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %641) #12, !srcloc !19
  %642 = call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %641, ptr %641, i64 2) #12, !srcloc !22
  %643 = call fastcc i32 @fat_read_root(ptr noundef nonnull %637)
  %644 = icmp slt i32 %643, 0
  br i1 %644, label %645, label %646

645:                                              ; preds = %639
  call void @iput(ptr noundef nonnull %637) #12
  br label %671

646:                                              ; preds = %639
  %647 = load i32, ptr %640, align 4
  call void @__insert_inode_hash(ptr noundef nonnull %637, i32 noundef %647) #12
  call void @fat_attach(ptr noundef nonnull %637, i64 noundef 0)
  %648 = call ptr @d_make_root(ptr noundef nonnull %637) #12
  %649 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  store ptr %648, ptr %649, align 64
  %650 = icmp eq ptr %648, null
  br i1 %650, label %651, label %652

651:                                              ; preds = %646
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16) #13
  br label %671

652:                                              ; preds = %646
  %653 = load i16, ptr %28, align 8
  %654 = and i16 %653, 8192
  %655 = icmp eq i16 %654, 0
  br i1 %655, label %665, label %656

656:                                              ; preds = %652
  %657 = load ptr, ptr %247, align 4
  %658 = getelementptr inbounds %struct.block_device, ptr %657, i32 0, i32 18
  %659 = load ptr, ptr %658, align 4
  %660 = getelementptr inbounds %struct.request_queue, ptr %659, i32 0, i32 11
  %661 = load volatile i32, ptr %660, align 4
  %662 = and i32 %661, 256
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %664, label %665

664:                                              ; preds = %656
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.17) #13
  br label %665

665:                                              ; preds = %664, %656, %652
  call fastcc void @fat_set_state(ptr noundef %0, i32 noundef 1, i32 noundef 0)
  br label %685

666:                                              ; preds = %396, %393, %349
  call void @__brelse(ptr noundef nonnull %251) #12
  br label %670

667:                                              ; preds = %394, %391, %347
  call void @__brelse(ptr noundef nonnull %251) #12
  br label %675

668:                                              ; preds = %332
  call void @__brelse(ptr noundef nonnull %251) #12
  %669 = icmp eq i32 %2, 0
  br i1 %669, label %670, label %675

670:                                              ; preds = %668, %666, %592, %543
  call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #13
  br label %675

671:                                              ; preds = %651, %645, %633
  %672 = phi i32 [ %643, %645 ], [ -12, %651 ], [ -12, %633 ]
  call void @iput(ptr noundef nonnull %631) #12
  br label %673

673:                                              ; preds = %671, %629
  %674 = phi i32 [ %672, %671 ], [ -12, %629 ]
  call void @iput(ptr noundef nonnull %627) #12
  br label %675

675:                                              ; preds = %673, %670, %668, %667, %626, %624, %614, %590, %541, %514, %449, %443, %437, %253, %243
  %676 = phi i32 [ %674, %673 ], [ -5, %253 ], [ -22, %668 ], [ -22, %670 ], [ -5, %437 ], [ -5, %514 ], [ -12, %626 ], [ -22, %624 ], [ -22, %614 ], [ -22, %541 ], [ -22, %590 ], [ %244, %243 ], [ -22, %667 ], [ -5, %449 ], [ -5, %443 ]
  %677 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 21
  %678 = load ptr, ptr %677, align 8
  call void @unload_nls(ptr noundef %678) #12
  %679 = getelementptr inbounds %struct.msdos_sb_info, ptr %12, i32 0, i32 20
  %680 = load ptr, ptr %679, align 4
  call void @unload_nls(ptr noundef %680) #12
  %681 = load ptr, ptr %50, align 4
  %682 = icmp eq ptr %681, @fat_default_iocharset
  br i1 %682, label %684, label %683

683:                                              ; preds = %675
  call void @kfree(ptr noundef %681) #12
  store ptr @fat_default_iocharset, ptr %50, align 4
  br label %684

684:                                              ; preds = %683, %675
  store ptr null, ptr %15, align 4
  call void @kfree(ptr noundef nonnull %12) #12
  br label %685

685:                                              ; preds = %684, %665, %5
  %686 = phi i32 [ %676, %684 ], [ 0, %665 ], [ -12, %5 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %9) #12
  ret i32 %686
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_min_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @fat_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_ent_access_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fat_read_root(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 -48
  store i64 1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 2
  %10 = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 19
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 3
  %13 = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 19, i32 1
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %12, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %15 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 33
  %16 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %15, ptr elementtype(i64) %15) #12, !srcloc !17
  br label %17

17:                                               ; preds = %25, %1
  %18 = phi i64 [ %16, %1 ], [ %26, %25 ]
  %19 = add i64 %18, 2
  %20 = and i64 %19, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #12, !srcloc !19
  br label %21

21:                                               ; preds = %21, %17
  %22 = tail call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %15, ptr %15, i64 %18, i64 %20, ptr elementtype(i64) %15) #12, !srcloc !20
  %23 = extractvalue { i32, i64 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %21

25:                                               ; preds = %21
  %26 = extractvalue { i32, i64 } %22, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %17, !prof !9

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 44
  store i32 0, ptr %29, align 8
  %30 = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 19, i32 3
  %31 = load i16, ptr %30, align 2
  %32 = and i16 %31, 511
  %33 = xor i16 %32, 16895
  store i16 %33, ptr %0, align 8
  %34 = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 22
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 7
  store ptr %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 39
  store ptr @fat_dir_operations, ptr %37, align 8
  %38 = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 4
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 32
  br i1 %40, label %41, label %64

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 11
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr i8, ptr %0, i32 -64
  store i32 %43, ptr %44, align 8
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 27
  %47 = load ptr, ptr %46, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %48 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  store i64 0, ptr %48, align 8
  %49 = icmp eq i32 %43, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %41
  %51 = call i32 @fat_get_cluster(ptr noundef %0, i32 noundef 268435455, ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr %2, align 4
  %55 = add i32 %54, 1
  %56 = getelementptr inbounds %struct.msdos_sb_info, ptr %47, i32 0, i32 1
  %57 = load i16, ptr %56, align 2
  %58 = zext i16 %57 to i32
  %59 = shl i32 %55, %58
  %60 = sext i32 %59 to i64
  store i64 %60, ptr %48, align 8
  br label %61

61:                                               ; preds = %53, %41
  %62 = phi i64 [ %60, %53 ], [ 0, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  br label %72

63:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  br label %95

64:                                               ; preds = %28
  %65 = getelementptr i8, ptr %0, i32 -64
  store i32 0, ptr %65, align 8
  %66 = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 8
  %67 = load i16, ptr %66, align 4
  %68 = zext i16 %67 to i32
  %69 = shl nuw nsw i32 %68, 5
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  store i64 %70, ptr %71, align 8
  br label %72

72:                                               ; preds = %64, %61
  %73 = phi i64 [ %62, %61 ], [ %70, %64 ]
  %74 = getelementptr inbounds %struct.msdos_sb_info, ptr %7, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, -1
  %77 = zext i32 %76 to i64
  %78 = add nsw i64 %73, %77
  %79 = zext i32 %75 to i64
  %80 = sub nsw i64 0, %79
  %81 = and i64 %78, %80
  %82 = ashr i64 %81, 9
  %83 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  store i64 %82, ptr %83, align 8
  %84 = getelementptr i8, ptr %0, i32 -60
  store i32 0, ptr %84, align 4
  %85 = getelementptr i8, ptr %0, i32 -72
  store i64 %73, ptr %85, align 8
  %86 = getelementptr i8, ptr %0, i32 -56
  store i32 0, ptr %86, align 8
  %87 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  store i64 0, ptr %87, align 8
  %88 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14
  store i64 0, ptr %88, align 8
  %89 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  store i64 0, ptr %89, align 8
  %90 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16, i32 1
  store i32 0, ptr %90, align 8
  %91 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14, i32 1
  store i32 0, ptr %91, align 8
  %92 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15, i32 1
  store i32 0, ptr %92, align 8
  %93 = call i32 @fat_subdirs(ptr noundef %0) #12
  %94 = add i32 %93, 2
  call void @set_nlink(ptr noundef %0, i32 noundef %94) #12
  br label %95

95:                                               ; preds = %72, %63
  %96 = phi i32 [ 0, %72 ], [ %51, %63 ]
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fat_set_state(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  %10 = icmp eq i32 %2, 0
  %11 = and i1 %10, %9
  br i1 %11, label %51, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 35
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %51, label %18

18:                                               ; preds = %16
  tail call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.147) #13
  br label %51

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 16
  %24 = tail call ptr @__bread_gfp(ptr noundef %21, i64 noundef 0, i32 noundef %23, i32 noundef 8) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  tail call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.148) #13
  br label %51

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.buffer_head, ptr %24, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 4
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 32
  %33 = icmp eq i32 %1, 0
  br i1 %32, label %34, label %41

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.fat_boot_sector, ptr %29, i32 0, i32 14, i32 0, i32 8
  %36 = load i8, ptr %35, align 1
  br i1 %33, label %39, label %37

37:                                               ; preds = %34
  %38 = or i8 %36, 1
  store i8 %38, ptr %35, align 1
  br label %49

39:                                               ; preds = %34
  %40 = and i8 %36, -2
  store i8 %40, ptr %35, align 1
  br label %49

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.fat_boot_sector, ptr %29, i32 0, i32 14
  %43 = getelementptr inbounds %struct.anon.72, ptr %42, i32 0, i32 1
  %44 = load i8, ptr %43, align 1
  br i1 %33, label %47, label %45

45:                                               ; preds = %41
  %46 = or i8 %44, 1
  store i8 %46, ptr %43, align 1
  br label %49

47:                                               ; preds = %41
  %48 = and i8 %44, -2
  store i8 %48, ptr %43, align 1
  br label %49

49:                                               ; preds = %47, %45, %39, %37
  tail call void @mark_buffer_dirty(ptr noundef nonnull %24) #12
  %50 = tail call i32 @sync_dirty_buffer(ptr noundef nonnull %24) #12
  tail call void @__brelse(ptr noundef nonnull %24) #12
  br label %51

51:                                               ; preds = %49, %26, %18, %16, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unload_nls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fat_flush_inodes(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 19, i32 12
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 256
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %3
  %11 = icmp eq ptr %1, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @sync_inode_metadata(ptr noundef nonnull %1, i32 noundef 0) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 @filemap_fdatawrite(ptr noundef %17) #12
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i32 [ 0, %10 ], [ %18, %15 ]
  %21 = icmp eq i32 %20, 0
  %22 = icmp ne ptr %2, null
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = tail call i32 @sync_inode_metadata(ptr noundef nonnull %2, i32 noundef 0) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 9
  %29 = load ptr, ptr %28, align 8
  %30 = tail call i32 @filemap_fdatawrite(ptr noundef %29) #12
  br label %31

31:                                               ; preds = %27, %19
  %32 = phi i32 [ %20, %19 ], [ %30, %27 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @sync_blockdev_nowait(ptr noundef %36) #12
  br label %38

38:                                               ; preds = %34, %31, %24, %12, %3
  %39 = phi i32 [ 0, %3 ], [ %32, %31 ], [ %37, %34 ], [ %25, %24 ], [ %13, %12 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev_nowait(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exit_fat_fs() #4 section ".exit.text" {
  tail call void @fat_cache_destroy() #12
  tail call void @rcu_barrier() #12
  %1 = load ptr, ptr @fat_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_cache_destroy() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_fat_fs() #4 section ".init.text" {
  %1 = tail call i32 @fat_cache_init() #12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.149, i32 noundef 488, i32 noundef 0, i32 noundef 1179648, ptr noundef nonnull @init_once) #12
  store ptr %4, ptr @fat_inode_cachep, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @fat_cache_destroy() #12
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ -12, %6 ], [ %1, %0 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_bmap(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__fat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_get_cluster(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat_writepage(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @block_write_full_page(ptr noundef %0, ptr noundef nonnull @fat_get_block, ptr noundef %1) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat_readpage(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @mpage_readpage(ptr noundef %1, ptr noundef nonnull @fat_get_block) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat_writepages(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @mpage_writepages(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @fat_get_block) #12
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fat_readahead(ptr noundef %0) #0 {
  tail call void @mpage_readahead(ptr noundef %0, ptr noundef nonnull @fat_get_block) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat_write_begin(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  store ptr null, ptr %5, align 4
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr i8, ptr %8, i32 -72
  %10 = tail call i32 @cont_write_begin(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull @fat_get_block, ptr noundef %9) #12
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = zext i32 %3 to i64
  %14 = add i64 %13, %2
  %15 = load ptr, ptr %1, align 4
  %16 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 13
  %17 = load i64, ptr %16, align 8
  %18 = icmp slt i64 %17, %14
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  tail call void @truncate_pagecache(ptr noundef %15, i64 noundef %17) #12
  %20 = load i64, ptr %16, align 8
  tail call void @fat_truncate_blocks(ptr noundef %15, i64 noundef %20) #12
  br label %21

21:                                               ; preds = %19, %12, %7
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat_write_end(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = load ptr, ptr %1, align 4
  %9 = tail call i32 @generic_write_end(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #12
  %10 = icmp ult i32 %9, %3
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = zext i32 %3 to i64
  %13 = add i64 %12, %2
  %14 = load ptr, ptr %1, align 4
  %15 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 13
  %16 = load i64, ptr %15, align 8
  %17 = icmp slt i64 %16, %13
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  tail call void @truncate_pagecache(ptr noundef %14, i64 noundef %16) #12
  %19 = load i64, ptr %15, align 8
  tail call void @fat_truncate_blocks(ptr noundef %14, i64 noundef %19) #12
  br label %20

20:                                               ; preds = %18, %11, %7
  %21 = icmp slt i32 %9, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %20
  %23 = getelementptr i8, ptr %8, i32 -56
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = tail call i32 @fat_truncate_time(ptr noundef %8, ptr noundef null, i32 noundef 6) #12
  %29 = load i32, ptr %23, align 8
  %30 = or i32 %29, 32
  store i32 %30, ptr %23, align 8
  tail call void @__mark_inode_dirty(ptr noundef %8, i32 noundef 7) #12
  br label %31

31:                                               ; preds = %27, %22, %20
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @_fat_bmap(ptr noundef %0, i64 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr i8, ptr %3, i32 -24
  tail call void @down_read(ptr noundef %4) #12
  %5 = tail call i64 @generic_block_bmap(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @fat_get_block_bmap) #12
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr i8, ptr %6, i32 -24
  tail call void @up_read(ptr noundef %7) #12
  ret i64 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat_direct_IO(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 2
  %12 = load i8, ptr %11, align 2, !range !25
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = zext i32 %8 to i64
  %16 = add i64 %10, %15
  %17 = getelementptr i8, ptr %6, i32 -72
  %18 = load i64, ptr %17, align 8
  %19 = icmp slt i64 %18, %16
  br i1 %19, label %39, label %20

20:                                               ; preds = %14, %2
  %21 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 20
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @__blockdev_direct_IO(ptr noundef %0, ptr noundef %6, ptr noundef %24, ptr noundef %1, ptr noundef nonnull @fat_get_block, ptr noundef null, ptr noundef null, i32 noundef 3) #12
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %20
  %28 = load i8, ptr %11, align 2, !range !25
  %29 = icmp eq i8 %28, 1
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = zext i32 %8 to i64
  %32 = add i64 %10, %31
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 13
  %35 = load i64, ptr %34, align 8
  %36 = icmp slt i64 %35, %32
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  tail call void @truncate_pagecache(ptr noundef %33, i64 noundef %35) #12
  %38 = load i64, ptr %34, align 8
  tail call void @fat_truncate_blocks(ptr noundef %33, i64 noundef %38) #12
  br label %39

39:                                               ; preds = %37, %30, %27, %20, %14
  %40 = phi i32 [ 0, %14 ], [ %25, %27 ], [ %25, %20 ], [ %25, %30 ], [ %25, %37 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_full_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_readpage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_writepages(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpage_readahead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cont_write_begin(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_truncate_blocks(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_block_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat_get_block_bmap(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 19
  %12 = load i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  %14 = lshr i32 %10, %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store i64 0, ptr %5, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !8
  %15 = icmp eq i32 %3, 0
  br i1 %15, label %17, label %16, !prof !9

16:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fat/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 304, 0\0A.popsection", ""() #12, !srcloc !26
  unreachable

17:                                               ; preds = %4
  %18 = call i32 @fat_bmap(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0, i1 noundef zeroext true) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %17
  %21 = load i64, ptr %5, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %20
  %24 = load volatile i32, ptr %2, align 4
  %25 = and i32 %24, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  call void @_set_bit(i32 noundef 4, ptr noundef %2) #12
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 20
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 6
  store ptr %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 3
  store i64 %21, ptr %32, align 8
  %33 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 3
  %34 = load i32, ptr %33, align 16
  store i32 %34, ptr %9, align 8
  %35 = load i32, ptr %6, align 4
  %36 = call i32 @llvm.umin.i32(i32 %35, i32 %14)
  br label %37

37:                                               ; preds = %28, %20
  %38 = phi i32 [ %36, %28 ], [ %14, %20 ]
  %39 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 2
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i32
  %42 = shl i32 %38, %41
  store i32 %42, ptr %9, align 8
  br label %43

43:                                               ; preds = %37, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blockdev_direct_IO(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_time_unix2fat(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @fat_alloc_inode(ptr nocapture noundef readnone %0) #0 {
  %2 = load ptr, ptr @fat_inode_cachep, align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3136) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.msdos_inode_info, ptr %3, i32 0, i32 11
  tail call void @__init_rwsem(ptr noundef %6, ptr noundef nonnull @.str.25, ptr noundef nonnull @fat_alloc_inode.__key) #12
  %7 = getelementptr inbounds %struct.msdos_inode_info, ptr %3, i32 0, i32 4
  %8 = getelementptr inbounds %struct.msdos_inode_info, ptr %3, i32 0, i32 8
  store i64 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.msdos_inode_info, ptr %3, i32 0, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %7, i8 0, i64 20, i1 false)
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi ptr [ %9, %5 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fat_free_inode(ptr noundef %0) #0 {
  %2 = load ptr, ptr @fat_inode_cachep, align 4
  %3 = getelementptr i8, ptr %0, i32 -96
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat_write_inode(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.msdos_sb_info, ptr %10, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %11) #12
  %12 = tail call i32 @fat_clusters_flush(ptr noundef %8) #12
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr inbounds %struct.msdos_sb_info, ptr %13, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %14) #12
  br label %21

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 1
  %19 = zext i1 %18 to i32
  %20 = tail call fastcc i32 @__fat_write_inode(ptr noundef %0, i32 noundef %19)
  br label %21

21:                                               ; preds = %15, %6
  %22 = phi i32 [ %12, %6 ], [ %20, %15 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fat_evict_inode(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41
  tail call void @truncate_inode_pages_final(ptr noundef %2) #12
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 11
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  store i64 0, ptr %7, align 8
  tail call void @fat_truncate_blocks(ptr noundef %0, i64 noundef 0) #12
  br label %32

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  %10 = load i64, ptr %9, align 8
  %11 = shl i64 %10, 9
  %12 = getelementptr i8, ptr %0, i32 -72
  %13 = load i64, ptr %12, align 8
  %14 = add i64 %13, -1
  %15 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 27
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.msdos_sb_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -1
  %22 = zext i32 %21 to i64
  %23 = or i64 %14, %22
  %24 = add i64 %23, 1
  %25 = icmp ugt i64 %11, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %8
  tail call void @fat_truncate_blocks(ptr noundef %0, i64 noundef %13) #12
  %27 = tail call i32 @inode_needs_sync(ptr noundef %0) #12
  %28 = tail call fastcc i32 @__fat_write_inode(ptr noundef %0, i32 noundef %27) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ptr, ...) @fat_msg(ptr noundef %31, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.26) #13
  br label %32

32:                                               ; preds = %30, %26, %8, %6
  tail call void @invalidate_inode_buffers(ptr noundef %0) #12
  tail call void @clear_inode(ptr noundef %0) #12
  tail call void @fat_cache_inval_inode(ptr noundef %0) #12
  tail call void @fat_detach(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fat_put_super(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  tail call fastcc void @fat_set_state(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %4 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 29
  %5 = load ptr, ptr %4, align 4
  tail call void @iput(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 28
  %7 = load ptr, ptr %6, align 4
  tail call void @iput(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 36
  tail call void @call_rcu(ptr noundef %8, ptr noundef nonnull @delayed_free) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat_statfs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 20
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.block_device, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 255
  %12 = lshr i32 %10, 12
  %13 = and i32 %12, 1048320
  %14 = or i32 %13, %11
  %15 = shl i32 %10, 12
  %16 = and i32 %15, -1048576
  %17 = or i32 %14, %16
  %18 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 17
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 18
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21, %2
  %26 = tail call i32 @fat_count_free_clusters(ptr noundef %4) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %25
  %29 = load ptr, ptr %3, align 4
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi ptr [ %29, %28 ], [ %4, %21 ]
  %32 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 12
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %1, align 8
  %34 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 10
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, -2
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 2
  store i64 %40, ptr %41, align 8
  %42 = load i32, ptr %18, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 3
  store i64 %43, ptr %44, align 8
  %45 = load i32, ptr %18, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 4
  store i64 %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 7
  %49 = zext i32 %17 to i64
  store i64 %49, ptr %48, align 8
  %50 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 19, i32 12
  %51 = load i16, ptr %50, align 4
  %52 = and i16 %51, 16
  %53 = icmp eq i16 %52, 0
  %54 = select i1 %53, i32 72, i32 1530
  %55 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 8
  store i32 %54, ptr %55, align 8
  br label %56

56:                                               ; preds = %30, %25
  %57 = phi i32 [ 0, %30 ], [ %26, %25 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat_remount(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msdos_sb_info, ptr %5, i32 0, i32 19, i32 12
  %7 = load i16, ptr %6, align 4
  %8 = shl i16 %7, 6
  %9 = and i16 %8, 1024
  %10 = xor i16 %9, 3072
  %11 = zext i16 %10 to i32
  %12 = load i32, ptr %1, align 4
  %13 = or i32 %12, %11
  store i32 %13, ptr %1, align 4
  %14 = tail call i32 @sync_filesystem(ptr noundef %0) #12
  %15 = load i32, ptr %1, align 4
  %16 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  %20 = and i32 %15, 1
  %21 = icmp eq i32 %20, 0
  %22 = xor i1 %21, %19
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  br i1 %21, label %25, label %24

24:                                               ; preds = %23
  tail call fastcc void @fat_set_state(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  br label %26

25:                                               ; preds = %23
  tail call fastcc void @fat_set_state(ptr noundef %0, i32 noundef 1, i32 noundef 1)
  br label %26

26:                                               ; preds = %25, %24, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fat_show_options(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 19, i32 12
  %9 = load i16, ptr %8, align 4
  %10 = load i32, ptr %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = icmp eq i32 %10, -1
  %14 = load i32, ptr @overflowuid, align 4
  %15 = select i1 %13, i32 %14, i32 %10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %15) #12
  br label %16

16:                                               ; preds = %12, %2
  %17 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 19, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = icmp eq i32 %18, -1
  %22 = load i32, ptr @overflowgid, align 4
  %23 = select i1 %21, i32 %22, i32 %18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %23) #12
  br label %24

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 19, i32 2
  %26 = load i16, ptr %25, align 4
  %27 = zext i16 %26 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %27) #12
  %28 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 19, i32 3
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %30) #12
  %31 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 19, i32 11
  %32 = load i16, ptr %31, align 2
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %24
  %35 = zext i16 %32 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %35) #12
  br label %36

36:                                               ; preds = %34, %24
  %37 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 20
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %38, align 4
  %42 = getelementptr i8, ptr %41, i32 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef %42) #12
  br label %43

43:                                               ; preds = %40, %36
  %44 = and i16 %9, 16
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 21
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %48, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef %51) #12
  br label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 19, i32 7
  %54 = load i16, ptr %53, align 4
  switch i16 %54, label %58 [
    i16 258, label %59
    i16 516, label %55
    i16 260, label %56
    i16 257, label %57
  ]

55:                                               ; preds = %52
  br label %59

56:                                               ; preds = %52
  br label %59

57:                                               ; preds = %52
  br label %59

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %57, %56, %55, %52
  %60 = phi ptr [ @.str.35, %55 ], [ @.str.36, %56 ], [ @.str.37, %57 ], [ @.str.38, %58 ], [ @.str.34, %52 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %60) #12
  br label %61

61:                                               ; preds = %59, %43
  %62 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 19, i32 8
  %63 = load i8, ptr %62, align 2
  %64 = icmp eq i8 %63, 110
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = zext i8 %63 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %66) #12
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i16, ptr %8, align 4
  %69 = and i16 %68, 1024
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.40) #12
  %72 = load i16, ptr %8, align 4
  br label %73

73:                                               ; preds = %71, %67
  %74 = phi i16 [ %72, %71 ], [ %68, %67 ]
  %75 = and i16 %74, 1
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.41) #12
  %78 = load i16, ptr %8, align 4
  br label %79

79:                                               ; preds = %77, %73
  %80 = phi i16 [ %78, %77 ], [ %74, %73 ]
  %81 = and i16 %80, 2
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.42) #12
  %84 = load i16, ptr %8, align 4
  br label %85

85:                                               ; preds = %83, %79
  %86 = phi i16 [ %84, %83 ], [ %80, %79 ]
  %87 = and i16 %86, 4
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.43) #12
  br label %90

90:                                               ; preds = %89, %85
  %91 = load i16, ptr %8, align 4
  br i1 %45, label %92, label %101

92:                                               ; preds = %90
  %93 = and i16 %91, 8
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.44) #12
  %96 = load i16, ptr %8, align 4
  br label %97

97:                                               ; preds = %95, %92
  %98 = phi i16 [ %96, %95 ], [ %91, %92 ]
  %99 = and i16 %98, 512
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %124, label %122

101:                                              ; preds = %90
  %102 = and i16 %91, 32
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.46) #12
  %105 = load i16, ptr %8, align 4
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi i16 [ %105, %104 ], [ %91, %101 ]
  %108 = and i16 %107, 64
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.47) #12
  %111 = load i16, ptr %8, align 4
  br label %112

112:                                              ; preds = %110, %106
  %113 = phi i16 [ %111, %110 ], [ %107, %106 ]
  %114 = and i16 %113, 128
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.48) #12
  %117 = load i16, ptr %8, align 4
  br label %118

118:                                              ; preds = %116, %112
  %119 = phi i16 [ %117, %116 ], [ %113, %112 ]
  %120 = and i16 %119, 4096
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %118, %97
  %123 = phi ptr [ @.str.45, %97 ], [ @.str.49, %118 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %123) #12
  br label %124

124:                                              ; preds = %122, %118, %97
  %125 = load i16, ptr %8, align 4
  %126 = and i16 %125, 256
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.50) #12
  %129 = load i16, ptr %8, align 4
  br label %130

130:                                              ; preds = %128, %124
  %131 = phi i16 [ %129, %128 ], [ %125, %124 ]
  %132 = and i16 %131, 2048
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 19, i32 5
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.51, i32 noundef %136) #12
  br label %140

139:                                              ; preds = %134
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.52) #12
  br label %140

140:                                              ; preds = %139, %138, %130
  %141 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 19, i32 9
  %142 = load i8, ptr %141, align 1
  %143 = icmp eq i8 %142, 2
  %144 = select i1 %143, ptr @.str.54, ptr @.str.55
  %145 = icmp eq i8 %142, 1
  %146 = select i1 %145, ptr @.str.53, ptr %144
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %146) #12
  %147 = getelementptr inbounds %struct.msdos_sb_info, ptr %6, i32 0, i32 19, i32 10
  %148 = load i8, ptr %147, align 4
  switch i8 %148, label %149 [
    i8 2, label %150
    i8 0, label %152
  ]

149:                                              ; preds = %140
  br label %150

150:                                              ; preds = %149, %140
  %151 = phi ptr [ @.str.57, %149 ], [ @.str.56, %140 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %151) #12
  br label %152

152:                                              ; preds = %150, %140
  %153 = load i16, ptr %8, align 4
  %154 = and i16 %153, 8192
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %152
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.58) #12
  %157 = load i16, ptr %8, align 4
  br label %158

158:                                              ; preds = %156, %152
  %159 = phi i16 [ %157, %156 ], [ %153, %152 ]
  %160 = and i16 %159, 16384
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %158
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.59) #12
  br label %163

163:                                              ; preds = %162, %158
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_clusters_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_inode_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fat_cache_inval_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_needs_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @delayed_free(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -2128
  %3 = load ptr, ptr %2, align 4
  tail call void @unload_nls(ptr noundef %3) #12
  %4 = getelementptr i8, ptr %0, i32 -2124
  %5 = load ptr, ptr %4, align 4
  tail call void @unload_nls(ptr noundef %5) #12
  %6 = getelementptr i8, ptr %0, i32 -2144
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @fat_default_iocharset
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @kfree(ptr noundef %7) #12
  store ptr @fat_default_iocharset, ptr %6, align 4
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr i8, ptr %0, i32 -2276
  tail call void @kfree(ptr noundef %11) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_count_free_clusters(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_octal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @match_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_inode_metadata(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fat_cache_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %0) #0 {
  store i32 0, ptr %0, align 8
  %2 = getelementptr inbounds %struct.msdos_inode_info, ptr %0, i32 0, i32 2
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.msdos_inode_info, ptr %0, i32 0, i32 3
  store i32 1, ptr %3, align 8
  %4 = getelementptr inbounds %struct.msdos_inode_info, ptr %0, i32 0, i32 1
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.msdos_inode_info, ptr %0, i32 0, i32 1, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.msdos_inode_info, ptr %0, i32 0, i32 9
  %7 = getelementptr inbounds %struct.msdos_inode_info, ptr %0, i32 0, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  tail call void @inode_init_once(ptr noundef %7) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2153301177, i64 2153301656, i64 2153301214, i64 2153301270, i64 2153301304, i64 2153301328, i64 2153301369, i64 2153301390, i64 2153301418, i64 2153301452}
!11 = !{i64 2148976464}
!12 = !{i64 2148972288}
!13 = !{i64 2148972363, i64 2148972390, i64 2148972437, i64 2148972459, i64 2148972487, i64 2148972507}
!14 = !{i64 2148999467}
!15 = !{i64 2153311445, i64 2153311924, i64 2153311482, i64 2153311538, i64 2153311572, i64 2153311596, i64 2153311637, i64 2153311658, i64 2153311686, i64 2153311720}
!16 = !{i64 2153212378}
!17 = !{i64 581553, i64 581574}
!18 = !{i64 2148251770}
!19 = !{i64 591939, i64 2148081910, i64 2148081936, i64 2148081983, i64 2148082005, i64 2148082033, i64 2148082053}
!20 = !{i64 585168, i64 585194, i64 585222, i64 585240, i64 585258, i64 585280}
!21 = !{i64 2148251972}
!22 = !{i64 581798, i64 581818, i64 581846, i64 581876, i64 581892}
!23 = !{i32 0, i32 33}
!24 = !{i32 0, i32 9}
!25 = !{i8 0, i8 2}
!26 = !{i64 2153302210, i64 2153302689, i64 2153302247, i64 2153302303, i64 2153302337, i64 2153302361, i64 2153302402, i64 2153302423, i64 2153302451, i64 2153302485}
