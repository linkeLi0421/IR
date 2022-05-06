; ModuleID = '/llk/IR/fs/ubifs/super.c_pt.bc'
source_filename = "../fs/ubifs/super.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.match_token = type { i32, ptr }
%union.ubifs_key = type { [1 x i64] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.ubifs_ino_node = type { %struct.ubifs_ch, [16 x i8], i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i16, [26 x i8], [0 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_inode = type { %struct.inode, i64, i64, i32, i32, i32, i8, %struct.mutex, %struct.rw_semaphore, %struct.spinlock, i64, i64, i32, i32, i32, i32, ptr }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.72, i32, i32, i32, [0 x i8] }
%union.anon.72 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.73, i32 }
%union.anon.73 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.ubifs_compressor = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_jhead = type { %struct.ubifs_wbuf, %struct.list_head, i8, ptr }
%struct.ubifs_wbuf = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.hrtimer, i8, i32, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ubifs_mst_node = type { %struct.ubifs_ch, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], [64 x i8], [64 x i8], [152 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.56, %struct.list_head, %struct.list_head, %union.anon.57 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { i64 }
%union.anon.56 = type { %struct.list_head }
%union.anon.57 = type { %struct.hlist_node }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.52, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.52 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ubifs_bud = type { i32, i32, i32, %struct.list_head, %struct.rb_node, ptr }
%struct.ubifs_orphan = type { %struct.rb_node, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, i8 }
%struct.substring_t = type { ptr, ptr }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }

@ubifs_default_version = dso_local global i32 5, align 4
@__param_str_default_version = internal constant [22 x i8] c"ubifs.default_version\00", align 1
@ubifs_default_version_ops = internal constant %struct.kernel_param_ops { i32 0, ptr @ubifs_default_version_set, ptr @param_get_int, ptr null }, align 4
@__param_default_version = internal constant %struct.kernel_param { ptr @__param_str_default_version, ptr null, ptr @ubifs_default_version_ops, i16 384, i8 -1, i8 0, %union.anon.64 { ptr @ubifs_default_version } }, section "__param", align 4
@ubifs_file_address_operations = external dso_local constant %struct.address_space_operations, align 4
@ubifs_file_inode_operations = external dso_local constant %struct.inode_operations, align 64
@ubifs_file_operations = external dso_local constant %struct.file_operations, align 4
@ubifs_dir_inode_operations = external dso_local constant %struct.inode_operations, align 64
@ubifs_dir_operations = external dso_local constant %struct.file_operations, align 4
@ubifs_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 64
@.str = private unnamed_addr constant [38 x i8] c"inode %lu validation failed, error %d\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to read inode %lu, error %d\00", align 1
@ubifs_super_operations = dso_local constant %struct.super_operations { ptr @ubifs_alloc_inode, ptr null, ptr @ubifs_free_inode, ptr @ubifs_dirty_inode, ptr @ubifs_write_inode, ptr @ubifs_drop_inode, ptr @ubifs_evict_inode, ptr @ubifs_put_super, ptr @ubifs_sync_fs, ptr null, ptr null, ptr null, ptr null, ptr @ubifs_statfs, ptr @ubifs_remount_fs, ptr null, ptr @ubifs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__UNIQUE_ID_alias238 = internal constant [21 x i8] c"ubifs.alias=fs-ubifs\00", section ".modinfo", align 1
@__initcall__kmod_ubifs__270_2467_ubifs_init7 = internal global ptr @ubifs_init, section ".initcall7.init", align 4
@ubifs_infos = external dso_local global %struct.list_head, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"fs/ubifs/super.c\00", align 1
@ubifs_clean_zn_cnt = external dso_local global %struct.atomic_t, align 4
@ubifs_shrinker_info = internal global %struct.shrinker { ptr @ubifs_shrink_count, ptr @ubifs_shrink_scan, i32 0, i32 2, i32 0, %struct.list_head zeroinitializer, ptr null }, align 4
@ubifs_inode_slab = internal unnamed_addr global ptr null, align 4
@ubifs_fs_type = internal global %struct.file_system_type { ptr @.str.4, i32 0, ptr null, ptr null, ptr @ubifs_mount, ptr @kill_ubifs_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@__exitcall_ubifs_exit = internal global ptr @ubifs_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file271 = internal constant [26 x i8] c"ubifs.file=fs/ubifs/ubifs\00", section ".modinfo", align 1
@__UNIQUE_ID_license272 = internal constant [18 x i8] c"ubifs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version273 = internal constant [16 x i8] c"ubifs.version=1\00", section ".modinfo", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ubifs\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.3, i16 292 }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.4, ptr @.str.5 }, section "__modver", align 4
@__UNIQUE_ID_author274 = internal constant [45 x i8] c"ubifs.author=Artem Bityutskiy, Adrian Hunter\00", section ".modinfo", align 1
@__UNIQUE_ID_description275 = internal constant [42 x i8] c"ubifs.description=UBIFS - UBI File System\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"inode is too large (%lld)\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"inode %lu uses '%s' compression, but it was not compiled in\00", align 1
@ubifs_compressors = external dso_local local_unnamed_addr global [4 x ptr], align 4
@ubifs_alloc_inode.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"&ui->ui_mutex\00", align 1
@ubifs_alloc_inode.__key.12 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"&ui->xattr_sem\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"mutex_is_locked(&ui->ui_mutex)\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"!ui->xattr\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"can't write inode %lu, error %d\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"!atomic_read(&inode->i_count)\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"can't delete inode %lu, error %d\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"un-mount UBI device %d\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"c->bi.idx_growth == 0\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"c->bi.dd_growth == 0\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"c->bi.data_growth == 0\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"failed to write master node, error %d\00", align 1
@ubifs_infos_lock = external dso_local global %struct.spinlock, align 4
@.str.24 = private unnamed_addr constant [33 x i8] c"orphan list not empty at unmount\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"buf->f_bfree <= c->block_cnt\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"invalid or unknown remount parameter\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"cannot re-mount R/W due to prior errors\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"cannot re-mount R/W - UBI volume is R/O\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"cannot re-mount R/O due to prior errors\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"c->lst.taken_empty_lebs > 0\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = internal constant [13 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.42 }, %struct.match_token { i32 1, ptr @.str.43 }, %struct.match_token { i32 2, ptr @.str.44 }, %struct.match_token { i32 3, ptr @.str.45 }, %struct.match_token { i32 4, ptr @.str.46 }, %struct.match_token { i32 5, ptr @.str.47 }, %struct.match_token { i32 6, ptr @.str.48 }, %struct.match_token { i32 8, ptr @.str.49 }, %struct.match_token { i32 9, ptr @.str.50 }, %struct.match_token { i32 10, ptr @.str.51 }, %struct.match_token { i32 10, ptr @.str.52 }, %struct.match_token { i32 7, ptr @.str.53 }, %struct.match_token { i32 11, ptr null }], align 4
@.str.32 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"lzo\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"zlib\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"zstd\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"unknown compressor \22%s\22\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"report\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"panic\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"unknown assert action \22%s\22\00", align 1
@.str.41 = private unnamed_addr constant [48 x i8] c"unrecognized mount option \22%s\22 or missing value\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"fast_unmount\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"norm_unmount\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"bulk_read\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"no_bulk_read\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"chk_data_crc\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"no_chk_data_crc\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"compr=%s\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"auth_key=%s\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"auth_hash_name=%s\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"ubi=%s\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"vol=%s\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"assert=%s\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"\015UBIFS: parse %s\0A\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.56 = private unnamed_addr constant [38 x i8] c"the file-system is not R/W-compatible\00", align 1
@.str.57 = private unnamed_addr constant [85 x i8] c"on-flash format version is w%d/r%d, but software only supports up to version w%d/r%d\00", align 1
@.str.58 = private unnamed_addr constant [29 x i8] c"completing deferred recovery\00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"c->tot_orphans == 0\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"cannot spawn \22%s\22, error %d\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"deferred recovery completed\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"c->dark_wm > 0\00", align 1
@.str.64 = private unnamed_addr constant [45 x i8] c"insufficient free space to mount in R/W mode\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"!c->need_recovery\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"!c->ro_mount\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"c->bulk_read == 1\00", align 1
@.str.68 = private unnamed_addr constant [63 x i8] c"cannot allocate %d bytes of memory for bulk-read, disabling it\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c",fast_unmount\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c",norm_unmount\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c",bulk_read\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c",no_bulk_read\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c",chk_data_crc\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c",no_chk_data_crc\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c",compr=%s\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c",assert=%s\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c",ubi=%d,vol=%d\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"ubifs_inode_slab\00", align 1
@.str.79 = private unnamed_addr constant [62 x i8] c"\013UBIFS error (pid %d): cannot register file system, error %d\00", align 1
@.str.80 = private unnamed_addr constant [52 x i8] c"\013UBIFS error (pid: %d): cannot open \22%s\22, error %d\00", align 1
@alloc_ubifs_info.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"&c->commit_sem\00", align 1
@alloc_ubifs_info.__key.82 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"&c->lp_mutex\00", align 1
@alloc_ubifs_info.__key.84 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"&c->tnc_mutex\00", align 1
@alloc_ubifs_info.__key.86 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"&c->log_mutex\00", align 1
@alloc_ubifs_info.__key.88 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"&c->umount_mutex\00", align 1
@alloc_ubifs_info.__key.90 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"&c->bu_mutex\00", align 1
@alloc_ubifs_info.__key.92 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.93 = private unnamed_addr constant [24 x i8] c"&c->write_reserve_mutex\00", align 1
@alloc_ubifs_info.__key.94 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"&c->cmt_wq\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"ubifs_%d_%d\00", align 1
@ubifs_xattr_handlers = external dso_local global [0 x ptr], align 4
@.str.97 = private unnamed_addr constant [8 x i8] c"err < 0\00", align 1
@.str.98 = private unnamed_addr constant [44 x i8] c"can't format empty UBI volume: read-only %s\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"UBI volume\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"mount\00", align 1
@.str.101 = private unnamed_addr constant [42 x i8] c"cannot mount read-write - read-only media\00", align 1
@.str.102 = private unnamed_addr constant [65 x i8] c"auth_key_name, but UBIFS is built without authentication support\00", align 1
@.str.103 = private unnamed_addr constant [36 x i8] c"'compressor \22%s\22 is not compiled in\00", align 1
@.str.104 = private unnamed_addr constant [15 x i8] c"ubifs_bgt%d_%d\00", align 1
@.str.105 = private unnamed_addr constant [16 x i8] c"recovery needed\00", align 1
@.str.106 = private unnamed_addr constant [18 x i8] c"recovery deferred\00", align 1
@.str.107 = private unnamed_addr constant [19 x i8] c"recovery completed\00", align 1
@.str.108 = private unnamed_addr constant [53 x i8] c"UBIFS: mounted UBI device %d, volume %d, name \22%s\22%s\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c", R/O mode\00", align 1
@.str.110 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.111 = private unnamed_addr constant [73 x i8] c"LEB size: %d bytes (%d KiB), min./max. I/O unit sizes: %d bytes/%d bytes\00", align 1
@.str.112 = private unnamed_addr constant [98 x i8] c"FS size: %lld bytes (%lld MiB, %d LEBs), max %d LEBs, journal size %lld bytes (%lld MiB, %d LEBs)\00", align 1
@.str.113 = private unnamed_addr constant [41 x i8] c"reserved for root: %llu bytes (%llu KiB)\00", align 1
@.str.114 = private unnamed_addr constant [55 x i8] c"media format: w%d/r%d (latest is w%d/r%d), UUID %pUB%s\00", align 1
@.str.115 = private unnamed_addr constant [16 x i8] c", big LPT model\00", align 1
@.str.116 = private unnamed_addr constant [18 x i8] c", small LPT model\00", align 1
@.str.117 = private unnamed_addr constant [41 x i8] c"UBI volume is corrupted - read-only mode\00", align 1
@.str.118 = private unnamed_addr constant [21 x i8] c"read-only UBI device\00", align 1
@.str.119 = private unnamed_addr constant [35 x i8] c"static UBI volume - read-only mode\00", align 1
@.str.120 = private unnamed_addr constant [44 x i8] c"too small LEBs (%d bytes), min. is %d bytes\00", align 1
@.str.121 = private unnamed_addr constant [30 x i8] c"too few LEBs (%d), min. is %d\00", align 1
@.str.122 = private unnamed_addr constant [21 x i8] c"bad min. I/O size %d\00", align 1
@.str.123 = private unnamed_addr constant [46 x i8] c"bad write buffer size %d for %d min. I/O unit\00", align 1
@.str.124 = private unnamed_addr constant [42 x i8] c"too small LEB size %d, at least %d needed\00", align 1
@.str.125 = private unnamed_addr constant [45 x i8] c"too small log %d LEBs, required min. %d LEBs\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"no LEB for GC\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias238, ptr @__UNIQUE_ID_author274, ptr @__UNIQUE_ID_description275, ptr @__UNIQUE_ID_file271, ptr @__UNIQUE_ID_license272, ptr @__UNIQUE_ID_version273, ptr @__exitcall_ubifs_exit, ptr @__initcall__kmod_ubifs__270_2467_ubifs_init7, ptr @__modver_attr, ptr @__param_default_version, ptr @ubifs_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubifs_iget(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %union.ubifs_key, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store i64 0, ptr %3, align 8, !annotation !8
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @iget_locked(ptr noundef %0, i32 noundef %1) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %211, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 23
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %211, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3136, i32 noundef 4256) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %206, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %3, align 8
  %20 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  store i32 0, ptr %20, align 4
  %21 = call i32 @ubifs_tnc_locate(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %15, ptr noundef null, ptr noundef null) #15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %204

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, 130
  store i32 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.ubifs_ino_node, ptr %15, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  call void @set_nlink(ptr noundef nonnull %6, i32 noundef %28) #15
  %29 = getelementptr inbounds %struct.ubifs_ino_node, ptr %15, i32 0, i32 11
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 2
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ubifs_ino_node, ptr %15, i32 0, i32 12
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 3
  store i32 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.ubifs_ino_node, ptr %15, i32 0, i32 4
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 14
  store i64 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.ubifs_ino_node, ptr %15, i32 0, i32 7
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 14, i32 1
  store i32 %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.ubifs_ino_node, ptr %15, i32 0, i32 6
  %42 = load i64, ptr %41, align 8
  %43 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 15
  store i64 %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.ubifs_ino_node, ptr %15, i32 0, i32 9
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 15, i32 1
  store i32 %45, ptr %46, align 8
  %47 = getelementptr inbounds %struct.ubifs_ino_node, ptr %15, i32 0, i32 5
  %48 = load i64, ptr %47, align 8
  %49 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 16
  store i64 %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.ubifs_ino_node, ptr %15, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 16, i32 1
  store i32 %51, ptr %52, align 8
  %53 = getelementptr inbounds %struct.ubifs_ino_node, ptr %15, i32 0, i32 13
  %54 = load i32, ptr %53, align 8
  %55 = trunc i32 %54 to i16
  store i16 %55, ptr %6, align 8
  %56 = getelementptr inbounds %struct.ubifs_ino_node, ptr %15, i32 0, i32 3
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  store i64 %57, ptr %58, align 8
  %59 = getelementptr inbounds %struct.ubifs_ino_node, ptr %15, i32 0, i32 15
  %60 = load i32, ptr %59, align 8
  %61 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 15
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.ubifs_ino_node, ptr %15, i32 0, i32 14
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 12
  store i32 %63, ptr %64, align 8
  %65 = getelementptr inbounds %struct.ubifs_ino_node, ptr %15, i32 0, i32 20
  %66 = load i16, ptr %65, align 4
  %67 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 6
  %68 = trunc i16 %66 to i8
  %69 = load i8, ptr %67, align 4
  %70 = shl i8 %68, 3
  %71 = and i8 %70, 24
  %72 = and i8 %69, -25
  %73 = or i8 %71, %72
  store i8 %73, ptr %67, align 4
  %74 = getelementptr inbounds %struct.ubifs_ino_node, ptr %15, i32 0, i32 2
  %75 = load i64, ptr %74, align 8
  %76 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 1
  store i64 %75, ptr %76, align 8
  %77 = getelementptr inbounds %struct.ubifs_ino_node, ptr %15, i32 0, i32 16
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 4
  store i32 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.ubifs_ino_node, ptr %15, i32 0, i32 17
  %81 = load i32, ptr %80, align 8
  %82 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 3
  store i32 %81, ptr %82, align 8
  %83 = getelementptr inbounds %struct.ubifs_ino_node, ptr %15, i32 0, i32 19
  %84 = load i32, ptr %83, align 8
  %85 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 5
  store i32 %84, ptr %85, align 8
  %86 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 11
  store i64 %57, ptr %86, align 8
  %87 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 10
  store i64 %57, ptr %87, align 8
  %88 = trunc i32 %63 to i8
  %89 = lshr i8 %88, 4
  %90 = and i8 %89, 2
  %91 = and i8 %73, -3
  %92 = or i8 %91, %90
  store i8 %92, ptr %67, align 4
  %93 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 93
  %94 = load i64, ptr %93, align 8
  %95 = icmp sgt i64 %57, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %23
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %5, ptr noundef nonnull @.str.6, i64 noundef %57) #15
  br label %201

97:                                               ; preds = %23
  %98 = add i32 %84, %78
  %99 = icmp ugt i32 %98, 65536
  br i1 %99, label %201, label %100

100:                                              ; preds = %97
  %101 = icmp ugt i32 %60, 4096
  br i1 %101, label %201, label %102

102:                                              ; preds = %100
  %103 = icmp eq i8 %90, 0
  %104 = and i16 %55, -4096
  %105 = icmp eq i16 %104, -32768
  %106 = select i1 %103, i1 true, i1 %105
  br i1 %106, label %107, label %201

107:                                              ; preds = %102
  %108 = and i8 %68, 3
  %109 = zext i8 %108 to i32
  %110 = getelementptr [4 x ptr], ptr @ubifs_compressors, i32 0, i32 %109
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.ubifs_compressor, ptr %111, i32 0, i32 5
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %107
  %116 = load i32, ptr %18, align 4
  %117 = getelementptr inbounds %struct.ubifs_compressor, ptr %111, i32 0, i32 4
  %118 = load ptr, ptr %117, align 4
  call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %116, ptr noundef %118) #15
  br label %119

119:                                              ; preds = %115, %107
  %120 = call i32 @dbg_check_dir(ptr noundef %5, ptr noundef nonnull %6) #15
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %201

122:                                              ; preds = %119
  %123 = load i16, ptr %6, align 8
  %124 = and i16 %123, -4096
  %125 = zext i16 %124 to i32
  %126 = add nsw i32 %125, -4096
  %127 = lshr exact i32 %126, 12
  switch i32 %127, label %201 [
    i32 7, label %128
    i32 3, label %151
    i32 9, label %156
    i32 5, label %172
    i32 1, label %172
    i32 11, label %196
    i32 0, label %196
  ]

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 9
  %130 = load ptr, ptr %129, align 8
  %131 = getelementptr inbounds %struct.address_space, ptr %130, i32 0, i32 9
  store ptr @ubifs_file_address_operations, ptr %131, align 4
  %132 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 7
  store ptr @ubifs_file_inode_operations, ptr %132, align 8
  %133 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 39
  store ptr @ubifs_file_operations, ptr %133, align 8
  %134 = load i8, ptr %67, align 4
  %135 = and i8 %134, 2
  %136 = icmp eq i8 %135, 0
  %137 = load i32, ptr %61, align 4
  br i1 %136, label %149, label %138

138:                                              ; preds = %128
  %139 = add i32 %137, 1
  %140 = call noalias align 64 ptr @__kmalloc(i32 noundef %139, i32 noundef 3136) #17
  %141 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 16
  store ptr %140, ptr %141, align 8
  %142 = icmp eq ptr %140, null
  br i1 %142, label %204, label %143

143:                                              ; preds = %138
  %144 = load i32, ptr %61, align 4
  %145 = getelementptr inbounds %struct.ubifs_ino_node, ptr %15, i32 0, i32 22
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %140, ptr align 8 %145, i32 %144, i1 false)
  %146 = load ptr, ptr %141, align 8
  %147 = load i32, ptr %61, align 4
  %148 = getelementptr i8, ptr %146, i32 %147
  store i8 0, ptr %148, align 1
  br label %200

149:                                              ; preds = %128
  %150 = icmp eq i32 %137, 0
  br i1 %150, label %200, label %201

151:                                              ; preds = %122
  %152 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 7
  store ptr @ubifs_dir_inode_operations, ptr %152, align 8
  %153 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 39
  store ptr @ubifs_dir_operations, ptr %153, align 8
  %154 = load i32, ptr %61, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %200, label %201

156:                                              ; preds = %122
  %157 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 7
  store ptr @ubifs_symlink_inode_operations, ptr %157, align 8
  %158 = load i32, ptr %61, align 4
  %159 = add i32 %158, -4097
  %160 = icmp ult i32 %159, -4096
  br i1 %160, label %201, label %161

161:                                              ; preds = %156
  %162 = add nuw nsw i32 %158, 1
  %163 = call noalias align 64 ptr @__kmalloc(i32 noundef %162, i32 noundef 3136) #17
  %164 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 16
  store ptr %163, ptr %164, align 8
  %165 = icmp eq ptr %163, null
  br i1 %165, label %204, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.ubifs_ino_node, ptr %15, i32 0, i32 22
  %168 = load i32, ptr %61, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %163, ptr align 8 %167, i32 %168, i1 false)
  %169 = load ptr, ptr %164, align 8
  %170 = load i32, ptr %61, align 4
  %171 = getelementptr i8, ptr %169, i32 %170
  store i8 0, ptr %171, align 1
  br label %200

172:                                              ; preds = %122, %122
  %173 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %174 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %173, i32 noundef 3136, i32 noundef 8) #16
  %175 = getelementptr inbounds %struct.ubifs_inode, ptr %6, i32 0, i32 16
  store ptr %174, ptr %175, align 8
  %176 = icmp eq ptr %174, null
  br i1 %176, label %204, label %177

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.ubifs_ino_node, ptr %15, i32 0, i32 22
  %179 = load i32, ptr %61, align 4
  switch i32 %179, label %201 [
    i32 4, label %180
    i32 8, label %182
  ]

180:                                              ; preds = %177
  %181 = load i32, ptr %178, align 8
  br label %185

182:                                              ; preds = %177
  %183 = load i64, ptr %178, align 8
  %184 = trunc i64 %183 to i32
  br label %185

185:                                              ; preds = %182, %180
  %186 = phi i32 [ %181, %180 ], [ %184, %182 ]
  %187 = and i32 %186, 255
  %188 = lshr i32 %186, 12
  %189 = and i32 %188, 1048320
  %190 = or i32 %189, %187
  %191 = shl i32 %186, 12
  %192 = and i32 %191, -1048576
  %193 = or i32 %190, %192
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %174, ptr align 8 %178, i32 %179, i1 false)
  %194 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 7
  store ptr @ubifs_file_inode_operations, ptr %194, align 8
  %195 = load i16, ptr %6, align 8
  call void @init_special_inode(ptr noundef nonnull %6, i16 noundef zeroext %195, i32 noundef %193) #15
  br label %200

196:                                              ; preds = %122, %122
  %197 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 7
  store ptr @ubifs_file_inode_operations, ptr %197, align 8
  call void @init_special_inode(ptr noundef nonnull %6, i16 noundef zeroext %123, i32 noundef 0) #15
  %198 = load i32, ptr %61, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %196, %185, %166, %151, %149, %143
  call void @kfree(ptr noundef nonnull %15) #15
  call void @ubifs_set_inode_flags(ptr noundef nonnull %6) #15
  call void @unlock_new_inode(ptr noundef nonnull %6) #15
  br label %211

201:                                              ; preds = %196, %177, %156, %151, %149, %122, %119, %102, %100, %97, %96
  %202 = phi i32 [ %120, %119 ], [ 10, %149 ], [ 11, %151 ], [ 12, %156 ], [ 14, %196 ], [ 15, %122 ], [ 4, %100 ], [ 3, %97 ], [ 1, %96 ], [ 13, %177 ], [ 5, %102 ]
  %203 = load i32, ptr %18, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %203, i32 noundef %202) #15
  call void @ubifs_dump_node(ptr noundef %5, ptr noundef nonnull %15, i32 noundef 4256) #15
  call void @ubifs_dump_inode(ptr noundef %5, ptr noundef nonnull %6) #15
  br label %204

204:                                              ; preds = %201, %172, %161, %138, %17
  %205 = phi i32 [ %21, %17 ], [ -22, %201 ], [ -12, %138 ], [ -12, %161 ], [ -12, %172 ]
  call void @kfree(ptr noundef nonnull %15) #15
  br label %206

206:                                              ; preds = %204, %13
  %207 = phi i32 [ %205, %204 ], [ -12, %13 ]
  %208 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 10
  %209 = load i32, ptr %208, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef %209, i32 noundef %207) #15
  call void @iget_failed(ptr noundef nonnull %6) #15
  %210 = inttoptr i32 %207 to ptr
  br label %211

211:                                              ; preds = %206, %200, %8, %2
  %212 = phi ptr [ %210, %206 ], [ %6, %200 ], [ %6, %8 ], [ inttoptr (i32 -12 to ptr), %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret ptr %212
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_set_inode_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ubifs_alloc_inode(ptr nocapture noundef readnone %0) #0 {
  %2 = load ptr, ptr @ubifs_inode_slab, align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3136) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i32 392
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(120) %6, i8 0, i32 120, i1 false)
  %7 = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str.11, ptr noundef nonnull @ubifs_alloc_inode.__key) #15
  %8 = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 8
  tail call void @__init_rwsem(ptr noundef %8, ptr noundef nonnull @.str.13, ptr noundef nonnull @ubifs_alloc_inode.__key.12) #15
  %9 = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 9
  store i32 0, ptr %9, align 4
  br label %10

10:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ubifs_free_inode(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %3) #15
  %4 = load ptr, ptr @ubifs_inode_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %4, ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ubifs_dirty_inode(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 7
  %8 = tail call zeroext i1 @mutex_is_locked(ptr noundef %7) #15
  br i1 %8, label %10, label %9, !prof !9

9:                                                ; preds = %2
  tail call void @ubifs_assert_failed(ptr noundef %6, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef 403) #15
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 6
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = or i8 %12, 1
  store i8 %16, ptr %11, align 4
  br label %17

17:                                               ; preds = %15, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_write_inode(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 6
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11, !prof !9

11:                                               ; preds = %2
  tail call void @ubifs_assert_failed(ptr noundef %6, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 302) #15
  br label %12

12:                                               ; preds = %11, %2
  %13 = tail call zeroext i1 @is_bad_inode(ptr noundef %0) #15
  br i1 %13, label %38, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %15) #15
  %16 = load i8, ptr %7, align 4
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void @mutex_unlock(ptr noundef %15) #15
  br label %38

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 11
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @ubifs_jnl_write_inode(ptr noundef %6, ptr noundef %0) #15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %29 = load i32, ptr %28, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %6, ptr noundef nonnull @.str.16, i32 noundef %29, i32 noundef %25) #15
  br label %34

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 11
  %32 = load i64, ptr %31, align 8
  %33 = tail call i32 @dbg_check_inode_size(ptr noundef %6, ptr noundef %0, i64 noundef %32) #15
  br label %34

34:                                               ; preds = %30, %27, %20
  %35 = phi i32 [ %25, %27 ], [ %33, %30 ], [ 0, %20 ]
  %36 = load i8, ptr %7, align 4
  %37 = and i8 %36, -2
  store i8 %37, ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef %15) #15
  tail call void @ubifs_release_dirty_inode_budget(ptr noundef %6, ptr noundef %0) #15
  br label %38

38:                                               ; preds = %34, %19, %12
  %39 = phi i32 [ %35, %34 ], [ 0, %19 ], [ 0, %12 ]
  ret i32 %39
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ubifs_drop_inode(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 27, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ 1, %1 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ubifs_evict_inode(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 6
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 35
  %12 = load volatile i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !9

14:                                               ; preds = %10
  tail call void @ubifs_assert_failed(ptr noundef %5, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.2, i32 noundef 365) #15
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41
  tail call void @truncate_inode_pages_final(ptr noundef %16) #15
  %17 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 11
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  %21 = tail call zeroext i1 @is_bad_inode(ptr noundef %0) #15
  br i1 %21, label %30, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  store i64 0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 11
  store i64 0, ptr %24, align 8
  %25 = tail call i32 @ubifs_jnl_delete_inode(ptr noundef %5, ptr noundef %0) #15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %29 = load i32, ptr %28, align 4
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %5, ptr noundef nonnull @.str.18, i32 noundef %29, i32 noundef %25) #15
  br label %30

30:                                               ; preds = %27, %22, %20, %1
  %31 = load i8, ptr %6, align 4
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @ubifs_release_dirty_inode_budget(ptr noundef %5, ptr noundef %0) #15
  br label %39

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 87, i32 6
  %37 = load i8, ptr %36, align 4
  %38 = and i8 %37, -4
  store i8 %38, ptr %36, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !10
  br label %39

39:                                               ; preds = %35, %34, %15
  tail call void @clear_inode(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ubifs_put_super(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 102
  %5 = load i32, ptr %4, align 8
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef %5) #15
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 81
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 87
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14, !prof !9

14:                                               ; preds = %10
  tail call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.2, i32 noundef 1933) #15
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 87, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %20, label %19, !prof !9

19:                                               ; preds = %15
  tail call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef 1934) #15
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 87, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %25, label %24, !prof !9

24:                                               ; preds = %20
  tail call void @ubifs_assert_failed(ptr noundef %3, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2, i32 noundef 1935) #15
  br label %25

25:                                               ; preds = %24, %20, %1
  %26 = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 128
  tail call void @mutex_lock(ptr noundef %26) #15
  %27 = load i8, ptr %6, align 8
  %28 = and i8 %27, 2
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %87

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 117
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @kthread_stop(ptr noundef nonnull %32) #15
  store ptr null, ptr %31, align 8
  %36 = load i8, ptr %6, align 8
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi i8 [ %36, %34 ], [ %27, %30 ]
  %39 = and i8 %38, 4
  %40 = icmp eq i8 %39, 0
  %41 = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 18
  %42 = load i32, ptr %41, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %40, label %47, label %44

44:                                               ; preds = %37
  br i1 %43, label %45, label %87

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 19
  br label %79

47:                                               ; preds = %37
  br i1 %43, label %48, label %62

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 19
  br label %50

50:                                               ; preds = %58, %48
  %51 = phi i32 [ 0, %48 ], [ %59, %58 ]
  %52 = load ptr, ptr %49, align 8
  %53 = getelementptr %struct.ubifs_jhead, ptr %52, i32 %51
  %54 = getelementptr inbounds %struct.ubifs_wbuf, ptr %53, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %54) #15
  %55 = tail call i32 @ubifs_wbuf_sync_nolock(ptr noundef %53) #15
  tail call void @mutex_unlock(ptr noundef %54) #15
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  tail call void @ubifs_ro_mode(ptr noundef %3, i32 noundef %55) #15
  br label %58

58:                                               ; preds = %57, %50
  %59 = add nuw nsw i32 %51, 1
  %60 = load i32, ptr %41, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %50, label %62

62:                                               ; preds = %58, %47
  %63 = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 46
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.ubifs_mst_node, ptr %64, i32 0, i32 3
  %66 = load i32, ptr %65, align 1
  %67 = and i32 %66, -2
  store i32 %67, ptr %65, align 1
  %68 = load ptr, ptr %63, align 4
  %69 = getelementptr inbounds %struct.ubifs_mst_node, ptr %68, i32 0, i32 3
  %70 = load i32, ptr %69, align 1
  %71 = or i32 %70, 2
  store i32 %71, ptr %69, align 1
  %72 = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 121
  %73 = load i32, ptr %72, align 4
  %74 = load ptr, ptr %63, align 4
  %75 = getelementptr inbounds %struct.ubifs_mst_node, ptr %74, i32 0, i32 8
  store i32 %73, ptr %75, align 1
  %76 = tail call i32 @ubifs_write_master(ptr noundef %3) #15
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %62
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %3, ptr noundef nonnull @.str.23, i32 noundef %76) #15
  br label %87

79:                                               ; preds = %79, %45
  %80 = phi i32 [ 0, %45 ], [ %84, %79 ]
  %81 = load ptr, ptr %46, align 8
  %82 = getelementptr %struct.ubifs_jhead, ptr %81, i32 %80, i32 0, i32 11
  %83 = tail call i32 @hrtimer_cancel(ptr noundef %82) #15
  %84 = add nuw nsw i32 %80, 1
  %85 = load i32, ptr %41, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %79, label %87

87:                                               ; preds = %79, %78, %62, %44, %25
  tail call fastcc void @ubifs_umount(ptr noundef %3)
  %88 = getelementptr inbounds %struct.ubifs_info, ptr %3, i32 0, i32 100
  %89 = load ptr, ptr %88, align 4
  tail call void @ubi_close_volume(ptr noundef %89) #15
  tail call void @mutex_unlock(ptr noundef %26) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_sync_fs(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %4, i32 0, i32 18
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %4, i32 0, i32 19
  br label %16

12:                                               ; preds = %16
  %13 = add nuw nsw i32 %17, 1
  %14 = load i32, ptr %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12, %10
  %17 = phi i32 [ 0, %10 ], [ %13, %12 ]
  %18 = load ptr, ptr %11, align 8
  %19 = getelementptr %struct.ubifs_jhead, ptr %18, i32 %17
  %20 = getelementptr inbounds %struct.ubifs_wbuf, ptr %19, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %20) #15
  %21 = tail call i32 @ubifs_wbuf_sync_nolock(ptr noundef %19) #15
  tail call void @mutex_unlock(ptr noundef %20) #15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %12, label %30

23:                                               ; preds = %12, %6
  %24 = tail call i32 @ubifs_run_commit(ptr noundef %4) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ubifs_info, ptr %4, i32 0, i32 102
  %28 = load i32, ptr %27, align 8
  %29 = tail call i32 @ubi_sync(i32 noundef %28) #15
  br label %30

30:                                               ; preds = %26, %23, %16, %2
  %31 = phi i32 [ %29, %26 ], [ 0, %2 ], [ %24, %23 ], [ %21, %16 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_statfs(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %6, i32 0, i32 8
  %8 = tail call i64 @ubifs_get_free_space(ptr noundef %6) #15
  store i32 604313861, ptr %1, align 8
  %9 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 1
  store i32 4096, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %6, i32 0, i32 98
  %11 = load i32, ptr %10, align 8
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 2
  store i64 %12, ptr %13, align 8
  %14 = lshr i64 %8, 12
  %15 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 3
  store i64 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.ubifs_info, ptr %6, i32 0, i32 176
  %17 = load i64, ptr %16, align 8
  %18 = icmp ugt i64 %8, %17
  %19 = sub i64 %8, %17
  %20 = lshr i64 %19, 12
  %21 = select i1 %18, i64 %20, i64 0
  %22 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 4
  store i64 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 5
  %24 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  store i32 255, ptr %24, align 8
  %25 = load i32, ptr %7, align 4
  %26 = getelementptr %struct.ubifs_info, ptr %6, i32 0, i32 8, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = xor i32 %27, %25
  %29 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 7
  store i32 %28, ptr %29, align 8
  %30 = getelementptr %struct.ubifs_info, ptr %6, i32 0, i32 8, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr %struct.ubifs_info, ptr %6, i32 0, i32 8, i32 12
  %33 = load i32, ptr %32, align 4
  %34 = xor i32 %33, %31
  %35 = getelementptr %struct.kstatfs, ptr %1, i32 0, i32 7, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr %10, align 8
  %37 = sext i32 %36 to i64
  %38 = icmp ugt i64 %14, %37
  br i1 %38, label %39, label %40, !prof !11

39:                                               ; preds = %2
  tail call void @ubifs_assert_failed(ptr noundef %6, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2, i32 noundef 433) #15
  br label %40

40:                                               ; preds = %39, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_remount_fs(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @sync_filesystem(ptr noundef %0) #15
  %7 = tail call fastcc i32 @ubifs_parse_options(ptr noundef %5, ptr noundef %2, i32 noundef 1)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %5, ptr noundef nonnull @.str.26) #15
  br label %312

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 81
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, 2
  %14 = icmp eq i8 %13, 0
  %15 = load i32, ptr %1, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %14, label %201, label %18

18:                                               ; preds = %10
  br i1 %17, label %19, label %271

19:                                               ; preds = %18
  %20 = and i8 %12, 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %5, ptr noundef nonnull @.str.27) #15
  br label %312

23:                                               ; preds = %19
  %24 = and i8 %12, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %5, ptr noundef nonnull @.str.28) #15
  br label %312

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 30
  %29 = load i16, ptr %28, align 4
  %30 = and i16 %29, 256
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %5, ptr noundef nonnull @.str.56) #15
  %33 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 7
  %36 = load i32, ptr %35, align 8
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %5, ptr noundef nonnull @.str.57, i32 noundef %34, i32 noundef %36, i32 noundef 5, i32 noundef 0) #15
  br label %312

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 128
  tail call void @mutex_lock(ptr noundef %38) #15
  tail call void @dbg_save_space_info(ptr noundef %5) #15
  %39 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 186
  %40 = load i8, ptr %39, align 4
  %41 = or i8 %40, 16
  store i8 %41, ptr %39, align 4
  %42 = load i8, ptr %11, align 8
  %43 = and i8 %42, -3
  store i8 %43, ptr %11, align 8
  %44 = load i16, ptr %28, align 4
  %45 = and i16 %44, 2
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = tail call i32 @ubifs_fixup_free_space(ptr noundef %5) #15
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %180

50:                                               ; preds = %47, %37
  %51 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 97
  %52 = load i32, ptr %51, align 4
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %54, label %56, !prof !11

54:                                               ; preds = %50
  tail call void @ubifs_assert_failed(ptr noundef %5, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.2, i32 noundef 1232) #15
  %55 = load i32, ptr %51, align 4
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi i32 [ %52, %50 ], [ %55, %54 ]
  %58 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 86, i32 3
  %59 = load i64, ptr %58, align 8
  %60 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 86, i32 4
  %61 = load i64, ptr %60, align 8
  %62 = add i64 %61, %59
  %63 = sext i32 %57 to i64
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %5, ptr noundef nonnull @.str.64) #15
  %66 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 87
  tail call void @ubifs_dump_budg(ptr noundef %5, ptr noundef %66) #15
  tail call void @ubifs_dump_lprops(ptr noundef %5) #15
  br label %180

67:                                               ; preds = %56
  %68 = load i8, ptr %39, align 4
  %69 = and i8 %68, 2
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %67
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %5, ptr noundef nonnull @.str.58) #15
  %72 = tail call i32 @ubifs_write_rcvrd_mst_node(ptr noundef %5) #15
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %180

74:                                               ; preds = %71
  %75 = tail call i32 @ubifs_recover_size(ptr noundef %5, i1 noundef zeroext true) #15
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %180

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 122
  %79 = load ptr, ptr %78, align 8
  %80 = tail call i32 @ubifs_clean_lebs(ptr noundef %5, ptr noundef %79) #15
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %180

82:                                               ; preds = %77
  %83 = load ptr, ptr %78, align 8
  %84 = tail call i32 @ubifs_recover_inl_heads(ptr noundef %5, ptr noundef %83) #15
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %94, label %180

86:                                               ; preds = %67
  %87 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 112
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90, !prof !9

90:                                               ; preds = %86
  tail call void @ubifs_assert_failed(ptr noundef %5, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.2, i32 noundef 1748) #15
  br label %91

91:                                               ; preds = %90, %86
  %92 = tail call i32 @ubifs_clear_orphans(ptr noundef %5) #15
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %180

94:                                               ; preds = %91, %82
  %95 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 46
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.ubifs_mst_node, ptr %96, i32 0, i32 3
  %98 = load i32, ptr %97, align 1
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = or i32 %98, 1
  store i32 %102, ptr %97, align 1
  %103 = tail call i32 @ubifs_write_master(ptr noundef %5) #15
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %180

105:                                              ; preds = %101, %94
  %106 = load i16, ptr %28, align 4
  %107 = and i16 %106, 4096
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = tail call i32 @ubifs_write_sb_node(ptr noundef %5, ptr noundef %111) #15
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %180

114:                                              ; preds = %109
  %115 = load i16, ptr %28, align 4
  %116 = and i16 %115, -4097
  store i16 %116, ptr %28, align 4
  br label %117

117:                                              ; preds = %114, %105
  %118 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 75
  %119 = load i32, ptr %118, align 8
  %120 = tail call noalias ptr @vmalloc(i32 noundef %119) #17
  %121 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 37
  store ptr %120, ptr %121, align 8
  %122 = icmp eq ptr %120, null
  br i1 %122, label %180, label %123

123:                                              ; preds = %117
  %124 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8240, i32 noundef 3264, i32 noundef 2) #17
  %125 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 52
  store ptr %124, ptr %125, align 4
  %126 = icmp eq ptr %124, null
  br i1 %126, label %180, label %127

127:                                              ; preds = %123
  %128 = tail call i32 @ubifs_lpt_init(ptr noundef %5, i32 noundef 0, i32 noundef 1) #15
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %180

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 118
  %132 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @ubifs_bg_thread, ptr noundef %5, i32 noundef -1, ptr noundef nonnull @.str.60, ptr noundef %131) #15
  %133 = icmp ugt ptr %132, inttoptr (i32 -4096 to ptr)
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 117
  %136 = ptrtoint ptr %132 to i32
  store ptr null, ptr %135, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %5, ptr noundef nonnull @.str.61, ptr noundef %131, i32 noundef %136) #15
  br label %180

137:                                              ; preds = %130
  %138 = tail call i32 @wake_up_process(ptr noundef %132) #15
  %139 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 117
  store ptr %132, ptr %139, align 8
  %140 = load i32, ptr %118, align 8
  %141 = tail call noalias ptr @vmalloc(i32 noundef %140) #17
  %142 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 109
  store ptr %141, ptr %142, align 8
  %143 = icmp eq ptr %141, null
  br i1 %143, label %180, label %144

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 9
  %146 = load i32, ptr %145, align 4
  %147 = add i32 %146, 1
  %148 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 53
  %149 = load i32, ptr %148, align 8
  %150 = add i32 %149, 3
  %151 = icmp slt i32 %147, %150
  %152 = select i1 %151, i32 %147, i32 3
  %153 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 11
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %152, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %144
  %157 = tail call i32 @ubifs_consolidate_log(ptr noundef %5) #15
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %180

159:                                              ; preds = %156, %144
  %160 = load i8, ptr %39, align 4
  %161 = and i8 %160, 2
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %159
  %164 = tail call i32 @ubifs_rcvry_gc_commit(ptr noundef %5) #15
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %171, label %180

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 121
  %168 = load i32, ptr %167, align 4
  %169 = tail call i32 @ubifs_leb_unmap(ptr noundef %5, i32 noundef %168) #15
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %166, %163
  %172 = load i8, ptr %39, align 4
  %173 = and i8 %172, -17
  store i8 %173, ptr %39, align 4
  %174 = and i8 %172, 2
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %171
  %177 = and i8 %172, -19
  store i8 %177, ptr %39, align 4
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %5, ptr noundef nonnull @.str.62) #15
  br label %198

178:                                              ; preds = %171
  %179 = tail call i32 @dbg_check_space_info(ptr noundef %5) #15
  br label %198

180:                                              ; preds = %166, %163, %156, %137, %134, %127, %123, %117, %109, %101, %91, %82, %77, %74, %71, %65, %47
  %181 = phi i32 [ %48, %47 ], [ -28, %65 ], [ %72, %71 ], [ %80, %77 ], [ %84, %82 ], [ %128, %127 ], [ %136, %134 ], [ %157, %156 ], [ %164, %163 ], [ %169, %166 ], [ %103, %101 ], [ %75, %74 ], [ %92, %91 ], [ -12, %117 ], [ -12, %123 ], [ -12, %137 ], [ %112, %109 ]
  %182 = load i8, ptr %11, align 8
  %183 = or i8 %182, 2
  store i8 %183, ptr %11, align 8
  %184 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 109
  %185 = load ptr, ptr %184, align 8
  tail call void @vfree(ptr noundef %185) #15
  store ptr null, ptr %184, align 8
  %186 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 117
  %187 = load ptr, ptr %186, align 8
  %188 = icmp eq ptr %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %180
  %190 = tail call i32 @kthread_stop(ptr noundef nonnull %187) #15
  store ptr null, ptr %186, align 8
  br label %191

191:                                              ; preds = %189, %180
  %192 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 52
  %193 = load ptr, ptr %192, align 4
  tail call void @kfree(ptr noundef %193) #15
  store ptr null, ptr %192, align 4
  %194 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 37
  %195 = load ptr, ptr %194, align 8
  tail call void @vfree(ptr noundef %195) #15
  store ptr null, ptr %194, align 8
  tail call void @ubifs_lpt_free(ptr noundef %5, i32 noundef 1) #15
  %196 = load i8, ptr %39, align 4
  %197 = and i8 %196, -17
  store i8 %197, ptr %39, align 4
  br label %198

198:                                              ; preds = %191, %178, %176
  %199 = phi i32 [ %181, %191 ], [ 0, %176 ], [ %179, %178 ]
  tail call void @mutex_unlock(ptr noundef %38) #15
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %271, label %312

201:                                              ; preds = %10
  br i1 %17, label %271, label %202

202:                                              ; preds = %201
  %203 = and i8 %12, 4
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %202
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %5, ptr noundef nonnull @.str.29) #15
  br label %312

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 186
  %208 = load i8, ptr %207, align 4
  %209 = and i8 %208, 2
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %216, label %211, !prof !9

211:                                              ; preds = %206
  tail call void @ubifs_assert_failed(ptr noundef %5, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.2, i32 noundef 1882) #15
  %212 = load i8, ptr %11, align 8
  %213 = and i8 %212, 2
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %216, label %215, !prof !9

215:                                              ; preds = %211
  tail call void @ubifs_assert_failed(ptr noundef %5, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.2, i32 noundef 1883) #15
  br label %216

216:                                              ; preds = %215, %211, %206
  %217 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 128
  tail call void @mutex_lock(ptr noundef %217) #15
  %218 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 117
  %219 = load ptr, ptr %218, align 8
  %220 = icmp eq ptr %219, null
  br i1 %220, label %223, label %221

221:                                              ; preds = %216
  %222 = tail call i32 @kthread_stop(ptr noundef nonnull %219) #15
  store ptr null, ptr %218, align 8
  br label %223

223:                                              ; preds = %221, %216
  tail call void @dbg_save_space_info(ptr noundef %5) #15
  %224 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 18
  %225 = load i32, ptr %224, align 4
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %241

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 19
  br label %229

229:                                              ; preds = %237, %227
  %230 = phi i32 [ 0, %227 ], [ %238, %237 ]
  %231 = load ptr, ptr %228, align 8
  %232 = getelementptr %struct.ubifs_jhead, ptr %231, i32 %230
  %233 = getelementptr inbounds %struct.ubifs_wbuf, ptr %232, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %233) #15
  %234 = tail call i32 @ubifs_wbuf_sync_nolock(ptr noundef %232) #15
  tail call void @mutex_unlock(ptr noundef %233) #15
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %229
  tail call void @ubifs_ro_mode(ptr noundef %5, i32 noundef %234) #15
  br label %237

237:                                              ; preds = %236, %229
  %238 = add nuw nsw i32 %230, 1
  %239 = load i32, ptr %224, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %229, label %241

241:                                              ; preds = %237, %223
  %242 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 46
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr inbounds %struct.ubifs_mst_node, ptr %243, i32 0, i32 3
  %245 = load i32, ptr %244, align 1
  %246 = and i32 %245, -2
  store i32 %246, ptr %244, align 1
  %247 = load ptr, ptr %242, align 4
  %248 = getelementptr inbounds %struct.ubifs_mst_node, ptr %247, i32 0, i32 3
  %249 = load i32, ptr %248, align 1
  %250 = or i32 %249, 2
  store i32 %250, ptr %248, align 1
  %251 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 121
  %252 = load i32, ptr %251, align 4
  %253 = load ptr, ptr %242, align 4
  %254 = getelementptr inbounds %struct.ubifs_mst_node, ptr %253, i32 0, i32 8
  store i32 %252, ptr %254, align 1
  %255 = tail call i32 @ubifs_write_master(ptr noundef %5) #15
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %241
  tail call void @ubifs_ro_mode(ptr noundef %5, i32 noundef %255) #15
  br label %258

258:                                              ; preds = %257, %241
  %259 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 109
  %260 = load ptr, ptr %259, align 8
  tail call void @vfree(ptr noundef %260) #15
  store ptr null, ptr %259, align 8
  %261 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 52
  %262 = load ptr, ptr %261, align 4
  tail call void @kfree(ptr noundef %262) #15
  store ptr null, ptr %261, align 4
  %263 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 37
  %264 = load ptr, ptr %263, align 8
  tail call void @vfree(ptr noundef %264) #15
  store ptr null, ptr %263, align 8
  tail call void @ubifs_lpt_free(ptr noundef %5, i32 noundef 1) #15
  %265 = load i8, ptr %11, align 8
  %266 = or i8 %265, 2
  store i8 %266, ptr %11, align 8
  %267 = tail call i32 @dbg_check_space_info(ptr noundef %5) #15
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %258
  tail call void @ubifs_ro_mode(ptr noundef %5, i32 noundef %267) #15
  br label %270

270:                                              ; preds = %269, %258
  tail call void @mutex_unlock(ptr noundef %217) #15
  br label %271

271:                                              ; preds = %270, %201, %198, %18
  %272 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 30
  %273 = load i16, ptr %272, align 4
  %274 = and i16 %273, 32
  %275 = icmp eq i16 %274, 0
  br i1 %275, label %298, label %276

276:                                              ; preds = %271
  %277 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 50, i32 2
  %278 = load ptr, ptr %277, align 8
  %279 = icmp eq ptr %278, null
  br i1 %279, label %280, label %302

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 48
  %282 = load i32, ptr %281, align 4
  br label %283

283:                                              ; preds = %290, %280
  %284 = phi i32 [ %282, %280 ], [ 131072, %290 ]
  %285 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %284, i32 noundef 11456) #17
  store ptr %285, ptr %277, align 8
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %302

287:                                              ; preds = %283
  %288 = load i32, ptr %281, align 4
  %289 = icmp sgt i32 %288, 131072
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  store i32 131072, ptr %281, align 4
  br label %283

291:                                              ; preds = %287
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %5, ptr noundef nonnull @.str.68, i32 noundef %288) #15
  %292 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 193
  %293 = load i16, ptr %292, align 8
  %294 = and i16 %293, -13
  %295 = or i16 %294, 4
  store i16 %295, ptr %292, align 8
  %296 = load i16, ptr %272, align 4
  %297 = and i16 %296, -33
  store i16 %297, ptr %272, align 4
  br label %302

298:                                              ; preds = %271
  %299 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 49
  tail call void @mutex_lock(ptr noundef %299) #15
  %300 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 50, i32 2
  %301 = load ptr, ptr %300, align 8
  tail call void @kfree(ptr noundef %301) #15
  store ptr null, ptr %300, align 8
  tail call void @mutex_unlock(ptr noundef %299) #15
  br label %302

302:                                              ; preds = %298, %291, %283, %276
  %303 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 186
  %304 = load i8, ptr %303, align 4
  %305 = and i8 %304, 2
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %302
  %308 = getelementptr inbounds %struct.ubifs_info, ptr %5, i32 0, i32 86, i32 1
  %309 = load i32, ptr %308, align 4
  %310 = icmp slt i32 %309, 1
  br i1 %310, label %311, label %312, !prof !11

311:                                              ; preds = %307
  tail call void @ubifs_assert_failed(ptr noundef %5, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.2, i32 noundef 2043) #15
  br label %312

312:                                              ; preds = %311, %307, %302, %205, %198, %32, %26, %22, %9
  %313 = phi i32 [ %7, %9 ], [ -30, %205 ], [ -30, %22 ], [ -30, %26 ], [ %199, %198 ], [ 0, %307 ], [ 0, %311 ], [ 0, %302 ], [ -30, %32 ]
  ret i32 %313
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_show_options(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %6, i32 0, i32 193
  %8 = load i16, ptr %7, align 8
  %9 = trunc i16 %8 to i2
  switch i2 %9, label %13 [
    i2 -2, label %11
    i2 1, label %10
  ]

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %2
  %12 = phi ptr [ @.str.70, %10 ], [ @.str.69, %2 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %12) #15
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i16, ptr %7, align 8
  %15 = lshr i16 %14, 2
  %16 = trunc i16 %15 to i2
  switch i2 %16, label %20 [
    i2 -2, label %18
    i2 1, label %17
  ]

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi ptr [ @.str.72, %17 ], [ @.str.71, %13 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %19) #15
  br label %20

20:                                               ; preds = %18, %13
  %21 = load i16, ptr %7, align 8
  %22 = lshr i16 %21, 4
  %23 = trunc i16 %22 to i2
  switch i2 %23, label %27 [
    i2 -2, label %25
    i2 1, label %24
  ]

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi ptr [ @.str.74, %24 ], [ @.str.73, %20 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %26) #15
  br label %27

27:                                               ; preds = %25, %20
  %28 = load i16, ptr %7, align 8
  %29 = and i16 %28, 64
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = lshr i16 %28, 7
  %33 = and i16 %32, 3
  %34 = zext i16 %33 to i32
  %35 = getelementptr [4 x ptr], ptr @ubifs_compressors, i32 0, i32 %34
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ubifs_compressor, ptr %36, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.75, ptr noundef %38) #15
  br label %39

39:                                               ; preds = %31, %27
  %40 = tail call ptr @ubifs_assert_action_name(ptr noundef %6) #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.76, ptr noundef %40) #15
  %41 = getelementptr inbounds %struct.ubifs_info, ptr %6, i32 0, i32 102
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, ptr %6, i32 0, i32 102, i32 1
  %44 = load i32, ptr %43, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef %42, i32 noundef %44) #15
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ubifs_init() #6 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.78, i32 noundef 512, i32 noundef 0, i32 noundef 1179648, ptr noundef nonnull @inode_slab_ctor) #15
  store ptr %1, ptr @ubifs_inode_slab, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @register_shrinker(ptr noundef nonnull @ubifs_shrinker_info) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %3
  %7 = tail call i32 @ubifs_compressors_init() #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  tail call void @dbg_debugfs_init() #15
  %10 = tail call i32 @ubifs_sysfs_init() #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = tail call i32 @register_filesystem(ptr noundef nonnull @ubifs_fs_type) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @llvm.thread.pointer() #15
  %17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 52
  %18 = load i32, ptr %17, align 8
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %18, i32 noundef %13) #18
  tail call void @ubifs_sysfs_exit() #15
  br label %20

20:                                               ; preds = %15, %9
  %21 = phi i32 [ %10, %9 ], [ %13, %15 ]
  tail call void @dbg_debugfs_exit() #15
  tail call void @ubifs_compressors_exit() #15
  br label %22

22:                                               ; preds = %20, %6
  %23 = phi i32 [ %7, %6 ], [ %21, %20 ]
  tail call void @unregister_shrinker(ptr noundef nonnull @ubifs_shrinker_info) #15
  br label %24

24:                                               ; preds = %22, %3
  %25 = phi i32 [ %4, %3 ], [ %23, %22 ]
  %26 = load ptr, ptr @ubifs_inode_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %26) #15
  br label %27

27:                                               ; preds = %24, %12, %0
  %28 = phi i32 [ %25, %24 ], [ -12, %0 ], [ 0, %12 ]
  ret i32 %28
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ubifs_exit() #6 section ".exit.text" {
  %1 = load volatile ptr, ptr @ubifs_infos, align 4
  %2 = icmp eq ptr %1, @ubifs_infos
  br i1 %2, label %4, label %3, !prof !9

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2471, i32 noundef 9, ptr noundef null) #15
  br label %4

4:                                                ; preds = %3, %0
  %5 = load volatile i32, ptr @ubifs_clean_zn_cnt, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !9

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2472, i32 noundef 9, ptr noundef null) #15
  br label %8

8:                                                ; preds = %7, %4
  tail call void @dbg_debugfs_exit() #15
  tail call void @ubifs_sysfs_exit() #15
  tail call void @ubifs_compressors_exit() #15
  tail call void @unregister_shrinker(ptr noundef nonnull @ubifs_shrinker_info) #15
  tail call void @rcu_barrier() #15
  %9 = load ptr, ptr @ubifs_inode_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %9) #15
  %10 = tail call i32 @unregister_filesystem(ptr noundef nonnull @ubifs_fs_type) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dbg_debugfs_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_sysfs_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_compressors_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubifs_default_version_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4
  %4 = call i32 @kstrtoint(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %3) #15
  %5 = icmp ne i32 %4, 0
  %6 = load i32, ptr %3, align 4
  %7 = icmp slt i32 %6, 4
  %8 = select i1 %5, i1 true, i1 %7
  %9 = icmp sgt i32 %6, 5
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @param_set_int(ptr noundef %0, ptr noundef %1) #15
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi i32 [ %12, %11 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_int(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_int(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_locate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_jnl_write_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_inode_size(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_release_dirty_inode_budget(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_jnl_delete_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_ro_mode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_write_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ubifs_umount(ptr noundef %0) unnamed_addr #0 {
  tail call void @dbg_debugfs_exit_fs(ptr noundef %0) #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubifs_infos_lock) #15
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 127
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 127, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %7 = load i16, ptr @ubifs_infos_lock, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr @ubifs_infos_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 117
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @kthread_stop(ptr noundef nonnull %10) #15
  br label %14

14:                                               ; preds = %12, %1
  tail call fastcc void @destroy_journal(ptr noundef %0)
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 18
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %22, %18
  %23 = phi ptr [ %36, %22 ], [ %16, %18 ]
  %24 = phi i32 [ %33, %22 ], [ 0, %18 ]
  %25 = getelementptr %struct.ubifs_jhead, ptr %23, i32 %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void @kfree(ptr noundef %26) #15
  %27 = load ptr, ptr %15, align 8
  %28 = getelementptr %struct.ubifs_jhead, ptr %27, i32 %24, i32 0, i32 14
  %29 = load ptr, ptr %28, align 8
  tail call void @kfree(ptr noundef %29) #15
  %30 = load ptr, ptr %15, align 8
  %31 = getelementptr %struct.ubifs_jhead, ptr %30, i32 %24, i32 3
  %32 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %32) #15
  %33 = add nuw nsw i32 %24, 1
  %34 = load i32, ptr %19, align 4
  %35 = icmp slt i32 %33, %34
  %36 = load ptr, ptr %15, align 8
  br i1 %35, label %22, label %37

37:                                               ; preds = %22, %18
  %38 = phi ptr [ %16, %18 ], [ %36, %22 ]
  tail call void @kfree(ptr noundef %38) #15
  store ptr null, ptr %15, align 8
  br label %39

39:                                               ; preds = %37, %14
  tail call fastcc void @free_orphans(ptr noundef %0)
  tail call void @ubifs_lpt_free(ptr noundef %0, i32 noundef 0) #15
  %40 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 182
  %41 = load ptr, ptr %40, align 4
  tail call void @kfree(ptr noundef %41) #15
  store ptr null, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 183
  %43 = load ptr, ptr %42, align 8
  tail call void @kfree(ptr noundef %43) #15
  store ptr null, ptr %42, align 8
  %44 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 36
  %45 = load ptr, ptr %44, align 4
  tail call void @kfree(ptr noundef %45) #15
  %46 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 191
  %47 = load ptr, ptr %46, align 8
  tail call void @kfree(ptr noundef %47) #15
  %48 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 46
  %49 = load ptr, ptr %48, align 4
  tail call void @kfree(ptr noundef %49) #15
  %50 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 52
  %51 = load ptr, ptr %50, align 4
  tail call void @kfree(ptr noundef %51) #15
  %52 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 50, i32 2
  %53 = load ptr, ptr %52, align 8
  tail call void @kfree(ptr noundef %53) #15
  %54 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 37
  %55 = load ptr, ptr %54, align 8
  tail call void @vfree(ptr noundef %55) #15
  %56 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 122
  %57 = load ptr, ptr %56, align 8
  tail call void @vfree(ptr noundef %57) #15
  %58 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 45
  %59 = load ptr, ptr %58, align 8
  tail call void @kfree(ptr noundef %59) #15
  %60 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  tail call void @kfree(ptr noundef %61) #15
  tail call void @ubifs_debugging_exit(ptr noundef %0) #15
  tail call void @ubifs_sysfs_unregister(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_close_volume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_sync_nolock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dbg_debugfs_exit_fs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @destroy_journal(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 190
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %5, label %9

5:                                                ; preds = %9, %1
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 22
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %26, label %17

9:                                                ; preds = %9, %1
  %10 = phi ptr [ %15, %9 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  tail call void @kfree(ptr noundef %10) #15
  %15 = load volatile ptr, ptr %2, align 4
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %5, label %9

17:                                               ; preds = %17, %5
  %18 = phi ptr [ %24, %17 ], [ %7, %5 ]
  %19 = getelementptr i8, ptr %18, i32 -12
  %20 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %18, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  tail call void @kfree(ptr noundef %19) #15
  %24 = load volatile ptr, ptr %6, align 4
  %25 = icmp eq ptr %24, %6
  br i1 %25, label %26, label %17

26:                                               ; preds = %17, %5
  tail call void @ubifs_destroy_idx_gc(ptr noundef %0) #15
  tail call void @ubifs_destroy_size_tree(ptr noundef %0) #15
  tail call void @ubifs_tnc_close(ptr noundef %0) #15
  %27 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 15
  %28 = tail call ptr @rb_first_postorder(ptr noundef %27) #15
  %29 = icmp eq ptr %28, null
  %30 = getelementptr i8, ptr %28, i32 -20
  %31 = icmp eq ptr %30, null
  %32 = or i1 %29, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %33, %26
  %34 = phi ptr [ %38, %33 ], [ %30, %26 ]
  %35 = getelementptr inbounds %struct.ubifs_bud, ptr %34, i32 0, i32 4
  %36 = tail call ptr @rb_next_postorder(ptr noundef %35) #15
  %37 = icmp eq ptr %36, null
  %38 = getelementptr i8, ptr %36, i32 -20
  tail call void @kfree(ptr noundef nonnull %34) #15
  %39 = icmp eq ptr %38, null
  %40 = or i1 %37, %39
  br i1 %40, label %41, label %33

41:                                               ; preds = %33, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_wbufs(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 18
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %9, %5
  %10 = phi ptr [ %23, %9 ], [ %3, %5 ]
  %11 = phi i32 [ %20, %9 ], [ 0, %5 ]
  %12 = getelementptr %struct.ubifs_jhead, ptr %10, i32 %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #15
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr %struct.ubifs_jhead, ptr %14, i32 %11, i32 0, i32 14
  %16 = load ptr, ptr %15, align 8
  tail call void @kfree(ptr noundef %16) #15
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr %struct.ubifs_jhead, ptr %17, i32 %11, i32 3
  %19 = load ptr, ptr %18, align 4
  tail call void @kfree(ptr noundef %19) #15
  %20 = add nuw nsw i32 %11, 1
  %21 = load i32, ptr %6, align 4
  %22 = icmp slt i32 %20, %21
  %23 = load ptr, ptr %2, align 8
  br i1 %22, label %9, label %24

24:                                               ; preds = %9, %5
  %25 = phi ptr [ %3, %5 ], [ %23, %9 ]
  tail call void @kfree(ptr noundef %25) #15
  store ptr null, ptr %2, align 8
  br label %26

26:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_orphans(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 107
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %9, %1
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 104
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %29, label %20

9:                                                ; preds = %9, %1
  %10 = phi ptr [ %18, %9 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.ubifs_orphan, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  store ptr %12, ptr %2, align 8
  %13 = getelementptr inbounds %struct.ubifs_orphan, ptr %10, i32 0, i32 1
  %14 = getelementptr inbounds %struct.ubifs_orphan, ptr %10, i32 0, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  tail call void @kfree(ptr noundef nonnull %10) #15
  %18 = load ptr, ptr %2, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %5, label %9

20:                                               ; preds = %20, %5
  %21 = phi ptr [ %27, %20 ], [ %7, %5 ]
  %22 = getelementptr i8, ptr %21, i32 -12
  %23 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %21, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %24, ptr %26, align 4
  store volatile ptr %25, ptr %24, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %23, align 4
  tail call void @kfree(ptr noundef %22) #15
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.24) #15
  %27 = load volatile ptr, ptr %6, align 4
  %28 = icmp eq ptr %27, %6
  br i1 %28, label %29, label %20

29:                                               ; preds = %20, %5
  %30 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 109
  %31 = load ptr, ptr %30, align 8
  tail call void @vfree(ptr noundef %31) #15
  store ptr null, ptr %30, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_lpt_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_debugging_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_sysfs_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_destroy_idx_gc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_destroy_size_tree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_tnc_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_run_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_sync(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ubifs_get_free_space(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ubifs_parse_options(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca [3 x %struct.substring_t], align 4
  store ptr %1, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %142, label %7

7:                                                ; preds = %3
  %8 = call ptr @strsep(ptr noundef nonnull %4, ptr noundef nonnull @.str.31) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %142, label %10

10:                                               ; preds = %7
  %11 = icmp eq i32 %2, 0
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 183
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 182
  %14 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 193
  br label %16

16:                                               ; preds = %139, %10
  %17 = phi ptr [ %8, %10 ], [ %140, %139 ]
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %139, label %20

20:                                               ; preds = %16
  %21 = call i32 @match_token(ptr noundef nonnull %17, ptr noundef nonnull @tokens, ptr noundef nonnull %5) #15
  switch i32 %21, label %129 [
    i32 0, label %22
    i32 1, label %26
    i32 2, label %30
    i32 3, label %36
    i32 4, label %42
    i32 5, label %48
    i32 6, label %54
    i32 7, label %93
    i32 8, label %119
    i32 9, label %124
    i32 10, label %139
  ]

22:                                               ; preds = %20
  %23 = load i16, ptr %15, align 8
  %24 = and i16 %23, -4
  %25 = or i16 %24, 2
  store i16 %25, ptr %15, align 8
  br label %139

26:                                               ; preds = %20
  %27 = load i16, ptr %15, align 8
  %28 = and i16 %27, -4
  %29 = or i16 %28, 1
  store i16 %29, ptr %15, align 8
  br label %139

30:                                               ; preds = %20
  %31 = load i16, ptr %15, align 8
  %32 = and i16 %31, -13
  %33 = or i16 %32, 8
  store i16 %33, ptr %15, align 8
  %34 = load i16, ptr %14, align 4
  %35 = or i16 %34, 32
  store i16 %35, ptr %14, align 4
  br label %139

36:                                               ; preds = %20
  %37 = load i16, ptr %15, align 8
  %38 = and i16 %37, -13
  %39 = or i16 %38, 4
  store i16 %39, ptr %15, align 8
  %40 = load i16, ptr %14, align 4
  %41 = and i16 %40, -33
  store i16 %41, ptr %14, align 4
  br label %139

42:                                               ; preds = %20
  %43 = load i16, ptr %15, align 8
  %44 = and i16 %43, -49
  %45 = or i16 %44, 32
  store i16 %45, ptr %15, align 8
  %46 = load i16, ptr %14, align 4
  %47 = and i16 %46, -17
  store i16 %47, ptr %14, align 4
  br label %139

48:                                               ; preds = %20
  %49 = load i16, ptr %15, align 8
  %50 = and i16 %49, -49
  %51 = or i16 %50, 16
  store i16 %51, ptr %15, align 8
  %52 = load i16, ptr %14, align 4
  %53 = or i16 %52, 16
  store i16 %53, ptr %14, align 4
  br label %139

54:                                               ; preds = %20
  %55 = call ptr @match_strdup(ptr noundef nonnull %5) #15
  %56 = icmp eq ptr %55, null
  br i1 %56, label %142, label %57

57:                                               ; preds = %54
  %58 = call i32 @strcmp(ptr noundef nonnull %55, ptr noundef nonnull dereferenceable(5) @.str.32)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i16, ptr %15, align 8
  %62 = and i16 %61, -385
  br label %84

63:                                               ; preds = %57
  %64 = call i32 @strcmp(ptr noundef nonnull %55, ptr noundef nonnull dereferenceable(4) @.str.33)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i16, ptr %15, align 8
  %68 = and i16 %67, -385
  %69 = or i16 %68, 128
  br label %84

70:                                               ; preds = %63
  %71 = call i32 @strcmp(ptr noundef nonnull %55, ptr noundef nonnull dereferenceable(5) @.str.34)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i16, ptr %15, align 8
  %75 = and i16 %74, -385
  %76 = or i16 %75, 256
  br label %84

77:                                               ; preds = %70
  %78 = call i32 @strcmp(ptr noundef nonnull %55, ptr noundef nonnull dereferenceable(5) @.str.35)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i16, ptr %15, align 8
  %82 = or i16 %81, 384
  br label %84

83:                                               ; preds = %77
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef nonnull %55) #15
  call void @kfree(ptr noundef nonnull %55) #15
  br label %142

84:                                               ; preds = %80, %73, %66, %60
  %85 = phi i16 [ %62, %60 ], [ %76, %73 ], [ %82, %80 ], [ %69, %66 ]
  store i16 %85, ptr %15, align 8
  call void @kfree(ptr noundef nonnull %55) #15
  %86 = load i16, ptr %15, align 8
  %87 = or i16 %86, 64
  store i16 %87, ptr %15, align 8
  %88 = load i16, ptr %14, align 4
  %89 = lshr i16 %86, 1
  %90 = and i16 %89, 192
  %91 = and i16 %88, -193
  %92 = or i16 %91, %90
  store i16 %92, ptr %14, align 4
  br label %139

93:                                               ; preds = %20
  %94 = call ptr @match_strdup(ptr noundef nonnull %5) #15
  %95 = icmp eq ptr %94, null
  br i1 %95, label %142, label %96

96:                                               ; preds = %93
  %97 = call i32 @strcmp(ptr noundef nonnull %94, ptr noundef nonnull dereferenceable(7) @.str.37)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i16, ptr %14, align 4
  %101 = and i16 %100, -1537
  br label %117

102:                                              ; preds = %96
  %103 = call i32 @strcmp(ptr noundef nonnull %94, ptr noundef nonnull dereferenceable(10) @.str.38)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i16, ptr %14, align 4
  %107 = and i16 %106, -1537
  %108 = or i16 %107, 512
  br label %117

109:                                              ; preds = %102
  %110 = call i32 @strcmp(ptr noundef nonnull %94, ptr noundef nonnull dereferenceable(6) @.str.39)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i16, ptr %14, align 4
  %114 = and i16 %113, -1537
  %115 = or i16 %114, 1024
  br label %117

116:                                              ; preds = %109
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef nonnull %94) #15
  call void @kfree(ptr noundef nonnull %94) #15
  br label %142

117:                                              ; preds = %112, %105, %99
  %118 = phi i16 [ %101, %99 ], [ %115, %112 ], [ %108, %105 ]
  store i16 %118, ptr %14, align 4
  call void @kfree(ptr noundef nonnull %94) #15
  br label %139

119:                                              ; preds = %20
  br i1 %11, label %120, label %139

120:                                              ; preds = %119
  %121 = load ptr, ptr %5, align 4
  %122 = call noalias ptr @kstrdup(ptr noundef %121, i32 noundef 3264) #15
  store ptr %122, ptr %13, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %142, label %139

124:                                              ; preds = %20
  br i1 %11, label %125, label %139

125:                                              ; preds = %124
  %126 = load ptr, ptr %5, align 4
  %127 = call noalias ptr @kstrdup(ptr noundef %126, i32 noundef 3264) #15
  store ptr %127, ptr %12, align 8
  %128 = icmp eq ptr %127, null
  br i1 %128, label %142, label %139

129:                                              ; preds = %20
  %130 = load ptr, ptr %0, align 8
  %131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull %17) #18
  %132 = call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(5) @.str.55) #15
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef nonnull %17) #15
  br label %142

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.super_block, ptr %130, i32 0, i32 10
  %137 = load i32, ptr %136, align 4
  %138 = or i32 %137, 16
  store i32 %138, ptr %136, align 4
  br label %139

139:                                              ; preds = %135, %125, %124, %120, %119, %117, %84, %48, %42, %36, %30, %26, %22, %20, %16
  %140 = call ptr @strsep(ptr noundef nonnull %4, ptr noundef nonnull @.str.31) #15
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %16

142:                                              ; preds = %139, %134, %125, %120, %116, %93, %83, %54, %7, %3
  %143 = phi i32 [ 0, %3 ], [ -22, %134 ], [ -22, %83 ], [ -22, %116 ], [ 0, %7 ], [ 0, %139 ], [ -12, %120 ], [ -12, %125 ], [ -12, %54 ], [ -12, %93 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  ret i32 %143
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bu_init(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 32
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %7, !prof !11

6:                                                ; preds = %1
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.2, i32 noundef 1201) #15
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 50, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 48
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %21, %11
  %15 = phi i32 [ %13, %11 ], [ 131072, %21 ]
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %15, i32 noundef 11456) #17
  store ptr %16, ptr %8, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load i32, ptr %12, align 4
  %20 = icmp sgt i32 %19, 131072
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 131072, ptr %12, align 4
  br label %14

22:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str.68, i32 noundef %19) #15
  %23 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 193
  %24 = load i16, ptr %23, align 8
  %25 = and i16 %24, -13
  %26 = or i16 %25, 4
  store i16 %26, ptr %23, align 8
  %27 = load i16, ptr %2, align 4
  %28 = and i16 %27, -33
  store i16 %28, ptr %2, align 4
  br label %29

29:                                               ; preds = %22, %14, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @match_strdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @dbg_save_space_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_fixup_free_space(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @check_free_space(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 97
  %3 = load i32, ptr %2, align 4
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %5, label %7, !prof !11

5:                                                ; preds = %1
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.2, i32 noundef 1232) #15
  %6 = load i32, ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %3, %1 ], [ %6, %5 ]
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 3
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86, i32 4
  %12 = load i64, ptr %11, align 8
  %13 = add i64 %12, %10
  %14 = sext i32 %8 to i64
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.64) #15
  %17 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87
  tail call void @ubifs_dump_budg(ptr noundef %0, ptr noundef %17) #15
  tail call void @ubifs_dump_lprops(ptr noundef %0) #15
  br label %18

18:                                               ; preds = %16, %7
  %19 = phi i32 [ -28, %16 ], [ 0, %7 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_write_rcvrd_mst_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_recover_size(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_clean_lebs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_recover_inl_heads(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_clear_orphans(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_write_sb_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_lpt_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_bg_thread(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_consolidate_log(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_rcvry_gc_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_space_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_budg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_lprops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_assert_action_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @inode_slab_ctor(ptr noundef %0) #0 {
  tail call void @inode_init_once(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @ubifs_compressors_init() local_unnamed_addr #11 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dbg_debugfs_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_sysfs_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_shrink_count(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_shrink_scan(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ubifs_mount(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store ptr null, ptr %5, align 4, !annotation !8
  %6 = icmp eq ptr %2, null
  br i1 %6, label %62, label %7

7:                                                ; preds = %4
  %8 = load i8, ptr %2, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %62, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @ubi_open_volume_path(ptr noundef nonnull %2, i32 noundef 1) #15
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %63

13:                                               ; preds = %10
  %14 = load i8, ptr %2, align 1
  %15 = icmp eq i8 %14, 117
  br i1 %15, label %16, label %62

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %2, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 98
  br i1 %19, label %20, label %62

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %2, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 105
  br i1 %23, label %24, label %62

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %2, i32 3
  %26 = load i8, ptr %25, align 1
  switch i8 %26, label %33 [
    i8 58, label %27
    i8 33, label %27
  ]

27:                                               ; preds = %24, %24
  %28 = getelementptr i8, ptr %2, i32 4
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call ptr @ubi_open_volume_nm(i32 noundef 0, ptr noundef %28, i32 noundef 1) #15
  br label %63

33:                                               ; preds = %27, %24
  %34 = zext i8 %26 to i32
  %35 = add nsw i32 %34, -58
  %36 = icmp ult i32 %35, -10
  br i1 %36, label %62, label %37

37:                                               ; preds = %33
  %38 = call i32 @simple_strtoul(ptr noundef %25, ptr noundef nonnull %5, i32 noundef 0) #15
  %39 = load ptr, ptr %5, align 4
  %40 = load i8, ptr %39, align 1
  switch i8 %40, label %62 [
    i8 0, label %41
    i8 95, label %43
    i8 58, label %56
    i8 33, label %56
  ]

41:                                               ; preds = %37
  %42 = call ptr @ubi_open_volume(i32 noundef 0, i32 noundef %38, i32 noundef 1) #15
  br label %63

43:                                               ; preds = %37
  %44 = getelementptr i8, ptr %39, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = add nsw i32 %46, -58
  %48 = icmp ult i32 %47, -10
  br i1 %48, label %62, label %49

49:                                               ; preds = %43
  %50 = call i32 @simple_strtoul(ptr noundef %44, ptr noundef nonnull %5, i32 noundef 0) #15
  %51 = load ptr, ptr %5, align 4
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = call ptr @ubi_open_volume(i32 noundef %38, i32 noundef %50, i32 noundef 1) #15
  br label %63

56:                                               ; preds = %37, %37
  %57 = getelementptr i8, ptr %39, i32 1
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  store ptr %57, ptr %5, align 4
  %61 = call ptr @ubi_open_volume_nm(i32 noundef %38, ptr noundef %57, i32 noundef 1) #15
  br label %63

62:                                               ; preds = %56, %49, %43, %37, %33, %20, %16, %13, %7, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %66

63:                                               ; preds = %60, %54, %41, %31, %10
  %64 = phi ptr [ %32, %31 ], [ %42, %41 ], [ %55, %54 ], [ %61, %60 ], [ %11, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  %65 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %76

66:                                               ; preds = %63, %62
  %67 = phi ptr [ inttoptr (i32 -22 to ptr), %62 ], [ %64, %63 ]
  %68 = and i32 %1, 32768
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %793

70:                                               ; preds = %66
  %71 = tail call ptr @llvm.thread.pointer() #15
  %72 = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 52
  %73 = load i32, ptr %72, align 8
  %74 = ptrtoint ptr %67 to i32
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %73, ptr noundef %2, i32 noundef %74) #18
  br label %793

76:                                               ; preds = %63
  %77 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %78 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %77, i32 noundef 3520, i32 noundef 2296) #16
  %79 = icmp eq ptr %78, null
  br i1 %79, label %790, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 5
  store i32 0, ptr %81, align 8
  %82 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 26
  store i32 0, ptr %82, align 8
  %83 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 17
  store i32 0, ptr %83, align 8
  %84 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 85
  store i32 0, ptr %84, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 108
  store i32 0, ptr %85, align 4
  %86 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 24
  call void @__init_rwsem(ptr noundef %86, ptr noundef nonnull @.str.81, ptr noundef nonnull @alloc_ubifs_info.__key) #15
  %87 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 144
  call void @__mutex_init(ptr noundef %87, ptr noundef nonnull @.str.83, ptr noundef nonnull @alloc_ubifs_info.__key.82) #15
  %88 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 31
  call void @__mutex_init(ptr noundef %88, ptr noundef nonnull @.str.85, ptr noundef nonnull @alloc_ubifs_info.__key.84) #15
  %89 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 12
  call void @__mutex_init(ptr noundef %89, ptr noundef nonnull @.str.87, ptr noundef nonnull @alloc_ubifs_info.__key.86) #15
  %90 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 128
  call void @__mutex_init(ptr noundef %90, ptr noundef nonnull @.str.89, ptr noundef nonnull @alloc_ubifs_info.__key.88) #15
  %91 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 49
  call void @__mutex_init(ptr noundef %91, ptr noundef nonnull @.str.91, ptr noundef nonnull @alloc_ubifs_info.__key.90) #15
  %92 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 51
  call void @__mutex_init(ptr noundef %92, ptr noundef nonnull @.str.93, ptr noundef nonnull @alloc_ubifs_info.__key.92) #15
  %93 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 27
  call void @__init_waitqueue_head(ptr noundef %93, ptr noundef nonnull @.str.95, ptr noundef nonnull @alloc_ubifs_info.__key.94) #15
  %94 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 15
  store ptr null, ptr %94, align 8
  %95 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 44
  store ptr null, ptr %95, align 4
  %96 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 192
  store ptr null, ptr %96, align 4
  %97 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 103
  store ptr null, ptr %97, align 8
  %98 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 127
  store volatile ptr %98, ptr %98, align 8
  %99 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 127, i32 1
  store ptr %98, ptr %99, align 4
  %100 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 123
  store volatile ptr %100, ptr %100, align 4
  %101 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 123, i32 1
  store ptr %100, ptr %101, align 8
  %102 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 187
  store volatile ptr %102, ptr %102, align 8
  %103 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 187, i32 1
  store ptr %102, ptr %103, align 4
  %104 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 188
  store volatile ptr %104, ptr %104, align 8
  %105 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 188, i32 1
  store ptr %104, ptr %105, align 4
  %106 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 160
  store volatile ptr %106, ptr %106, align 8
  %107 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 160, i32 1
  store ptr %106, ptr %107, align 4
  %108 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 161
  store volatile ptr %108, ptr %108, align 8
  %109 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 161, i32 1
  store ptr %108, ptr %109, align 4
  %110 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 162
  store volatile ptr %110, ptr %110, align 8
  %111 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 162, i32 1
  store ptr %110, ptr %111, align 4
  %112 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 163
  store volatile ptr %112, ptr %112, align 8
  %113 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 163, i32 1
  store ptr %112, ptr %113, align 4
  %114 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 190
  store volatile ptr %114, ptr %114, align 8
  %115 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 190, i32 1
  store ptr %114, ptr %115, align 4
  %116 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 22
  store volatile ptr %116, ptr %116, align 8
  %117 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 22, i32 1
  store ptr %116, ptr %117, align 4
  %118 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 104
  store volatile ptr %118, ptr %118, align 4
  %119 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 104, i32 1
  store ptr %118, ptr %119, align 8
  %120 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 105
  store volatile ptr %120, ptr %120, align 4
  %121 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 105, i32 1
  store ptr %120, ptr %121, align 8
  %122 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 30
  %123 = load i16, ptr %122, align 4
  %124 = and i16 %123, -1553
  %125 = or i16 %124, 528
  store i16 %125, ptr %122, align 4
  %126 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 2
  store i32 64, ptr %126, align 8
  %127 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 11
  store i32 3, ptr %127, align 4
  %128 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 9
  store i32 3, ptr %128, align 4
  %129 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 102
  call void @ubi_get_volume_info(ptr noundef %64, ptr noundef %129) #15
  %130 = load i32, ptr %129, align 8
  %131 = getelementptr inbounds %struct.ubifs_info, ptr %78, i32 0, i32 101
  %132 = call i32 @ubi_get_device_info(i32 noundef %130, ptr noundef %131) #15
  %133 = call ptr @sget(ptr noundef %0, ptr noundef nonnull @sb_test, ptr noundef nonnull @sb_set, i32 noundef %1, ptr noundef nonnull %78) #15
  %134 = icmp ugt ptr %133, inttoptr (i32 -4096 to ptr)
  br i1 %134, label %135, label %137

135:                                              ; preds = %80
  %136 = ptrtoint ptr %133 to i32
  call void @kfree(ptr noundef nonnull %78) #15
  br label %790

137:                                              ; preds = %80
  %138 = getelementptr inbounds %struct.super_block, ptr %133, i32 0, i32 13
  %139 = load ptr, ptr %138, align 64
  %140 = icmp eq ptr %139, null
  %141 = getelementptr inbounds %struct.super_block, ptr %133, i32 0, i32 27
  %142 = load ptr, ptr %141, align 4
  br i1 %140, label %151, label %143

143:                                              ; preds = %137
  call void @kfree(ptr noundef nonnull %78) #15
  %144 = and i32 %1, 1
  %145 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 81
  %146 = load i8, ptr %145, align 8
  %147 = lshr i8 %146, 1
  %148 = and i8 %147, 1
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %144, %149
  br i1 %150, label %783, label %788

151:                                              ; preds = %137
  store ptr %133, ptr %142, align 8
  %152 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 102
  %153 = load i32, ptr %152, align 8
  %154 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 102, i32 1
  %155 = load i32, ptr %154, align 4
  %156 = call ptr @ubi_open_volume(i32 noundef %153, i32 noundef %155, i32 noundef 2) #15
  %157 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 100
  store ptr %156, ptr %157, align 4
  %158 = icmp ugt ptr %156, inttoptr (i32 -4096 to ptr)
  br i1 %158, label %159, label %161

159:                                              ; preds = %151
  %160 = ptrtoint ptr %156 to i32
  br label %776

161:                                              ; preds = %151
  %162 = call fastcc i32 @ubifs_parse_options(ptr noundef %142, ptr noundef %3, i32 noundef 0) #15
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %769

164:                                              ; preds = %161
  %165 = load i32, ptr %152, align 8
  %166 = load i32, ptr %154, align 4
  %167 = call i32 (ptr, ptr, ...) @super_setup_bdi_name(ptr noundef %133, ptr noundef nonnull @.str.96, i32 noundef %165, i32 noundef %166) #15
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %769

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.super_block, ptr %133, i32 0, i32 21
  %171 = load ptr, ptr %170, align 8
  %172 = getelementptr inbounds %struct.backing_dev_info, ptr %171, i32 0, i32 3
  store i32 0, ptr %172, align 4
  %173 = load ptr, ptr %170, align 8
  %174 = getelementptr inbounds %struct.backing_dev_info, ptr %173, i32 0, i32 4
  store i32 0, ptr %174, align 8
  store ptr %142, ptr %141, align 4
  %175 = getelementptr inbounds %struct.super_block, ptr %133, i32 0, i32 12
  store i32 604313861, ptr %175, align 4
  %176 = getelementptr inbounds %struct.super_block, ptr %133, i32 0, i32 3
  store i32 4096, ptr %176, align 16
  %177 = getelementptr inbounds %struct.super_block, ptr %133, i32 0, i32 2
  store i8 12, ptr %177, align 4
  %178 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 67
  %179 = load i32, ptr %178, align 8
  %180 = icmp eq i32 %179, 0
  %181 = select i1 %180, i64 2199023255552, i64 0
  %182 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 93
  store i64 %181, ptr %182, align 8
  %183 = getelementptr inbounds %struct.super_block, ptr %133, i32 0, i32 4
  store i64 %181, ptr %183, align 8
  %184 = load i64, ptr %182, align 8
  %185 = icmp sgt i64 %184, 17592186040320
  br i1 %185, label %186, label %187

186:                                              ; preds = %169
  store i64 17592186040320, ptr %182, align 8
  store i64 17592186040320, ptr %183, align 8
  br label %187

187:                                              ; preds = %186, %169
  %188 = getelementptr inbounds %struct.super_block, ptr %133, i32 0, i32 6
  store ptr @ubifs_super_operations, ptr %188, align 4
  %189 = getelementptr inbounds %struct.super_block, ptr %133, i32 0, i32 17
  store ptr @ubifs_xattr_handlers, ptr %189, align 4
  %190 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 128
  call void @mutex_lock(ptr noundef %190) #15
  %191 = load ptr, ptr %142, align 8
  %192 = getelementptr inbounds %struct.super_block, ptr %191, i32 0, i32 10
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 81
  %195 = load i8, ptr %194, align 8
  %196 = trunc i32 %193 to i8
  %197 = shl i8 %196, 1
  %198 = and i8 %197, 2
  %199 = and i8 %195, -3
  %200 = or i8 %198, %199
  store i8 %200, ptr %194, align 8
  %201 = load i32, ptr %192, align 4
  %202 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 186
  %203 = load i8, ptr %202, align 4
  %204 = lshr i32 %201, 10
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 32
  %207 = and i8 %203, -33
  %208 = or i8 %206, %207
  store i8 %208, ptr %202, align 4
  %209 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 102, i32 6
  %210 = load i32, ptr %209, align 8
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %187
  call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %142, ptr noundef nonnull @.str.117) #15
  %213 = load i8, ptr %194, align 8
  %214 = or i8 %213, 1
  store i8 %214, ptr %194, align 8
  br label %215

215:                                              ; preds = %212, %187
  %216 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 101, i32 5
  %217 = load i32, ptr %216, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %215
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %142, ptr noundef nonnull @.str.118) #15
  %220 = load i8, ptr %194, align 8
  %221 = or i8 %220, 1
  store i8 %221, ptr %194, align 8
  br label %222

222:                                              ; preds = %219, %215
  %223 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 102, i32 5
  %224 = load i32, ptr %223, align 4
  %225 = icmp eq i32 %224, 4
  br i1 %225, label %226, label %229

226:                                              ; preds = %222
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %142, ptr noundef nonnull @.str.119) #15
  %227 = load i8, ptr %194, align 8
  %228 = or i8 %227, 1
  store i8 %228, ptr %194, align 8
  br label %229

229:                                              ; preds = %226, %222
  %230 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 102, i32 2
  %231 = load i32, ptr %230, align 8
  %232 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 79
  store i32 %231, ptr %232, align 8
  %233 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 102, i32 9
  %234 = load i32, ptr %233, align 4
  %235 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 75
  store i32 %234, ptr %235, align 8
  %236 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 101, i32 2
  %237 = load i32, ptr %236, align 8
  %238 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 76
  store i32 %237, ptr %238, align 4
  %239 = sdiv i32 %234, 2
  %240 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 77
  store i32 %239, ptr %240, align 8
  %241 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 101, i32 3
  %242 = load i32, ptr %241, align 4
  %243 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 71
  store i32 %242, ptr %243, align 8
  %244 = icmp eq i32 %242, 0
  %245 = call i32 @llvm.ctlz.i32(i32 %242, i1 false) #15, !range !16
  %246 = sub nsw i32 31, %245
  %247 = select i1 %244, i32 -1, i32 %246
  %248 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 72
  store i32 %247, ptr %248, align 4
  %249 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 101, i32 4
  %250 = load i32, ptr %249, align 8
  %251 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 73
  store i32 %250, ptr %251, align 8
  %252 = icmp eq i32 %250, 0
  %253 = call i32 @llvm.ctlz.i32(i32 %250, i1 false) #15, !range !16
  %254 = sub nsw i32 31, %253
  %255 = select i1 %252, i32 -1, i32 %254
  %256 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 74
  store i32 %255, ptr %256, align 4
  %257 = icmp slt i32 %234, 15360
  br i1 %257, label %258, label %263

258:                                              ; preds = %229
  %259 = load i8, ptr %202, align 4
  %260 = and i8 %259, 32
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %262, label %767

262:                                              ; preds = %258
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %142, ptr noundef nonnull @.str.120, i32 noundef %234, i32 noundef 15360) #15
  br label %767

263:                                              ; preds = %229
  %264 = icmp slt i32 %231, 17
  br i1 %264, label %265, label %270

265:                                              ; preds = %263
  %266 = load i8, ptr %202, align 4
  %267 = and i8 %266, 32
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %269, label %767

269:                                              ; preds = %265
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %142, ptr noundef nonnull @.str.121, i32 noundef %231, i32 noundef 17) #15
  br label %767

270:                                              ; preds = %263
  %271 = call i32 @llvm.ctpop.i32(i32 %242) #15, !range !16
  %272 = icmp eq i32 %271, 1
  br i1 %272, label %278, label %273

273:                                              ; preds = %270
  %274 = load i8, ptr %202, align 4
  %275 = and i8 %274, 32
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %277, label %767

277:                                              ; preds = %273
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %142, ptr noundef nonnull @.str.122, i32 noundef %242) #15
  br label %767

278:                                              ; preds = %270
  %279 = icmp slt i32 %250, %242
  br i1 %279, label %288, label %280

280:                                              ; preds = %278
  %281 = srem i32 %250, %242
  %282 = icmp ne i32 %281, 0
  %283 = or i1 %252, %282
  %284 = xor i1 %283, true
  %285 = call i32 @llvm.ctpop.i32(i32 %250) #15, !range !16
  %286 = icmp ult i32 %285, 2
  %287 = select i1 %284, i1 %286, i1 false
  br i1 %287, label %293, label %288

288:                                              ; preds = %280, %278
  %289 = load i8, ptr %202, align 4
  %290 = and i8 %289, 32
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %292, label %767

292:                                              ; preds = %288
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %142, ptr noundef nonnull @.str.123, i32 noundef %250, i32 noundef %242) #15
  br label %767

293:                                              ; preds = %280
  %294 = icmp slt i32 %242, 8
  br i1 %294, label %295, label %298

295:                                              ; preds = %293
  store i32 8, ptr %243, align 8
  store i32 3, ptr %248, align 4
  %296 = icmp slt i32 %250, 8
  br i1 %296, label %297, label %298

297:                                              ; preds = %295
  store i32 8, ptr %251, align 8
  store i32 3, ptr %256, align 4
  br label %298

298:                                              ; preds = %297, %295, %293
  %299 = phi i32 [ 8, %295 ], [ 8, %297 ], [ %242, %293 ]
  %300 = add nuw i32 %299, 63
  %301 = sub nsw i32 0, %299
  %302 = and i32 %300, %301
  %303 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 89
  store i32 %302, ptr %303, align 8
  %304 = add nuw i32 %299, 511
  %305 = and i32 %304, %301
  %306 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 90
  store i32 %305, ptr %306, align 4
  %307 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 99
  %308 = getelementptr %struct.ubifs_info, ptr %142, i32 0, i32 99, i32 5
  store i32 28, ptr %308, align 4
  %309 = getelementptr %struct.ubifs_info, ptr %142, i32 0, i32 99, i32 6
  store i32 4096, ptr %309, align 4
  %310 = getelementptr %struct.ubifs_info, ptr %142, i32 0, i32 99, i32 7
  store i32 512, ptr %310, align 4
  %311 = getelementptr %struct.ubifs_info, ptr %142, i32 0, i32 99, i32 8
  store i32 64, ptr %311, align 4
  %312 = getelementptr %struct.ubifs_info, ptr %142, i32 0, i32 99, i32 4
  store i32 56, ptr %312, align 4
  %313 = getelementptr %struct.ubifs_info, ptr %142, i32 0, i32 99, i32 10
  store i32 32, ptr %313, align 4
  %314 = getelementptr %struct.ubifs_info, ptr %142, i32 0, i32 99, i32 12
  store i32 24, ptr %314, align 4
  %315 = getelementptr %struct.ubifs_info, ptr %142, i32 0, i32 99, i32 12, i32 1
  store i32 88, ptr %315, align 4
  %316 = getelementptr %struct.ubifs_info, ptr %142, i32 0, i32 99, i32 13
  store i32 64, ptr %316, align 4
  %317 = add nsw i32 %234, -4096
  %318 = getelementptr %struct.ubifs_info, ptr %142, i32 0, i32 99, i32 13, i32 1
  store i32 %317, ptr %318, align 4
  store i32 160, ptr %307, align 4
  %319 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 99, i32 0, i32 1
  store i32 4256, ptr %319, align 4
  %320 = getelementptr %struct.ubifs_info, ptr %142, i32 0, i32 99, i32 11
  store i32 40, ptr %320, align 4
  %321 = getelementptr %struct.ubifs_info, ptr %142, i32 0, i32 99, i32 11, i32 1
  store i32 %234, ptr %321, align 4
  %322 = getelementptr %struct.ubifs_info, ptr %142, i32 0, i32 99, i32 2
  store i32 56, ptr %322, align 4
  %323 = getelementptr %struct.ubifs_info, ptr %142, i32 0, i32 99, i32 2, i32 1
  store i32 312, ptr %323, align 4
  %324 = getelementptr %struct.ubifs_info, ptr %142, i32 0, i32 99, i32 3
  store i32 56, ptr %324, align 4
  %325 = getelementptr %struct.ubifs_info, ptr %142, i32 0, i32 99, i32 3, i32 1
  store i32 312, ptr %325, align 4
  %326 = getelementptr %struct.ubifs_info, ptr %142, i32 0, i32 99, i32 1
  store i32 48, ptr %326, align 4
  %327 = getelementptr %struct.ubifs_info, ptr %142, i32 0, i32 99, i32 1, i32 1
  store i32 4144, ptr %327, align 4
  %328 = getelementptr %struct.ubifs_info, ptr %142, i32 0, i32 99, i32 9
  store i32 40, ptr %328, align 4
  %329 = getelementptr %struct.ubifs_info, ptr %142, i32 0, i32 99, i32 9, i32 1
  store i32 2147483647, ptr %329, align 4
  %330 = add nuw i32 %299, 55
  %331 = and i32 %330, %301
  %332 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 96
  store i32 %331, ptr %332, align 8
  %333 = add nuw i32 %299, 4255
  %334 = and i32 %333, %301
  %335 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 97
  store i32 %334, ptr %335, align 4
  %336 = urem i32 %234, 4144
  %337 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 95
  store i32 %336, ptr %337, align 4
  %338 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 48
  %339 = call i32 @llvm.umin.i32(i32 %234, i32 132608) #15
  store i32 %339, ptr %338, align 4
  %340 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 13
  store i32 %234, ptr %340, align 4
  %341 = call i32 @ubifs_debugging_init(ptr noundef %142) #15
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %750

343:                                              ; preds = %298
  %344 = call i32 @ubifs_sysfs_register(ptr noundef %142) #15
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %347, label %346

346:                                              ; preds = %343
  call void @ubifs_debugging_exit(ptr noundef %142) #15
  br label %750

347:                                              ; preds = %343
  %348 = load i8, ptr %202, align 4
  %349 = or i8 %348, 1
  store i8 %349, ptr %202, align 4
  %350 = load i32, ptr %232, align 8
  %351 = icmp sgt i32 %350, 0
  br i1 %351, label %352, label %368

352:                                              ; preds = %361, %347
  %353 = phi i32 [ %363, %361 ], [ 0, %347 ]
  %354 = call i32 @ubifs_is_mapped(ptr noundef %142, i32 noundef %353) #15
  %355 = icmp slt i32 %354, 0
  br i1 %355, label %735, label %356, !prof !11

356:                                              ; preds = %352
  %357 = icmp eq i32 %354, 1
  br i1 %357, label %358, label %361

358:                                              ; preds = %356
  %359 = load i8, ptr %202, align 4
  %360 = and i8 %359, -2
  store i8 %360, ptr %202, align 4
  br label %368

361:                                              ; preds = %356
  %362 = call i32 @__cond_resched() #15
  %363 = add nuw nsw i32 %353, 1
  %364 = load i32, ptr %232, align 8
  %365 = icmp slt i32 %363, %364
  br i1 %365, label %352, label %366

366:                                              ; preds = %361
  %367 = load i8, ptr %202, align 4
  br label %368

368:                                              ; preds = %366, %358, %347
  %369 = phi i8 [ %367, %366 ], [ %360, %358 ], [ %349, %347 ]
  %370 = and i8 %369, 1
  %371 = icmp eq i8 %370, 0
  %372 = load i8, ptr %194, align 8
  %373 = and i8 %372, 3
  %374 = icmp eq i8 %373, 0
  %375 = select i1 %371, i1 true, i1 %374
  br i1 %375, label %380, label %376

376:                                              ; preds = %368
  %377 = and i8 %372, 1
  %378 = icmp eq i8 %377, 0
  %379 = select i1 %378, ptr @.str.100, ptr @.str.99
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %142, ptr noundef nonnull @.str.98, ptr noundef nonnull %379) #15
  br label %735

380:                                              ; preds = %368
  %381 = icmp eq i8 %373, 1
  br i1 %381, label %382, label %383

382:                                              ; preds = %380
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %142, ptr noundef nonnull @.str.101) #15
  br label %735

383:                                              ; preds = %380
  %384 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %385 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %384, i32 noundef 3264, i32 noundef 256) #16
  %386 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 45
  store ptr %385, ptr %386, align 8
  %387 = icmp eq ptr %385, null
  br i1 %387, label %735, label %388

388:                                              ; preds = %383
  %389 = load i32, ptr %235, align 8
  %390 = call noalias ptr @vmalloc(i32 noundef %389) #17
  %391 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 122
  store ptr %390, ptr %391, align 8
  %392 = icmp eq ptr %390, null
  br i1 %392, label %735, label %393

393:                                              ; preds = %388
  %394 = load i8, ptr %194, align 8
  %395 = and i8 %394, 2
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %397, label %402

397:                                              ; preds = %393
  %398 = load i32, ptr %235, align 8
  %399 = call noalias ptr @vmalloc(i32 noundef %398) #17
  %400 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 37
  store ptr %399, ptr %400, align 8
  %401 = icmp eq ptr %399, null
  br i1 %401, label %735, label %402

402:                                              ; preds = %397, %393
  %403 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 30
  %404 = load i16, ptr %403, align 4
  %405 = and i16 %404, 32
  %406 = icmp eq i16 %405, 0
  br i1 %406, label %408, label %407

407:                                              ; preds = %402
  call fastcc void @bu_init(ptr noundef %142) #15
  br label %408

408:                                              ; preds = %407, %402
  %409 = load i8, ptr %194, align 8
  %410 = and i8 %409, 2
  %411 = icmp eq i8 %410, 0
  br i1 %411, label %412, label %416

412:                                              ; preds = %408
  %413 = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8240, i32 noundef 3264, i32 noundef 2) #17
  %414 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 52
  store ptr %413, ptr %414, align 4
  %415 = icmp eq ptr %413, null
  br i1 %415, label %735, label %416

416:                                              ; preds = %412, %408
  %417 = load i8, ptr %202, align 4
  %418 = or i8 %417, 8
  store i8 %418, ptr %202, align 4
  %419 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 182
  %420 = load ptr, ptr %419, align 4
  %421 = icmp eq ptr %420, null
  br i1 %421, label %423, label %422

422:                                              ; preds = %416
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %142, ptr noundef nonnull @.str.102) #15
  br label %735

423:                                              ; preds = %416
  %424 = call i32 @ubifs_read_superblock(ptr noundef %142) #15
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %735

426:                                              ; preds = %423
  %427 = load i8, ptr %202, align 4
  %428 = and i8 %427, -33
  store i8 %428, ptr %202, align 4
  %429 = load i16, ptr %403, align 4
  %430 = lshr i16 %429, 6
  %431 = and i16 %430, 3
  %432 = zext i16 %431 to i32
  %433 = getelementptr [4 x ptr], ptr @ubifs_compressors, i32 0, i32 %432
  %434 = load ptr, ptr %433, align 4
  %435 = getelementptr inbounds %struct.ubifs_compressor, ptr %434, i32 0, i32 5
  %436 = load ptr, ptr %435, align 4
  %437 = icmp eq ptr %436, null
  br i1 %437, label %438, label %441

438:                                              ; preds = %426
  %439 = getelementptr inbounds %struct.ubifs_compressor, ptr %434, i32 0, i32 4
  %440 = load ptr, ptr %439, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %142, ptr noundef nonnull @.str.103, ptr noundef %440) #15
  br label %735

441:                                              ; preds = %426
  %442 = call fastcc i32 @init_constants_sb(ptr noundef %142) #15
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %735

444:                                              ; preds = %441
  %445 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 92
  %446 = load i32, ptr %445, align 4
  %447 = add i32 %446, 2147483647
  %448 = load i32, ptr %243, align 8
  %449 = add i32 %447, %448
  %450 = sub i32 0, %448
  %451 = and i32 %449, %450
  %452 = shl i32 %451, 1
  %453 = call noalias align 64 ptr @__kmalloc(i32 noundef %452, i32 noundef 3136) #17
  %454 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 36
  store ptr %453, ptr %454, align 4
  %455 = icmp eq ptr %453, null
  br i1 %455, label %735, label %456

456:                                              ; preds = %444
  %457 = call fastcc i32 @alloc_wbufs(ptr noundef %142) #15
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %732

459:                                              ; preds = %456
  %460 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 118
  %461 = load i32, ptr %152, align 8
  %462 = load i32, ptr %154, align 4
  %463 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %460, ptr noundef nonnull @.str.104, i32 noundef %461, i32 noundef %462) #15
  %464 = load i8, ptr %194, align 8
  %465 = and i8 %464, 2
  %466 = icmp eq i8 %465, 0
  br i1 %466, label %467, label %476

467:                                              ; preds = %459
  %468 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @ubifs_bg_thread, ptr noundef %142, i32 noundef -1, ptr noundef nonnull @.str.60, ptr noundef %460) #15
  %469 = icmp ugt ptr %468, inttoptr (i32 -4096 to ptr)
  br i1 %469, label %473, label %470

470:                                              ; preds = %467
  %471 = call i32 @wake_up_process(ptr noundef %468) #15
  %472 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 117
  store ptr %468, ptr %472, align 8
  br label %476

473:                                              ; preds = %467
  %474 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 117
  %475 = ptrtoint ptr %468 to i32
  store ptr null, ptr %474, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %142, ptr noundef nonnull @.str.61, ptr noundef %460, i32 noundef %475) #15
  br label %730

476:                                              ; preds = %470, %459
  %477 = call i32 @ubifs_read_master(ptr noundef %142) #15
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %719

479:                                              ; preds = %476
  call fastcc void @init_constants_master(ptr noundef %142) #15
  %480 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 46
  %481 = load ptr, ptr %480, align 4
  %482 = getelementptr inbounds %struct.ubifs_mst_node, ptr %481, i32 0, i32 3
  %483 = load i32, ptr %482, align 1
  %484 = and i32 %483, 1
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %486, label %488

486:                                              ; preds = %479
  %487 = load i8, ptr %202, align 4
  br label %491

488:                                              ; preds = %479
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %142, ptr noundef nonnull @.str.105) #15
  %489 = load i8, ptr %202, align 4
  %490 = or i8 %489, 2
  store i8 %490, ptr %202, align 4
  br label %491

491:                                              ; preds = %488, %486
  %492 = phi i8 [ %487, %486 ], [ %490, %488 ]
  %493 = and i8 %492, 2
  %494 = icmp eq i8 %493, 0
  br i1 %494, label %503, label %495

495:                                              ; preds = %491
  %496 = load i8, ptr %194, align 8
  %497 = and i8 %496, 2
  %498 = icmp eq i8 %497, 0
  br i1 %498, label %499, label %503

499:                                              ; preds = %495
  %500 = load ptr, ptr %391, align 8
  %501 = call i32 @ubifs_recover_inl_heads(ptr noundef %142, ptr noundef %500) #15
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %719

503:                                              ; preds = %499, %495, %491
  %504 = load i8, ptr %194, align 8
  %505 = lshr i8 %504, 1
  %506 = and i8 %505, 1
  %507 = xor i8 %506, 1
  %508 = zext i8 %507 to i32
  %509 = call i32 @ubifs_lpt_init(ptr noundef %142, i32 noundef 1, i32 noundef %508) #15
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %511, label %719

511:                                              ; preds = %503
  %512 = load i8, ptr %194, align 8
  %513 = and i8 %512, 2
  %514 = icmp eq i8 %513, 0
  br i1 %514, label %515, label %524

515:                                              ; preds = %511
  %516 = load i16, ptr %403, align 4
  %517 = and i16 %516, 2
  %518 = icmp eq i16 %517, 0
  br i1 %518, label %524, label %519

519:                                              ; preds = %515
  %520 = call i32 @ubifs_fixup_free_space(ptr noundef %142) #15
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %717

522:                                              ; preds = %519
  %523 = load i8, ptr %194, align 8
  br label %524

524:                                              ; preds = %522, %515, %511
  %525 = phi i8 [ %523, %522 ], [ %512, %515 ], [ %512, %511 ]
  %526 = and i8 %525, 2
  %527 = icmp eq i8 %526, 0
  br i1 %527, label %528, label %541

528:                                              ; preds = %524
  %529 = load i8, ptr %202, align 4
  %530 = and i8 %529, 2
  %531 = icmp eq i8 %530, 0
  br i1 %531, label %532, label %541

532:                                              ; preds = %528
  %533 = load ptr, ptr %480, align 4
  %534 = getelementptr inbounds %struct.ubifs_mst_node, ptr %533, i32 0, i32 3
  %535 = load i32, ptr %534, align 1
  %536 = or i32 %535, 1
  store i32 %536, ptr %534, align 1
  %537 = call i32 @ubifs_write_master(ptr noundef %142) #15
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %539, label %717

539:                                              ; preds = %532
  %540 = load i8, ptr %194, align 8
  br label %541

541:                                              ; preds = %539, %528, %524
  %542 = phi i8 [ %540, %539 ], [ %525, %528 ], [ %525, %524 ]
  %543 = and i8 %542, 2
  %544 = icmp eq i8 %543, 0
  br i1 %544, label %545, label %557

545:                                              ; preds = %541
  %546 = load i16, ptr %403, align 4
  %547 = and i16 %546, 4096
  %548 = icmp eq i16 %547, 0
  br i1 %548, label %557, label %549

549:                                              ; preds = %545
  %550 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 1
  %551 = load ptr, ptr %550, align 4
  %552 = call i32 @ubifs_write_sb_node(ptr noundef %142, ptr noundef %551) #15
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %554, label %717

554:                                              ; preds = %549
  %555 = load i16, ptr %403, align 4
  %556 = and i16 %555, -4097
  store i16 %556, ptr %403, align 4
  br label %557

557:                                              ; preds = %554, %545, %541
  %558 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 87, i32 4
  %559 = load i64, ptr %558, align 8
  %560 = call i32 @dbg_check_idx_size(ptr noundef %142, i64 noundef %559) #15
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %717

562:                                              ; preds = %557
  %563 = call i32 @ubifs_replay_journal(ptr noundef %142) #15
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %715

565:                                              ; preds = %562
  %566 = call i32 @ubifs_calc_min_idx_lebs(ptr noundef %142) #15
  %567 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 87, i32 5
  store i32 %566, ptr %567, align 8
  %568 = load i8, ptr %202, align 4
  %569 = lshr i8 %568, 1
  %570 = and i8 %569, 1
  %571 = zext i8 %570 to i32
  %572 = load i8, ptr %194, align 8
  %573 = lshr i8 %572, 1
  %574 = and i8 %573, 1
  %575 = zext i8 %574 to i32
  %576 = call i32 @ubifs_mount_orphans(ptr noundef %142, i32 noundef %571, i32 noundef %575) #15
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %578, label %713

578:                                              ; preds = %565
  %579 = load i8, ptr %194, align 8
  %580 = and i8 %579, 2
  %581 = icmp eq i8 %580, 0
  br i1 %581, label %582, label %621

582:                                              ; preds = %578
  %583 = call fastcc i32 @check_free_space(ptr noundef %142) #15
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %585, label %713

585:                                              ; preds = %582
  %586 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 9
  %587 = load i32, ptr %586, align 4
  %588 = add i32 %587, 1
  %589 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 53
  %590 = load i32, ptr %589, align 8
  %591 = add i32 %590, 3
  %592 = icmp slt i32 %588, %591
  %593 = select i1 %592, i32 %588, i32 3
  %594 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 11
  %595 = load i32, ptr %594, align 4
  %596 = icmp eq i32 %593, %595
  br i1 %596, label %597, label %600

597:                                              ; preds = %585
  %598 = call i32 @ubifs_consolidate_log(ptr noundef %142) #15
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %600, label %713

600:                                              ; preds = %597, %585
  %601 = load i8, ptr %202, align 4
  %602 = and i8 %601, 2
  %603 = icmp eq i8 %602, 0
  br i1 %603, label %610, label %604

604:                                              ; preds = %600
  %605 = call i32 @ubifs_recover_size(ptr noundef %142, i1 noundef zeroext true) #15
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %607, label %713

607:                                              ; preds = %604
  %608 = call i32 @ubifs_rcvry_gc_commit(ptr noundef %142) #15
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %618, label %713

610:                                              ; preds = %600
  %611 = call fastcc i32 @take_gc_lnum(ptr noundef %142) #15
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %613, label %713

613:                                              ; preds = %610
  %614 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 121
  %615 = load i32, ptr %614, align 4
  %616 = call i32 @ubifs_leb_unmap(ptr noundef %142, i32 noundef %615) #15
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %618, label %713

618:                                              ; preds = %613, %607
  %619 = call i32 @dbg_check_lprops(ptr noundef %142) #15
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %631, label %713

621:                                              ; preds = %578
  %622 = load i8, ptr %202, align 4
  %623 = and i8 %622, 2
  %624 = icmp eq i8 %623, 0
  br i1 %624, label %628, label %625

625:                                              ; preds = %621
  %626 = call i32 @ubifs_recover_size(ptr noundef %142, i1 noundef zeroext false) #15
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %631, label %713

628:                                              ; preds = %621
  %629 = call fastcc i32 @take_gc_lnum(ptr noundef %142) #15
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %631, label %713

631:                                              ; preds = %628, %625, %618
  call void @_raw_spin_lock(ptr noundef nonnull @ubifs_infos_lock) #15
  %632 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 127
  %633 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ubifs_infos, i32 0, i32 1), align 4
  store ptr %632, ptr getelementptr inbounds (%struct.list_head, ptr @ubifs_infos, i32 0, i32 1), align 4
  store ptr @ubifs_infos, ptr %632, align 4
  %634 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 127, i32 1
  store ptr %633, ptr %634, align 4
  store volatile ptr %632, ptr %633, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %635 = load i16, ptr @ubifs_infos_lock, align 4
  %636 = add i16 %635, 1
  store i16 %636, ptr @ubifs_infos_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %637 = load i8, ptr %202, align 4
  %638 = and i8 %637, 2
  %639 = icmp eq i8 %638, 0
  br i1 %639, label %651, label %640

640:                                              ; preds = %631
  %641 = load i8, ptr %194, align 8
  %642 = and i8 %641, 2
  %643 = icmp eq i8 %642, 0
  br i1 %643, label %645, label %644

644:                                              ; preds = %640
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %142, ptr noundef nonnull @.str.106) #15
  br label %656

645:                                              ; preds = %640
  %646 = and i8 %637, -3
  store i8 %646, ptr %202, align 4
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %142, ptr noundef nonnull @.str.107) #15
  %647 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 86, i32 1
  %648 = load i32, ptr %647, align 4
  %649 = icmp slt i32 %648, 1
  br i1 %649, label %650, label %656, !prof !11

650:                                              ; preds = %645
  call void @ubifs_assert_failed(ptr noundef %142, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.2, i32 noundef 1538) #15
  br label %656

651:                                              ; preds = %631
  %652 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 86, i32 1
  %653 = load i32, ptr %652, align 4
  %654 = icmp slt i32 %653, 1
  br i1 %654, label %655, label %656, !prof !11

655:                                              ; preds = %651
  call void @ubifs_assert_failed(ptr noundef %142, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.2, i32 noundef 1541) #15
  br label %656

656:                                              ; preds = %655, %651, %650, %645, %644
  %657 = call i32 @dbg_check_filesystem(ptr noundef %142) #15
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %707

659:                                              ; preds = %656
  call void @dbg_debugfs_init_fs(ptr noundef %142) #15
  %660 = load i8, ptr %202, align 4
  %661 = and i8 %660, -9
  store i8 %661, ptr %202, align 4
  %662 = load i32, ptr %152, align 8
  %663 = load i32, ptr %154, align 4
  %664 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 102, i32 11
  %665 = load ptr, ptr %664, align 4
  %666 = load i8, ptr %194, align 8
  %667 = and i8 %666, 2
  %668 = icmp eq i8 %667, 0
  %669 = select i1 %668, ptr @.str.110, ptr @.str.109
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %142, ptr noundef nonnull @.str.108, i32 noundef %662, i32 noundef %663, ptr noundef %665, ptr noundef nonnull %669) #15
  %670 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 62
  %671 = load i32, ptr %670, align 4
  %672 = sext i32 %671 to i64
  %673 = load i32, ptr %235, align 8
  %674 = sext i32 %673 to i64
  %675 = mul nsw i64 %674, %672
  %676 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 53
  %677 = load i32, ptr %676, align 8
  %678 = sext i32 %677 to i64
  %679 = mul nsw i64 %678, %674
  %680 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 20
  %681 = load i64, ptr %680, align 8
  %682 = add i64 %679, %681
  %683 = ashr i32 %673, 10
  %684 = load i32, ptr %243, align 8
  %685 = load i32, ptr %251, align 8
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %142, ptr noundef nonnull @.str.111, i32 noundef %673, i32 noundef %683, i32 noundef %684, i32 noundef %685) #15
  %686 = ashr i64 %675, 20
  %687 = load i32, ptr %670, align 4
  %688 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 80
  %689 = load i32, ptr %688, align 4
  %690 = ashr i64 %682, 20
  %691 = load i32, ptr %676, align 8
  %692 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 23
  %693 = load i32, ptr %692, align 8
  %694 = add i32 %693, %691
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %142, ptr noundef nonnull @.str.112, i64 noundef %675, i64 noundef %686, i32 noundef %687, i32 noundef %689, i64 noundef %682, i64 noundef %690, i32 noundef %694) #15
  %695 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 176
  %696 = load i64, ptr %695, align 8
  %697 = ashr i64 %696, 10
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %142, ptr noundef nonnull @.str.113, i64 noundef %696, i64 noundef %697) #15
  %698 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 6
  %699 = load i32, ptr %698, align 4
  %700 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 7
  %701 = load i32, ptr %700, align 8
  %702 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 8
  %703 = load i16, ptr %403, align 4
  %704 = and i16 %703, 1
  %705 = icmp eq i16 %704, 0
  %706 = select i1 %705, ptr @.str.116, ptr @.str.115
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %142, ptr noundef nonnull @.str.114, i32 noundef %699, i32 noundef %701, i32 noundef 5, i32 noundef 0, ptr noundef %702, ptr noundef nonnull %706) #15
  br label %754

707:                                              ; preds = %656
  call void @_raw_spin_lock(ptr noundef nonnull @ubifs_infos_lock) #15
  %708 = load ptr, ptr %634, align 4
  %709 = load ptr, ptr %632, align 4
  %710 = getelementptr inbounds %struct.list_head, ptr %709, i32 0, i32 1
  store ptr %708, ptr %710, align 4
  store volatile ptr %709, ptr %708, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %632, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %634, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %711 = load i16, ptr @ubifs_infos_lock, align 4
  %712 = add i16 %711, 1
  store i16 %712, ptr @ubifs_infos_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  br label %713

713:                                              ; preds = %707, %628, %625, %618, %613, %610, %607, %604, %597, %582, %565
  %714 = phi i32 [ %576, %565 ], [ %626, %625 ], [ %657, %707 ], [ %629, %628 ], [ %619, %618 ], [ %616, %613 ], [ %611, %610 ], [ %608, %607 ], [ %605, %604 ], [ %598, %597 ], [ %583, %582 ]
  call fastcc void @free_orphans(ptr noundef %142) #15
  br label %715

715:                                              ; preds = %713, %562
  %716 = phi i32 [ %563, %562 ], [ %714, %713 ]
  call fastcc void @destroy_journal(ptr noundef %142) #15
  br label %717

717:                                              ; preds = %715, %557, %549, %532, %519
  %718 = phi i32 [ %560, %557 ], [ %716, %715 ], [ %552, %549 ], [ %537, %532 ], [ %520, %519 ]
  call void @ubifs_lpt_free(ptr noundef %142, i32 noundef 0) #15
  br label %719

719:                                              ; preds = %717, %503, %499, %476
  %720 = phi i32 [ %477, %476 ], [ %509, %503 ], [ %718, %717 ], [ %501, %499 ]
  %721 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 46
  %722 = load ptr, ptr %721, align 4
  call void @kfree(ptr noundef %722) #15
  %723 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 191
  %724 = load ptr, ptr %723, align 8
  call void @kfree(ptr noundef %724) #15
  %725 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 117
  %726 = load ptr, ptr %725, align 8
  %727 = icmp eq ptr %726, null
  br i1 %727, label %730, label %728

728:                                              ; preds = %719
  %729 = call i32 @kthread_stop(ptr noundef nonnull %726) #15
  br label %730

730:                                              ; preds = %728, %719, %473
  %731 = phi i32 [ %720, %728 ], [ %720, %719 ], [ %475, %473 ]
  call fastcc void @free_wbufs(ptr noundef %142) #15
  br label %732

732:                                              ; preds = %730, %456
  %733 = phi i32 [ %457, %456 ], [ %731, %730 ]
  %734 = load ptr, ptr %454, align 4
  call void @kfree(ptr noundef %734) #15
  br label %735

735:                                              ; preds = %732, %444, %441, %438, %423, %422, %412, %397, %388, %383, %382, %376, %352
  %736 = phi i32 [ -30, %376 ], [ -22, %422 ], [ -12, %412 ], [ -12, %397 ], [ -12, %388 ], [ -12, %383 ], [ -30, %382 ], [ %424, %423 ], [ %442, %441 ], [ %733, %732 ], [ -524, %438 ], [ -12, %444 ], [ %354, %352 ]
  %737 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 52
  %738 = load ptr, ptr %737, align 4
  call void @kfree(ptr noundef %738) #15
  %739 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 50, i32 2
  %740 = load ptr, ptr %739, align 8
  call void @kfree(ptr noundef %740) #15
  %741 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 37
  %742 = load ptr, ptr %741, align 8
  call void @vfree(ptr noundef %742) #15
  %743 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 122
  %744 = load ptr, ptr %743, align 8
  call void @vfree(ptr noundef %744) #15
  %745 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 45
  %746 = load ptr, ptr %745, align 8
  call void @kfree(ptr noundef %746) #15
  %747 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 1
  %748 = load ptr, ptr %747, align 4
  call void @kfree(ptr noundef %748) #15
  call void @ubifs_sysfs_unregister(ptr noundef %142) #15
  call void @ubifs_debugging_exit(ptr noundef %142) #15
  %749 = icmp eq i32 %736, 0
  br i1 %749, label %754, label %750

750:                                              ; preds = %735, %346, %298
  %751 = phi i32 [ %736, %735 ], [ %344, %346 ], [ %341, %298 ]
  %752 = icmp sgt i32 %751, -1
  br i1 %752, label %753, label %767, !prof !11

753:                                              ; preds = %750
  call void @ubifs_assert_failed(ptr noundef %142, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.2, i32 noundef 2223) #15
  br label %767

754:                                              ; preds = %735, %659
  %755 = call ptr @ubifs_iget(ptr noundef %133, i32 noundef 1) #15
  %756 = icmp ugt ptr %755, inttoptr (i32 -4096 to ptr)
  br i1 %756, label %757, label %759

757:                                              ; preds = %754
  %758 = ptrtoint ptr %755 to i32
  br label %765

759:                                              ; preds = %754
  %760 = call ptr @d_make_root(ptr noundef %755) #15
  store ptr %760, ptr %138, align 64
  %761 = icmp eq ptr %760, null
  br i1 %761, label %765, label %762

762:                                              ; preds = %759
  %763 = getelementptr inbounds %struct.super_block, ptr %133, i32 0, i32 34
  %764 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %763, ptr noundef align 1 dereferenceable(16) %764, i32 16, i1 false) #15
  call void @mutex_unlock(ptr noundef %190) #15
  br label %779

765:                                              ; preds = %759, %757
  %766 = phi i32 [ %758, %757 ], [ -12, %759 ]
  call fastcc void @ubifs_umount(ptr noundef %142) #15
  br label %767

767:                                              ; preds = %765, %753, %750, %292, %288, %277, %273, %269, %265, %262, %258
  %768 = phi i32 [ %751, %753 ], [ %751, %750 ], [ %766, %765 ], [ -22, %292 ], [ -22, %288 ], [ -22, %277 ], [ -22, %273 ], [ -22, %269 ], [ -22, %265 ], [ -22, %262 ], [ -22, %258 ]
  call void @mutex_unlock(ptr noundef %190) #15
  br label %769

769:                                              ; preds = %767, %164, %161
  %770 = phi i32 [ %162, %161 ], [ %167, %164 ], [ %768, %767 ]
  %771 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 182
  %772 = load ptr, ptr %771, align 4
  call void @kfree(ptr noundef %772) #15
  store ptr null, ptr %771, align 4
  %773 = getelementptr inbounds %struct.ubifs_info, ptr %142, i32 0, i32 183
  %774 = load ptr, ptr %773, align 8
  call void @kfree(ptr noundef %774) #15
  store ptr null, ptr %773, align 8
  %775 = load ptr, ptr %157, align 4
  call void @ubi_close_volume(ptr noundef %775) #15
  br label %776

776:                                              ; preds = %769, %159
  %777 = phi i32 [ %160, %159 ], [ %770, %769 ]
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %779, label %788

779:                                              ; preds = %776, %762
  %780 = getelementptr inbounds %struct.super_block, ptr %133, i32 0, i32 10
  %781 = load i32, ptr %780, align 4
  %782 = or i32 %781, 1073742848
  store i32 %782, ptr %780, align 4
  br label %783

783:                                              ; preds = %779, %143
  call void @ubi_close_volume(ptr noundef %64) #15
  %784 = load ptr, ptr %138, align 64
  %785 = icmp eq ptr %784, null
  br i1 %785, label %793, label %786

786:                                              ; preds = %783
  %787 = getelementptr inbounds %struct.dentry, ptr %784, i32 0, i32 7
  call void @lockref_get(ptr noundef %787) #15
  br label %793

788:                                              ; preds = %776, %143
  %789 = phi i32 [ -16, %143 ], [ %777, %776 ]
  call void @deactivate_locked_super(ptr noundef %133) #15
  br label %790

790:                                              ; preds = %788, %135, %76
  %791 = phi i32 [ %136, %135 ], [ %789, %788 ], [ -12, %76 ]
  call void @ubi_close_volume(ptr noundef %64) #15
  %792 = inttoptr i32 %791 to ptr
  br label %793

793:                                              ; preds = %790, %786, %783, %70, %66
  %794 = phi ptr [ %792, %790 ], [ %67, %70 ], [ %67, %66 ], [ null, %783 ], [ %784, %786 ]
  ret ptr %794
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kill_ubifs_super(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  tail call void @kill_anon_super(ptr noundef %0) #15
  tail call void @kfree(ptr noundef %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sget(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @sb_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %4, i32 0, i32 102, i32 12
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %1, i32 0, i32 102, i32 12
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %6, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sb_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  store ptr %1, ptr %3, align 4
  %4 = tail call i32 @set_anon_super(ptr noundef %0, ptr noundef null) #15
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_locked_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_open_volume_path(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_open_volume_nm(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_open_volume(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_get_volume_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_get_device_info(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_anon_super(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @super_setup_bdi_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_debugging_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_sysfs_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_read_superblock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @init_constants_sb(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %3 = load i32, ptr %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %6 = load i32, ptr %5, align 8
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, %4
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 64
  store i64 %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 70
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, 24
  %13 = add i32 %12, 64
  %14 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 94
  store i32 %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 68
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 12
  %18 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 69
  %19 = load i32, ptr %18, align 8
  %20 = add i32 %17, %19
  %21 = add i32 %20, 28
  %22 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 99, i32 9
  store i32 %21, ptr %22, align 4
  %23 = add i32 %20, 35
  %24 = and i32 %23, -8
  %25 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 91
  store i32 %24, ptr %25, align 8
  %26 = mul i32 %20, %11
  %27 = add i32 %26, 28
  %28 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 99, i32 9, i32 1
  store i32 %27, ptr %28, align 4
  %29 = add i32 %26, 35
  %30 = and i32 %29, -8
  %31 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 92
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 18
  %33 = load i32, ptr %32, align 4
  %34 = shl i32 %33, 6
  %35 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 71
  %36 = load i32, ptr %35, align 8
  %37 = or i32 %34, 31
  %38 = add i32 %37, %36
  %39 = sub i32 0, %36
  %40 = and i32 %38, %39
  %41 = icmp sgt i32 %40, %6
  br i1 %41, label %42, label %43

42:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.124, i32 noundef %6, i32 noundef %40) #15
  br label %93

43:                                               ; preds = %1
  %44 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 20
  %45 = load i64, ptr %44, align 8
  %46 = add nsw i64 %7, -1
  %47 = add i64 %46, %45
  %48 = icmp ult i64 %47, 4294967296
  br i1 %48, label %49, label %52, !prof !9

49:                                               ; preds = %43
  %50 = trunc i64 %47 to i32
  %51 = udiv i32 %50, %6
  br label %56

52:                                               ; preds = %43
  %53 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %6, i64 %47) #19, !srcloc !17
  %54 = extractvalue { i64, i64 } %53, 1
  %55 = trunc i64 %54 to i32
  br label %56

56:                                               ; preds = %52, %49
  %57 = phi i32 [ %51, %49 ], [ %55, %52 ]
  %58 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 23
  store i32 %57, ptr %58, align 8
  %59 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 89
  %60 = load i32, ptr %59, align 8
  %61 = mul i32 %60, %57
  %62 = add i32 %6, -1
  %63 = add i32 %62, %61
  %64 = sdiv i32 %63, %6
  %65 = add i32 %64, 1
  %66 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 53
  %67 = load i32, ptr %66, align 8
  %68 = icmp slt i32 %67, %65
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.125, i32 noundef %67, i32 noundef %65) #15
  br label %93

70:                                               ; preds = %56
  %71 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 7
  store i32 4144, ptr %71, align 8
  %72 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 8
  store i32 160, ptr %72, align 4
  %73 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 9
  store i32 312, ptr %73, align 8
  %74 = mul i64 %45, 13
  %75 = ashr i64 %74, 4
  %76 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 21
  %77 = add i32 %33, 1
  %78 = sext i32 %77 to i64
  %79 = mul nsw i64 %78, %7
  %80 = add nsw i64 %79, 1
  %81 = tail call i64 @llvm.smax.i64(i64 %75, i64 %80)
  store i64 %81, ptr %76, align 8
  %82 = add nsw i64 %80, %7
  %83 = icmp slt i64 %45, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  store i64 %82, ptr %44, align 8
  br label %85

85:                                               ; preds = %84, %70
  %86 = tail call i32 @ubifs_calc_lpt_geom(ptr noundef %0) #15
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, ptr %5, align 8
  %90 = load i32, ptr %31, align 4
  %91 = sub i32 %89, %90
  %92 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 78
  store i32 %91, ptr %92, align 4
  br label %93

93:                                               ; preds = %88, %85, %69, %42
  %94 = phi i32 [ -22, %42 ], [ -22, %69 ], [ 0, %88 ], [ %86, %85 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alloc_wbufs(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 18
  %3 = load i32, ptr %2, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 144) #15
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %6, label %8, !prof !11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  store ptr null, ptr %7, align 8
  br label %68

8:                                                ; preds = %1
  %9 = extractvalue { i32, i1 } %4, 0
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #17
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  store ptr %10, ptr %11, align 8
  %12 = icmp eq ptr %10, null
  br i1 %12, label %68, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr %2, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %48, %13
  %17 = phi ptr [ %36, %48 ], [ %10, %13 ]
  %18 = phi i32 [ %49, %48 ], [ 0, %13 ]
  %19 = getelementptr %struct.ubifs_jhead, ptr %17, i32 %18, i32 1
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr %struct.ubifs_jhead, ptr %17, i32 %18, i32 1, i32 1
  store ptr %19, ptr %20, align 4
  %21 = load ptr, ptr %11, align 8
  %22 = getelementptr %struct.ubifs_jhead, ptr %21, i32 %18
  %23 = tail call i32 @ubifs_wbuf_init(ptr noundef %0, ptr noundef %22) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %68

25:                                               ; preds = %16
  %26 = load ptr, ptr %11, align 8
  %27 = getelementptr %struct.ubifs_jhead, ptr %26, i32 %18, i32 0, i32 8
  store ptr @bud_wbuf_callback, ptr %27, align 8
  %28 = load ptr, ptr %11, align 8
  %29 = getelementptr %struct.ubifs_jhead, ptr %28, i32 %18, i32 0, i32 7
  store i32 %18, ptr %29, align 4
  %30 = load ptr, ptr %11, align 8
  %31 = getelementptr %struct.ubifs_jhead, ptr %30, i32 %18, i32 2
  %32 = load i8, ptr %31, align 8
  %33 = or i8 %32, 1
  store i8 %33, ptr %31, align 8
  %34 = load ptr, ptr %11, align 8
  %35 = getelementptr %struct.ubifs_jhead, ptr %34, i32 %18, i32 3
  store ptr null, ptr %35, align 4
  %36 = load ptr, ptr %11, align 8
  %37 = getelementptr %struct.ubifs_jhead, ptr %36, i32 %18, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %48

40:                                               ; preds = %25
  %41 = ptrtoint ptr %38 to i32
  %42 = icmp eq i32 %18, 0
  br i1 %42, label %68, label %43

43:                                               ; preds = %40
  %44 = add nsw i32 %18, -1
  %45 = getelementptr %struct.ubifs_jhead, ptr %36, i32 %44, i32 3
  %46 = load ptr, ptr %45, align 4
  tail call void @kfree(ptr noundef %46) #15
  %47 = icmp eq i32 %44, 0
  br i1 %47, label %68, label %61

48:                                               ; preds = %25
  %49 = add nuw nsw i32 %18, 1
  %50 = load i32, ptr %2, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %16, label %52

52:                                               ; preds = %48, %13
  %53 = phi ptr [ %10, %13 ], [ %36, %48 ]
  %54 = getelementptr inbounds %struct.ubifs_wbuf, ptr %53, i32 0, i32 12
  %55 = load i8, ptr %54, align 8
  %56 = or i8 %55, 1
  store i8 %56, ptr %54, align 8
  %57 = load ptr, ptr %11, align 8
  %58 = getelementptr inbounds %struct.ubifs_jhead, ptr %57, i32 0, i32 2
  %59 = load i8, ptr %58, align 8
  %60 = and i8 %59, -2
  store i8 %60, ptr %58, align 8
  br label %68

61:                                               ; preds = %61, %43
  %62 = phi i32 [ %64, %61 ], [ %44, %43 ]
  %63 = load ptr, ptr %11, align 8
  %64 = add nsw i32 %62, -1
  %65 = getelementptr %struct.ubifs_jhead, ptr %63, i32 %64, i32 3
  %66 = load ptr, ptr %65, align 4
  tail call void @kfree(ptr noundef %66) #15
  %67 = icmp eq i32 %64, 0
  br i1 %67, label %68, label %61

68:                                               ; preds = %61, %52, %43, %40, %16, %8, %6
  %69 = phi i32 [ 0, %52 ], [ -12, %8 ], [ -12, %6 ], [ %41, %40 ], [ %41, %43 ], [ %41, %61 ], [ %23, %16 ]
  ret i32 %69
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_read_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @init_constants_master(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @ubifs_calc_min_idx_lebs(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 5
  store i32 %2, ptr %3, align 8
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 175
  %5 = load i64, ptr %4, align 8
  %6 = tail call i64 @ubifs_reported_space(ptr noundef %0, i64 noundef %5) #15
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 176
  store i64 %6, ptr %7, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 62
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 18
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %9, -3
  %13 = sub i32 %12, %11
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %16 = load i32, ptr %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 95
  %19 = load i32, ptr %18, align 4
  %20 = sext i32 %19 to i64
  %21 = sub nsw i64 %17, %20
  %22 = mul nsw i64 %21, %14
  %23 = tail call i64 @ubifs_reported_space(ptr noundef %0, i64 noundef %22) #15
  %24 = lshr i64 %23, 12
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 98
  store i32 %25, ptr %26, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_idx_size(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_replay_journal(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_calc_min_idx_lebs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_mount_orphans(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @take_gc_lnum(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 121
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.126) #15
  br label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %8 = load i32, ptr %7, align 8
  %9 = tail call i32 @ubifs_change_one_lp(ptr noundef %0, i32 noundef %3, i32 noundef %8, i32 noundef 0, i32 noundef 16, i32 noundef 0, i32 noundef 0) #15
  br label %10

10:                                               ; preds = %6, %5
  %11 = phi i32 [ -22, %5 ], [ %9, %6 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_lprops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dbg_debugfs_init_fs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_is_mapped(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_calc_lpt_geom(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bud_wbuf_callback(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @ubifs_update_one_lp(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0) #15
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_update_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ubifs_reported_space(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_change_one_lp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readnone }

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
!10 = !{i64 2153525708}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2148988310}
!13 = !{i64 2148984134}
!14 = !{i64 2148984209, i64 2148984236, i64 2148984283, i64 2148984305, i64 2148984333, i64 2148984353}
!15 = !{i64 2149011313}
!16 = !{i32 0, i32 33}
!17 = !{i64 2148170489, i64 2148170769, i64 2148171103, i64 2148171437}
