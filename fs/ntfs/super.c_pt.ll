; ModuleID = '/llk/IR/fs/ntfs/super.c_pt.bc'
source_filename = "../fs/ntfs/super.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.option_t = type { i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.export_operations = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ntfs_volume = type { ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i8, i8, i16, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i64, i64, i64, i64, i32, ptr, i32, ptr, ptr, ptr, %struct.rw_semaphore, ptr, %struct.rw_semaphore, ptr, i16, i8, i8, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.NTFS_BOOT_SECTOR = type <{ [3 x i8], i64, %struct.BIOS_PARAMETER_BLOCK, [4 x i8], i64, i64, i64, i8, [3 x i8], i8, [3 x i8], i64, i32, [426 x i8], i16 }>
%struct.BIOS_PARAMETER_BLOCK = type <{ i16, i8, i16, i8, i16, i16, i8, i16, i16, i16, i32, i32 }>
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.63, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.64, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.65, ptr, %struct.address_space, %struct.list_head, %union.anon.66, i32, i32, ptr, ptr }
%union.anon.63 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.64 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.65 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.66 = type { ptr }
%struct.page = type { i32, %union.anon.4, %union.anon.19, %struct.atomic_t }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.19 = type { %struct.atomic_t }
%struct.ntfs_attr_search_ctx = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ATTR_RECORD = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.75 }
%union.anon.75 = type { %struct.anon.77 }
%struct.anon.77 = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.anon.76 = type { i32, i16, i8, i8 }
%struct.VOLUME_INFORMATION = type <{ i64, i8, i8, i16 }>
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.69, %struct.list_head, %struct.list_head, %union.anon.70 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.0, ptr }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.67 }
%union.anon.67 = type { i64 }
%union.anon.69 = type { %struct.list_head }
%union.anon.70 = type { %struct.hlist_node }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.28 }
%struct.llist_node = type { ptr }
%union.anon.28 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.big_ntfs_inode = type { %struct._ntfs_inode, %struct.inode }
%struct._ntfs_inode = type { %struct.rwlock_t, i64, i64, i32, i32, i16, %struct.atomic_t, ptr, i32, ptr, i32, %struct.runlist, %struct.mutex, ptr, i32, i32, ptr, %struct.runlist, %union.anon.71, %struct.mutex, i32, %union.anon.74 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.runlist = type { ptr, %struct.rw_semaphore }
%union.anon.71 = type { %struct.anon.73 }
%struct.anon.73 = type { i64, i32, i8, i8 }
%union.anon.74 = type { ptr }

@.str = private unnamed_addr constant [6 x i8] c"panic\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"remount-ro\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"recover\00", align 1
@on_errors_arr = dso_local local_unnamed_addr constant [5 x %struct.option_t] [%struct.option_t { i32 1, ptr @.str }, %struct.option_t { i32 2, ptr @.str.1 }, %struct.option_t { i32 4, ptr @.str.2 }, %struct.option_t { i32 16, ptr @.str.3 }, %struct.option_t zeroinitializer], align 4
@ntfs_lock = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ntfs_lock, i64 12), ptr getelementptr (i8, ptr @ntfs_lock, i64 12) } }, align 4
@__UNIQUE_ID_alias263 = internal constant [19 x i8] c"ntfs.alias=fs-ntfs\00", section ".modinfo", align 1
@ntfs_fs_type = internal global %struct.file_system_type { ptr @.str.5, i32 1, ptr null, ptr null, ptr @ntfs_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@ntfs_big_inode_cache = dso_local local_unnamed_addr global ptr null, align 4
@ntfs_inode_cache = dso_local local_unnamed_addr global ptr null, align 4
@ntfs_name_cache = dso_local local_unnamed_addr global ptr null, align 4
@ntfs_attr_ctx_cache = dso_local local_unnamed_addr global ptr null, align 4
@ntfs_index_ctx_cache = dso_local local_unnamed_addr global ptr null, align 4
@__UNIQUE_ID_author264 = internal constant [50 x i8] c"ntfs.author=Anton Altaparmakov <anton@tuxera.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description265 = internal constant [98 x i8] c"ntfs.description=NTFS 1.2/3.x driver - Copyright (c) 2001-2014 Anton Altaparmakov and Tuxera Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_version266 = internal constant [20 x i8] c"ntfs.version=2.1.32\00", section ".modinfo", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ntfs\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"2.1.32\00", align 1
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.5, ptr @.str.6 }, section "__modver", align 4
@__UNIQUE_ID_file267 = internal constant [23 x i8] c"ntfs.file=fs/ntfs/ntfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license268 = internal constant [17 x i8] c"ntfs.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ntfs__269_3192_init_ntfs_fs6 = internal global ptr @init_ntfs_fs, section ".initcall6.init", align 4
@__exitcall_exit_ntfs_fs = internal global ptr @exit_ntfs_fs, section ".exitcall.exit", align 4
@__func__.ntfs_fill_super = private unnamed_addr constant [16 x i8] c"ntfs_fill_super\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"Allocation of NTFS volume structure failed. Aborting mount...\00", align 1
@ntfs_fill_super.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"&vol->mftbmp_lock\00", align 1
@ntfs_fill_super.__key.9 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"&vol->lcnbmp_lock\00", align 1
@.str.11 = private unnamed_addr constant [111 x i8] c"Device has unsupported sector size (%i).  The maximum supported sector size on this architecture is %lu bytes.\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Unable to set device block size.\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Unable to determine device size.\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Not an NTFS volume.\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Unsupported NTFS filesystem.\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"Unable to set device block size to sector size (%i).\00", align 1
@ntfs_sops = internal constant %struct.super_operations { ptr @ntfs_alloc_big_inode, ptr null, ptr @ntfs_free_big_inode, ptr null, ptr null, ptr null, ptr @ntfs_evict_big_inode, ptr @ntfs_put_super, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ntfs_statfs, ptr @ntfs_remount, ptr null, ptr @ntfs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.17 = private unnamed_addr constant [35 x i8] c"Failed to load essential metadata.\00", align 1
@ntfs_nr_compression_users = internal unnamed_addr global i32 0, align 4
@.str.18 = private unnamed_addr constant [51 x i8] c"Failed to allocate buffers for compression engine.\00", align 1
@default_upcase = internal unnamed_addr global ptr null, align 4
@ntfs_nr_upcase_users = internal unnamed_addr global i32 0, align 4
@.str.19 = private unnamed_addr constant [29 x i8] c"Failed to load system files.\00", align 1
@ntfs_export_ops = external dso_local constant %struct.export_operations, align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"Failed to allocate root directory.\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.21 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"umask\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"fmask\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"dmask\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"mft_zone_multiplier\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"sloppy\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"show_sys_files\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"case_sensitive\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"disable_sparse\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"posix\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"show_inodes\00", align 1
@__func__.parse_options = private unnamed_addr constant [14 x i8] c"parse_options\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"Ignoring obsolete option %s.\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"nls\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"iocharset\00", align 1
@.str.39 = private unnamed_addr constant [83 x i8] c"Option iocharset is deprecated. Please use option nls=<charsetname> in the future.\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"NLS character set %s not found.\00", align 1
@.str.41 = private unnamed_addr constant [55 x i8] c"NLS character set %s not found. Using previous one %s.\00", align 1
@.str.42 = private unnamed_addr constant [170 x i8] c"Option utf8 is no longer supported, using option nls=utf8. Please use option nls=utf8 in the future and make sure utf8 is compiled either as a module or into the kernel.\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"Unrecognized mount option %s.\00", align 1
@.str.44 = private unnamed_addr constant [75 x i8] c"Sloppy option given. Ignoring unrecognized mount option(s) and continuing.\00", align 1
@.str.45 = private unnamed_addr constant [57 x i8] c"Invalid errors option argument or bug in options parser.\00", align 1
@.str.46 = private unnamed_addr constant [44 x i8] c"Cannot change NLS character set on remount.\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"Failed to load default NLS character set.\00", align 1
@.str.48 = private unnamed_addr constant [46 x i8] c"Cannot change mft_zone_multiplier on remount.\00", align 1
@.str.49 = private unnamed_addr constant [58 x i8] c"Invalid mft_zone_multiplier. Using default value, i.e. 1.\00", align 1
@.str.50 = private unnamed_addr constant [90 x i8] c"Not enabling sparse support due to NTFS volume version %i.%i (need at least version 3.0).\00", align 1
@.str.51 = private unnamed_addr constant [36 x i8] c"The %s option requires an argument.\00", align 1
@.str.52 = private unnamed_addr constant [43 x i8] c"The %s option requires a boolean argument.\00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c"Invalid %s option argument: %s\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c"Unable to read %s boot sector.\00", align 1
@__func__.read_ntfs_boot_sector = private unnamed_addr constant [22 x i8] c"read_ntfs_boot_sector\00", align 1
@.str.61 = private unnamed_addr constant [32 x i8] c"Primary boot sector is invalid.\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@.str.63 = private unnamed_addr constant [74 x i8] c"Mount option errors=recover not used. Aborting without trying to recover.\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"backup\00", align 1
@.str.65 = private unnamed_addr constant [43 x i8] c"Could not find a valid backup boot sector.\00", align 1
@.str.66 = private unnamed_addr constant [66 x i8] c"Hot-fix: Recovering invalid primary boot sector from backup copy.\00", align 1
@.str.67 = private unnamed_addr constant [66 x i8] c"Hot-fix: Device write error while recovering primary boot sector.\00", align 1
@.str.68 = private unnamed_addr constant [66 x i8] c"Hot-fix: Recovery of primary boot sector failed: Read-only mount.\00", align 1
@.str.69 = private unnamed_addr constant [26 x i8] c"Using backup boot sector.\00", align 1
@__func__.is_boot_sector_ntfs = private unnamed_addr constant [20 x i8] c"is_boot_sector_ntfs\00", align 1
@.str.70 = private unnamed_addr constant [30 x i8] c"Invalid boot sector checksum.\00", align 1
@.str.71 = private unnamed_addr constant [30 x i8] c"Invalid end of sector marker.\00", align 1
@__func__.parse_ntfs_boot_sector = private unnamed_addr constant [23 x i8] c"parse_ntfs_boot_sector\00", align 1
@.str.72 = private unnamed_addr constant [94 x i8] c"Sector size (%i) is smaller than the device block size (%lu).  This is not supported.  Sorry.\00", align 1
@.str.73 = private unnamed_addr constant [88 x i8] c"Cluster size (%i) is smaller than the sector size (%i).  This is not supported.  Sorry.\00", align 1
@.str.74 = private unnamed_addr constant [97 x i8] c"Mft record size (%i) exceeds the PAGE_SIZE on your system (%lu).  This is not supported.  Sorry.\00", align 1
@.str.75 = private unnamed_addr constant [91 x i8] c"Mft record size (%i) is smaller than the sector size (%i).  This is not supported.  Sorry.\00", align 1
@.str.76 = private unnamed_addr constant [93 x i8] c"Index record size (%i) is smaller than the sector size (%i).  This is not supported.  Sorry.\00", align 1
@.str.77 = private unnamed_addr constant [39 x i8] c"Cannot handle 64-bit clusters.  Sorry.\00", align 1
@.str.78 = private unnamed_addr constant [94 x i8] c"Volume size (%lluTiB) is too large for this architecture.  Maximum supported is 2TiB.  Sorry.\00", align 1
@.str.79 = private unnamed_addr constant [56 x i8] c"MFT LCN (%lli, 0x%llx) is beyond end of volume.  Weird.\00", align 1
@.str.80 = private unnamed_addr constant [60 x i8] c"MFTMirr LCN (%lli, 0x%llx) is beyond end of volume.  Weird.\00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__func__.load_system_files = private unnamed_addr constant [18 x i8] c"load_system_files\00", align 1
@.str.81 = private unnamed_addr constant [39 x i8] c"Failed to load $MFT/$BITMAP attribute.\00", align 1
@.str.82 = private unnamed_addr constant [24 x i8] c"Failed to load $Bitmap.\00", align 1
@.str.83 = private unnamed_addr constant [24 x i8] c"Failed to load $Volume.\00", align 1
@.str.84 = private unnamed_addr constant [40 x i8] c"Failed to get attribute search context.\00", align 1
@.str.85 = private unnamed_addr constant [31 x i8] c"\016ntfs: volume version %i.%i.\0A\00", align 1
@.str.86 = private unnamed_addr constant [87 x i8] c"Disabling sparse support due to NTFS volume version %i.%i (need at least version 3.0).\00", align 1
@.str.87 = private unnamed_addr constant [31 x i8] c"Failed to load root directory.\00", align 1
@.str.88 = private unnamed_addr constant [24 x i8] c"Failed to load $Secure.\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"Failed to load $Extend.\00", align 1
@__func__.load_and_init_upcase = private unnamed_addr constant [21 x i8] c"load_and_init_upcase\00", align 1
@.str.90 = private unnamed_addr constant [55 x i8] c"Failed to load $UpCase from the volume. Using default.\00", align 1
@.str.91 = private unnamed_addr constant [35 x i8] c"Failed to initialize upcase table.\00", align 1
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.92 = private unnamed_addr constant [37 x i8] c"\016ntfs: driver 2.1.32 [Flags: R/O].\0A\00", align 1
@ntfs_index_ctx_cache_name = internal constant [21 x i8] c"ntfs_index_ctx_cache\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"\012ntfs: Failed to create %s!\0A\00", align 1
@ntfs_attr_ctx_cache_name = internal constant [20 x i8] c"ntfs_attr_ctx_cache\00", align 1
@.str.94 = private unnamed_addr constant [36 x i8] c"\012ntfs: NTFS: Failed to create %s!\0A\00", align 1
@ntfs_name_cache_name = internal constant [16 x i8] c"ntfs_name_cache\00", align 1
@ntfs_inode_cache_name = internal constant [17 x i8] c"ntfs_inode_cache\00", align 1
@ntfs_big_inode_cache_name = internal constant [21 x i8] c"ntfs_big_inode_cache\00", align 1
@.str.96 = private unnamed_addr constant [52 x i8] c"\012ntfs: Failed to register NTFS filesystem driver!\0A\00", align 1
@.str.97 = private unnamed_addr constant [57 x i8] c"\012ntfs: Aborting NTFS filesystem driver registration...\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias263, ptr @__UNIQUE_ID_author264, ptr @__UNIQUE_ID_description265, ptr @__UNIQUE_ID_file267, ptr @__UNIQUE_ID_license268, ptr @__UNIQUE_ID_version266, ptr @__exitcall_exit_ntfs_fs, ptr @__initcall__kmod_ntfs__269_3192_init_ntfs_fs6, ptr @__modver_attr, ptr @exit_ntfs_fs], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exit_ntfs_fs() #0 section ".exit.text" {
  %1 = tail call i32 @unregister_filesystem(ptr noundef nonnull @ntfs_fs_type) #13
  tail call void @rcu_barrier() #13
  %2 = load ptr, ptr @ntfs_big_inode_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #13
  %3 = load ptr, ptr @ntfs_inode_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #13
  %4 = load ptr, ptr @ntfs_name_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %4) #13
  %5 = load ptr, ptr @ntfs_attr_ctx_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %5) #13
  %6 = load ptr, ptr @ntfs_index_ctx_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %6) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_ntfs_fs() #0 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #14
  %2 = tail call ptr @kmem_cache_create(ptr noundef nonnull @ntfs_index_ctx_cache_name, i32 noundef 36, i32 noundef 0, i32 noundef 8192, ptr noundef null) #13
  store ptr %2, ptr @ntfs_index_ctx_cache, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @ntfs_index_ctx_cache_name) #14
  br label %44

6:                                                ; preds = %0
  %7 = tail call ptr @kmem_cache_create(ptr noundef nonnull @ntfs_attr_ctx_cache_name, i32 noundef 32, i32 noundef 0, i32 noundef 8192, ptr noundef null) #13
  store ptr %7, ptr @ntfs_attr_ctx_cache, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @ntfs_attr_ctx_cache_name) #14
  %11 = load ptr, ptr @ntfs_index_ctx_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %11) #13
  br label %44

12:                                               ; preds = %6
  %13 = tail call ptr @kmem_cache_create(ptr noundef nonnull @ntfs_name_cache_name, i32 noundef 512, i32 noundef 0, i32 noundef 8192, ptr noundef null) #13
  store ptr %13, ptr @ntfs_name_cache, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @ntfs_name_cache_name) #14
  br label %39

17:                                               ; preds = %12
  %18 = tail call ptr @kmem_cache_create(ptr noundef nonnull @ntfs_inode_cache_name, i32 noundef 200, i32 noundef 0, i32 noundef 1179648, ptr noundef null) #13
  store ptr %18, ptr @ntfs_inode_cache, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @ntfs_inode_cache_name) #14
  br label %36

22:                                               ; preds = %17
  %23 = tail call ptr @kmem_cache_create(ptr noundef nonnull @ntfs_big_inode_cache_name, i32 noundef 592, i32 noundef 0, i32 noundef 1187840, ptr noundef nonnull @ntfs_big_inode_init_once) #13
  store ptr %23, ptr @ntfs_big_inode_cache, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @ntfs_big_inode_cache_name) #14
  br label %33

27:                                               ; preds = %22
  %28 = tail call i32 @register_filesystem(ptr noundef nonnull @ntfs_fs_type) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %27
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #14
  %32 = load ptr, ptr @ntfs_big_inode_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %32) #13
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi i32 [ %28, %30 ], [ 0, %25 ]
  %35 = load ptr, ptr @ntfs_inode_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %35) #13
  br label %36

36:                                               ; preds = %33, %20
  %37 = phi i32 [ %34, %33 ], [ 0, %20 ]
  %38 = load ptr, ptr @ntfs_name_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %38) #13
  br label %39

39:                                               ; preds = %36, %15
  %40 = phi i32 [ %37, %36 ], [ 0, %15 ]
  %41 = load ptr, ptr @ntfs_attr_ctx_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %41) #13
  %42 = load ptr, ptr @ntfs_index_ctx_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %42) #13
  %43 = icmp eq i32 %40, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %9, %4
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97) #14
  br label %46

46:                                               ; preds = %44, %39, %27
  %47 = phi i32 [ 0, %27 ], [ %40, %39 ], [ -12, %44 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ntfs_mount(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = tail call ptr @mount_bdev(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @ntfs_fill_super) #13
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ntfs_fill_super(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = or i32 %5, 1
  store i32 %6, ptr %4, align 4
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3136, i32 noundef 216) #15
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %13, label %413

13:                                               ; preds = %11
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef %0, ptr noundef nonnull @.str.7) #13
  br label %413

14:                                               ; preds = %3
  store ptr %0, ptr %8, align 8
  %15 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %15, i8 0, i32 24, i1 false)
  %16 = getelementptr inbounds i8, ptr %8, i32 28
  store i16 127, ptr %16, align 4
  %17 = getelementptr inbounds i8, ptr %8, i32 30
  store i16 63, ptr %17, align 2
  %18 = getelementptr inbounds i8, ptr %8, i32 32
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(184) %18, i8 0, i32 184, i1 false)
  %19 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 30
  tail call void @__init_rwsem(ptr noundef %19, ptr noundef nonnull @.str.8, ptr noundef nonnull @ntfs_fill_super.__key) #13
  %20 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 32
  tail call void @__init_rwsem(ptr noundef %20, ptr noundef nonnull @.str.10, ptr noundef nonnull @ntfs_fill_super.__key.9) #13
  %21 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 6, ptr noundef %21) #13
  %22 = tail call fastcc zeroext i1 @parse_options(ptr noundef nonnull %8, ptr noundef %1)
  br i1 %22, label %23, label %412

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.block_device, ptr %25, i32 0, i32 18
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.request_queue, ptr %27, i32 0, i32 32, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = icmp ugt i32 %31, 4096
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = icmp eq i32 %2, 0
  br i1 %34, label %35, label %412

35:                                               ; preds = %33
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %31, i32 noundef 4096) #13
  br label %412

36:                                               ; preds = %29, %23
  %37 = tail call i32 @sb_min_blocksize(ptr noundef %0, i32 noundef 512) #13
  %38 = icmp slt i32 %37, 512
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = icmp eq i32 %2, 0
  br i1 %40, label %41, label %412

41:                                               ; preds = %39
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef %0, ptr noundef nonnull @.str.12) #13
  br label %412

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %44 = load i32, ptr %43, align 16
  %45 = icmp eq i32 %37, %44
  br i1 %45, label %47, label %46, !prof !8

46:                                               ; preds = %42
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2771, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

47:                                               ; preds = %42
  %48 = load ptr, ptr %24, align 4
  %49 = getelementptr inbounds %struct.block_device, ptr %48, i32 0, i32 1
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %52 = load i8, ptr %51, align 4
  %53 = zext i8 %52 to i32
  %54 = add nsw i32 %53, -9
  %55 = zext i32 %54 to i64
  %56 = lshr i64 %50, %55
  %57 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 1
  store i64 %56, ptr %57, align 8
  %58 = icmp eq i64 %56, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = icmp eq i32 %2, 0
  br i1 %60, label %61, label %412

61:                                               ; preds = %59
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef %0, ptr noundef nonnull @.str.13) #13
  br label %412

62:                                               ; preds = %47
  %63 = load ptr, ptr %9, align 4
  %64 = getelementptr inbounds %struct.ntfs_volume, ptr %63, i32 0, i32 1
  %65 = load i64, ptr %64, align 8
  %66 = tail call ptr @__bread_gfp(ptr noundef %48, i64 noundef 0, i32 noundef %37, i32 noundef 8) #13
  %67 = icmp eq ptr %66, null
  br i1 %67, label %75, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.buffer_head, ptr %66, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = icmp ne i32 %2, 0
  %72 = tail call fastcc zeroext i1 @is_boot_sector_ntfs(ptr noundef %0, ptr noundef %70, i1 noundef zeroext %71) #13
  br i1 %72, label %146, label %73

73:                                               ; preds = %68
  br i1 %71, label %78, label %74

74:                                               ; preds = %73
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.read_ntfs_boot_sector, ptr noundef %0, ptr noundef nonnull @.str.61) #13
  br label %78

75:                                               ; preds = %62
  %76 = icmp eq i32 %2, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %75
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.read_ntfs_boot_sector, ptr noundef %0, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.62) #13
  br label %78

78:                                               ; preds = %77, %75, %74, %73
  %79 = load ptr, ptr %9, align 4
  %80 = getelementptr inbounds %struct.ntfs_volume, ptr %79, i32 0, i32 8
  %81 = load i8, ptr %80, align 1
  %82 = and i8 %81, 16
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  br i1 %67, label %86, label %85

85:                                               ; preds = %84
  tail call void @__brelse(ptr noundef nonnull %66) #13
  br label %86

86:                                               ; preds = %85, %84
  %87 = icmp eq i32 %2, 0
  br i1 %87, label %88, label %412

88:                                               ; preds = %86
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.read_ntfs_boot_sector, ptr noundef %0, ptr noundef nonnull @.str.63) #13
  br label %145

89:                                               ; preds = %78
  %90 = add i64 %65, -1
  %91 = load ptr, ptr %24, align 4
  %92 = load i32, ptr %43, align 16
  %93 = tail call ptr @__bread_gfp(ptr noundef %91, i64 noundef %90, i32 noundef %92, i32 noundef 8) #13
  %94 = icmp eq ptr %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.buffer_head, ptr %93, i32 0, i32 5
  %97 = load ptr, ptr %96, align 4
  %98 = icmp ne i32 %2, 0
  %99 = tail call fastcc zeroext i1 @is_boot_sector_ntfs(ptr noundef %0, ptr noundef %97, i1 noundef zeroext %98) #13
  br i1 %99, label %123, label %100

100:                                              ; preds = %95
  tail call void @__brelse(ptr noundef nonnull %93) #13
  br label %104

101:                                              ; preds = %89
  %102 = icmp eq i32 %2, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %101
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.read_ntfs_boot_sector, ptr noundef %0, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.64) #13
  br label %104

104:                                              ; preds = %103, %101, %100
  %105 = lshr i64 %65, 1
  %106 = load ptr, ptr %24, align 4
  %107 = load i32, ptr %43, align 16
  %108 = tail call ptr @__bread_gfp(ptr noundef %106, i64 noundef %105, i32 noundef %107, i32 noundef 8) #13
  %109 = icmp eq ptr %108, null
  br i1 %109, label %118, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.buffer_head, ptr %108, i32 0, i32 5
  %112 = load ptr, ptr %111, align 4
  %113 = icmp ne i32 %2, 0
  %114 = tail call fastcc zeroext i1 @is_boot_sector_ntfs(ptr noundef %0, ptr noundef %112, i1 noundef zeroext %113) #13
  br i1 %114, label %123, label %115

115:                                              ; preds = %110
  br i1 %113, label %117, label %116

116:                                              ; preds = %115
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.read_ntfs_boot_sector, ptr noundef %0, ptr noundef nonnull @.str.65) #13
  br label %117

117:                                              ; preds = %116, %115
  tail call void @__brelse(ptr noundef nonnull %108) #13
  br label %121

118:                                              ; preds = %104
  %119 = icmp eq i32 %2, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %118
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.read_ntfs_boot_sector, ptr noundef %0, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.64) #13
  br label %121

121:                                              ; preds = %120, %118, %117
  br i1 %67, label %143, label %122

122:                                              ; preds = %121
  tail call void @__brelse(ptr noundef nonnull %66) #13
  br label %143

123:                                              ; preds = %110, %95
  %124 = phi ptr [ %93, %95 ], [ %108, %110 ]
  br i1 %67, label %142, label %125

125:                                              ; preds = %123
  %126 = load i32, ptr %4, align 4
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %125
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.read_ntfs_boot_sector, ptr noundef %0, ptr noundef nonnull @.str.66) #13
  %130 = getelementptr inbounds %struct.buffer_head, ptr %66, i32 0, i32 5
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.buffer_head, ptr %124, i32 0, i32 5
  %133 = load ptr, ptr %132, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(512) %131, ptr noundef align 1 dereferenceable(512) %133, i32 512, i1 false) #13
  tail call void @mark_buffer_dirty(ptr noundef nonnull %66) #13
  %134 = tail call i32 @sync_dirty_buffer(ptr noundef nonnull %66) #13
  %135 = load volatile i32, ptr %66, align 4
  %136 = and i32 %135, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %129
  tail call void @__brelse(ptr noundef nonnull %124) #13
  br label %146

139:                                              ; preds = %129
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.read_ntfs_boot_sector, ptr noundef %0, ptr noundef nonnull @.str.67) #13
  br label %141

140:                                              ; preds = %125
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.read_ntfs_boot_sector, ptr noundef %0, ptr noundef nonnull @.str.68) #13
  br label %141

141:                                              ; preds = %140, %139
  tail call void @__brelse(ptr noundef nonnull %66) #13
  br label %142

142:                                              ; preds = %141, %123
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.read_ntfs_boot_sector, ptr noundef %0, ptr noundef nonnull @.str.69) #13
  br label %146

143:                                              ; preds = %122, %121
  %144 = icmp eq i32 %2, 0
  br i1 %144, label %145, label %412

145:                                              ; preds = %143, %88
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef %0, ptr noundef nonnull @.str.14) #13
  br label %412

146:                                              ; preds = %142, %138, %68
  %147 = phi ptr [ %124, %142 ], [ %66, %138 ], [ %66, %68 ]
  %148 = getelementptr inbounds %struct.buffer_head, ptr %147, i32 0, i32 5
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %149, i32 0, i32 2
  %151 = load i16, ptr %150, align 1
  %152 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 9
  store i16 %151, ptr %152, align 2
  %153 = tail call i16 @llvm.cttz.i16(i16 %151, i1 true) #13, !range !10
  %154 = icmp eq i16 %151, 0
  %155 = trunc i16 %153 to i8
  %156 = select i1 %154, i8 -1, i8 %155
  %157 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 10
  store i8 %156, ptr %157, align 4
  %158 = zext i16 %151 to i32
  %159 = load ptr, ptr %8, align 8
  %160 = getelementptr inbounds %struct.super_block, ptr %159, i32 0, i32 3
  %161 = load i32, ptr %160, align 16
  %162 = icmp ugt i32 %161, %158
  br i1 %162, label %163, label %164

163:                                              ; preds = %146
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef %159, ptr noundef nonnull @.str.72, i32 noundef %158, i32 noundef %161) #13
  br label %253

164:                                              ; preds = %146
  %165 = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %149, i32 0, i32 2, i32 1
  %166 = load i8, ptr %165, align 1
  %167 = tail call i8 @llvm.cttz.i8(i8 %166, i1 true) #13, !range !11
  %168 = zext i8 %167 to i32
  %169 = icmp eq i8 %166, 0
  %170 = select i1 %169, i32 -1, i32 %168
  %171 = shl nuw nsw i32 %158, %170
  %172 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 11
  store i32 %171, ptr %172, align 8
  %173 = add i32 %171, -1
  %174 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 12
  store i32 %173, ptr %174, align 4
  %175 = tail call i32 @llvm.cttz.i32(i32 %171, i1 true) #13, !range !12
  %176 = icmp eq i32 %171, 0
  %177 = trunc i32 %175 to i8
  %178 = select i1 %176, i8 -1, i8 %177
  %179 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 13
  store i8 %178, ptr %179, align 8
  %180 = icmp ult i32 %171, %158
  br i1 %180, label %181, label %182

181:                                              ; preds = %164
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef %159, ptr noundef nonnull @.str.73, i32 noundef %171, i32 noundef %158) #13
  br label %253

182:                                              ; preds = %164
  %183 = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %149, i32 0, i32 7
  %184 = load i8, ptr %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp sgt i8 %184, 0
  %187 = tail call i32 @llvm.cttz.i32(i32 %185, i1 true) #13, !range !12
  %188 = shl i32 %171, %187
  %189 = sub nsw i32 0, %185
  %190 = shl nuw i32 1, %189
  %191 = select i1 %186, i32 %188, i32 %190
  %192 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 14
  store i32 %191, ptr %192, align 4
  %193 = add i32 %191, -1
  %194 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 15
  store i32 %193, ptr %194, align 8
  %195 = tail call i32 @llvm.cttz.i32(i32 %191, i1 true) #13, !range !12
  %196 = icmp eq i32 %191, 0
  %197 = trunc i32 %195 to i8
  %198 = select i1 %196, i8 -1, i8 %197
  %199 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 16
  store i8 %198, ptr %199, align 4
  %200 = icmp ugt i32 %191, 4096
  br i1 %200, label %201, label %202

201:                                              ; preds = %182
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef %159, ptr noundef nonnull @.str.74, i32 noundef %191, i32 noundef 4096) #13
  br label %253

202:                                              ; preds = %182
  %203 = icmp ult i32 %191, %158
  br i1 %203, label %204, label %205

204:                                              ; preds = %202
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef %159, ptr noundef nonnull @.str.75, i32 noundef %191, i32 noundef %158) #13
  br label %253

205:                                              ; preds = %202
  %206 = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %149, i32 0, i32 9
  %207 = load i8, ptr %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp sgt i8 %207, 0
  %210 = tail call i32 @llvm.cttz.i32(i32 %208, i1 true) #13, !range !12
  %211 = shl i32 %171, %210
  %212 = sub nsw i32 0, %208
  %213 = shl nuw i32 1, %212
  %214 = select i1 %209, i32 %211, i32 %213
  %215 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 17
  store i32 %214, ptr %215, align 8
  %216 = add i32 %214, -1
  %217 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 18
  store i32 %216, ptr %217, align 4
  %218 = tail call i32 @llvm.cttz.i32(i32 %214, i1 true) #13, !range !12
  %219 = icmp eq i32 %214, 0
  %220 = trunc i32 %218 to i8
  %221 = select i1 %219, i8 -1, i8 %220
  %222 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 19
  store i8 %221, ptr %222, align 8
  %223 = icmp ult i32 %214, %158
  br i1 %223, label %224, label %225

224:                                              ; preds = %205
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef %159, ptr noundef nonnull @.str.76, i32 noundef %214, i32 noundef %158) #13
  br label %253

225:                                              ; preds = %205
  %226 = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %149, i32 0, i32 4
  %227 = load i64, ptr %226, align 1
  %228 = zext i32 %170 to i64
  %229 = ashr i64 %227, %228
  %230 = icmp ugt i64 %229, 4294967295
  br i1 %230, label %231, label %232

231:                                              ; preds = %225
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef %159, ptr noundef nonnull @.str.77) #13
  br label %253

232:                                              ; preds = %225
  %233 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 20
  store i64 %229, ptr %233, align 8
  %234 = zext i8 %178 to i64
  %235 = shl i64 %229, %234
  %236 = icmp ugt i64 %235, 2199023255551
  br i1 %236, label %237, label %242

237:                                              ; preds = %232
  %238 = zext i8 %178 to i32
  %239 = sub nsw i32 40, %238
  %240 = zext i32 %239 to i64
  %241 = lshr i64 %229, %240
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef %159, ptr noundef nonnull @.str.78, i64 noundef %241) #13
  br label %253

242:                                              ; preds = %232
  %243 = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %149, i32 0, i32 5
  %244 = load i64, ptr %243, align 1
  %245 = icmp slt i64 %244, %229
  br i1 %245, label %247, label %246

246:                                              ; preds = %242
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef %159, ptr noundef nonnull @.str.79, i64 noundef %244, i64 noundef %244) #13
  br label %253

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 21
  store i64 %244, ptr %248, align 8
  %249 = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %149, i32 0, i32 6
  %250 = load i64, ptr %249, align 1
  %251 = icmp slt i64 %250, %229
  br i1 %251, label %256, label %252

252:                                              ; preds = %247
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_ntfs_boot_sector, ptr noundef %159, ptr noundef nonnull @.str.80, i64 noundef %250, i64 noundef %250) #13
  br label %253

253:                                              ; preds = %252, %246, %237, %231, %224, %204, %201, %181, %163
  tail call void @__brelse(ptr noundef nonnull %147) #13
  %254 = icmp eq i32 %2, 0
  br i1 %254, label %255, label %412

255:                                              ; preds = %253
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef %0, ptr noundef nonnull @.str.15) #13
  br label %412

256:                                              ; preds = %247
  %257 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 22
  store i64 %250, ptr %257, align 8
  %258 = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %149, i32 0, i32 11
  %259 = load i64, ptr %258, align 1
  %260 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 23
  store i64 %259, ptr %260, align 8
  tail call void @__brelse(ptr noundef nonnull %147) #13
  %261 = load i16, ptr %152, align 2
  %262 = zext i16 %261 to i32
  %263 = icmp ult i32 %37, %262
  br i1 %263, label %264, label %285

264:                                              ; preds = %256
  %265 = tail call i32 @sb_set_blocksize(ptr noundef %0, i32 noundef %262) #13
  %266 = load i16, ptr %152, align 2
  %267 = zext i16 %266 to i32
  %268 = icmp eq i32 %265, %267
  br i1 %268, label %272, label %269

269:                                              ; preds = %264
  %270 = icmp eq i32 %2, 0
  br i1 %270, label %271, label %412

271:                                              ; preds = %269
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %267) #13
  br label %412

272:                                              ; preds = %264
  %273 = load i32, ptr %43, align 16
  %274 = icmp eq i32 %265, %273
  br i1 %274, label %276, label %275, !prof !8

275:                                              ; preds = %272
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2817, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

276:                                              ; preds = %272
  %277 = load ptr, ptr %24, align 4
  %278 = getelementptr inbounds %struct.block_device, ptr %277, i32 0, i32 1
  %279 = load i64, ptr %278, align 8
  %280 = load i8, ptr %51, align 4
  %281 = zext i8 %280 to i32
  %282 = add nsw i32 %281, -9
  %283 = zext i32 %282 to i64
  %284 = lshr i64 %279, %283
  store i64 %284, ptr %57, align 8
  br label %285

285:                                              ; preds = %276, %256
  %286 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 12
  store i32 1397118030, ptr %286, align 4
  %287 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 4
  store i64 17592186040320, ptr %287, align 8
  %288 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 28
  store i32 100, ptr %288, align 32
  %289 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  store ptr @ntfs_sops, ptr %289, align 4
  %290 = tail call ptr @new_inode(ptr noundef %0) #13
  %291 = icmp eq ptr %290, null
  br i1 %291, label %292, label %295

292:                                              ; preds = %285
  %293 = icmp eq i32 %2, 0
  br i1 %293, label %294, label %412

294:                                              ; preds = %292
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef %0, ptr noundef nonnull @.str.17) #13
  br label %412

295:                                              ; preds = %285
  %296 = getelementptr inbounds %struct.inode, ptr %290, i32 0, i32 10
  store i32 0, ptr %296, align 4
  tail call void @__insert_inode_hash(ptr noundef nonnull %290, i32 noundef 0) #13
  %297 = tail call i32 @ntfs_read_inode_mount(ptr noundef nonnull %290) #13
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %295
  %300 = icmp eq i32 %2, 0
  br i1 %300, label %301, label %404

301:                                              ; preds = %299
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef %0, ptr noundef nonnull @.str.17) #13
  br label %404

302:                                              ; preds = %295
  tail call void @mutex_lock(ptr noundef nonnull @ntfs_lock) #13
  %303 = load i32, ptr %172, align 8
  %304 = icmp ult i32 %303, 4097
  br i1 %304, label %305, label %315

305:                                              ; preds = %302
  %306 = load i32, ptr @ntfs_nr_compression_users, align 4
  %307 = add i32 %306, 1
  store i32 %307, ptr @ntfs_nr_compression_users, align 4
  %308 = icmp eq i32 %306, 0
  br i1 %308, label %309, label %315

309:                                              ; preds = %305
  %310 = tail call i32 @allocate_compression_buffers() #13
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %315, label %312

312:                                              ; preds = %309
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef null, ptr noundef nonnull @.str.18) #13
  %313 = load i32, ptr @ntfs_nr_compression_users, align 4
  %314 = add i32 %313, -1
  store i32 %314, ptr @ntfs_nr_compression_users, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #13
  br label %404

315:                                              ; preds = %309, %305, %302
  %316 = load ptr, ptr @default_upcase, align 4
  %317 = icmp eq ptr %316, null
  br i1 %317, label %318, label %320

318:                                              ; preds = %315
  %319 = tail call ptr @generate_default_upcase() #13
  store ptr %319, ptr @default_upcase, align 4
  br label %320

320:                                              ; preds = %318, %315
  %321 = load i32, ptr @ntfs_nr_upcase_users, align 4
  %322 = add i32 %321, 1
  store i32 %322, ptr @ntfs_nr_upcase_users, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #13
  %323 = tail call fastcc zeroext i1 @load_system_files(ptr noundef nonnull %8)
  br i1 %323, label %325, label %324

324:                                              ; preds = %320
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef %0, ptr noundef nonnull @.str.19) #13
  br label %387

325:                                              ; preds = %320
  %326 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 37
  %327 = load ptr, ptr %326, align 4
  tail call void @ihold(ptr noundef %327) #13
  %328 = load ptr, ptr %326, align 4
  %329 = tail call ptr @d_make_root(ptr noundef %328) #13
  %330 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  store ptr %329, ptr %330, align 64
  %331 = icmp eq ptr %329, null
  br i1 %331, label %342, label %332

332:                                              ; preds = %325
  tail call void @mutex_lock(ptr noundef nonnull @ntfs_lock) #13
  %333 = load i32, ptr @ntfs_nr_upcase_users, align 4
  %334 = add i32 %333, -1
  store i32 %334, ptr @ntfs_nr_upcase_users, align 4
  %335 = icmp eq i32 %334, 0
  %336 = load ptr, ptr @default_upcase, align 4
  %337 = icmp ne ptr %336, null
  %338 = select i1 %335, i1 %337, i1 false
  br i1 %338, label %339, label %340

339:                                              ; preds = %332
  tail call void @kvfree(ptr noundef nonnull %336) #13
  store ptr null, ptr @default_upcase, align 4
  br label %340

340:                                              ; preds = %339, %332
  tail call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #13
  %341 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 9
  store ptr @ntfs_export_ops, ptr %341, align 16
  br label %413

342:                                              ; preds = %325
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_fill_super, ptr noundef %0, ptr noundef nonnull @.str.20) #13
  %343 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 33
  %344 = load ptr, ptr %343, align 4
  tail call void @iput(ptr noundef %344) #13
  store ptr null, ptr %343, align 4
  %345 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 35
  %346 = load i8, ptr %345, align 2
  %347 = icmp ugt i8 %346, 2
  br i1 %347, label %348, label %358

348:                                              ; preds = %342
  %349 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 39
  %350 = load ptr, ptr %349, align 4
  %351 = icmp eq ptr %350, null
  br i1 %351, label %353, label %352

352:                                              ; preds = %348
  tail call void @iput(ptr noundef nonnull %350) #13
  store ptr null, ptr %349, align 4
  br label %353

353:                                              ; preds = %352, %348
  %354 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 38
  %355 = load ptr, ptr %354, align 8
  %356 = icmp eq ptr %355, null
  br i1 %356, label %358, label %357

357:                                              ; preds = %353
  tail call void @iput(ptr noundef nonnull %355) #13
  store ptr null, ptr %354, align 8
  br label %358

358:                                              ; preds = %357, %353, %342
  %359 = load ptr, ptr %326, align 4
  tail call void @iput(ptr noundef %359) #13
  store ptr null, ptr %326, align 4
  %360 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 31
  %361 = load ptr, ptr %360, align 8
  tail call void @iput(ptr noundef %361) #13
  store ptr null, ptr %360, align 8
  %362 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 29
  %363 = load ptr, ptr %362, align 4
  tail call void @iput(ptr noundef %363) #13
  store ptr null, ptr %362, align 4
  %364 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 26
  store i32 0, ptr %364, align 8
  %365 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 27
  %366 = load ptr, ptr %365, align 4
  %367 = icmp eq ptr %366, null
  br i1 %367, label %369, label %368

368:                                              ; preds = %358
  tail call void @kvfree(ptr noundef nonnull %366) #13
  store ptr null, ptr %365, align 4
  br label %369

369:                                              ; preds = %368, %358
  %370 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 24
  store i32 0, ptr %370, align 8
  tail call void @mutex_lock(ptr noundef nonnull @ntfs_lock) #13
  %371 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 25
  %372 = load ptr, ptr %371, align 4
  %373 = load ptr, ptr @default_upcase, align 4
  %374 = icmp eq ptr %372, %373
  br i1 %374, label %375, label %378

375:                                              ; preds = %369
  %376 = load i32, ptr @ntfs_nr_upcase_users, align 4
  %377 = add i32 %376, -1
  store i32 %377, ptr @ntfs_nr_upcase_users, align 4
  store ptr null, ptr %371, align 4
  br label %378

378:                                              ; preds = %375, %369
  tail call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #13
  %379 = load ptr, ptr %371, align 4
  %380 = icmp eq ptr %379, null
  br i1 %380, label %382, label %381

381:                                              ; preds = %378
  tail call void @kvfree(ptr noundef nonnull %379) #13
  store ptr null, ptr %371, align 4
  br label %382

382:                                              ; preds = %381, %378
  %383 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 40
  %384 = load ptr, ptr %383, align 8
  %385 = icmp eq ptr %384, null
  br i1 %385, label %387, label %386

386:                                              ; preds = %382
  tail call void @unload_nls(ptr noundef nonnull %384) #13
  store ptr null, ptr %383, align 8
  br label %387

387:                                              ; preds = %386, %382, %324
  tail call void @mutex_lock(ptr noundef nonnull @ntfs_lock) #13
  %388 = load i32, ptr @ntfs_nr_upcase_users, align 4
  %389 = add i32 %388, -1
  store i32 %389, ptr @ntfs_nr_upcase_users, align 4
  %390 = icmp eq i32 %389, 0
  %391 = load ptr, ptr @default_upcase, align 4
  %392 = icmp ne ptr %391, null
  %393 = select i1 %390, i1 %392, i1 false
  br i1 %393, label %394, label %395

394:                                              ; preds = %387
  tail call void @kvfree(ptr noundef nonnull %391) #13
  store ptr null, ptr @default_upcase, align 4
  br label %395

395:                                              ; preds = %394, %387
  %396 = load i32, ptr %172, align 8
  %397 = icmp ult i32 %396, 4097
  br i1 %397, label %398, label %403

398:                                              ; preds = %395
  %399 = load i32, ptr @ntfs_nr_compression_users, align 4
  %400 = add i32 %399, -1
  store i32 %400, ptr @ntfs_nr_compression_users, align 4
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %403

402:                                              ; preds = %398
  tail call void @free_compression_buffers() #13
  br label %403

403:                                              ; preds = %402, %398, %395
  tail call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #13
  br label %404

404:                                              ; preds = %403, %312, %301, %299
  tail call void @iput(ptr noundef nonnull %290) #13
  %405 = getelementptr inbounds %struct.ntfs_volume, ptr %8, i32 0, i32 28
  %406 = load ptr, ptr %405, align 8
  %407 = icmp eq ptr %406, null
  %408 = icmp eq ptr %406, %290
  %409 = select i1 %407, i1 true, i1 %408
  br i1 %409, label %411, label %410

410:                                              ; preds = %404
  tail call void @iput(ptr noundef nonnull %406) #13
  br label %411

411:                                              ; preds = %410, %404
  store ptr null, ptr %405, align 8
  br label %412

412:                                              ; preds = %411, %294, %292, %271, %269, %255, %253, %145, %143, %86, %61, %59, %41, %39, %35, %33, %14
  store ptr null, ptr %9, align 4
  tail call void @kfree(ptr noundef nonnull %8) #13
  br label %413

413:                                              ; preds = %412, %340, %13, %11
  %414 = phi i32 [ -22, %412 ], [ 0, %340 ], [ -12, %13 ], [ -12, %11 ]
  ret i32 %414
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @parse_options(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store ptr %1, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4, !annotation !14
  %9 = icmp eq ptr %1, null
  br i1 %9, label %295, label %10

10:                                               ; preds = %2
  %11 = load i8, ptr %1, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %295, label %13

13:                                               ; preds = %10
  %14 = call ptr @strsep(ptr noundef nonnull %3, ptr noundef nonnull @.str.22) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %295, label %16

16:                                               ; preds = %258, %13
  %17 = phi ptr [ %271, %258 ], [ %14, %13 ]
  %18 = phi ptr [ %270, %258 ], [ null, %13 ]
  %19 = phi i32 [ %269, %258 ], [ -1, %13 ]
  %20 = phi i32 [ %268, %258 ], [ -1, %13 ]
  %21 = phi i32 [ %267, %258 ], [ -1, %13 ]
  %22 = phi i32 [ %266, %258 ], [ -1, %13 ]
  %23 = phi i32 [ %265, %258 ], [ -1, %13 ]
  %24 = phi i16 [ %264, %258 ], [ -1, %13 ]
  %25 = phi i16 [ %263, %258 ], [ -1, %13 ]
  %26 = phi i32 [ %262, %258 ], [ -1, %13 ]
  %27 = phi i32 [ %261, %258 ], [ -1, %13 ]
  %28 = phi i32 [ %260, %258 ], [ 0, %13 ]
  %29 = phi i32 [ %259, %258 ], [ 0, %13 ]
  %30 = call ptr @strchr(ptr noundef nonnull %17, i32 noundef 61)
  store ptr %30, ptr %4, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %16
  %33 = getelementptr i8, ptr %30, i32 1
  store ptr %33, ptr %4, align 4
  store i8 0, ptr %30, align 1
  br label %34

34:                                               ; preds = %32, %16
  %35 = call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(4) @.str.23)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load ptr, ptr %4, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %403, label %40

40:                                               ; preds = %37
  %41 = load i8, ptr %38, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %403, label %43

43:                                               ; preds = %40
  %44 = call i32 @simple_strtoul(ptr noundef nonnull %38, ptr noundef nonnull %4, i32 noundef 0) #13
  %45 = load ptr, ptr %4, align 4
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 0
  %48 = icmp ne i32 %44, -1
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %258, label %407

50:                                               ; preds = %34
  %51 = call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(4) @.str.24)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load ptr, ptr %4, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %403, label %56

56:                                               ; preds = %53
  %57 = load i8, ptr %54, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %403, label %59

59:                                               ; preds = %56
  %60 = call i32 @simple_strtoul(ptr noundef nonnull %54, ptr noundef nonnull %4, i32 noundef 0) #13
  %61 = load ptr, ptr %4, align 4
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 0
  %64 = icmp ne i32 %60, -1
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %258, label %407

66:                                               ; preds = %50
  %67 = call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(6) @.str.25)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load ptr, ptr %4, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %403, label %72

72:                                               ; preds = %69
  %73 = load i8, ptr %70, align 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %403, label %75

75:                                               ; preds = %72
  %76 = call i32 @simple_strtoul(ptr noundef nonnull %70, ptr noundef nonnull %4, i32 noundef 8) #13
  %77 = trunc i32 %76 to i16
  %78 = load ptr, ptr %4, align 4
  %79 = load i8, ptr %78, align 1
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %258, label %407

81:                                               ; preds = %66
  %82 = call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(6) @.str.26)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load ptr, ptr %4, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %403, label %87

87:                                               ; preds = %84
  %88 = load i8, ptr %85, align 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %403, label %90

90:                                               ; preds = %87
  %91 = call i32 @simple_strtoul(ptr noundef nonnull %85, ptr noundef nonnull %4, i32 noundef 8) #13
  %92 = trunc i32 %91 to i16
  %93 = load ptr, ptr %4, align 4
  %94 = load i8, ptr %93, align 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %258, label %407

96:                                               ; preds = %81
  %97 = call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(6) @.str.27)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %96
  %100 = load ptr, ptr %4, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %403, label %102

102:                                              ; preds = %99
  %103 = load i8, ptr %100, align 1
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %403, label %105

105:                                              ; preds = %102
  %106 = call i32 @simple_strtoul(ptr noundef nonnull %100, ptr noundef nonnull %4, i32 noundef 8) #13
  %107 = trunc i32 %106 to i16
  %108 = load ptr, ptr %4, align 4
  %109 = load i8, ptr %108, align 1
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %258, label %407

111:                                              ; preds = %96
  %112 = call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(20) @.str.28)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %111
  %115 = load ptr, ptr %4, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %403, label %117

117:                                              ; preds = %114
  %118 = load i8, ptr %115, align 1
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %403, label %120

120:                                              ; preds = %117
  %121 = call i32 @simple_strtoul(ptr noundef nonnull %115, ptr noundef nonnull %4, i32 noundef 0) #13
  %122 = load ptr, ptr %4, align 4
  %123 = load i8, ptr %122, align 1
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %258, label %407

125:                                              ; preds = %111
  %126 = call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(7) @.str.29)
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %125
  %129 = load ptr, ptr %4, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %258, label %131

131:                                              ; preds = %128
  %132 = load i8, ptr %129, align 1
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %258, label %134

134:                                              ; preds = %131
  %135 = call i32 @simple_strtoul(ptr noundef nonnull %129, ptr noundef nonnull %4, i32 noundef 0) #13
  %136 = load ptr, ptr %4, align 4
  %137 = load i8, ptr %136, align 1
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %258, label %407

139:                                              ; preds = %125
  %140 = call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(15) @.str.30)
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  store i8 0, ptr %5, align 1, !annotation !14
  %143 = load ptr, ptr %4, align 4
  %144 = call fastcc i32 @simple_getbool(ptr noundef %143, ptr noundef nonnull %5)
  %145 = icmp eq i32 %144, 0
  %146 = load i8, ptr %5, align 1
  %147 = zext i8 %146 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  br i1 %145, label %405, label %258

148:                                              ; preds = %139
  %149 = call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(15) @.str.31)
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  store i8 0, ptr %6, align 1, !annotation !14
  %152 = load ptr, ptr %4, align 4
  %153 = call fastcc i32 @simple_getbool(ptr noundef %152, ptr noundef nonnull %6)
  %154 = icmp eq i32 %153, 0
  %155 = load i8, ptr %6, align 1
  %156 = zext i8 %155 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  br i1 %154, label %405, label %258

157:                                              ; preds = %148
  %158 = call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(15) @.str.32)
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #13
  store i8 0, ptr %7, align 1, !annotation !14
  %161 = load ptr, ptr %4, align 4
  %162 = call fastcc i32 @simple_getbool(ptr noundef %161, ptr noundef nonnull %7)
  %163 = icmp eq i32 %162, 0
  %164 = load i8, ptr %7, align 1
  %165 = zext i8 %164 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  br i1 %163, label %405, label %258

166:                                              ; preds = %157
  %167 = call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(7) @.str.33)
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %197

169:                                              ; preds = %166
  %170 = load ptr, ptr %4, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %403, label %172

172:                                              ; preds = %169
  %173 = load i8, ptr %170, align 1
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %403, label %175

175:                                              ; preds = %172
  %176 = icmp eq i32 %22, -1
  %177 = select i1 %176, i32 0, i32 %22
  %178 = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str, ptr noundef nonnull %170)
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %189, label %180

180:                                              ; preds = %175
  %181 = call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.1, ptr noundef nonnull %170)
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %189, label %183

183:                                              ; preds = %180
  %184 = call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.2, ptr noundef nonnull %170)
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %183
  %187 = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.3, ptr noundef nonnull %170)
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %407

189:                                              ; preds = %186, %183, %180, %175
  %190 = phi ptr [ @.str, %175 ], [ @.str.1, %180 ], [ @.str.2, %183 ], [ @.str.3, %186 ]
  %191 = phi i32 [ 0, %175 ], [ 1, %180 ], [ 2, %183 ], [ 3, %186 ]
  %192 = getelementptr [5 x %struct.option_t], ptr @on_errors_arr, i32 0, i32 %191
  %193 = load i32, ptr %192, align 4
  %194 = or i32 %193, %177
  %195 = load i8, ptr %190, align 1
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %407, label %258

197:                                              ; preds = %166
  %198 = call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(6) @.str.34)
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %197
  %201 = call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(12) @.str.35)
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %200, %197
  %204 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.parse_options, ptr noundef %204, ptr noundef nonnull @.str.36, ptr noundef nonnull %17) #13
  br label %258

205:                                              ; preds = %200
  %206 = call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(4) @.str.37)
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %205
  %209 = call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(10) @.str.38)
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %234

211:                                              ; preds = %208, %205
  %212 = call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(10) @.str.38)
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %211
  %215 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.parse_options, ptr noundef %215, ptr noundef nonnull @.str.39) #13
  br label %216

216:                                              ; preds = %214, %211
  %217 = load ptr, ptr %4, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %403, label %219

219:                                              ; preds = %216
  %220 = load i8, ptr %217, align 1
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %403, label %222

222:                                              ; preds = %251, %219
  %223 = phi ptr [ @.str.21, %251 ], [ %217, %219 ]
  %224 = call ptr @load_nls(ptr noundef nonnull %223) #13
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %233

226:                                              ; preds = %222
  %227 = icmp eq ptr %18, null
  %228 = load ptr, ptr %0, align 8
  %229 = load ptr, ptr %4, align 4
  br i1 %227, label %230, label %231

230:                                              ; preds = %226
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_options, ptr noundef %228, ptr noundef nonnull @.str.40, ptr noundef %229) #13
  br label %410

231:                                              ; preds = %226
  %232 = load ptr, ptr %18, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_options, ptr noundef %228, ptr noundef nonnull @.str.41, ptr noundef %229, ptr noundef %232) #13
  br label %258

233:                                              ; preds = %222
  call void @unload_nls(ptr noundef %18) #13
  br label %258

234:                                              ; preds = %208
  %235 = call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(5) @.str.21)
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %253

237:                                              ; preds = %234
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #13
  store i8 0, ptr %8, align 1
  %238 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.parse_options, ptr noundef %238, ptr noundef nonnull @.str.42) #13
  %239 = load ptr, ptr %4, align 4
  %240 = icmp eq ptr %239, null
  br i1 %240, label %251, label %241

241:                                              ; preds = %237
  %242 = load i8, ptr %239, align 1
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %251, label %244

244:                                              ; preds = %241
  %245 = call fastcc i32 @simple_getbool(ptr noundef nonnull %239, ptr noundef nonnull %8)
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %252, label %247

247:                                              ; preds = %244
  %248 = load i8, ptr %8, align 1
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %247
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #13
  br label %258

251:                                              ; preds = %247, %241, %237
  store ptr @.str.21, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #13
  br label %222

252:                                              ; preds = %244
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #13
  br label %405

253:                                              ; preds = %234
  %254 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_options, ptr noundef %254, ptr noundef nonnull @.str.43, ptr noundef nonnull %17) #13
  %255 = icmp eq i32 %29, 2147483647
  %256 = add i32 %29, 1
  %257 = select i1 %255, i32 2147483647, i32 %256
  br label %258

258:                                              ; preds = %253, %250, %233, %231, %203, %189, %160, %151, %142, %134, %131, %128, %120, %105, %90, %75, %59, %43
  %259 = phi i32 [ %29, %233 ], [ %29, %231 ], [ %29, %203 ], [ %29, %160 ], [ %29, %151 ], [ %29, %142 ], [ %29, %134 ], [ %29, %120 ], [ %29, %105 ], [ %29, %90 ], [ %29, %75 ], [ %29, %131 ], [ %29, %128 ], [ %257, %253 ], [ %29, %189 ], [ %29, %250 ], [ %29, %43 ], [ %29, %59 ]
  %260 = phi i32 [ %28, %233 ], [ %28, %231 ], [ %28, %203 ], [ %28, %160 ], [ %28, %151 ], [ %28, %142 ], [ %135, %134 ], [ %28, %120 ], [ %28, %105 ], [ %28, %90 ], [ %28, %75 ], [ 1, %131 ], [ 1, %128 ], [ %28, %253 ], [ %28, %189 ], [ %28, %250 ], [ %28, %43 ], [ %28, %59 ]
  %261 = phi i32 [ %27, %233 ], [ %27, %231 ], [ %27, %203 ], [ %27, %160 ], [ %27, %151 ], [ %27, %142 ], [ %27, %134 ], [ %27, %120 ], [ %27, %105 ], [ %27, %90 ], [ %27, %75 ], [ %27, %131 ], [ %27, %128 ], [ %27, %253 ], [ %27, %189 ], [ %27, %250 ], [ %44, %43 ], [ %27, %59 ]
  %262 = phi i32 [ %26, %233 ], [ %26, %231 ], [ %26, %203 ], [ %26, %160 ], [ %26, %151 ], [ %26, %142 ], [ %26, %134 ], [ %26, %120 ], [ %26, %105 ], [ %26, %90 ], [ %26, %75 ], [ %26, %131 ], [ %26, %128 ], [ %26, %253 ], [ %26, %189 ], [ %26, %250 ], [ %26, %43 ], [ %60, %59 ]
  %263 = phi i16 [ %25, %233 ], [ %25, %231 ], [ %25, %203 ], [ %25, %160 ], [ %25, %151 ], [ %25, %142 ], [ %25, %134 ], [ %25, %120 ], [ %25, %105 ], [ %92, %90 ], [ %77, %75 ], [ %25, %131 ], [ %25, %128 ], [ %25, %253 ], [ %25, %189 ], [ %25, %250 ], [ %25, %43 ], [ %25, %59 ]
  %264 = phi i16 [ %24, %233 ], [ %24, %231 ], [ %24, %203 ], [ %24, %160 ], [ %24, %151 ], [ %24, %142 ], [ %24, %134 ], [ %24, %120 ], [ %107, %105 ], [ %24, %90 ], [ %77, %75 ], [ %24, %131 ], [ %24, %128 ], [ %24, %253 ], [ %24, %189 ], [ %24, %250 ], [ %24, %43 ], [ %24, %59 ]
  %265 = phi i32 [ %23, %233 ], [ %23, %231 ], [ %23, %203 ], [ %23, %160 ], [ %23, %151 ], [ %23, %142 ], [ %23, %134 ], [ %121, %120 ], [ %23, %105 ], [ %23, %90 ], [ %23, %75 ], [ %23, %131 ], [ %23, %128 ], [ %23, %253 ], [ %23, %189 ], [ %23, %250 ], [ %23, %43 ], [ %23, %59 ]
  %266 = phi i32 [ %22, %233 ], [ %22, %231 ], [ %22, %203 ], [ %22, %160 ], [ %22, %151 ], [ %22, %142 ], [ %22, %134 ], [ %22, %120 ], [ %22, %105 ], [ %22, %90 ], [ %22, %75 ], [ %22, %131 ], [ %22, %128 ], [ %22, %253 ], [ %194, %189 ], [ %22, %250 ], [ %22, %43 ], [ %22, %59 ]
  %267 = phi i32 [ %21, %233 ], [ %21, %231 ], [ %21, %203 ], [ %21, %160 ], [ %21, %151 ], [ %147, %142 ], [ %21, %134 ], [ %21, %120 ], [ %21, %105 ], [ %21, %90 ], [ %21, %75 ], [ %21, %131 ], [ %21, %128 ], [ %21, %253 ], [ %21, %189 ], [ %21, %250 ], [ %21, %43 ], [ %21, %59 ]
  %268 = phi i32 [ %20, %233 ], [ %20, %231 ], [ %20, %203 ], [ %20, %160 ], [ %156, %151 ], [ %20, %142 ], [ %20, %134 ], [ %20, %120 ], [ %20, %105 ], [ %20, %90 ], [ %20, %75 ], [ %20, %131 ], [ %20, %128 ], [ %20, %253 ], [ %20, %189 ], [ %20, %250 ], [ %20, %43 ], [ %20, %59 ]
  %269 = phi i32 [ %19, %233 ], [ %19, %231 ], [ %19, %203 ], [ %165, %160 ], [ %19, %151 ], [ %19, %142 ], [ %19, %134 ], [ %19, %120 ], [ %19, %105 ], [ %19, %90 ], [ %19, %75 ], [ %19, %131 ], [ %19, %128 ], [ %19, %253 ], [ %19, %189 ], [ %19, %250 ], [ %19, %43 ], [ %19, %59 ]
  %270 = phi ptr [ %224, %233 ], [ %18, %231 ], [ %18, %203 ], [ %18, %160 ], [ %18, %151 ], [ %18, %142 ], [ %18, %134 ], [ %18, %120 ], [ %18, %105 ], [ %18, %90 ], [ %18, %75 ], [ %18, %131 ], [ %18, %128 ], [ %18, %253 ], [ %18, %189 ], [ %18, %250 ], [ %18, %43 ], [ %18, %59 ]
  %271 = call ptr @strsep(ptr noundef nonnull %3, ptr noundef nonnull @.str.22) #13
  %272 = icmp eq ptr %271, null
  br i1 %272, label %273, label %16

273:                                              ; preds = %258
  %274 = icmp eq i32 %259, 0
  %275 = icmp ne i32 %260, 0
  %276 = select i1 %274, i1 true, i1 %275
  br i1 %276, label %277, label %410

277:                                              ; preds = %273
  br i1 %275, label %278, label %280

278:                                              ; preds = %277
  %279 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.parse_options, ptr noundef %279, ptr noundef nonnull @.str.44) #13
  br label %280

280:                                              ; preds = %278, %277
  %281 = icmp eq i32 %266, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %280
  %283 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_options, ptr noundef %283, ptr noundef nonnull @.str.45) #13
  br label %410

284:                                              ; preds = %280
  %285 = icmp eq ptr %270, null
  br i1 %285, label %295, label %286

286:                                              ; preds = %284
  %287 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 40
  %288 = load ptr, ptr %287, align 8
  %289 = icmp eq ptr %288, null
  %290 = icmp eq ptr %288, %270
  %291 = select i1 %289, i1 true, i1 %290
  br i1 %291, label %294, label %292

292:                                              ; preds = %286
  %293 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_options, ptr noundef %293, ptr noundef nonnull @.str.46) #13
  br label %410

294:                                              ; preds = %286
  store ptr %270, ptr %287, align 8
  br label %313

295:                                              ; preds = %284, %13, %10, %2
  %296 = phi i32 [ %261, %284 ], [ -1, %2 ], [ -1, %10 ], [ -1, %13 ]
  %297 = phi i32 [ %262, %284 ], [ -1, %2 ], [ -1, %10 ], [ -1, %13 ]
  %298 = phi i16 [ %263, %284 ], [ -1, %2 ], [ -1, %10 ], [ -1, %13 ]
  %299 = phi i16 [ %264, %284 ], [ -1, %2 ], [ -1, %10 ], [ -1, %13 ]
  %300 = phi i32 [ %265, %284 ], [ -1, %2 ], [ -1, %10 ], [ -1, %13 ]
  %301 = phi i32 [ %266, %284 ], [ -1, %2 ], [ -1, %10 ], [ -1, %13 ]
  %302 = phi i32 [ %267, %284 ], [ -1, %2 ], [ -1, %10 ], [ -1, %13 ]
  %303 = phi i32 [ %268, %284 ], [ -1, %2 ], [ -1, %10 ], [ -1, %13 ]
  %304 = phi i32 [ %269, %284 ], [ -1, %2 ], [ -1, %10 ], [ -1, %13 ]
  %305 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 40
  %306 = load ptr, ptr %305, align 8
  %307 = icmp eq ptr %306, null
  br i1 %307, label %308, label %313

308:                                              ; preds = %295
  %309 = call ptr @load_nls_default() #13
  store ptr %309, ptr %305, align 8
  %310 = icmp eq ptr %309, null
  br i1 %310, label %311, label %313

311:                                              ; preds = %308
  %312 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_options, ptr noundef %312, ptr noundef nonnull @.str.47) #13
  br label %410

313:                                              ; preds = %308, %295, %294
  %314 = phi i32 [ %296, %295 ], [ %296, %308 ], [ %261, %294 ]
  %315 = phi i32 [ %297, %295 ], [ %297, %308 ], [ %262, %294 ]
  %316 = phi i16 [ %298, %295 ], [ %298, %308 ], [ %263, %294 ]
  %317 = phi i16 [ %299, %295 ], [ %299, %308 ], [ %264, %294 ]
  %318 = phi i32 [ %300, %295 ], [ %300, %308 ], [ %265, %294 ]
  %319 = phi i32 [ %301, %295 ], [ %301, %308 ], [ %266, %294 ]
  %320 = phi i32 [ %302, %295 ], [ %302, %308 ], [ %267, %294 ]
  %321 = phi i32 [ %303, %295 ], [ %303, %308 ], [ %268, %294 ]
  %322 = phi i32 [ %304, %295 ], [ %304, %308 ], [ %269, %294 ]
  %323 = icmp eq i32 %318, -1
  %324 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 7
  %325 = load i8, ptr %324, align 8
  %326 = icmp eq i8 %325, 0
  br i1 %323, label %341, label %327

327:                                              ; preds = %313
  %328 = zext i8 %325 to i32
  %329 = icmp eq i32 %318, %328
  %330 = select i1 %326, i1 true, i1 %329
  br i1 %330, label %333, label %331

331:                                              ; preds = %327
  %332 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_options, ptr noundef %332, ptr noundef nonnull @.str.48) #13
  br label %410

333:                                              ; preds = %327
  %334 = add i32 %318, -5
  %335 = icmp ult i32 %334, -4
  br i1 %335, label %336, label %338

336:                                              ; preds = %333
  %337 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_options, ptr noundef %337, ptr noundef nonnull @.str.49) #13
  br label %338

338:                                              ; preds = %336, %333
  %339 = phi i32 [ 1, %336 ], [ %318, %333 ]
  %340 = trunc i32 %339 to i8
  store i8 %340, ptr %324, align 8
  br label %344

341:                                              ; preds = %313
  br i1 %326, label %342, label %344

342:                                              ; preds = %341
  %343 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 7
  store i8 1, ptr %343, align 8
  br label %344

344:                                              ; preds = %342, %341, %338
  %345 = icmp eq i32 %319, -1
  br i1 %345, label %346, label %349

346:                                              ; preds = %344
  %347 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 8
  %348 = load i8, ptr %347, align 1
  br label %352

349:                                              ; preds = %344
  %350 = trunc i32 %319 to i8
  %351 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 8
  store i8 %350, ptr %351, align 1
  br label %352

352:                                              ; preds = %349, %346
  %353 = phi i8 [ %348, %346 ], [ %350, %349 ]
  switch i8 %353, label %357 [
    i8 0, label %354
    i8 16, label %354
  ]

354:                                              ; preds = %352, %352
  %355 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 8
  %356 = or i8 %353, 4
  store i8 %356, ptr %355, align 1
  br label %357

357:                                              ; preds = %354, %352
  %358 = icmp eq i32 %314, -1
  br i1 %358, label %361, label %359

359:                                              ; preds = %357
  %360 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 3
  store i32 %314, ptr %360, align 4
  br label %361

361:                                              ; preds = %359, %357
  %362 = icmp eq i32 %315, -1
  br i1 %362, label %365, label %363

363:                                              ; preds = %361
  %364 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 4
  store i32 %315, ptr %364, align 8
  br label %365

365:                                              ; preds = %363, %361
  %366 = icmp eq i16 %316, -1
  br i1 %366, label %369, label %367

367:                                              ; preds = %365
  %368 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 5
  store i16 %316, ptr %368, align 4
  br label %369

369:                                              ; preds = %367, %365
  %370 = icmp eq i16 %317, -1
  br i1 %370, label %373, label %371

371:                                              ; preds = %369
  %372 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 6
  store i16 %317, ptr %372, align 2
  br label %373

373:                                              ; preds = %371, %369
  switch i32 %320, label %374 [
    i32 -1, label %378
    i32 0, label %376
  ]

374:                                              ; preds = %373
  %375 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 2
  call void @_set_bit(i32 noundef 1, ptr noundef %375) #13
  br label %378

376:                                              ; preds = %373
  %377 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 2
  call void @_clear_bit(i32 noundef 1, ptr noundef %377) #13
  br label %378

378:                                              ; preds = %376, %374, %373
  switch i32 %321, label %379 [
    i32 -1, label %383
    i32 0, label %381
  ]

379:                                              ; preds = %378
  %380 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %380) #13
  br label %383

381:                                              ; preds = %378
  %382 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 2
  call void @_clear_bit(i32 noundef 2, ptr noundef %382) #13
  br label %383

383:                                              ; preds = %381, %379, %378
  switch i32 %322, label %384 [
    i32 -1, label %410
    i32 0, label %386
  ]

384:                                              ; preds = %383
  %385 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 2
  call void @_clear_bit(i32 noundef 6, ptr noundef %385) #13
  br label %410

386:                                              ; preds = %383
  %387 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 2
  %388 = load volatile i32, ptr %387, align 4
  %389 = and i32 %388, 64
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %402

391:                                              ; preds = %386
  %392 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 35
  %393 = load i8, ptr %392, align 2
  %394 = add i8 %393, -1
  %395 = icmp ult i8 %394, 2
  br i1 %395, label %396, label %402

396:                                              ; preds = %391
  %397 = zext i8 %393 to i32
  %398 = load ptr, ptr %0, align 8
  %399 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 36
  %400 = load i8, ptr %399, align 1
  %401 = zext i8 %400 to i32
  call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.parse_options, ptr noundef %398, ptr noundef nonnull @.str.50, i32 noundef %397, i32 noundef %401) #13
  br label %410

402:                                              ; preds = %391, %386
  call void @_set_bit(i32 noundef 6, ptr noundef %387) #13
  br label %410

403:                                              ; preds = %219, %216, %172, %169, %117, %114, %102, %99, %87, %84, %72, %69, %56, %53, %40, %37
  %404 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_options, ptr noundef %404, ptr noundef nonnull @.str.51, ptr noundef nonnull %17) #13
  br label %410

405:                                              ; preds = %252, %160, %151, %142
  %406 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_options, ptr noundef %406, ptr noundef nonnull @.str.52, ptr noundef nonnull %17) #13
  br label %410

407:                                              ; preds = %189, %186, %134, %120, %105, %90, %75, %59, %43
  %408 = phi ptr [ %170, %186 ], [ %129, %134 ], [ %115, %120 ], [ %100, %105 ], [ %85, %90 ], [ %70, %75 ], [ %38, %43 ], [ %54, %59 ], [ %170, %189 ]
  %409 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.parse_options, ptr noundef %409, ptr noundef nonnull @.str.53, ptr noundef nonnull %17, ptr noundef nonnull %408) #13
  br label %410

410:                                              ; preds = %407, %405, %403, %402, %396, %384, %383, %331, %311, %292, %282, %273, %230
  %411 = phi i1 [ false, %405 ], [ false, %230 ], [ false, %403 ], [ false, %407 ], [ false, %292 ], [ false, %331 ], [ false, %311 ], [ false, %282 ], [ false, %273 ], [ true, %383 ], [ true, %384 ], [ true, %402 ], [ true, %396 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i1 %411
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_min_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_read_inode_mount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @allocate_compression_buffers() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generate_default_upcase() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @load_system_files(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 28
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @ntfs_attr_iget(ptr noundef %4, i32 noundef 176, ptr noundef null, i32 noundef 0) #13
  %6 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 29
  store ptr %5, ptr %6, align 4
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %2, ptr noundef nonnull @.str.81) #13
  br label %401

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8
  %11 = tail call ptr @ntfs_iget(ptr noundef %10, i32 noundef 10) #13
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %198, label %13

13:                                               ; preds = %9
  %14 = tail call zeroext i1 @is_bad_inode(ptr noundef %11) #13
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  tail call void @iput(ptr noundef %11) #13
  br label %198

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 22
  %18 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 13
  br label %19

19:                                               ; preds = %27, %16
  %20 = load volatile i32, ptr %17, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %23, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !16
  %24 = load volatile i32, ptr %17, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %23

27:                                               ; preds = %23, %19
  %28 = phi i32 [ %20, %19 ], [ %24, %23 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  %29 = load i64, ptr %18, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %30 = load volatile i32, ptr %17, align 4
  %31 = icmp eq i32 %30, %28
  br i1 %31, label %32, label %19

32:                                               ; preds = %27
  %33 = icmp eq i64 %29, 0
  br i1 %33, label %195, label %34

34:                                               ; preds = %32
  %35 = and i64 %29, 1
  %36 = icmp ne i64 %35, 0
  %37 = icmp ugt i64 %29, 131072
  %38 = or i1 %37, %36
  br i1 %38, label %195, label %39

39:                                               ; preds = %34
  %40 = trunc i64 %29 to i32
  %41 = icmp ult i32 %40, 4097
  br i1 %41, label %42, label %45, !prof !8

42:                                               ; preds = %39
  %43 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %44 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3136, i32 noundef 4096) #15
  br label %53

45:                                               ; preds = %39
  %46 = lshr i32 %40, 12
  %47 = load volatile i32, ptr @_totalram_pages, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %51, label %49, !prof !8

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 25
  store ptr null, ptr %50, align 4
  br label %195

51:                                               ; preds = %45
  %52 = tail call noalias ptr @__vmalloc(i32 noundef %40, i32 noundef 3138) #16
  br label %53

53:                                               ; preds = %51, %42
  %54 = phi ptr [ %44, %42 ], [ %52, %51 ]
  %55 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 25
  store ptr %54, ptr %55, align 4
  %56 = icmp eq ptr %54, null
  br i1 %56, label %195, label %57

57:                                               ; preds = %53
  %58 = lshr i64 %29, 12
  %59 = trunc i64 %58 to i32
  %60 = and i32 %40, 4095
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 9
  br label %63

63:                                               ; preds = %157, %57
  %64 = phi i32 [ 0, %57 ], [ %128, %157 ]
  %65 = phi i32 [ 4096, %57 ], [ %68, %157 ]
  %66 = icmp ult i32 %64, %59
  br i1 %66, label %67, label %158

67:                                               ; preds = %158, %63
  %68 = phi i32 [ %65, %63 ], [ %60, %158 ]
  %69 = load ptr, ptr %62, align 8
  %70 = tail call ptr @read_cache_page(ptr noundef %69, i32 noundef %64, ptr noundef null, ptr noundef null) #13
  %71 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %195, label %72

72:                                               ; preds = %67
  %73 = load i32, ptr %70, align 4
  %74 = lshr i32 %73, 30
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = icmp ne i32 %74, 3
  %78 = load i32, ptr @movable_zone, align 4
  %79 = icmp ne i32 %78, 2
  %80 = select i1 %77, i1 true, i1 %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = tail call ptr @page_address(ptr noundef %70) #13
  br label %85

83:                                               ; preds = %76, %72
  %84 = tail call ptr @kmap_high(ptr noundef %70) #13
  br label %85

85:                                               ; preds = %83, %81
  %86 = getelementptr inbounds %struct.page, ptr %70, i32 0, i32 1
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90, !prof !8

90:                                               ; preds = %85
  %91 = add i32 %87, -1
  br label %94

92:                                               ; preds = %85
  %93 = ptrtoint ptr %70 to i32
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = inttoptr i32 %95 to ptr
  %97 = load volatile i32, ptr %96, align 4
  %98 = and i32 %97, 256
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %126, label %100

100:                                              ; preds = %94
  %101 = load i32, ptr %70, align 4
  %102 = lshr i32 %101, 30
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = icmp ne i32 %102, 3
  %106 = load i32, ptr @movable_zone, align 4
  %107 = icmp ne i32 %106, 2
  %108 = select i1 %105, i1 true, i1 %107
  br i1 %108, label %110, label %109

109:                                              ; preds = %104, %100
  tail call void @kunmap_high(ptr noundef %70) #13
  br label %110

110:                                              ; preds = %109, %104
  %111 = load volatile i32, ptr %86, align 4
  %112 = and i32 %111, 1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114, !prof !8

114:                                              ; preds = %110
  %115 = add i32 %111, -1
  br label %118

116:                                              ; preds = %110
  %117 = ptrtoint ptr %70 to i32
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  %120 = inttoptr i32 %119 to ptr
  %121 = getelementptr inbounds %struct.page, ptr %120, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %121) #13, !srcloc !20
  %122 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %121, ptr %121, i32 1, ptr elementtype(i32) %121) #13, !srcloc !21
  %123 = extractvalue { i32, i32 } %122, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %195

125:                                              ; preds = %118
  tail call void @__put_page(ptr noundef %120) #13
  br label %195

126:                                              ; preds = %94
  %127 = load ptr, ptr %55, align 4
  %128 = add i32 %64, 1
  %129 = shl i32 %64, 12
  %130 = getelementptr i8, ptr %127, i32 %129
  %131 = tail call ptr @page_address(ptr noundef %70) #13
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %130, ptr align 1 %131, i32 %68, i1 false) #13
  %132 = load i32, ptr %70, align 4
  %133 = lshr i32 %132, 30
  %134 = icmp eq i32 %133, 2
  br i1 %134, label %140, label %135

135:                                              ; preds = %126
  %136 = icmp ne i32 %133, 3
  %137 = load i32, ptr @movable_zone, align 4
  %138 = icmp ne i32 %137, 2
  %139 = select i1 %136, i1 true, i1 %138
  br i1 %139, label %141, label %140

140:                                              ; preds = %135, %126
  tail call void @kunmap_high(ptr noundef %70) #13
  br label %141

141:                                              ; preds = %140, %135
  %142 = load volatile i32, ptr %86, align 4
  %143 = and i32 %142, 1
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145, !prof !8

145:                                              ; preds = %141
  %146 = add i32 %142, -1
  br label %149

147:                                              ; preds = %141
  %148 = ptrtoint ptr %70 to i32
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  %151 = inttoptr i32 %150 to ptr
  %152 = getelementptr inbounds %struct.page, ptr %151, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %152) #13, !srcloc !20
  %153 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %152, ptr %152, i32 1, ptr elementtype(i32) %152) #13, !srcloc !21
  %154 = extractvalue { i32, i32 } %153, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  tail call void @__put_page(ptr noundef %151) #13
  br label %157

157:                                              ; preds = %156, %149
  br label %63

158:                                              ; preds = %63
  %159 = icmp ne i32 %65, 4096
  %160 = select i1 %159, i1 true, i1 %61
  br i1 %160, label %161, label %67

161:                                              ; preds = %158
  %162 = lshr i64 %29, 1
  %163 = trunc i64 %162 to i32
  %164 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 24
  store i32 %163, ptr %164, align 8
  tail call void @iput(ptr noundef %11) #13
  tail call void @mutex_lock(ptr noundef nonnull @ntfs_lock) #13
  %165 = load ptr, ptr @default_upcase, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  tail call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #13
  br label %207

168:                                              ; preds = %161
  %169 = load i32, ptr %164, align 8
  %170 = tail call i32 @llvm.umin.i32(i32 %169, i32 65536) #13
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %184, label %172

172:                                              ; preds = %168
  %173 = load ptr, ptr %55, align 4
  br label %174

174:                                              ; preds = %181, %172
  %175 = phi i32 [ 0, %172 ], [ %182, %181 ]
  %176 = getelementptr i16, ptr %173, i32 %175
  %177 = load i16, ptr %176, align 2
  %178 = getelementptr i16, ptr %165, i32 %175
  %179 = load i16, ptr %178, align 2
  %180 = icmp eq i16 %177, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %174
  %182 = add nuw nsw i32 %175, 1
  %183 = icmp eq i32 %182, %170
  br i1 %183, label %189, label %174

184:                                              ; preds = %174, %168
  %185 = phi i32 [ 0, %168 ], [ %175, %174 ]
  %186 = icmp eq i32 %185, %170
  br i1 %186, label %187, label %194

187:                                              ; preds = %184
  %188 = load ptr, ptr %55, align 4
  br label %189

189:                                              ; preds = %187, %181
  %190 = phi ptr [ %188, %187 ], [ %173, %181 ]
  tail call void @kvfree(ptr noundef %190) #13
  %191 = load ptr, ptr @default_upcase, align 4
  store ptr %191, ptr %55, align 4
  store i32 %170, ptr %164, align 8
  %192 = load i32, ptr @ntfs_nr_upcase_users, align 4
  %193 = add i32 %192, 1
  store i32 %193, ptr @ntfs_nr_upcase_users, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #13
  br label %207

194:                                              ; preds = %184
  tail call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #13
  br label %207

195:                                              ; preds = %125, %118, %67, %53, %49, %34, %32
  tail call void @iput(ptr noundef %11) #13
  %196 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 25
  %197 = load ptr, ptr %196, align 4
  tail call void @kvfree(ptr noundef %197) #13
  store ptr null, ptr %196, align 4
  br label %198

198:                                              ; preds = %195, %15, %9
  tail call void @mutex_lock(ptr noundef nonnull @ntfs_lock) #13
  %199 = load ptr, ptr @default_upcase, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %206, label %201

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 25
  store ptr %199, ptr %202, align 4
  %203 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 24
  store i32 65536, ptr %203, align 8
  %204 = load i32, ptr @ntfs_nr_upcase_users, align 4
  %205 = add i32 %204, 1
  store i32 %205, ptr @ntfs_nr_upcase_users, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #13
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_and_init_upcase, ptr noundef %10, ptr noundef nonnull @.str.90) #13
  br label %207

206:                                              ; preds = %198
  tail call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #13
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_and_init_upcase, ptr noundef %10, ptr noundef nonnull @.str.91) #13
  br label %399

207:                                              ; preds = %201, %194, %189, %167
  %208 = tail call ptr @ntfs_iget(ptr noundef %2, i32 noundef 6) #13
  %209 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 31
  store ptr %208, ptr %209, align 8
  %210 = icmp ugt ptr %208, inttoptr (i32 -4096 to ptr)
  br i1 %210, label %214, label %211

211:                                              ; preds = %207
  %212 = tail call zeroext i1 @is_bad_inode(ptr noundef %208) #13
  %213 = load ptr, ptr %209, align 8
  br i1 %212, label %214, label %217

214:                                              ; preds = %211, %207
  %215 = phi ptr [ %208, %207 ], [ %213, %211 ]
  %216 = icmp ugt ptr %215, inttoptr (i32 -4096 to ptr)
  br i1 %216, label %245, label %243

217:                                              ; preds = %211
  %218 = getelementptr i8, ptr %213, i32 -176
  tail call void @_set_bit(i32 noundef 9, ptr noundef %218) #13
  %219 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 20
  %220 = load i64, ptr %219, align 8
  %221 = add i64 %220, 7
  %222 = load ptr, ptr %209, align 8
  %223 = getelementptr inbounds %struct.inode, ptr %222, i32 0, i32 22
  %224 = getelementptr inbounds %struct.inode, ptr %222, i32 0, i32 13
  br label %225

225:                                              ; preds = %233, %217
  %226 = load volatile i32, ptr %223, align 4
  %227 = and i32 %226, 1
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %229, %225
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !16
  %230 = load volatile i32, ptr %223, align 4
  %231 = and i32 %230, 1
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %229

233:                                              ; preds = %229, %225
  %234 = phi i32 [ %226, %225 ], [ %230, %229 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  %235 = load i64, ptr %224, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %236 = load volatile i32, ptr %223, align 4
  %237 = icmp eq i32 %236, %234
  br i1 %237, label %238, label %225

238:                                              ; preds = %233
  %239 = ashr i64 %221, 3
  %240 = icmp sgt i64 %239, %235
  br i1 %240, label %241, label %246

241:                                              ; preds = %238
  %242 = load ptr, ptr %209, align 8
  br label %243

243:                                              ; preds = %241, %214
  %244 = phi ptr [ %242, %241 ], [ %215, %214 ]
  tail call void @iput(ptr noundef %244) #13
  br label %245

245:                                              ; preds = %243, %214
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %2, ptr noundef nonnull @.str.82) #13
  br label %380

246:                                              ; preds = %238
  %247 = tail call ptr @ntfs_iget(ptr noundef %2, i32 noundef 3) #13
  %248 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 33
  store ptr %247, ptr %248, align 4
  %249 = icmp ugt ptr %247, inttoptr (i32 -4096 to ptr)
  br i1 %249, label %253, label %250

250:                                              ; preds = %246
  %251 = tail call zeroext i1 @is_bad_inode(ptr noundef %247) #13
  %252 = load ptr, ptr %248, align 4
  br i1 %251, label %253, label %259

253:                                              ; preds = %250, %246
  %254 = phi ptr [ %247, %246 ], [ %252, %250 ]
  %255 = icmp ugt ptr %254, inttoptr (i32 -4096 to ptr)
  br i1 %255, label %258, label %256

256:                                              ; preds = %263, %253
  %257 = phi ptr [ %264, %263 ], [ %254, %253 ]
  tail call void @iput(ptr noundef %257) #13
  br label %258

258:                                              ; preds = %256, %253
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %2, ptr noundef nonnull @.str.83) #13
  br label %378

259:                                              ; preds = %250
  %260 = getelementptr i8, ptr %252, i32 -200
  %261 = tail call ptr @map_mft_record(ptr noundef %260) #13
  %262 = icmp ugt ptr %261, inttoptr (i32 -4096 to ptr)
  br i1 %262, label %263, label %265

263:                                              ; preds = %285, %259
  %264 = load ptr, ptr %248, align 4
  br label %256

265:                                              ; preds = %259
  %266 = load ptr, ptr %248, align 4
  %267 = getelementptr i8, ptr %266, i32 -200
  %268 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %267, ptr noundef %261) #13
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %271

270:                                              ; preds = %265
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %2, ptr noundef nonnull @.str.84) #13
  br label %285

271:                                              ; preds = %265
  %272 = tail call i32 @ntfs_attr_lookup(i32 noundef 112, ptr noundef null, i32 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %268) #13
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %284

274:                                              ; preds = %271
  %275 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %268, i32 0, i32 1
  %276 = load ptr, ptr %275, align 4
  %277 = getelementptr inbounds %struct.ATTR_RECORD, ptr %276, i32 0, i32 2
  %278 = load i8, ptr %277, align 1
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %274
  %281 = getelementptr inbounds %struct.ATTR_RECORD, ptr %276, i32 0, i32 5
  %282 = load i16, ptr %281, align 1
  %283 = icmp eq i16 %282, 0
  br i1 %283, label %288, label %284

284:                                              ; preds = %295, %288, %280, %274, %271
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %268) #13
  br label %285

285:                                              ; preds = %284, %270
  %286 = load ptr, ptr %248, align 4
  %287 = getelementptr i8, ptr %286, i32 -200
  tail call void @unmap_mft_record(ptr noundef %287) #13
  br label %263

288:                                              ; preds = %280
  %289 = getelementptr inbounds %struct.ATTR_RECORD, ptr %276, i32 0, i32 7
  %290 = getelementptr inbounds %struct.anon.76, ptr %289, i32 0, i32 1
  %291 = load i16, ptr %290, align 1
  %292 = zext i16 %291 to i32
  %293 = getelementptr i8, ptr %276, i32 %292
  %294 = icmp ult ptr %293, %276
  br i1 %294, label %284, label %295

295:                                              ; preds = %288
  %296 = load i32, ptr %289, align 1
  %297 = getelementptr i8, ptr %293, i32 %296
  %298 = getelementptr inbounds %struct.ATTR_RECORD, ptr %276, i32 0, i32 1
  %299 = load i32, ptr %298, align 1
  %300 = getelementptr i8, ptr %276, i32 %299
  %301 = icmp ugt ptr %297, %300
  br i1 %301, label %284, label %302

302:                                              ; preds = %295
  %303 = getelementptr inbounds %struct.VOLUME_INFORMATION, ptr %293, i32 0, i32 3
  %304 = load i16, ptr %303, align 1
  %305 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 34
  store i16 %304, ptr %305, align 8
  %306 = getelementptr inbounds %struct.VOLUME_INFORMATION, ptr %293, i32 0, i32 1
  %307 = load i8, ptr %306, align 1
  %308 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 35
  store i8 %307, ptr %308, align 2
  %309 = getelementptr inbounds %struct.VOLUME_INFORMATION, ptr %293, i32 0, i32 2
  %310 = load i8, ptr %309, align 1
  %311 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 36
  store i8 %310, ptr %311, align 1
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %268) #13
  %312 = load ptr, ptr %248, align 4
  %313 = getelementptr i8, ptr %312, i32 -200
  tail call void @unmap_mft_record(ptr noundef %313) #13
  %314 = load i8, ptr %308, align 2
  %315 = zext i8 %314 to i32
  %316 = load i8, ptr %311, align 1
  %317 = zext i8 %316 to i32
  %318 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %315, i32 noundef %317) #14
  %319 = load i8, ptr %308, align 2
  %320 = icmp ult i8 %319, 3
  br i1 %320, label %321, label %331

321:                                              ; preds = %302
  %322 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 2
  %323 = load volatile i32, ptr %322, align 4
  %324 = and i32 %323, 64
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %331, label %326

326:                                              ; preds = %321
  %327 = load ptr, ptr %0, align 8
  %328 = zext i8 %319 to i32
  %329 = load i8, ptr %311, align 1
  %330 = zext i8 %329 to i32
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.load_system_files, ptr noundef %327, ptr noundef nonnull @.str.86, i32 noundef %328, i32 noundef %330) #13
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %322) #13
  br label %331

331:                                              ; preds = %326, %321, %302
  %332 = tail call ptr @ntfs_iget(ptr noundef %2, i32 noundef 5) #13
  %333 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 37
  store ptr %332, ptr %333, align 4
  %334 = icmp ugt ptr %332, inttoptr (i32 -4096 to ptr)
  br i1 %334, label %339, label %335

335:                                              ; preds = %331
  %336 = tail call zeroext i1 @is_bad_inode(ptr noundef %332) #13
  br i1 %336, label %337, label %344

337:                                              ; preds = %335
  %338 = load ptr, ptr %333, align 4
  br label %339

339:                                              ; preds = %337, %331
  %340 = phi ptr [ %338, %337 ], [ %332, %331 ]
  %341 = icmp ugt ptr %340, inttoptr (i32 -4096 to ptr)
  br i1 %341, label %343, label %342

342:                                              ; preds = %339
  tail call void @iput(ptr noundef %340) #13
  br label %343

343:                                              ; preds = %342, %339
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %2, ptr noundef nonnull @.str.87) #13
  br label %376

344:                                              ; preds = %335
  %345 = load i8, ptr %308, align 2
  %346 = icmp ult i8 %345, 3
  br i1 %346, label %401, label %347, !prof !23

347:                                              ; preds = %344
  %348 = tail call ptr @ntfs_iget(ptr noundef %2, i32 noundef 9) #13
  %349 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 38
  store ptr %348, ptr %349, align 8
  %350 = icmp ugt ptr %348, inttoptr (i32 -4096 to ptr)
  br i1 %350, label %355, label %351

351:                                              ; preds = %347
  %352 = tail call zeroext i1 @is_bad_inode(ptr noundef %348) #13
  br i1 %352, label %353, label %360

353:                                              ; preds = %351
  %354 = load ptr, ptr %349, align 8
  br label %355

355:                                              ; preds = %353, %347
  %356 = phi ptr [ %354, %353 ], [ %348, %347 ]
  %357 = icmp ugt ptr %356, inttoptr (i32 -4096 to ptr)
  br i1 %357, label %359, label %358

358:                                              ; preds = %355
  tail call void @iput(ptr noundef %356) #13
  br label %359

359:                                              ; preds = %358, %355
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %2, ptr noundef nonnull @.str.88) #13
  br label %374

360:                                              ; preds = %351
  %361 = tail call ptr @ntfs_iget(ptr noundef %2, i32 noundef 11) #13
  %362 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 39
  store ptr %361, ptr %362, align 4
  %363 = icmp ugt ptr %361, inttoptr (i32 -4096 to ptr)
  br i1 %363, label %368, label %364

364:                                              ; preds = %360
  %365 = tail call zeroext i1 @is_bad_inode(ptr noundef %361) #13
  br i1 %365, label %366, label %401

366:                                              ; preds = %364
  %367 = load ptr, ptr %362, align 4
  br label %368

368:                                              ; preds = %366, %360
  %369 = phi ptr [ %367, %366 ], [ %361, %360 ]
  %370 = icmp ugt ptr %369, inttoptr (i32 -4096 to ptr)
  br i1 %370, label %372, label %371

371:                                              ; preds = %368
  tail call void @iput(ptr noundef %369) #13
  br label %372

372:                                              ; preds = %371, %368
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.load_system_files, ptr noundef %2, ptr noundef nonnull @.str.89) #13
  %373 = load ptr, ptr %349, align 8
  tail call void @iput(ptr noundef %373) #13
  br label %374

374:                                              ; preds = %372, %359
  %375 = load ptr, ptr %333, align 4
  tail call void @iput(ptr noundef %375) #13
  br label %376

376:                                              ; preds = %374, %343
  %377 = load ptr, ptr %248, align 4
  tail call void @iput(ptr noundef %377) #13
  br label %378

378:                                              ; preds = %376, %258
  %379 = load ptr, ptr %209, align 8
  tail call void @iput(ptr noundef %379) #13
  br label %380

380:                                              ; preds = %378, %245
  %381 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 26
  store i32 0, ptr %381, align 8
  %382 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 27
  %383 = load ptr, ptr %382, align 4
  %384 = icmp eq ptr %383, null
  br i1 %384, label %386, label %385

385:                                              ; preds = %380
  tail call void @kvfree(ptr noundef nonnull %383) #13
  store ptr null, ptr %382, align 4
  br label %386

386:                                              ; preds = %385, %380
  %387 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 24
  store i32 0, ptr %387, align 8
  tail call void @mutex_lock(ptr noundef nonnull @ntfs_lock) #13
  %388 = getelementptr inbounds %struct.ntfs_volume, ptr %0, i32 0, i32 25
  %389 = load ptr, ptr %388, align 4
  %390 = load ptr, ptr @default_upcase, align 4
  %391 = icmp eq ptr %389, %390
  br i1 %391, label %392, label %395

392:                                              ; preds = %386
  %393 = load i32, ptr @ntfs_nr_upcase_users, align 4
  %394 = add i32 %393, -1
  store i32 %394, ptr @ntfs_nr_upcase_users, align 4
  store ptr null, ptr %388, align 4
  br label %395

395:                                              ; preds = %392, %386
  tail call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #13
  %396 = load ptr, ptr %388, align 4
  %397 = icmp eq ptr %396, null
  br i1 %397, label %399, label %398

398:                                              ; preds = %395
  tail call void @kvfree(ptr noundef nonnull %396) #13
  store ptr null, ptr %388, align 4
  br label %399

399:                                              ; preds = %398, %395, %206
  %400 = load ptr, ptr %6, align 4
  tail call void @iput(ptr noundef %400) #13
  br label %401

401:                                              ; preds = %399, %364, %344, %8
  %402 = phi i1 [ true, %344 ], [ true, %364 ], [ false, %399 ], [ false, %8 ]
  ret i1 %402
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unload_nls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_compression_buffers() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc i32 @simple_getbool(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(2) @.str.54)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(4) @.str.55)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(5) @.str.56)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(2) @.str.57)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(3) @.str.58)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(6) @.str.59)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %16, %13, %10, %7, %4, %2
  %23 = phi i8 [ 1, %10 ], [ 1, %7 ], [ 1, %4 ], [ 0, %19 ], [ 0, %16 ], [ 0, %13 ], [ 1, %2 ]
  store i8 %23, ptr %1, align 1
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i32 [ 0, %19 ], [ 1, %22 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_warning(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls_default() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_boot_sector_ntfs(ptr noundef %0, ptr noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %1, i32 0, i32 12
  %5 = load i32, ptr %4, align 1
  %6 = icmp eq i32 %5, 0
  %7 = or i1 %6, %2
  br i1 %7, label %18, label %8

8:                                                ; preds = %8, %3
  %9 = phi i32 [ %12, %8 ], [ 0, %3 ]
  %10 = phi ptr [ %13, %8 ], [ %1, %3 ]
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %9
  %13 = getelementptr i32, ptr %10, i32 1
  %14 = icmp ult ptr %13, %4
  br i1 %14, label %8, label %15

15:                                               ; preds = %8
  %16 = icmp eq i32 %5, %12
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.is_boot_sector_ntfs, ptr noundef %0, ptr noundef nonnull @.str.70) #13
  br label %18

18:                                               ; preds = %17, %15, %3
  %19 = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %1, i32 0, i32 1
  %20 = load i64, ptr %19, align 1
  %21 = icmp eq i64 %20, 2314885531676595278
  br i1 %21, label %22, label %79

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %1, i32 0, i32 2
  %24 = load i16, ptr %23, align 1
  %25 = add i16 %24, -4097
  %26 = icmp ult i16 %25, -3841
  br i1 %26, label %79, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %1, i32 0, i32 2, i32 1
  %29 = load i8, ptr %28, align 1
  switch i8 %29, label %79 [
    i8 1, label %30
    i8 2, label %30
    i8 4, label %30
    i8 8, label %30
    i8 16, label %30
    i8 32, label %30
    i8 64, label %30
    i8 -128, label %30
  ]

30:                                               ; preds = %27, %27, %27, %27, %27, %27, %27, %27
  %31 = zext i16 %24 to i32
  %32 = zext i8 %29 to i32
  %33 = mul nuw nsw i32 %32, %31
  %34 = icmp ugt i32 %33, 65536
  br i1 %34, label %79, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %1, i32 0, i32 2, i32 2
  %37 = load i16, ptr %36, align 1
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %79

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %1, i32 0, i32 2, i32 4
  %41 = load i16, ptr %40, align 1
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %79

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %1, i32 0, i32 2, i32 5
  %45 = load i16, ptr %44, align 1
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %79

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %1, i32 0, i32 2, i32 7
  %49 = load i16, ptr %48, align 1
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %1, i32 0, i32 2, i32 11
  %53 = load i32, ptr %52, align 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %1, i32 0, i32 2, i32 3
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %1, i32 0, i32 7
  %61 = load i8, ptr %60, align 1
  %62 = add i8 %61, 8
  %63 = icmp ult i8 %62, -23
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = sext i8 %61 to i32
  switch i32 %65, label %79 [
    i32 1, label %66
    i32 2, label %66
    i32 4, label %66
    i32 8, label %66
    i32 16, label %66
    i32 32, label %66
    i32 64, label %66
  ]

66:                                               ; preds = %64, %64, %64, %64, %64, %64, %64, %59
  %67 = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %1, i32 0, i32 9
  %68 = load i8, ptr %67, align 1
  %69 = add i8 %68, 8
  %70 = icmp ult i8 %69, -23
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = sext i8 %68 to i32
  switch i32 %72, label %79 [
    i32 1, label %73
    i32 2, label %73
    i32 4, label %73
    i32 8, label %73
    i32 16, label %73
    i32 32, label %73
    i32 64, label %73
  ]

73:                                               ; preds = %71, %71, %71, %71, %71, %71, %71, %66
  br i1 %2, label %79, label %74

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.NTFS_BOOT_SECTOR, ptr %1, i32 0, i32 14
  %76 = load i16, ptr %75, align 1
  %77 = icmp eq i16 %76, -21931
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.is_boot_sector_ntfs, ptr noundef %0, ptr noundef nonnull @.str.71) #13
  br label %79

79:                                               ; preds = %78, %74, %73, %71, %64, %55, %51, %47, %43, %39, %35, %30, %27, %22, %18
  %80 = phi i1 [ true, %78 ], [ true, %74 ], [ true, %73 ], [ false, %71 ], [ false, %64 ], [ false, %35 ], [ false, %39 ], [ false, %43 ], [ false, %47 ], [ false, %51 ], [ false, %55 ], [ false, %30 ], [ false, %27 ], [ false, %22 ], [ false, %18 ]
  ret i1 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_alloc_big_inode(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_free_big_inode(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_evict_big_inode(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ntfs_put_super(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 33
  %5 = load ptr, ptr %4, align 4
  tail call void @iput(ptr noundef %5) #13
  store ptr null, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 35
  %7 = load i8, ptr %6, align 2
  %8 = icmp ugt i8 %7, 2
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 39
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @iput(ptr noundef nonnull %11) #13
  store ptr null, ptr %10, align 4
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 38
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @iput(ptr noundef nonnull %16) #13
  store ptr null, ptr %15, align 8
  br label %19

19:                                               ; preds = %18, %14, %1
  %20 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 37
  %21 = load ptr, ptr %20, align 4
  tail call void @iput(ptr noundef %21) #13
  store ptr null, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 32
  tail call void @down_write(ptr noundef %22) #13
  %23 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 31
  %24 = load ptr, ptr %23, align 8
  tail call void @iput(ptr noundef %24) #13
  store ptr null, ptr %23, align 8
  tail call void @up_write(ptr noundef %22) #13
  %25 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 30
  tail call void @down_write(ptr noundef %25) #13
  %26 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 29
  %27 = load ptr, ptr %26, align 4
  tail call void @iput(ptr noundef %27) #13
  store ptr null, ptr %26, align 4
  tail call void @up_write(ptr noundef %25) #13
  %28 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 28
  %29 = load ptr, ptr %28, align 8
  tail call void @iput(ptr noundef %29) #13
  store ptr null, ptr %28, align 8
  %30 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 26
  store i32 0, ptr %30, align 8
  %31 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 27
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %19
  tail call void @kvfree(ptr noundef nonnull %32) #13
  store ptr null, ptr %31, align 4
  br label %35

35:                                               ; preds = %34, %19
  %36 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 24
  store i32 0, ptr %36, align 8
  tail call void @mutex_lock(ptr noundef nonnull @ntfs_lock) #13
  %37 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 25
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr @default_upcase, align 4
  %40 = icmp eq ptr %38, %39
  %41 = load i32, ptr @ntfs_nr_upcase_users, align 4
  br i1 %40, label %42, label %44

42:                                               ; preds = %35
  %43 = add i32 %41, -1
  store i32 %43, ptr @ntfs_nr_upcase_users, align 4
  store ptr null, ptr %37, align 4
  br label %44

44:                                               ; preds = %42, %35
  %45 = phi i32 [ %43, %42 ], [ %41, %35 ]
  %46 = icmp eq i32 %45, 0
  %47 = icmp ne ptr %39, null
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  tail call void @kvfree(ptr noundef nonnull %39) #13
  store ptr null, ptr @default_upcase, align 4
  br label %50

50:                                               ; preds = %49, %44
  %51 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 11
  %52 = load i32, ptr %51, align 8
  %53 = icmp ult i32 %52, 4097
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, ptr @ntfs_nr_compression_users, align 4
  %56 = add i32 %55, -1
  store i32 %56, ptr @ntfs_nr_compression_users, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  tail call void @free_compression_buffers() #13
  br label %59

59:                                               ; preds = %58, %54, %50
  tail call void @mutex_unlock(ptr noundef nonnull @ntfs_lock) #13
  %60 = load ptr, ptr %37, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  tail call void @kvfree(ptr noundef nonnull %60) #13
  store ptr null, ptr %37, align 4
  br label %63

63:                                               ; preds = %62, %59
  %64 = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 40
  %65 = load ptr, ptr %64, align 8
  tail call void @unload_nls(ptr noundef %65) #13
  store ptr null, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ntfs_statfs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 28
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 -200
  store i32 1397118030, ptr %1, align 8
  %10 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 1
  store i32 4096, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 20
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 13
  %14 = load i8, ptr %13, align 8
  %15 = zext i8 %14 to i64
  %16 = shl i64 %12, %15
  %17 = ashr i64 %16, 12
  %18 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 2
  store i64 %17, ptr %18, align 8
  %19 = load i64, ptr %11, align 8
  %20 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 31
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 9
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 32
  tail call void @down_read(ptr noundef %24) #13
  %25 = load i64, ptr %11, align 8
  %26 = add i64 %25, 7
  %27 = lshr i64 %26, 3
  %28 = add nuw nsw i64 %27, 4095
  %29 = lshr i64 %28, 12
  %30 = trunc i64 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %74, label %32

32:                                               ; preds = %68, %2
  %33 = phi i32 [ %70, %68 ], [ 0, %2 ]
  %34 = phi i64 [ %69, %68 ], [ %19, %2 ]
  %35 = tail call ptr @read_cache_page(ptr noundef %23, i32 noundef %33, ptr noundef null, ptr noundef null) #13
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = add i64 %34, -32768
  br label %68

39:                                               ; preds = %32
  %40 = load i32, ptr @pgprot_kernel, align 4
  %41 = or i32 %40, 512
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  %42 = tail call ptr @llvm.thread.pointer() #13
  %43 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 149
  %44 = load i32, ptr %43, align 8
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !25
  %46 = tail call ptr @__kmap_local_page_prot(ptr noundef %35, i32 noundef %41) #13
  %47 = tail call i32 @__bitmap_weight(ptr noundef %46, i32 noundef 32768) #13
  %48 = sext i32 %47 to i64
  %49 = sub i64 %34, %48
  tail call void @kunmap_local_indexed(ptr noundef %46) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  %50 = load i32, ptr %43, align 8
  %51 = add i32 %50, -1
  store i32 %51, ptr %43, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %52 = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 1
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56, !prof !8

56:                                               ; preds = %39
  %57 = add i32 %53, -1
  br label %60

58:                                               ; preds = %39
  %59 = ptrtoint ptr %35 to i32
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = inttoptr i32 %61 to ptr
  %63 = getelementptr inbounds %struct.page, ptr %62, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #13, !srcloc !20
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 1, ptr elementtype(i32) %63) #13, !srcloc !21
  %65 = extractvalue { i32, i32 } %64, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  tail call void @__put_page(ptr noundef %62) #13
  br label %68

68:                                               ; preds = %67, %60, %37
  %69 = phi i64 [ %38, %37 ], [ %49, %60 ], [ %49, %67 ]
  %70 = add nuw i32 %33, 1
  %71 = icmp eq i32 %70, %30
  br i1 %71, label %72, label %32

72:                                               ; preds = %68
  %73 = load i64, ptr %11, align 8
  br label %74

74:                                               ; preds = %72, %2
  %75 = phi i64 [ %25, %2 ], [ %73, %72 ]
  %76 = phi i64 [ %19, %2 ], [ %69, %72 ]
  %77 = and i64 %75, 63
  %78 = icmp eq i64 %77, 0
  %79 = sub nuw nsw i64 64, %77
  %80 = select i1 %78, i64 0, i64 %79
  %81 = add i64 %80, %76
  tail call void @up_read(ptr noundef %24) #13
  %82 = tail call i64 @llvm.smax.i64(i64 %81, i64 0) #13
  %83 = load i8, ptr %13, align 8
  %84 = zext i8 %83 to i64
  %85 = shl i64 %82, %84
  %86 = ashr i64 %85, 12
  %87 = tail call i64 @llvm.smax.i64(i64 %86, i64 0)
  %88 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 3
  store i64 %87, ptr %88, align 8
  %89 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 4
  store i64 %87, ptr %89, align 8
  %90 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 30
  tail call void @down_read(ptr noundef %90) #13
  %91 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %9) #13
  %92 = load ptr, ptr %7, align 8
  %93 = getelementptr inbounds %struct.inode, ptr %92, i32 0, i32 22
  %94 = getelementptr inbounds %struct.inode, ptr %92, i32 0, i32 13
  br label %95

95:                                               ; preds = %103, %74
  %96 = load volatile i32, ptr %93, align 4
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %99, %95
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !16
  %100 = load volatile i32, ptr %93, align 4
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %99

103:                                              ; preds = %99, %95
  %104 = phi i32 [ %96, %95 ], [ %100, %99 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  %105 = load i64, ptr %94, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %106 = load volatile i32, ptr %93, align 4
  %107 = icmp eq i32 %106, %104
  br i1 %107, label %108, label %95

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 16
  %110 = load i8, ptr %109, align 4
  %111 = zext i8 %110 to i64
  %112 = ashr i64 %105, %111
  %113 = getelementptr i8, ptr %8, i32 -192
  %114 = load i64, ptr %113, align 8
  %115 = ashr i64 %114, %111
  %116 = add i64 %115, 7
  %117 = lshr i64 %116, 3
  %118 = add nuw nsw i64 %117, 4095
  %119 = lshr i64 %118, 12
  %120 = trunc i64 %119 to i32
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %9, i32 noundef %91) #13
  %121 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 5
  store i64 %112, ptr %121, align 8
  %122 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 29
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.inode, ptr %123, i32 0, i32 9
  %125 = load ptr, ptr %124, align 8
  %126 = icmp eq i32 %120, 0
  br i1 %126, label %167, label %127

127:                                              ; preds = %163, %108
  %128 = phi i32 [ %165, %163 ], [ 0, %108 ]
  %129 = phi i64 [ %164, %163 ], [ %112, %108 ]
  %130 = tail call ptr @read_cache_page(ptr noundef %125, i32 noundef %128, ptr noundef null, ptr noundef null) #13
  %131 = icmp ugt ptr %130, inttoptr (i32 -4096 to ptr)
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = add i64 %129, -32768
  br label %163

134:                                              ; preds = %127
  %135 = load i32, ptr @pgprot_kernel, align 4
  %136 = or i32 %135, 512
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  %137 = tail call ptr @llvm.thread.pointer() #13
  %138 = getelementptr inbounds %struct.task_struct, ptr %137, i32 0, i32 149
  %139 = load i32, ptr %138, align 8
  %140 = add i32 %139, 1
  store i32 %140, ptr %138, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !25
  %141 = tail call ptr @__kmap_local_page_prot(ptr noundef %130, i32 noundef %136) #13
  %142 = tail call i32 @__bitmap_weight(ptr noundef %141, i32 noundef 32768) #13
  %143 = sext i32 %142 to i64
  %144 = sub i64 %129, %143
  tail call void @kunmap_local_indexed(ptr noundef %141) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  %145 = load i32, ptr %138, align 8
  %146 = add i32 %145, -1
  store i32 %146, ptr %138, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  %147 = getelementptr inbounds %struct.page, ptr %130, i32 0, i32 1
  %148 = load volatile i32, ptr %147, align 4
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %153, label %151, !prof !8

151:                                              ; preds = %134
  %152 = add i32 %148, -1
  br label %155

153:                                              ; preds = %134
  %154 = ptrtoint ptr %130 to i32
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i32 [ %152, %151 ], [ %154, %153 ]
  %157 = inttoptr i32 %156 to ptr
  %158 = getelementptr inbounds %struct.page, ptr %157, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %158) #13, !srcloc !20
  %159 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %158, ptr %158, i32 1, ptr elementtype(i32) %158) #13, !srcloc !21
  %160 = extractvalue { i32, i32 } %159, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  tail call void @__put_page(ptr noundef %157) #13
  br label %163

163:                                              ; preds = %162, %155, %132
  %164 = phi i64 [ %133, %132 ], [ %144, %155 ], [ %144, %162 ]
  %165 = add nuw i32 %128, 1
  %166 = icmp eq i32 %165, %120
  br i1 %166, label %167, label %127

167:                                              ; preds = %163, %108
  %168 = phi i64 [ %112, %108 ], [ %164, %163 ]
  %169 = tail call i64 @llvm.smax.i64(i64 %168, i64 0) #13
  %170 = and i64 %169, 4294967295
  %171 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 6
  store i64 %170, ptr %171, align 8
  tail call void @up_read(ptr noundef %90) #13
  %172 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 7
  %173 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 23
  %174 = load i64, ptr %173, align 8
  store i64 %174, ptr %172, align 8
  %175 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 8
  store i32 255, ptr %175, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ntfs_remount(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @sync_filesystem(ptr noundef %0) #13
  %7 = load i32, ptr %1, align 4
  %8 = or i32 %7, 1
  store i32 %8, ptr %1, align 4
  %9 = tail call fastcc zeroext i1 @parse_options(ptr noundef %5, ptr noundef %2)
  %10 = select i1 %9, i32 0, i32 -22
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_show_options(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_attr_iget(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_iget(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @map_mft_record(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_attr_get_search_ctx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_attr_lookup(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_attr_put_search_ctx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mft_record(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ntfs_big_inode_init_once(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.big_ntfs_inode, ptr %0, i32 0, i32 1
  tail call void @inode_init_once(ptr noundef %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.cttz.i16(i16, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #12

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

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
!9 = !{i64 2153521589, i64 2153522070, i64 2153521626, i64 2153521682, i64 2153521716, i64 2153521740, i64 2153521781, i64 2153521802, i64 2153521830, i64 2153521864}
!10 = !{i16 0, i16 17}
!11 = !{i8 0, i8 9}
!12 = !{i32 0, i32 33}
!13 = !{i64 2153523695, i64 2153524176, i64 2153523732, i64 2153523788, i64 2153523822, i64 2153523846, i64 2153523887, i64 2153523908, i64 2153523936, i64 2153523970}
!14 = !{!"auto-init"}
!15 = !{i64 2151606803}
!16 = !{i64 2151606645}
!17 = !{i64 2151606947}
!18 = !{i64 2149266162}
!19 = !{i64 2148456818}
!20 = !{i64 854753, i64 2148344724, i64 2148344750, i64 2148344797, i64 2148344819, i64 2148344847, i64 2148344867}
!21 = !{i64 2148359180, i64 2148359212, i64 2148359241, i64 2148359275, i64 2148359306, i64 2148359329}
!22 = !{i64 2148457021}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2152537378}
!25 = !{i64 2151299636}
!26 = !{i64 2151299843}
!27 = !{i64 2152540003}
