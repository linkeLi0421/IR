; ModuleID = '/llk/IR/block/bdev.c_pt.bc'
source_filename = "../block/bdev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_I_BDEV:\09\09\09\09\09"
module asm "\09.asciz \09\22I_BDEV\22\09\09\09\09\09"
module asm "__kstrtabns_I_BDEV:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_invalidate_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22invalidate_bdev\22\09\09\09\09\09"
module asm "__kstrtabns_invalidate_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_blocksize:\09\09\09\09\09"
module asm "\09.asciz \09\22set_blocksize\22\09\09\09\09\09"
module asm "__kstrtabns_set_blocksize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sb_set_blocksize:\09\09\09\09\09"
module asm "\09.asciz \09\22sb_set_blocksize\22\09\09\09\09\09"
module asm "__kstrtabns_sb_set_blocksize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sb_min_blocksize:\09\09\09\09\09"
module asm "\09.asciz \09\22sb_min_blocksize\22\09\09\09\09\09"
module asm "__kstrtabns_sb_min_blocksize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sync_blockdev_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22sync_blockdev_nowait\22\09\09\09\09\09"
module asm "__kstrtabns_sync_blockdev_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sync_blockdev:\09\09\09\09\09"
module asm "\09.asciz \09\22sync_blockdev\22\09\09\09\09\09"
module asm "__kstrtabns_sync_blockdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsync_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22fsync_bdev\22\09\09\09\09\09"
module asm "__kstrtabns_fsync_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_freeze_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22freeze_bdev\22\09\09\09\09\09"
module asm "__kstrtabns_freeze_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thaw_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22thaw_bdev\22\09\09\09\09\09"
module asm "__kstrtabns_thaw_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blockdev_superblock:\09\09\09\09\09"
module asm "\09.asciz \09\22blockdev_superblock\22\09\09\09\09\09"
module asm "__kstrtabns_blockdev_superblock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bd_prepare_to_claim:\09\09\09\09\09"
module asm "\09.asciz \09\22bd_prepare_to_claim\22\09\09\09\09\09"
module asm "__kstrtabns_bd_prepare_to_claim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bd_abort_claiming:\09\09\09\09\09"
module asm "\09.asciz \09\22bd_abort_claiming\22\09\09\09\09\09"
module asm "__kstrtabns_bd_abort_claiming:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkdev_get_by_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22blkdev_get_by_dev\22\09\09\09\09\09"
module asm "__kstrtabns_blkdev_get_by_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkdev_get_by_path:\09\09\09\09\09"
module asm "\09.asciz \09\22blkdev_get_by_path\22\09\09\09\09\09"
module asm "__kstrtabns_blkdev_get_by_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkdev_put:\09\09\09\09\09"
module asm "\09.asciz \09\22blkdev_put\22\09\09\09\09\09"
module asm "__kstrtabns_blkdev_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lookup_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22lookup_bdev\22\09\09\09\09\09"
module asm "__kstrtabns_lookup_bdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___invalidate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22__invalidate_device\22\09\09\09\09\09"
module asm "__kstrtabns___invalidate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.82, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.83, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.84, ptr, %struct.address_space, %struct.list_head, %union.anon.85, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.82 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.83 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.84 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.85 = type { ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.lockdep_map = type {}
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.bdev_inode = type { %struct.block_device, %struct.inode }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.80, %struct.list_head, %struct.list_head, %union.anon.81 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%union.anon.80 = type { %struct.list_head }
%union.anon.81 = type { %struct.hlist_node }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }

@__kstrtab_I_BDEV = external dso_local constant [0 x i8], align 1
@__kstrtabns_I_BDEV = external dso_local constant [0 x i8], align 1
@__ksymtab_I_BDEV = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @I_BDEV to i32), ptr @__kstrtab_I_BDEV, ptr @__kstrtabns_I_BDEV }, section "___ksymtab+I_BDEV", align 4
@__kstrtab_invalidate_bdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_invalidate_bdev = external dso_local constant [0 x i8], align 1
@__ksymtab_invalidate_bdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @invalidate_bdev to i32), ptr @__kstrtab_invalidate_bdev, ptr @__kstrtabns_invalidate_bdev }, section "___ksymtab+invalidate_bdev", align 4
@__kstrtab_set_blocksize = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_blocksize = external dso_local constant [0 x i8], align 1
@__ksymtab_set_blocksize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_blocksize to i32), ptr @__kstrtab_set_blocksize, ptr @__kstrtabns_set_blocksize }, section "___ksymtab+set_blocksize", align 4
@__kstrtab_sb_set_blocksize = external dso_local constant [0 x i8], align 1
@__kstrtabns_sb_set_blocksize = external dso_local constant [0 x i8], align 1
@__ksymtab_sb_set_blocksize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sb_set_blocksize to i32), ptr @__kstrtab_sb_set_blocksize, ptr @__kstrtabns_sb_set_blocksize }, section "___ksymtab+sb_set_blocksize", align 4
@__kstrtab_sb_min_blocksize = external dso_local constant [0 x i8], align 1
@__kstrtabns_sb_min_blocksize = external dso_local constant [0 x i8], align 1
@__ksymtab_sb_min_blocksize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sb_min_blocksize to i32), ptr @__kstrtab_sb_min_blocksize, ptr @__kstrtabns_sb_min_blocksize }, section "___ksymtab+sb_min_blocksize", align 4
@__kstrtab_sync_blockdev_nowait = external dso_local constant [0 x i8], align 1
@__kstrtabns_sync_blockdev_nowait = external dso_local constant [0 x i8], align 1
@__ksymtab_sync_blockdev_nowait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sync_blockdev_nowait to i32), ptr @__kstrtab_sync_blockdev_nowait, ptr @__kstrtabns_sync_blockdev_nowait }, section "___ksymtab_gpl+sync_blockdev_nowait", align 4
@__kstrtab_sync_blockdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_sync_blockdev = external dso_local constant [0 x i8], align 1
@__ksymtab_sync_blockdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sync_blockdev to i32), ptr @__kstrtab_sync_blockdev, ptr @__kstrtabns_sync_blockdev }, section "___ksymtab+sync_blockdev", align 4
@__kstrtab_fsync_bdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsync_bdev = external dso_local constant [0 x i8], align 1
@__ksymtab_fsync_bdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsync_bdev to i32), ptr @__kstrtab_fsync_bdev, ptr @__kstrtabns_fsync_bdev }, section "___ksymtab+fsync_bdev", align 4
@__kstrtab_freeze_bdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_freeze_bdev = external dso_local constant [0 x i8], align 1
@__ksymtab_freeze_bdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @freeze_bdev to i32), ptr @__kstrtab_freeze_bdev, ptr @__kstrtabns_freeze_bdev }, section "___ksymtab+freeze_bdev", align 4
@__kstrtab_thaw_bdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_thaw_bdev = external dso_local constant [0 x i8], align 1
@__ksymtab_thaw_bdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thaw_bdev to i32), ptr @__kstrtab_thaw_bdev, ptr @__kstrtabns_thaw_bdev }, section "___ksymtab+thaw_bdev", align 4
@blockdev_superblock = dso_local global ptr null, section ".data..read_mostly", align 4
@__kstrtab_blockdev_superblock = external dso_local constant [0 x i8], align 1
@__kstrtabns_blockdev_superblock = external dso_local constant [0 x i8], align 1
@__ksymtab_blockdev_superblock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blockdev_superblock to i32), ptr @__kstrtab_blockdev_superblock, ptr @__kstrtabns_blockdev_superblock }, section "___ksymtab_gpl+blockdev_superblock", align 4
@bdev_cache_init.bd_mnt = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [11 x i8] c"bdev_cache\00", align 1
@bdev_cachep = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@bd_type = internal global %struct.file_system_type { ptr @.str.6, i32 0, ptr @bd_init_fs_context, ptr null, ptr null, ptr @kill_anon_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot register bdev pseudo-fs\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Cannot create bdev pseudo-fs\00", align 1
@def_blk_aops = external dso_local constant %struct.address_space_operations, align 4
@bdev_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"&bdev->bd_fsfreeze_mutex\00", align 1
@bd_prepare_to_claim.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"block/bdev.c\00", align 1
@bdev_lock = internal global %struct.spinlock zeroinitializer, section ".data..cacheline_aligned", align 64
@__kstrtab_bd_prepare_to_claim = external dso_local constant [0 x i8], align 1
@__kstrtabns_bd_prepare_to_claim = external dso_local constant [0 x i8], align 1
@__ksymtab_bd_prepare_to_claim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bd_prepare_to_claim to i32), ptr @__kstrtab_bd_prepare_to_claim, ptr @__kstrtabns_bd_prepare_to_claim }, section "___ksymtab_gpl+bd_prepare_to_claim", align 4
@__kstrtab_bd_abort_claiming = external dso_local constant [0 x i8], align 1
@__kstrtabns_bd_abort_claiming = external dso_local constant [0 x i8], align 1
@__ksymtab_bd_abort_claiming = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bd_abort_claiming to i32), ptr @__kstrtab_bd_abort_claiming, ptr @__kstrtabns_bd_abort_claiming }, section "___ksymtab+bd_abort_claiming", align 4
@__kstrtab_blkdev_get_by_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkdev_get_by_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_blkdev_get_by_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkdev_get_by_dev to i32), ptr @__kstrtab_blkdev_get_by_dev, ptr @__kstrtabns_blkdev_get_by_dev }, section "___ksymtab+blkdev_get_by_dev", align 4
@__kstrtab_blkdev_get_by_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkdev_get_by_path = external dso_local constant [0 x i8], align 1
@__ksymtab_blkdev_get_by_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkdev_get_by_path to i32), ptr @__kstrtab_blkdev_get_by_path, ptr @__kstrtabns_blkdev_get_by_path }, section "___ksymtab+blkdev_get_by_path", align 4
@blkdev_put.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@blkdev_put.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_blkdev_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkdev_put = external dso_local constant [0 x i8], align 1
@__ksymtab_blkdev_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkdev_put to i32), ptr @__kstrtab_blkdev_put, ptr @__kstrtabns_blkdev_put }, section "___ksymtab+blkdev_put", align 4
@__kstrtab_lookup_bdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_lookup_bdev = external dso_local constant [0 x i8], align 1
@__ksymtab_lookup_bdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lookup_bdev to i32), ptr @__kstrtab_lookup_bdev, ptr @__kstrtabns_lookup_bdev }, section "___ksymtab+lookup_bdev", align 4
@__kstrtab___invalidate_device = external dso_local constant [0 x i8], align 1
@__kstrtabns___invalidate_device = external dso_local constant [0 x i8], align 1
@__ksymtab___invalidate_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__invalidate_device to i32), ptr @__kstrtab___invalidate_device, ptr @__kstrtabns___invalidate_device }, section "___ksymtab+__invalidate_device", align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"bdev\00", align 1
@bdev_sops = internal constant %struct.super_operations { ptr @bdev_alloc_inode, ptr null, ptr @bdev_free_inode, ptr null, ptr null, ptr @generic_delete_inode, ptr @bdev_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@blkdev_flush_mapping.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bdev_write_inode._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.bdev_write_inode = private unnamed_addr constant [17 x i8] c"bdev_write_inode\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"\014VFS: Dirty inode writeback failed for block device %s (err=%d).\0A\00", align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @__ksymtab_I_BDEV, ptr @__ksymtab___invalidate_device, ptr @__ksymtab_bd_abort_claiming, ptr @__ksymtab_bd_prepare_to_claim, ptr @__ksymtab_blkdev_get_by_dev, ptr @__ksymtab_blkdev_get_by_path, ptr @__ksymtab_blkdev_put, ptr @__ksymtab_blockdev_superblock, ptr @__ksymtab_freeze_bdev, ptr @__ksymtab_fsync_bdev, ptr @__ksymtab_invalidate_bdev, ptr @__ksymtab_lookup_bdev, ptr @__ksymtab_sb_min_blocksize, ptr @__ksymtab_sb_set_blocksize, ptr @__ksymtab_set_blocksize, ptr @__ksymtab_sync_blockdev, ptr @__ksymtab_sync_blockdev_nowait, ptr @__ksymtab_thaw_bdev], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @I_BDEV(ptr noundef readnone %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -584
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @invalidate_bdev(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  tail call void @invalidate_bh_lrus() #12
  tail call void @lru_add_drain_all() #12
  %10 = tail call i32 @invalidate_mapping_pages(ptr noundef %5, i32 noundef 0, i32 noundef -1) #12
  br label %11

11:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_bh_lrus() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain_all() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @truncate_bdev_range(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #1 {
  %5 = and i32 %1, 128
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %4
  %8 = tail call i32 @bd_prepare_to_claim(ptr noundef %0, ptr noundef nonnull @truncate_bdev_range)
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 9
  %13 = load ptr, ptr %12, align 8
  br i1 %9, label %14, label %31

14:                                               ; preds = %7
  tail call void @truncate_inode_pages_range(ptr noundef %13, i64 noundef %2, i64 noundef %3) #12
  tail call void @_raw_spin_lock(ptr noundef nonnull @bdev_lock) #12
  %15 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.block_device, ptr %18, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, @truncate_bdev_range
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/bdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 604, 0\0A.popsection", ""() #12, !srcloc !9
  unreachable

23:                                               ; preds = %14
  store ptr null, ptr %19, align 4
  tail call void @wake_up_bit(ptr noundef %19, i32 noundef 0) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %24 = load i16, ptr @bdev_lock, align 64
  %25 = add i16 %24, 1
  store i16 %25, ptr @bdev_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  br label %37

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 9
  %30 = load ptr, ptr %29, align 8
  tail call void @truncate_inode_pages_range(ptr noundef %30, i64 noundef %2, i64 noundef %3) #12
  br label %37

31:                                               ; preds = %7
  %32 = lshr i64 %2, 12
  %33 = trunc i64 %32 to i32
  %34 = lshr i64 %3, 12
  %35 = trunc i64 %34 to i32
  %36 = tail call i32 @invalidate_inode_pages2_range(ptr noundef %13, i32 noundef %33, i32 noundef %35) #12
  br label %37

37:                                               ; preds = %31, %26, %23
  %38 = phi i32 [ %36, %31 ], [ 0, %26 ], [ 0, %23 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bd_prepare_to_claim(ptr noundef readonly %0, ptr noundef %1) #1 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %1, null
  %9 = load i1, ptr @bd_prepare_to_claim.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !14

12:                                               ; preds = %2
  store i1 true, ptr @bd_prepare_to_claim.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 571, i32 noundef 9, ptr noundef null) #12
  br label %13

13:                                               ; preds = %12, %2
  br i1 %8, label %48, label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 11
  %16 = icmp eq ptr %7, %0
  %17 = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 11
  %18 = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 9
  %19 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %20 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  %21 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  %22 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  br label %23

23:                                               ; preds = %40, %14
  call void @_raw_spin_lock(ptr noundef nonnull @bdev_lock) #12
  %24 = load ptr, ptr %15, align 8
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %37, label %26

26:                                               ; preds = %23
  %27 = icmp eq ptr %24, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  br i1 %16, label %37, label %29

29:                                               ; preds = %28
  %30 = load ptr, ptr %17, align 8
  %31 = icmp eq ptr %30, @bd_may_claim
  %32 = icmp eq ptr %30, null
  %33 = or i1 %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %29, %26
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %35 = load i16, ptr @bdev_lock, align 64
  %36 = add i16 %35, 1
  store i16 %36, ptr @bdev_lock, align 64
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  br label %48

37:                                               ; preds = %29, %28, %23
  %38 = load ptr, ptr %18, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = call ptr @bit_waitqueue(ptr noundef %18, i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #12
  %42 = tail call ptr @llvm.thread.pointer() #12
  store i32 0, ptr %3, align 4
  store ptr %42, ptr %19, align 4
  store ptr @autoremove_wake_function, ptr %20, align 4
  store ptr %21, ptr %21, align 4
  store ptr %21, ptr %22, align 4
  call void @prepare_to_wait(ptr noundef %41, ptr noundef nonnull %3, i32 noundef 2) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %43 = load i16, ptr @bdev_lock, align 64
  %44 = add i16 %43, 1
  store i16 %44, ptr @bdev_lock, align 64
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  call void @schedule() #12
  call void @finish_wait(ptr noundef %41, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #12
  br label %23

45:                                               ; preds = %37
  store ptr %1, ptr %18, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %46 = load i16, ptr @bdev_lock, align 64
  %47 = add i16 %46, 1
  store i16 %47, ptr @bdev_lock, align 64
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  br label %48

48:                                               ; preds = %45, %34, %13
  %49 = phi i32 [ 0, %45 ], [ -16, %34 ], [ -22, %13 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bd_abort_claiming(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #1 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @bdev_lock) #12
  %3 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.block_device, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %11, label %10, !prof !8

10:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/bdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 604, 0\0A.popsection", ""() #12, !srcloc !9
  unreachable

11:                                               ; preds = %2
  store ptr null, ptr %7, align 4
  tail call void @wake_up_bit(ptr noundef %7, i32 noundef 0) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %12 = load i16, ptr @bdev_lock, align 64
  %13 = add i16 %12, 1
  store i16 %13, ptr @bdev_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_blocksize(ptr noundef readonly %0, i32 noundef %1) #1 {
  %3 = add i32 %1, -512
  %4 = icmp ult i32 %3, 3585
  %5 = tail call i32 @llvm.ctpop.i32(i32 %1) #12, !range !15
  %6 = icmp ult i32 %5, 2
  %7 = and i1 %4, %6
  br i1 %7, label %8, label %58

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 18
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.request_queue, ptr %10, i32 0, i32 32, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 512, i32 %14
  br label %17

17:                                               ; preds = %12, %8
  %18 = phi i32 [ 512, %8 ], [ %16, %12 ]
  %19 = icmp ugt i32 %18, %1
  br i1 %19, label %58, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 19
  %24 = load i8, ptr %23, align 2
  br label %25

25:                                               ; preds = %25, %20
  %26 = phi i32 [ %1, %20 ], [ %29, %25 ]
  %27 = phi i32 [ 8, %20 ], [ %28, %25 ]
  %28 = add nuw nsw i32 %27, 1
  %29 = lshr i32 %26, 1
  %30 = icmp ugt i32 %26, 513
  br i1 %30, label %25, label %31

31:                                               ; preds = %25
  %32 = zext i8 %24 to i32
  %33 = icmp eq i32 %28, %32
  br i1 %33, label %58, label %34

34:                                               ; preds = %31
  %35 = icmp eq ptr %0, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 9
  %38 = load ptr, ptr %37, align 8
  %39 = tail call i32 @filemap_write_and_wait_range(ptr noundef %38, i64 noundef 0, i64 noundef 9223372036854775807) #12
  br label %40

40:                                               ; preds = %36, %34
  br label %41

41:                                               ; preds = %41, %40
  %42 = phi i32 [ %45, %41 ], [ %1, %40 ]
  %43 = phi i32 [ %44, %41 ], [ 8, %40 ]
  %44 = add nuw nsw i32 %43, 1
  %45 = lshr i32 %42, 1
  %46 = icmp ugt i32 %42, 513
  br i1 %46, label %41, label %47

47:                                               ; preds = %41
  %48 = trunc i32 %44 to i8
  %49 = load ptr, ptr %21, align 4
  %50 = getelementptr inbounds %struct.inode, ptr %49, i32 0, i32 19
  store i8 %48, ptr %50, align 2
  %51 = load ptr, ptr %21, align 4
  %52 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 9
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.address_space, ptr %53, i32 0, i32 1, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %47
  tail call void @invalidate_bh_lrus() #12
  tail call void @truncate_inode_pages(ptr noundef %53, i64 noundef 0) #12
  br label %58

58:                                               ; preds = %57, %47, %31, %17, %2
  %59 = phi i32 [ -22, %2 ], [ -22, %17 ], [ 0, %31 ], [ 0, %47 ], [ 0, %57 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sync_blockdev(ptr noundef readonly %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @filemap_write_and_wait_range(ptr noundef %7, i64 noundef 0, i64 noundef 9223372036854775807) #12
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sb_set_blocksize(ptr nocapture noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @set_blocksize(ptr noundef %4, i32 noundef %1)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  store i32 %1, ptr %8, align 16
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ %1, %7 ], [ %13, %9 ]
  %11 = phi i32 [ 8, %7 ], [ %12, %9 ]
  %12 = add nuw nsw i32 %11, 1
  %13 = lshr i32 %10, 1
  %14 = icmp ugt i32 %10, 513
  br i1 %14, label %9, label %15

15:                                               ; preds = %9
  %16 = trunc i32 %12 to i8
  %17 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  store i8 %16, ptr %17, align 4
  br label %18

18:                                               ; preds = %15, %2
  %19 = phi i32 [ %1, %15 ], [ 0, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sb_min_blocksize(ptr nocapture noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.block_device, ptr %4, i32 0, i32 18
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 32, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 512, i32 %10
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ 512, %2 ], [ %12, %8 ]
  %15 = tail call i32 @llvm.smax.i32(i32 %14, i32 %1)
  %16 = tail call i32 @set_blocksize(ptr noundef %4, i32 noundef %15) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  store i32 %15, ptr %19, align 16
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i32 [ %15, %18 ], [ %24, %20 ]
  %22 = phi i32 [ 8, %18 ], [ %23, %20 ]
  %23 = add nuw nsw i32 %22, 1
  %24 = lshr i32 %21, 1
  %25 = icmp ugt i32 %21, 513
  br i1 %25, label %20, label %26

26:                                               ; preds = %20
  %27 = trunc i32 %23 to i8
  %28 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  store i8 %27, ptr %28, align 4
  br label %29

29:                                               ; preds = %26, %13
  %30 = phi i32 [ %15, %26 ], [ 0, %13 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sync_blockdev_nowait(ptr noundef readonly %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @filemap_flush(ptr noundef %7) #12
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsync_bdev(ptr noundef %0) #1 {
  %2 = tail call ptr @get_super(ptr noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @sync_filesystem(ptr noundef nonnull %2) #12
  tail call void @drop_super(ptr noundef nonnull %2) #12
  br label %14

6:                                                ; preds = %1
  %7 = icmp eq ptr %0, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 9
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @filemap_write_and_wait_range(ptr noundef %12, i64 noundef 0, i64 noundef 9223372036854775807) #12
  br label %14

14:                                               ; preds = %8, %6, %4
  %15 = phi i32 [ %5, %4 ], [ %13, %8 ], [ 0, %6 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @freeze_bdev(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %2) #12
  %3 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 19
  %4 = load i32, ptr %3, align 8
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 8
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %36, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @get_active_super(ptr noundef %0) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_operations, ptr %12, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call i32 %14(ptr noundef nonnull %8) #12
  br label %20

18:                                               ; preds = %10
  %19 = tail call i32 @freeze_super(ptr noundef nonnull %8) #12
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  tail call void @deactivate_super(ptr noundef nonnull %8) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %3, align 8
  %25 = add i32 %24, -1
  store i32 %25, ptr %3, align 8
  br label %36

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 21
  store ptr %8, ptr %27, align 8
  br label %28

28:                                               ; preds = %26, %7
  %29 = icmp eq ptr %0, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 9
  %34 = load ptr, ptr %33, align 8
  %35 = tail call i32 @filemap_write_and_wait_range(ptr noundef %34, i64 noundef 0, i64 noundef 9223372036854775807) #12
  br label %36

36:                                               ; preds = %30, %28, %23, %1
  %37 = phi i32 [ 0, %1 ], [ %21, %23 ], [ 0, %28 ], [ 0, %30 ]
  tail call void @mutex_unlock(ptr noundef %2) #12
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_active_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freeze_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @thaw_bdev(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %2) #12
  %3 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 19
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  store i32 %7, ptr %3, align 8
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 21
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.super_operations, ptr %15, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = tail call i32 %17(ptr noundef nonnull %11) #12
  br label %23

21:                                               ; preds = %13
  %22 = tail call i32 @thaw_super(ptr noundef nonnull %11) #12
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %3, align 8
  %28 = add i32 %27, 1
  store i32 %28, ptr %3, align 8
  br label %30

29:                                               ; preds = %23
  store ptr null, ptr %10, align 8
  br label %30

30:                                               ; preds = %29, %26, %9, %6, %1
  %31 = phi i32 [ 0, %6 ], [ %24, %26 ], [ 0, %29 ], [ 0, %9 ], [ -22, %1 ]
  tail call void @mutex_unlock(ptr noundef %2) #12
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thaw_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdev_read_page(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.block_device_operations, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 18
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @blk_queue_enter(ptr noundef %13, i32 noundef 0) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load ptr, ptr %8, align 4
  %18 = load i64, ptr %0, align 8
  %19 = add i64 %18, %1
  %20 = tail call i32 %17(ptr noundef %0, i64 noundef %19, ptr noundef %2, i32 noundef 0) #12
  %21 = load ptr, ptr %12, align 4
  tail call void @blk_queue_exit(ptr noundef %21) #12
  br label %22

22:                                               ; preds = %16, %11, %3
  %23 = phi i32 [ %20, %16 ], [ -95, %3 ], [ %14, %11 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_queue_enter(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdev_write_page(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.block_device_operations, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 18
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @blk_queue_enter(ptr noundef %14, i32 noundef 0) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = tail call zeroext i1 @set_page_writeback(ptr noundef %2) #12
  %19 = load ptr, ptr %9, align 4
  %20 = load i64, ptr %0, align 8
  %21 = add i64 %20, %1
  %22 = tail call i32 %19(ptr noundef %0, i64 noundef %21, ptr noundef %2, i32 noundef 1) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void @end_page_writeback(ptr noundef %2) #12
  br label %26

25:                                               ; preds = %17
  tail call void @clean_page_buffers(ptr noundef %2) #12
  tail call void @unlock_page(ptr noundef %2) #12
  br label %26

26:                                               ; preds = %25, %24
  %27 = load ptr, ptr %13, align 4
  tail call void @blk_queue_exit(ptr noundef %27) #12
  br label %28

28:                                               ; preds = %26, %12, %4
  %29 = phi i32 [ %22, %26 ], [ -95, %4 ], [ %15, %12 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_writeback(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_page_writeback(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clean_page_buffers(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @bdev_cache_init() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 976, i32 noundef 0, i32 noundef 1449984, ptr noundef nonnull @init_once) #12
  store ptr %1, ptr @bdev_cachep, align 4
  %2 = tail call i32 @register_filesystem(ptr noundef nonnull @bd_type) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1) #13
  unreachable

5:                                                ; preds = %0
  %6 = tail call ptr @kern_mount(ptr noundef nonnull @bd_type) #12
  store ptr %6, ptr @bdev_cache_init.bd_mnt, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.2) #13
  unreachable

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.vfsmount, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr @blockdev_superblock, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.bdev_inode, ptr %0, i32 0, i32 1
  tail call void @inode_init_once(ptr noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bdev_alloc(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @blockdev_superblock, align 4
  %4 = tail call ptr @new_inode(ptr noundef %3) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  store i16 24576, ptr %4, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 12
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 41, i32 9
  store ptr @def_blk_aops, ptr %8, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 41, i32 3
  store i32 1051840, ptr %9, align 4
  %10 = getelementptr i8, ptr %4, i32 -28
  tail call void @__mutex_init(ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef nonnull @bdev_alloc.__key) #12
  %11 = getelementptr i8, ptr %4, i32 -44
  store i32 0, ptr %11, align 4
  %12 = getelementptr i8, ptr %4, i32 -48
  store i8 %1, ptr %12, align 8
  %13 = getelementptr i8, ptr %4, i32 -548
  store ptr %4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %4, i32 -36
  store ptr %15, ptr %16, align 4
  %17 = tail call noalias ptr @__alloc_percpu(i32 noundef 96, i32 noundef 8) #14
  %18 = getelementptr i8, ptr %4, i32 -568
  store ptr %17, ptr %18, align 8
  %19 = icmp eq ptr %17, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  tail call void @iput(ptr noundef nonnull %4) #12
  br label %24

21:                                               ; preds = %6
  %22 = getelementptr i8, ptr %4, i32 -584
  %23 = getelementptr i8, ptr %4, i32 -40
  store ptr %0, ptr %23, align 8
  br label %24

24:                                               ; preds = %21, %20, %2
  %25 = phi ptr [ %22, %21 ], [ null, %20 ], [ null, %2 ]
  ret ptr %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bdev_add(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 5
  store i32 %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 12
  store i32 %1, ptr %6, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 10
  store i32 %1, ptr %8, align 4
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  tail call void @__insert_inode_hash(ptr noundef %9, i32 noundef %11) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nr_blockdev_pages() local_unnamed_addr #1 {
  %1 = load ptr, ptr @blockdev_superblock, align 4
  %2 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 55
  tail call void @_raw_spin_lock(ptr noundef %2) #12
  %3 = load ptr, ptr @blockdev_superblock, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 56
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %17, label %7

7:                                                ; preds = %7, %0
  %8 = phi ptr [ %15, %7 ], [ %5, %0 ]
  %9 = phi i32 [ %14, %7 ], [ 0, %0 ]
  %10 = getelementptr i8, ptr %8, i32 -152
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.address_space, ptr %11, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %9
  %15 = load ptr, ptr %8, align 4
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %17, label %7

17:                                               ; preds = %7, %0
  %18 = phi i32 [ 0, %0 ], [ %14, %7 ]
  %19 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %20 = load i16, ptr %19, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bd_may_claim(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef readnone %2) #7 {
  %4 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, %2
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %5, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %7
  %10 = icmp eq ptr %1, %0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 11
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, @bd_may_claim
  %15 = icmp eq ptr %13, null
  %16 = or i1 %14, %15
  br label %17

17:                                               ; preds = %11, %9, %7, %3
  %18 = phi i1 [ true, %3 ], [ false, %7 ], [ true, %9 ], [ %16, %11 ]
  ret i1 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bit_waitqueue(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @blkdev_get_no_open(i32 noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @blockdev_superblock, align 4
  %3 = tail call ptr @ilookup(ptr noundef %2, i32 noundef %0) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  tail call void @blk_request_module(i32 noundef %0) #12
  %6 = load ptr, ptr @blockdev_superblock, align 4
  %7 = tail call ptr @ilookup(ptr noundef %6, i32 noundef %0) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %3, %1 ], [ %7, %5 ]
  %11 = getelementptr i8, ptr %10, i32 -584
  %12 = getelementptr i8, ptr %10, i32 -536
  %13 = tail call ptr @kobject_get_unless_zero(ptr noundef %12) #12
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr null, ptr %11
  tail call void @iput(ptr noundef nonnull %10) #12
  br label %16

16:                                               ; preds = %9, %5
  %17 = phi ptr [ %15, %9 ], [ null, %5 ]
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_request_module(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get_unless_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blkdev_put_no_open(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 10
  tail call void @put_device(ptr noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @blkdev_get_by_dev(i32 noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = and i32 %1, 2
  %5 = icmp eq i32 %4, 0
  %6 = load ptr, ptr @blockdev_superblock, align 4
  %7 = tail call ptr @ilookup(ptr noundef %6, i32 noundef %0) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  tail call void @blk_request_module(i32 noundef %0) #12
  %10 = load ptr, ptr @blockdev_superblock, align 4
  %11 = tail call ptr @ilookup(ptr noundef %10, i32 noundef %0) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %207, label %13

13:                                               ; preds = %9, %3
  %14 = phi ptr [ %7, %3 ], [ %11, %9 ]
  %15 = getelementptr i8, ptr %14, i32 -584
  %16 = getelementptr i8, ptr %14, i32 -536
  %17 = tail call ptr @kobject_get_unless_zero(ptr noundef %16) #12
  %18 = icmp eq ptr %17, null
  tail call void @iput(ptr noundef nonnull %14) #12
  %19 = icmp eq ptr %15, null
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %207, label %21

21:                                               ; preds = %13
  %22 = getelementptr i8, ptr %14, i32 -40
  %23 = load ptr, ptr %22, align 8
  %24 = and i32 %1, 128
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = tail call i32 @bd_prepare_to_claim(ptr noundef nonnull %15, ptr noundef %2)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %204

29:                                               ; preds = %26, %21
  tail call void @disk_block_events(ptr noundef %23) #12
  %30 = getelementptr inbounds %struct.gendisk, ptr %23, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %30) #12
  %31 = getelementptr inbounds %struct.gendisk, ptr %23, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.block_device, ptr %32, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 27, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %190, label %38

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.gendisk, ptr %23, i32 0, i32 8
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.block_device_operations, ptr %40, i32 0, i32 14
  %42 = load ptr, ptr %41, align 4
  %43 = tail call zeroext i1 @try_module_get(ptr noundef %42) #12
  br i1 %43, label %44, label %190

44:                                               ; preds = %38
  %45 = getelementptr i8, ptr %14, i32 -48
  %46 = load i8, ptr %45, align 8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %137, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %22, align 8
  %50 = getelementptr i8, ptr %14, i32 -552
  %51 = load i32, ptr %50, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %116

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.gendisk, ptr %49, i32 0, i32 7
  %55 = load ptr, ptr %54, align 4
  %56 = tail call fastcc i32 @blkdev_get_whole(ptr noundef %55, i32 noundef %1) #12
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %185

58:                                               ; preds = %53
  %59 = getelementptr i8, ptr %14, i32 -576
  %60 = load i64, ptr %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %119, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.gendisk, ptr %49, i32 0, i32 14
  %64 = load i32, ptr %63, align 8
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 8
  %66 = getelementptr i8, ptr %14, i32 -36
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.request_queue, ptr %67, i32 0, i32 32, i32 9
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, i32 512, i32 %71
  br label %74

74:                                               ; preds = %69, %62
  %75 = phi i32 [ 512, %62 ], [ %73, %69 ]
  %76 = getelementptr i8, ptr %14, i32 -548
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.inode, ptr %77, i32 0, i32 22
  %79 = getelementptr inbounds %struct.inode, ptr %77, i32 0, i32 13
  br label %80

80:                                               ; preds = %88, %74
  %81 = load volatile i32, ptr %78, align 4
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %84, %80
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !17
  %85 = load volatile i32, ptr %78, align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %84

88:                                               ; preds = %84, %80
  %89 = phi i32 [ %81, %80 ], [ %85, %84 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %90 = load i64, ptr %79, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  %91 = load volatile i32, ptr %78, align 4
  %92 = icmp eq i32 %91, %89
  br i1 %92, label %93, label %80

93:                                               ; preds = %88
  %94 = icmp ult i32 %75, 4096
  br i1 %94, label %95, label %103

95:                                               ; preds = %100, %93
  %96 = phi i32 [ %101, %100 ], [ %75, %93 ]
  %97 = zext i32 %96 to i64
  %98 = and i64 %90, %97
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = shl nuw nsw i32 %96, 1
  %102 = icmp ult i32 %96, 2048
  br i1 %102, label %95, label %103

103:                                              ; preds = %100, %95, %93
  %104 = phi i32 [ %75, %93 ], [ %101, %100 ], [ %96, %95 ]
  br label %105

105:                                              ; preds = %105, %103
  %106 = phi i32 [ %109, %105 ], [ %104, %103 ]
  %107 = phi i32 [ %108, %105 ], [ 8, %103 ]
  %108 = add nuw nsw i32 %107, 1
  %109 = lshr i32 %106, 1
  %110 = icmp ugt i32 %106, 513
  br i1 %110, label %105, label %111

111:                                              ; preds = %105
  %112 = trunc i32 %108 to i8
  %113 = load ptr, ptr %76, align 4
  %114 = getelementptr inbounds %struct.inode, ptr %113, i32 0, i32 19
  store i8 %112, ptr %114, align 2
  %115 = load i32, ptr %50, align 8
  br label %116

116:                                              ; preds = %111, %48
  %117 = phi i32 [ %51, %48 ], [ %115, %111 ]
  %118 = add i32 %117, 1
  store i32 %118, ptr %50, align 8
  br label %140

119:                                              ; preds = %58
  %120 = load ptr, ptr %22, align 8
  %121 = getelementptr inbounds %struct.gendisk, ptr %120, i32 0, i32 7
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.block_device, ptr %122, i32 0, i32 6
  %124 = load i32, ptr %123, align 8
  %125 = add i32 %124, -1
  store i32 %125, ptr %123, align 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  tail call fastcc void @blkdev_flush_mapping(ptr noundef %122) #12
  br label %128

128:                                              ; preds = %127, %119
  %129 = getelementptr inbounds %struct.block_device, ptr %122, i32 0, i32 17
  %130 = load ptr, ptr %129, align 8
  %131 = getelementptr inbounds %struct.gendisk, ptr %130, i32 0, i32 8
  %132 = load ptr, ptr %131, align 8
  %133 = getelementptr inbounds %struct.block_device_operations, ptr %132, i32 0, i32 2
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %185, label %136

136:                                              ; preds = %128
  tail call void %134(ptr noundef %130, i32 noundef %1) #12
  br label %185

137:                                              ; preds = %44
  %138 = tail call fastcc i32 @blkdev_get_whole(ptr noundef nonnull %15, i32 noundef %1)
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %185

140:                                              ; preds = %137, %116
  br i1 %25, label %184, label %141

141:                                              ; preds = %140
  %142 = load ptr, ptr %22, align 8
  %143 = getelementptr inbounds %struct.gendisk, ptr %142, i32 0, i32 7
  %144 = load ptr, ptr %143, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @bdev_lock) #12
  %145 = getelementptr i8, ptr %14, i32 -64
  %146 = load ptr, ptr %145, align 8
  %147 = icmp eq ptr %146, %2
  br i1 %147, label %159, label %148

148:                                              ; preds = %141
  %149 = icmp eq ptr %146, null
  br i1 %149, label %150, label %158, !prof !20

150:                                              ; preds = %148
  %151 = icmp eq ptr %144, %15
  br i1 %151, label %159, label %152

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct.block_device, ptr %144, i32 0, i32 11
  %154 = load ptr, ptr %153, align 8
  %155 = icmp eq ptr %154, @bd_may_claim
  %156 = icmp eq ptr %154, null
  %157 = or i1 %155, %156
  br i1 %157, label %159, label %158, !prof !8

158:                                              ; preds = %152, %148
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/bdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 622, 0\0A.popsection", ""() #12, !srcloc !21
  unreachable

159:                                              ; preds = %152, %150, %141
  %160 = getelementptr inbounds %struct.block_device, ptr %144, i32 0, i32 12
  %161 = load i32, ptr %160, align 4
  %162 = add i32 %161, 1
  store i32 %162, ptr %160, align 4
  %163 = getelementptr inbounds %struct.block_device, ptr %144, i32 0, i32 11
  store ptr @bd_may_claim, ptr %163, align 8
  %164 = getelementptr i8, ptr %14, i32 -60
  %165 = load i32, ptr %164, align 4
  %166 = add i32 %165, 1
  store i32 %166, ptr %164, align 4
  store ptr %2, ptr %145, align 8
  %167 = getelementptr inbounds %struct.block_device, ptr %144, i32 0, i32 9
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, %2
  br i1 %169, label %171, label %170, !prof !8

170:                                              ; preds = %159
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/bdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 604, 0\0A.popsection", ""() #12, !srcloc !9
  unreachable

171:                                              ; preds = %159
  store ptr null, ptr %167, align 4
  tail call void @wake_up_bit(ptr noundef %167, i32 noundef 0) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %172 = load i16, ptr @bdev_lock, align 64
  %173 = add i16 %172, 1
  store i16 %173, ptr @bdev_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  br i1 %5, label %184, label %174

174:                                              ; preds = %171
  %175 = getelementptr i8, ptr %14, i32 -56
  %176 = load i8, ptr %175, align 8, !range !22
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.gendisk, ptr %23, i32 0, i32 5
  %180 = load i16, ptr %179, align 2
  %181 = and i16 %180, 4
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %178
  store i8 1, ptr %175, align 8
  tail call void @mutex_unlock(ptr noundef %30) #12
  br label %207

184:                                              ; preds = %178, %174, %171, %140
  tail call void @mutex_unlock(ptr noundef %30) #12
  tail call void @disk_unblock_events(ptr noundef %23) #12
  br label %207

185:                                              ; preds = %137, %136, %128, %53
  %186 = phi i32 [ %138, %137 ], [ -6, %136 ], [ -6, %128 ], [ %56, %53 ]
  %187 = load ptr, ptr %39, align 8
  %188 = getelementptr inbounds %struct.block_device_operations, ptr %187, i32 0, i32 14
  %189 = load ptr, ptr %188, align 4
  tail call void @module_put(ptr noundef %189) #12
  br label %190

190:                                              ; preds = %185, %38, %29
  %191 = phi i32 [ %186, %185 ], [ -6, %38 ], [ -6, %29 ]
  br i1 %25, label %203, label %192

192:                                              ; preds = %190
  tail call void @_raw_spin_lock(ptr noundef nonnull @bdev_lock) #12
  %193 = load ptr, ptr %22, align 8
  %194 = getelementptr inbounds %struct.gendisk, ptr %193, i32 0, i32 7
  %195 = load ptr, ptr %194, align 4
  %196 = getelementptr inbounds %struct.block_device, ptr %195, i32 0, i32 9
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, %2
  br i1 %198, label %200, label %199, !prof !8

199:                                              ; preds = %192
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/bdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 604, 0\0A.popsection", ""() #12, !srcloc !9
  unreachable

200:                                              ; preds = %192
  store ptr null, ptr %196, align 4
  tail call void @wake_up_bit(ptr noundef %196, i32 noundef 0) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %201 = load i16, ptr @bdev_lock, align 64
  %202 = add i16 %201, 1
  store i16 %202, ptr @bdev_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  br label %203

203:                                              ; preds = %200, %190
  tail call void @mutex_unlock(ptr noundef %30) #12
  tail call void @disk_unblock_events(ptr noundef %23) #12
  br label %204

204:                                              ; preds = %203, %26
  %205 = phi i32 [ %27, %26 ], [ %191, %203 ]
  tail call void @put_device(ptr noundef %16) #12
  %206 = inttoptr i32 %205 to ptr
  br label %207

207:                                              ; preds = %204, %184, %183, %13, %9
  %208 = phi ptr [ %206, %204 ], [ %15, %183 ], [ %15, %184 ], [ inttoptr (i32 -6 to ptr), %9 ], [ inttoptr (i32 -6 to ptr), %13 ]
  ret ptr %208
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_block_events(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @blkdev_get_whole(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.block_device_operations, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = tail call i32 %8(ptr noundef %0, i32 noundef %1) #12
  switch i32 %11, label %83 [
    i32 0, label %19
    i32 -123, label %12
  ]

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %83, label %17

17:                                               ; preds = %12
  %18 = tail call i32 @bdev_disk_changed(ptr noundef %4, i1 noundef zeroext true) #12
  br label %83

19:                                               ; preds = %10, %2
  %20 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %73

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 18
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.request_queue, ptr %25, i32 0, i32 32, i32 9
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 512, i32 %29
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi i32 [ 512, %23 ], [ %31, %27 ]
  %34 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 7
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 22
  %37 = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 13
  br label %38

38:                                               ; preds = %46, %32
  %39 = load volatile i32, ptr %36, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %42, %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !17
  %43 = load volatile i32, ptr %36, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %42

46:                                               ; preds = %42, %38
  %47 = phi i32 [ %39, %38 ], [ %43, %42 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %48 = load i64, ptr %37, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  %49 = load volatile i32, ptr %36, align 4
  %50 = icmp eq i32 %49, %47
  br i1 %50, label %51, label %38

51:                                               ; preds = %46
  %52 = icmp ult i32 %33, 4096
  br i1 %52, label %53, label %61

53:                                               ; preds = %58, %51
  %54 = phi i32 [ %59, %58 ], [ %33, %51 ]
  %55 = zext i32 %54 to i64
  %56 = and i64 %48, %55
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = shl nuw nsw i32 %54, 1
  %60 = icmp ult i32 %54, 2048
  br i1 %60, label %53, label %61

61:                                               ; preds = %58, %53, %51
  %62 = phi i32 [ %33, %51 ], [ %54, %53 ], [ %59, %58 ]
  br label %63

63:                                               ; preds = %63, %61
  %64 = phi i32 [ %67, %63 ], [ %62, %61 ]
  %65 = phi i32 [ %66, %63 ], [ 8, %61 ]
  %66 = add nuw nsw i32 %65, 1
  %67 = lshr i32 %64, 1
  %68 = icmp ugt i32 %64, 513
  br i1 %68, label %63, label %69

69:                                               ; preds = %63
  %70 = trunc i32 %66 to i8
  %71 = load ptr, ptr %34, align 4
  %72 = getelementptr inbounds %struct.inode, ptr %71, i32 0, i32 19
  store i8 %70, ptr %72, align 2
  br label %73

73:                                               ; preds = %69, %19
  %74 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 12
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = tail call i32 @bdev_disk_changed(ptr noundef %4, i1 noundef zeroext false) #12
  br label %80

80:                                               ; preds = %78, %73
  %81 = load i32, ptr %20, align 8
  %82 = add i32 %81, 1
  store i32 %82, ptr %20, align 8
  br label %83

83:                                               ; preds = %80, %17, %12, %10
  %84 = phi i32 [ 0, %80 ], [ %11, %10 ], [ -123, %17 ], [ -123, %12 ]
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_unblock_events(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @blkdev_get_by_path(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store i64 0, ptr %4, align 8, !annotation !23
  %5 = icmp eq ptr %0, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %3
  %7 = load i8, ptr %0, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %6
  %10 = call i32 @kern_path(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 8
  %17 = load i16, ptr %16, align 8
  %18 = and i16 %17, -4096
  %19 = icmp eq i16 %18, 24576
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = call zeroext i1 @may_open_dev(ptr noundef nonnull %4) #12
  br i1 %21, label %29, label %24

22:                                               ; preds = %9, %6, %3
  %23 = phi i32 [ %10, %9 ], [ -22, %3 ], [ -22, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br label %26

24:                                               ; preds = %20, %12
  %25 = phi i32 [ -15, %12 ], [ -13, %20 ]
  call void @path_put(ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = inttoptr i32 %27 to ptr
  br label %55

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 12
  %31 = load i32, ptr %30, align 4
  call void @path_put(ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  %32 = call ptr @blkdev_get_by_dev(i32 noundef %31, i32 noundef %1, ptr noundef %2)
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  %34 = and i32 %1, 2
  %35 = icmp eq i32 %34, 0
  %36 = or i1 %35, %33
  br i1 %36, label %55, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.block_device, ptr %32, i32 0, i32 4
  %39 = load i8, ptr %38, align 8, !range !22
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.block_device, ptr %32, i32 0, i32 17
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.gendisk, ptr %43, i32 0, i32 7
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.block_device, ptr %45, i32 0, i32 4
  %47 = load i8, ptr %46, align 8, !range !22
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.gendisk, ptr %43, i32 0, i32 12
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49, %41, %37
  call void @blkdev_put(ptr noundef %32, i32 noundef %1)
  br label %55

55:                                               ; preds = %54, %49, %29, %26
  %56 = phi ptr [ %28, %26 ], [ inttoptr (i32 -13 to ptr), %54 ], [ %32, %49 ], [ %32, %29 ]
  ret ptr %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lookup_bdev(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 0, ptr %3, align 8, !annotation !23
  %4 = icmp eq ptr %0, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %0, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %5
  %9 = call i32 @kern_path(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %3) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  %16 = load i16, ptr %15, align 8
  %17 = and i16 %16, -4096
  %18 = icmp eq i16 %17, 24576
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = call zeroext i1 @may_open_dev(ptr noundef nonnull %3) #12
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 12
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %1, align 4
  br label %24

24:                                               ; preds = %21, %19, %11
  %25 = phi i32 [ 0, %21 ], [ -13, %19 ], [ -15, %11 ]
  call void @path_put(ptr noundef nonnull %3) #12
  br label %26

26:                                               ; preds = %24, %8, %5, %2
  %27 = phi i32 [ %25, %24 ], [ -22, %5 ], [ -22, %2 ], [ %9, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blkdev_put(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 8
  %7 = icmp ne i32 %6, 1
  %8 = icmp eq ptr %0, null
  %9 = or i1 %8, %7
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 9
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 @filemap_write_and_wait_range(ptr noundef %14, i64 noundef 0, i64 noundef 9223372036854775807) #12
  br label %16

16:                                               ; preds = %10, %2
  %17 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %17) #12
  %18 = and i32 %1, 128
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %59, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.gendisk, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @bdev_lock) #12
  %24 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -1
  store i32 %26, ptr %24, align 4
  %27 = icmp slt i32 %26, 0
  %28 = load i1, ptr @blkdev_put.__already_done, align 1
  %29 = xor i1 %28, true
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %32, !prof !14

31:                                               ; preds = %20
  store i1 true, ptr @blkdev_put.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 914, i32 noundef 9, ptr noundef null) #12
  br label %32

32:                                               ; preds = %31, %20
  %33 = getelementptr inbounds %struct.block_device, ptr %23, i32 0, i32 12
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, -1
  store i32 %35, ptr %33, align 4
  %36 = icmp slt i32 %35, 0
  %37 = load i1, ptr @blkdev_put.__already_done.5, align 1
  %38 = xor i1 %37, true
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %41, !prof !14

40:                                               ; preds = %32
  store i1 true, ptr @blkdev_put.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 915, i32 noundef 9, ptr noundef null) #12
  br label %41

41:                                               ; preds = %40, %32
  %42 = load i32, ptr %24, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 11
  store ptr null, ptr %45, align 8
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, ptr %33, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.block_device, ptr %23, i32 0, i32 11
  store ptr null, ptr %50, align 8
  br label %51

51:                                               ; preds = %49, %46
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %52 = load i16, ptr @bdev_lock, align 64
  %53 = add i16 %52, 1
  store i16 %53, ptr @bdev_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  br i1 %43, label %54, label %59

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 13
  %56 = load i8, ptr %55, align 8, !range !22
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void @disk_unblock_events(ptr noundef %4) #12
  store i8 0, ptr %55, align 8
  br label %59

59:                                               ; preds = %58, %54, %51, %16
  tail call void @disk_flush_events(ptr noundef %4, i32 noundef 1) #12
  %60 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 15
  %61 = load i8, ptr %60, align 8
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %89, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %3, align 8
  %65 = getelementptr inbounds %struct.gendisk, ptr %64, i32 0, i32 7
  %66 = load ptr, ptr %65, align 4
  %67 = load i32, ptr %5, align 8
  %68 = add i32 %67, -1
  store i32 %68, ptr %5, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %102

70:                                               ; preds = %63
  tail call fastcc void @blkdev_flush_mapping(ptr noundef %0) #12
  %71 = getelementptr inbounds %struct.block_device, ptr %66, i32 0, i32 17
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.gendisk, ptr %72, i32 0, i32 14
  %74 = load i32, ptr %73, align 8
  %75 = add i32 %74, -1
  store i32 %75, ptr %73, align 8
  %76 = getelementptr inbounds %struct.block_device, ptr %66, i32 0, i32 6
  %77 = load i32, ptr %76, align 8
  %78 = add i32 %77, -1
  store i32 %78, ptr %76, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  tail call fastcc void @blkdev_flush_mapping(ptr noundef %66) #12
  br label %81

81:                                               ; preds = %80, %70
  %82 = load ptr, ptr %71, align 8
  %83 = getelementptr inbounds %struct.gendisk, ptr %82, i32 0, i32 8
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.block_device_operations, ptr %84, i32 0, i32 2
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %102, label %88

88:                                               ; preds = %81
  tail call void %86(ptr noundef %82, i32 noundef %1) #12
  br label %102

89:                                               ; preds = %59
  %90 = load i32, ptr %5, align 8
  %91 = add i32 %90, -1
  store i32 %91, ptr %5, align 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  tail call fastcc void @blkdev_flush_mapping(ptr noundef %0) #12
  br label %94

94:                                               ; preds = %93, %89
  %95 = load ptr, ptr %3, align 8
  %96 = getelementptr inbounds %struct.gendisk, ptr %95, i32 0, i32 8
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.block_device_operations, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %94
  tail call void %99(ptr noundef %95, i32 noundef %1) #12
  br label %102

102:                                              ; preds = %101, %94, %88, %81, %63
  tail call void @mutex_unlock(ptr noundef %17) #12
  %103 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 8
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr inbounds %struct.block_device_operations, ptr %104, i32 0, i32 14
  %106 = load ptr, ptr %105, align 4
  tail call void @module_put(ptr noundef %106) #12
  %107 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 10
  tail call void @put_device(ptr noundef %107) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_flush_events(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @may_open_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__invalidate_device(ptr noundef %0, i1 noundef zeroext %1) #1 {
  %3 = tail call ptr @get_super(ptr noundef %0) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  tail call void @shrink_dcache_sb(ptr noundef nonnull %3) #12
  %6 = tail call i32 @invalidate_inodes(ptr noundef nonnull %3, i1 noundef zeroext %1) #12
  tail call void @drop_super(ptr noundef nonnull %3) #12
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 9
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.address_space, ptr %12, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  tail call void @invalidate_bh_lrus() #12
  tail call void @lru_add_drain_all() #12
  %17 = tail call i32 @invalidate_mapping_pages(ptr noundef %12, i32 noundef 0, i32 noundef -1) #12
  br label %18

18:                                               ; preds = %16, %7
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @shrink_dcache_sb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inodes(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sync_bdevs(i1 noundef zeroext %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @blockdev_superblock, align 4
  %3 = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 55
  tail call void @_raw_spin_lock(ptr noundef %3) #12
  %4 = load ptr, ptr @blockdev_superblock, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 56
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %56, label %8

8:                                                ; preds = %50, %1
  %9 = phi ptr [ %52, %50 ], [ %6, %1 ]
  %10 = phi ptr [ %51, %50 ], [ null, %1 ]
  %11 = getelementptr i8, ptr %9, i32 -184
  %12 = getelementptr i8, ptr %9, i32 -152
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %9, i32 -80
  tail call void @_raw_spin_lock(ptr noundef %14) #12
  %15 = getelementptr i8, ptr %9, i32 -60
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 56
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.address_space, ptr %13, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %24 = load i16, ptr %14, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  br label %50

26:                                               ; preds = %19
  tail call void @__iget(ptr noundef %11) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %27 = load i16, ptr %14, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %29 = load ptr, ptr @blockdev_superblock, align 4
  %30 = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %31 = load i16, ptr %30, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  tail call void @iput(ptr noundef %10) #12
  %33 = getelementptr i8, ptr %9, i32 -224
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.gendisk, ptr %34, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %35) #12
  %36 = getelementptr i8, ptr %9, i32 -736
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %26
  %40 = load ptr, ptr %12, align 8
  br i1 %0, label %41, label %43

41:                                               ; preds = %39
  %42 = tail call i32 @filemap_fdatawait_keep_errors(ptr noundef %40) #12
  br label %45

43:                                               ; preds = %39
  %44 = tail call i32 @filemap_fdatawrite(ptr noundef %40) #12
  br label %45

45:                                               ; preds = %43, %41, %26
  %46 = load ptr, ptr %33, align 8
  %47 = getelementptr inbounds %struct.gendisk, ptr %46, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %47) #12
  %48 = load ptr, ptr @blockdev_superblock, align 4
  %49 = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 55
  tail call void @_raw_spin_lock(ptr noundef %49) #12
  br label %50

50:                                               ; preds = %45, %23
  %51 = phi ptr [ %10, %23 ], [ %11, %45 ]
  %52 = load ptr, ptr %9, align 4
  %53 = load ptr, ptr @blockdev_superblock, align 4
  %54 = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 56
  %55 = icmp eq ptr %52, %54
  br i1 %55, label %56, label %8

56:                                               ; preds = %50, %1
  %57 = phi ptr [ null, %1 ], [ %51, %50 ]
  %58 = phi ptr [ %4, %1 ], [ %53, %50 ]
  %59 = getelementptr inbounds %struct.super_block, ptr %58, i32 0, i32 55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %60 = load i16, ptr %59, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr %59, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  tail call void @iput(ptr noundef %57) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iget(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_keep_errors(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bd_init_fs_context(ptr noundef %0) #1 {
  %2 = tail call ptr @init_pseudo(ptr noundef %0, i32 noundef 1650746742) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 1
  store i32 %7, ptr %5, align 4
  store ptr @bdev_sops, ptr %2, align 4
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 0, %4 ], [ -12, %1 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_pseudo(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @bdev_alloc_inode(ptr nocapture noundef readnone %0) #1 {
  %2 = load ptr, ptr @bdev_cachep, align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3264) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(584) %3, i8 0, i32 584, i1 false)
  %6 = getelementptr inbounds %struct.bdev_inode, ptr %3, i32 0, i32 1
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bdev_free_inode(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -568
  %3 = load ptr, ptr %2, align 8
  tail call void @free_percpu(ptr noundef %3) #12
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #12
  %6 = getelementptr i8, ptr %0, i32 -48
  %7 = load i8, ptr %6, align 8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -40
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  tail call void @bdi_put(ptr noundef nonnull %15) #12
  %18 = load ptr, ptr %10, align 8
  br label %19

19:                                               ; preds = %17, %13, %9
  %20 = phi ptr [ %18, %17 ], [ %11, %13 ], [ null, %9 ]
  tail call void @kfree(ptr noundef %20) #12
  br label %21

21:                                               ; preds = %19, %1
  %22 = getelementptr i8, ptr %0, i32 -556
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, -1048576
  %25 = icmp eq i32 %24, 271581184
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = and i32 %23, 1048575
  tail call void @blk_free_ext_minor(i32 noundef %27) #12
  br label %28

28:                                               ; preds = %26, %21
  %29 = getelementptr i8, ptr %0, i32 -584
  %30 = load ptr, ptr @bdev_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %30, ptr noundef %29) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bdev_evict_inode(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41
  tail call void @truncate_inode_pages_final(ptr noundef %2) #12
  tail call void @invalidate_inode_buffers(ptr noundef %0) #12
  tail call void @clear_inode(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdi_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_free_ext_minor(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_inode_buffers(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_disk_changed(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @blkdev_flush_mapping(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca [32 x i8], align 1
  %3 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = icmp ne i32 %4, 0
  %6 = load i1, ptr @blkdev_flush_mapping.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !14

9:                                                ; preds = %1
  store i1 true, ptr @blkdev_flush_mapping.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 654, i32 noundef 9, ptr noundef null) #12
  br label %10

10:                                               ; preds = %9, %1
  %11 = icmp eq ptr %0, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 9
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @filemap_write_and_wait_range(ptr noundef %16, i64 noundef 0, i64 noundef 9223372036854775807) #12
  br label %18

18:                                               ; preds = %12, %10
  %19 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 9
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.address_space, ptr %22, i32 0, i32 1, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  tail call void @invalidate_bh_lrus() #12
  tail call void @truncate_inode_pages(ptr noundef %22, i64 noundef 0) #12
  %27 = load ptr, ptr %19, align 4
  br label %28

28:                                               ; preds = %26, %18
  %29 = phi ptr [ %20, %18 ], [ %27, %26 ]
  %30 = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %30) #12
  %31 = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 23
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %47, %28
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %36 = load i16, ptr %30, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %30, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %38 = call i32 @write_inode_now(ptr noundef %29, i32 noundef 1) #12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false) #12, !annotation !23
  %41 = call i32 @___ratelimit(ptr noundef nonnull @bdev_write_inode._rs, ptr noundef nonnull @__func__.bdev_write_inode) #12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = call ptr @bdevname(ptr noundef %0, ptr noundef nonnull %2) #12
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %44, i32 noundef %38) #15
  br label %46

46:                                               ; preds = %43, %40
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #12
  br label %47

47:                                               ; preds = %46, %35
  call void @_raw_spin_lock(ptr noundef %30) #12
  %48 = load i32, ptr %31, align 4
  %49 = and i32 %48, 7
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %35

51:                                               ; preds = %47, %28
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %52 = load i16, ptr %30, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %30, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_inode_now(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdevname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2154072203, i64 2154072680, i64 2154072240, i64 2154072296, i64 2154072330, i64 2154072354, i64 2154072395, i64 2154072416, i64 2154072444, i64 2154072478}
!10 = !{i64 2149033201}
!11 = !{i64 2149029025}
!12 = !{i64 2149029100, i64 2149029127, i64 2149029174, i64 2149029196, i64 2149029224, i64 2149029244}
!13 = !{i64 2149056204}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i32 0, i32 33}
!16 = !{i64 2151842285}
!17 = !{i64 2151842127}
!18 = !{i64 2151842429}
!19 = !{i64 2149276006}
!20 = !{!"branch_weights", i32 2146410443, i32 1073205}
!21 = !{i64 2154073285, i64 2154073762, i64 2154073322, i64 2154073378, i64 2154073412, i64 2154073436, i64 2154073477, i64 2154073498, i64 2154073526, i64 2154073560}
!22 = !{i8 0, i8 2}
!23 = !{!"auto-init"}
