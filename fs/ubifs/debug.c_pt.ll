; ModuleID = '/llk/IR/fs/ubifs/debug.c_pt.bc'
source_filename = "../fs/ubifs/debug.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_global_debug_info = type { i8, [3 x i8] }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.72, i32, i32, i32, [0 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon.72 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.73, i32 }
%union.anon.73 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.fscrypt_name = type { ptr, %struct.fscrypt_str, i32, i32, %struct.fscrypt_str, i8 }
%struct.fscrypt_str = type { ptr, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.38, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.39, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.40, ptr, %struct.address_space, %struct.list_head, %union.anon.41, i32, i32, ptr, ptr }
%union.anon.38 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.39 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.40 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.41 = type { ptr }
%struct.ubifs_inode = type { %struct.inode, i64, i64, i32, i32, i32, i8, %struct.mutex, %struct.rw_semaphore, %struct.spinlock, i64, i64, i32, i32, i32, i32, ptr }
%struct.ubifs_dent_node = type { %struct.ubifs_ch, [16 x i8], i64, i8, i8, i16, i32, [0 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_pad_node = type <{ %struct.ubifs_ch, i32 }>
%struct.ubifs_sb_node = type { %struct.ubifs_ch, [2 x i8], i8, i8, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i16, [2 x i8], i32, i32, i64, i32, [16 x i8], i32, [64 x i8], [64 x i8], i16, [64 x i8], [3774 x i8] }
%struct.ubifs_mst_node = type { %struct.ubifs_ch, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], [64 x i8], [64 x i8], [152 x i8] }
%struct.ubifs_ref_node = type { %struct.ubifs_ch, i32, i32, i32, [28 x i8] }
%struct.ubifs_ino_node = type { %struct.ubifs_ch, [16 x i8], i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i16, [26 x i8], [0 x i8] }
%struct.ubifs_data_node = type { %struct.ubifs_ch, [16 x i8], i32, i16, i16, [0 x i8] }
%struct.ubifs_trun_node = type { %struct.ubifs_ch, i32, [12 x i8], i64, i64 }
%struct.ubifs_idx_node = type <{ %struct.ubifs_ch, i16, i16, [0 x i8] }>
%struct.ubifs_branch = type { i32, i32, i32, [0 x i8] }
%struct.ubifs_orph_node = type { %struct.ubifs_ch, i64, [0 x i64] }
%struct.ubifs_budget_req = type { i24, i16, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.67, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.47 }
%struct.llist_node = type { ptr }
%union.anon.47 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.48 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.67 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ubifs_jhead = type { %struct.ubifs_wbuf, %struct.list_head, i8, ptr }
%struct.ubifs_wbuf = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.hrtimer, i8, i32, ptr }
%struct.ubifs_gced_idx_leb = type { %struct.list_head, i32, i32 }
%struct.ubifs_lprops = type { i32, i32, i32, i32, %union.anon.75 }
%union.anon.75 = type { %struct.list_head }
%struct.ubifs_lpt_lprops = type { i32, i32, i8 }
%struct.ubifs_scan_leb = type { i32, i32, %struct.list_head, i32, ptr }
%struct.ubifs_scan_node = type { %struct.list_head, %union.ubifs_key, i64, i32, i32, i32, ptr }
%struct.ubifs_znode = type { ptr, ptr, ptr, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.ubifs_zbranch] }
%struct.ubifs_pnode = type { ptr, ptr, i32, i32, i32, i32, [4 x %struct.ubifs_lprops] }
%struct.ubifs_debug_info = type { %struct.ubifs_zbranch, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i8, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsck_data = type { %struct.rb_root }
%struct.fsck_inode = type { %struct.rb_node, i32, i16, i32, i32, i32, i32, i64, i32, i64, i64, i64, i32, i64 }
%struct.file = type { %union.anon.14, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [10 x i8] c"(%lu, %s)\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"(%lu, %s, %#08x)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"(%lu, %s, %u)\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"(bad key type: %#08x, %#08x)\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"bad key format %d\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"len > 0\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"fs/ubifs/debug.c\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"padding node\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"superblock node\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"master node\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"reference node\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"inode node\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"direntry node\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"xentry node\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"data node\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"truncate node\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"indexing node\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"commit start node\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"orphan node\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"auth node\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"unknown node\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"commit resting\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"background commit requested\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"commit required\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"BACKGROUND commit running\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"commit running and required\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"broken commit\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"unknown commit state\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"0 (GC)\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"1 (base)\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"2 (data)\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"unknown journal head\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"\013Dump in-memory inode:\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"\013\09inode          %lu\0A\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"\013\09size           %llu\0A\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"\013\09nlink          %u\0A\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"\013\09uid            %u\0A\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"\013\09gid            %u\0A\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"\013\09atime          %u.%u\0A\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"\013\09mtime          %u.%u\0A\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"\013\09ctime          %u.%u\0A\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"\013\09creat_sqnum    %llu\0A\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"\013\09xattr_size     %u\0A\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"\013\09xattr_cnt      %u\0A\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"\013\09xattr_names    %u\0A\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"\013\09dirty          %u\0A\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"\013\09xattr          %u\0A\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"\013\09bulk_read      %u\0A\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"\013\09synced_i_size  %llu\0A\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"\013\09ui_size        %llu\0A\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"\013\09flags          %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"\013\09compr_type     %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"\013\09last_page_read %lu\0A\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"\013\09read_in_a_row  %lu\0A\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"\013\09data_len       %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [30 x i8] c"\013List of directory entries:\0A\00", align 1
@.str.56 = private unnamed_addr constant [32 x i8] c"!mutex_is_locked(&c->tnc_mutex)\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"\013error %ld\0A\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"\013\09%d: inode %llu, type %s, len %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [31 x i8] c"\013Not a node, first %zu bytes:\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.61 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.62 = private unnamed_addr constant [35 x i8] c"\013node type %d was not recognized\0A\00", align 1
@dbg_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.63 = private unnamed_addr constant [52 x i8] c"\013node len(%d) is too short for %s, left %d bytes:\0A\00", align 1
@.str.64 = private unnamed_addr constant [34 x i8] c"\013\09truncated node length      %d\0A\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"\013\09pad_len        %u\0A\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"\013\09key_hash       %d (%s)\0A\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"\013\09key_fmt        %d (%s)\0A\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"\013\09flags          %#x\0A\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"\013\09big_lpt        %u\0A\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"\013\09space_fixup    %u\0A\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"\013\09min_io_size    %u\0A\00", align 1
@.str.72 = private unnamed_addr constant [22 x i8] c"\013\09leb_size       %u\0A\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"\013\09leb_cnt        %u\0A\00", align 1
@.str.74 = private unnamed_addr constant [22 x i8] c"\013\09max_leb_cnt    %u\0A\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"\013\09max_bud_bytes  %llu\0A\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"\013\09log_lebs       %u\0A\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"\013\09lpt_lebs       %u\0A\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"\013\09orph_lebs      %u\0A\00", align 1
@.str.79 = private unnamed_addr constant [22 x i8] c"\013\09jhead_cnt      %u\0A\00", align 1
@.str.80 = private unnamed_addr constant [22 x i8] c"\013\09fanout         %u\0A\00", align 1
@.str.81 = private unnamed_addr constant [22 x i8] c"\013\09lsave_cnt      %u\0A\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"\013\09default_compr  %u\0A\00", align 1
@.str.83 = private unnamed_addr constant [24 x i8] c"\013\09rp_size        %llu\0A\00", align 1
@.str.84 = private unnamed_addr constant [22 x i8] c"\013\09rp_uid         %u\0A\00", align 1
@.str.85 = private unnamed_addr constant [22 x i8] c"\013\09rp_gid         %u\0A\00", align 1
@.str.86 = private unnamed_addr constant [22 x i8] c"\013\09fmt_version    %u\0A\00", align 1
@.str.87 = private unnamed_addr constant [22 x i8] c"\013\09time_gran      %u\0A\00", align 1
@.str.88 = private unnamed_addr constant [24 x i8] c"\013\09UUID           %pUB\0A\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"\013\09highest_inum   %llu\0A\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"\013\09commit number  %llu\0A\00", align 1
@.str.91 = private unnamed_addr constant [22 x i8] c"\013\09log_lnum       %u\0A\00", align 1
@.str.92 = private unnamed_addr constant [22 x i8] c"\013\09root_lnum      %u\0A\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"\013\09root_offs      %u\0A\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c"\013\09root_len       %u\0A\00", align 1
@.str.95 = private unnamed_addr constant [22 x i8] c"\013\09gc_lnum        %u\0A\00", align 1
@.str.96 = private unnamed_addr constant [22 x i8] c"\013\09ihead_lnum     %u\0A\00", align 1
@.str.97 = private unnamed_addr constant [22 x i8] c"\013\09ihead_offs     %u\0A\00", align 1
@.str.98 = private unnamed_addr constant [24 x i8] c"\013\09index_size     %llu\0A\00", align 1
@.str.99 = private unnamed_addr constant [22 x i8] c"\013\09lpt_lnum       %u\0A\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"\013\09lpt_offs       %u\0A\00", align 1
@.str.101 = private unnamed_addr constant [22 x i8] c"\013\09nhead_lnum     %u\0A\00", align 1
@.str.102 = private unnamed_addr constant [22 x i8] c"\013\09nhead_offs     %u\0A\00", align 1
@.str.103 = private unnamed_addr constant [22 x i8] c"\013\09ltab_lnum      %u\0A\00", align 1
@.str.104 = private unnamed_addr constant [22 x i8] c"\013\09ltab_offs      %u\0A\00", align 1
@.str.105 = private unnamed_addr constant [22 x i8] c"\013\09lsave_lnum     %u\0A\00", align 1
@.str.106 = private unnamed_addr constant [22 x i8] c"\013\09lsave_offs     %u\0A\00", align 1
@.str.107 = private unnamed_addr constant [22 x i8] c"\013\09lscan_lnum     %u\0A\00", align 1
@.str.108 = private unnamed_addr constant [22 x i8] c"\013\09empty_lebs     %u\0A\00", align 1
@.str.109 = private unnamed_addr constant [22 x i8] c"\013\09idx_lebs       %u\0A\00", align 1
@.str.110 = private unnamed_addr constant [24 x i8] c"\013\09total_free     %llu\0A\00", align 1
@.str.111 = private unnamed_addr constant [24 x i8] c"\013\09total_dirty    %llu\0A\00", align 1
@.str.112 = private unnamed_addr constant [24 x i8] c"\013\09total_used     %llu\0A\00", align 1
@.str.113 = private unnamed_addr constant [24 x i8] c"\013\09total_dead     %llu\0A\00", align 1
@.str.114 = private unnamed_addr constant [24 x i8] c"\013\09total_dark     %llu\0A\00", align 1
@.str.115 = private unnamed_addr constant [22 x i8] c"\013\09lnum           %u\0A\00", align 1
@.str.116 = private unnamed_addr constant [22 x i8] c"\013\09offs           %u\0A\00", align 1
@.str.117 = private unnamed_addr constant [22 x i8] c"\013\09jhead          %u\0A\00", align 1
@.str.118 = private unnamed_addr constant [22 x i8] c"\013\09key            %s\0A\00", align 1
@.str.119 = private unnamed_addr constant [27 x i8] c"\013\09atime          %lld.%u\0A\00", align 1
@.str.120 = private unnamed_addr constant [27 x i8] c"\013\09mtime          %lld.%u\0A\00", align 1
@.str.121 = private unnamed_addr constant [27 x i8] c"\013\09ctime          %lld.%u\0A\00", align 1
@.str.122 = private unnamed_addr constant [22 x i8] c"\013\09mode           %u\0A\00", align 1
@.str.123 = private unnamed_addr constant [23 x i8] c"\013\09compr_type     %#x\0A\00", align 1
@.str.124 = private unnamed_addr constant [22 x i8] c"\013\09data len       %u\0A\00", align 1
@.str.125 = private unnamed_addr constant [24 x i8] c"\013\09inum           %llu\0A\00", align 1
@.str.126 = private unnamed_addr constant [22 x i8] c"\013\09type           %d\0A\00", align 1
@.str.127 = private unnamed_addr constant [22 x i8] c"\013\09nlen           %d\0A\00", align 1
@.str.128 = private unnamed_addr constant [19 x i8] c"\013\09name           \00", align 1
@.str.129 = private unnamed_addr constant [57 x i8] c"\013(bad name length, not printing, bad or corrupted node)\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"\01c%c\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.132 = private unnamed_addr constant [22 x i8] c"\013\09size           %u\0A\00", align 1
@.str.133 = private unnamed_addr constant [22 x i8] c"\013\09compr_typ      %d\0A\00", align 1
@.str.134 = private unnamed_addr constant [22 x i8] c"\013\09data size      %u\0A\00", align 1
@.str.135 = private unnamed_addr constant [24 x i8] c"\013\09data (length = %d):\0A\00", align 1
@.str.136 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.137 = private unnamed_addr constant [22 x i8] c"\013\09inum           %u\0A\00", align 1
@.str.138 = private unnamed_addr constant [24 x i8] c"\013\09old_size       %llu\0A\00", align 1
@.str.139 = private unnamed_addr constant [24 x i8] c"\013\09new_size       %llu\0A\00", align 1
@.str.140 = private unnamed_addr constant [22 x i8] c"\013\09child_cnt      %d\0A\00", align 1
@.str.141 = private unnamed_addr constant [22 x i8] c"\013\09level          %d\0A\00", align 1
@.str.142 = private unnamed_addr constant [14 x i8] c"\013\09Branches:\0A\00", align 1
@.str.143 = private unnamed_addr constant [32 x i8] c"\013\09%d: LEB %d:%d len %d key %s\0A\00", align 1
@.str.144 = private unnamed_addr constant [24 x i8] c"\013\09last node flag %llu\0A\00", align 1
@.str.145 = private unnamed_addr constant [29 x i8] c"\013\09%d orphan inode numbers:\0A\00", align 1
@.str.146 = private unnamed_addr constant [15 x i8] c"\013\09  ino %llu\0A\00", align 1
@.str.147 = private unnamed_addr constant [49 x i8] c"\013Budgeting request: new_ino %d, dirtied_ino %d\0A\00", align 1
@.str.148 = private unnamed_addr constant [37 x i8] c"\013\09new_ino_d   %d, dirtied_ino_d %d\0A\00", align 1
@.str.149 = private unnamed_addr constant [36 x i8] c"\013\09new_page    %d, dirtied_page %d\0A\00", align 1
@.str.150 = private unnamed_addr constant [36 x i8] c"\013\09new_dent    %d, mod_dent     %d\0A\00", align 1
@.str.151 = private unnamed_addr constant [19 x i8] c"\013\09idx_growth  %d\0A\00", align 1
@.str.152 = private unnamed_addr constant [36 x i8] c"\013\09data_growth %d dd_growth     %d\0A\00", align 1
@.str.153 = private unnamed_addr constant [59 x i8] c"\013(pid %d) Lprops statistics: empty_lebs %d, idx_lebs  %d\0A\00", align 1
@.str.154 = private unnamed_addr constant [59 x i8] c"\013\09taken_empty_lebs %d, total_free %lld, total_dirty %lld\0A\00", align 1
@.str.155 = private unnamed_addr constant [54 x i8] c"\013\09total_used %lld, total_dark %lld, total_dead %lld\0A\00", align 1
@.str.156 = private unnamed_addr constant [72 x i8] c"\013(pid %d) Budgeting info: data budget sum %lld, total budget sum %lld\0A\00", align 1
@.str.157 = private unnamed_addr constant [69 x i8] c"\013\09budg_data_growth %lld, budg_dd_growth %lld, budg_idx_growth %lld\0A\00", align 1
@.str.158 = private unnamed_addr constant [59 x i8] c"\013\09min_idx_lebs %d, old_idx_sz %llu, uncommitted_idx %lld\0A\00", align 1
@.str.159 = private unnamed_addr constant [52 x i8] c"\013\09page_budget %d, inode_budget %d, dent_budget %d\0A\00", align 1
@.str.160 = private unnamed_addr constant [30 x i8] c"\013\09nospace %u, nospace_rp %u\0A\00", align 1
@.str.161 = private unnamed_addr constant [47 x i8] c"\013\09dark_wm %d, dead_wm %d, max_idx_node_sz %d\0A\00", align 1
@.str.162 = private unnamed_addr constant [53 x i8] c"\013\09freeable_cnt %d, calc_idx_sz %lld, idx_gc_cnt %d\0A\00", align 1
@.str.163 = private unnamed_addr constant [57 x i8] c"\013\09dirty_pg_cnt %ld, dirty_zn_cnt %ld, clean_zn_cnt %ld\0A\00", align 1
@.str.164 = private unnamed_addr constant [30 x i8] c"\013\09gc_lnum %d, ihead_lnum %d\0A\00", align 1
@.str.165 = private unnamed_addr constant [21 x i8] c"\013\09jhead %s\09 LEB %d\0A\00", align 1
@.str.166 = private unnamed_addr constant [15 x i8] c"\013\09bud LEB %d\0A\00", align 1
@.str.167 = private unnamed_addr constant [19 x i8] c"\013\09old bud LEB %d\0A\00", align 1
@.str.168 = private unnamed_addr constant [30 x i8] c"\013\09GC'ed idx LEB %d unmap %d\0A\00", align 1
@.str.169 = private unnamed_addr constant [20 x i8] c"\013\09commit state %d\0A\00", align 1
@.str.170 = private unnamed_addr constant [26 x i8] c"\013Budgeting predictions:\0A\00", align 1
@.str.171 = private unnamed_addr constant [49 x i8] c"\013\09available: %lld, outstanding %lld, free %lld\0A\00", align 1
@.str.172 = private unnamed_addr constant [72 x i8] c"\013LEB %-7d free %-8d dirty %-8d used %-8d free + dirty %-8d flags %#x (\00", align 1
@.str.173 = private unnamed_addr constant [109 x i8] c"\013LEB %-7d free %-8d dirty %-8d used %-8d free + dirty %-8d dark %-4d dead %-4d nodes fit %-3d flags %#-4x (\00", align 1
@.str.174 = private unnamed_addr constant [15 x i8] c"\01cindex, taken\00", align 1
@.str.175 = private unnamed_addr constant [8 x i8] c"\01ctaken\00", align 1
@.str.176 = private unnamed_addr constant [12 x i8] c"dirty index\00", align 1
@.str.177 = private unnamed_addr constant [15 x i8] c"freeable index\00", align 1
@.str.178 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.179 = private unnamed_addr constant [16 x i8] c"not categorized\00", align 1
@.str.180 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@.str.181 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@.str.182 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.183 = private unnamed_addr constant [9 x i8] c"freeable\00", align 1
@.str.184 = private unnamed_addr constant [5 x i8] c"\01c%s\00", align 1
@.str.185 = private unnamed_addr constant [13 x i8] c"\01c, jhead %s\00", align 1
@.str.186 = private unnamed_addr constant [20 x i8] c"\01c, bud of jhead %s\00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"\01c, GC LEB\00", align 1
@.str.188 = private unnamed_addr constant [5 x i8] c"\01c)\0A\00", align 1
@.str.189 = private unnamed_addr constant [41 x i8] c"\013(pid %d) start dumping LEB properties\0A\00", align 1
@.str.190 = private unnamed_addr constant [30 x i8] c"cannot read lprops for LEB %d\00", align 1
@.str.191 = private unnamed_addr constant [42 x i8] c"\013(pid %d) finish dumping LEB properties\0A\00", align 1
@.str.192 = private unnamed_addr constant [36 x i8] c"\013(pid %d) dumping LPT information\0A\00", align 1
@.str.193 = private unnamed_addr constant [24 x i8] c"\013\09lpt_sz:        %lld\0A\00", align 1
@.str.194 = private unnamed_addr constant [22 x i8] c"\013\09pnode_sz:      %d\0A\00", align 1
@.str.195 = private unnamed_addr constant [22 x i8] c"\013\09nnode_sz:      %d\0A\00", align 1
@.str.196 = private unnamed_addr constant [22 x i8] c"\013\09ltab_sz:       %d\0A\00", align 1
@.str.197 = private unnamed_addr constant [22 x i8] c"\013\09lsave_sz:      %d\0A\00", align 1
@.str.198 = private unnamed_addr constant [22 x i8] c"\013\09big_lpt:       %u\0A\00", align 1
@.str.199 = private unnamed_addr constant [22 x i8] c"\013\09lpt_hght:      %d\0A\00", align 1
@.str.200 = private unnamed_addr constant [22 x i8] c"\013\09pnode_cnt:     %d\0A\00", align 1
@.str.201 = private unnamed_addr constant [22 x i8] c"\013\09nnode_cnt:     %d\0A\00", align 1
@.str.202 = private unnamed_addr constant [22 x i8] c"\013\09dirty_pn_cnt:  %d\0A\00", align 1
@.str.203 = private unnamed_addr constant [22 x i8] c"\013\09dirty_nn_cnt:  %d\0A\00", align 1
@.str.204 = private unnamed_addr constant [22 x i8] c"\013\09lsave_cnt:     %d\0A\00", align 1
@.str.205 = private unnamed_addr constant [22 x i8] c"\013\09space_bits:    %d\0A\00", align 1
@.str.206 = private unnamed_addr constant [22 x i8] c"\013\09lpt_lnum_bits: %d\0A\00", align 1
@.str.207 = private unnamed_addr constant [22 x i8] c"\013\09lpt_offs_bits: %d\0A\00", align 1
@.str.208 = private unnamed_addr constant [22 x i8] c"\013\09lpt_spc_bits:  %d\0A\00", align 1
@.str.209 = private unnamed_addr constant [22 x i8] c"\013\09pcnt_bits:     %d\0A\00", align 1
@.str.210 = private unnamed_addr constant [22 x i8] c"\013\09lnum_bits:     %d\0A\00", align 1
@.str.211 = private unnamed_addr constant [25 x i8] c"\013\09LPT root is at %d:%d\0A\00", align 1
@.str.212 = private unnamed_addr constant [25 x i8] c"\013\09LPT head is at %d:%d\0A\00", align 1
@.str.213 = private unnamed_addr constant [25 x i8] c"\013\09LPT ltab is at %d:%d\0A\00", align 1
@.str.214 = private unnamed_addr constant [26 x i8] c"\013\09LPT lsave is at %d:%d\0A\00", align 1
@.str.215 = private unnamed_addr constant [46 x i8] c"\013\09LPT LEB %d free %d dirty %d tgc %d cmt %d\0A\00", align 1
@.str.216 = private unnamed_addr constant [33 x i8] c"\013(pid %d) start dumping LEB %d\0A\00", align 1
@.str.217 = private unnamed_addr constant [42 x i8] c"cannot allocate memory for dumping LEB %d\00", align 1
@.str.218 = private unnamed_addr constant [14 x i8] c"scan error %d\00", align 1
@.str.219 = private unnamed_addr constant [36 x i8] c"\013LEB %d has %d nodes ending at %d\0A\00", align 1
@.str.220 = private unnamed_addr constant [36 x i8] c"\013Dumping node at LEB %d:%d len %d\0A\00", align 1
@.str.221 = private unnamed_addr constant [34 x i8] c"\013(pid %d) finish dumping LEB %d\0A\00", align 1
@.str.222 = private unnamed_addr constant [79 x i8] c"\013znode %p, LEB %d:%d len %d parent %p iip %d level %d child_cnt %d flags %lx\0A\00", align 1
@.str.223 = private unnamed_addr constant [14 x i8] c"\013zbranches:\0A\00", align 1
@.str.224 = private unnamed_addr constant [41 x i8] c"\013\09%d: znode %p LEB %d:%d len %d key %s\0A\00", align 1
@.str.225 = private unnamed_addr constant [39 x i8] c"\013\09%d: LNC %p LEB %d:%d len %d key %s\0A\00", align 1
@.str.226 = private unnamed_addr constant [52 x i8] c"\013(pid %d) start dumping heap cat %d (%d elements)\0A\00", align 1
@.str.227 = private unnamed_addr constant [49 x i8] c"\013\09%d. LEB %d hpos %d free %d dirty %d flags %d\0A\00", align 1
@.str.228 = private unnamed_addr constant [32 x i8] c"\013(pid %d) finish dumping heap\0A\00", align 1
@.str.229 = private unnamed_addr constant [27 x i8] c"\013(pid %d) dumping pnode:\0A\00", align 1
@.str.230 = private unnamed_addr constant [37 x i8] c"\013\09address %zx parent %zx cnext %zx\0A\00", align 1
@.str.231 = private unnamed_addr constant [37 x i8] c"\013\09flags %lu iip %d level %d num %d\0A\00", align 1
@.str.232 = private unnamed_addr constant [42 x i8] c"\013\09%d: free %d dirty %d flags %d lnum %d\0A\00", align 1
@.str.233 = private unnamed_addr constant [4 x i8] c"\013\0A\00", align 1
@.str.234 = private unnamed_addr constant [35 x i8] c"\013(pid %d) start dumping TNC tree\0A\00", align 1
@.str.235 = private unnamed_addr constant [18 x i8] c"\013== Level %d ==\0A\00", align 1
@.str.236 = private unnamed_addr constant [36 x i8] c"\013(pid %d) finish dumping TNC tree\0A\00", align 1
@.str.237 = private unnamed_addr constant [37 x i8] c"free space changed from %lld to %lld\00", align 1
@.str.238 = private unnamed_addr constant [29 x i8] c"saved lprops statistics dump\00", align 1
@.str.239 = private unnamed_addr constant [26 x i8] c"saved budgeting info dump\00", align 1
@.str.240 = private unnamed_addr constant [20 x i8] c"saved idx_gc_cnt %d\00", align 1
@.str.241 = private unnamed_addr constant [31 x i8] c"current lprops statistics dump\00", align 1
@.str.242 = private unnamed_addr constant [28 x i8] c"current budgeting info dump\00", align 1
@.str.243 = private unnamed_addr constant [59 x i8] c"ui_size is %lld, synced_i_size is %lld, but inode is clean\00", align 1
@.str.244 = private unnamed_addr constant [35 x i8] c"i_ino %lu, i_mode %#x, i_size %lld\00", align 1
@.str.245 = private unnamed_addr constant [63 x i8] c"directory inode %lu has size %llu, but calculated size is %llu\00", align 1
@.str.246 = private unnamed_addr constant [61 x i8] c"directory inode %lu has nlink %u, but calculated nlink is %u\00", align 1
@.str.247 = private unnamed_addr constant [31 x i8] c"mutex_is_locked(&c->tnc_mutex)\00", align 1
@.str.248 = private unnamed_addr constant [12 x i8] c"first znode\00", align 1
@.str.249 = private unnamed_addr constant [13 x i8] c"second znode\00", align 1
@.str.250 = private unnamed_addr constant [43 x i8] c"incorrect clean_zn_cnt %ld, calculated %ld\00", align 1
@.str.251 = private unnamed_addr constant [43 x i8] c"incorrect dirty_zn_cnt %ld, calculated %ld\00", align 1
@.str.252 = private unnamed_addr constant [42 x i8] c"znode checking function returned error %d\00", align 1
@.str.253 = private unnamed_addr constant [64 x i8] c"leaf checking function returned error %d, for leaf at LEB %d:%d\00", align 1
@.str.254 = private unnamed_addr constant [27 x i8] c"dump of znode at LEB %d:%d\00", align 1
@.str.255 = private unnamed_addr constant [33 x i8] c"error %d while walking the index\00", align 1
@.str.256 = private unnamed_addr constant [65 x i8] c"index size check failed: calculated size is %lld, should be %lld\00", align 1
@.str.257 = private unnamed_addr constant [39 x i8] c"file-system check failed with error %d\00", align 1
@.str.258 = private unnamed_addr constant [17 x i8] c"bad node type %d\00", align 1
@.str.259 = private unnamed_addr constant [37 x i8] c"larger inum %lu goes before inum %lu\00", align 1
@.str.260 = private unnamed_addr constant [31 x i8] c"larger block %u goes before %u\00", align 1
@.str.261 = private unnamed_addr constant [34 x i8] c"two data nodes for the same block\00", align 1
@.str.262 = private unnamed_addr constant [38 x i8] c"non-inode node goes before inode node\00", align 1
@.str.263 = private unnamed_addr constant [30 x i8] c"smaller inode node goes first\00", align 1
@.str.264 = private unnamed_addr constant [30 x i8] c"larger hash %u goes before %u\00", align 1
@.str.265 = private unnamed_addr constant [19 x i8] c"dumping first node\00", align 1
@.str.266 = private unnamed_addr constant [20 x i8] c"dumping second node\00", align 1
@.str.267 = private unnamed_addr constant [64 x i8] c"actually write %d bytes to LEB %d:%d (the buffer was corrupted)\00", align 1
@.str.268 = private unnamed_addr constant [9 x i8] c"ubi%d_%d\00", align 1
@dfs_rootdir = internal unnamed_addr global ptr null, align 4
@.str.269 = private unnamed_addr constant [12 x i8] c"dump_lprops\00", align 1
@dfs_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @dfs_file_read, ptr @dfs_file_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dfs_file_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.270 = private unnamed_addr constant [10 x i8] c"dump_budg\00", align 1
@.str.271 = private unnamed_addr constant [9 x i8] c"dump_tnc\00", align 1
@.str.272 = private unnamed_addr constant [12 x i8] c"chk_general\00", align 1
@.str.273 = private unnamed_addr constant [10 x i8] c"chk_index\00", align 1
@.str.274 = private unnamed_addr constant [12 x i8] c"chk_orphans\00", align 1
@.str.275 = private unnamed_addr constant [11 x i8] c"chk_lprops\00", align 1
@.str.276 = private unnamed_addr constant [7 x i8] c"chk_fs\00", align 1
@.str.277 = private unnamed_addr constant [13 x i8] c"tst_recovery\00", align 1
@.str.278 = private unnamed_addr constant [9 x i8] c"ro_error\00", align 1
@.str.279 = private unnamed_addr constant [6 x i8] c"ubifs\00", align 1
@dfs_global_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @dfs_global_file_read, ptr @dfs_global_file_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@dfs_chk_gen = internal unnamed_addr global ptr null, align 4
@dfs_chk_index = internal unnamed_addr global ptr null, align 4
@dfs_chk_orph = internal unnamed_addr global ptr null, align 4
@dfs_chk_lprops = internal unnamed_addr global ptr null, align 4
@dfs_chk_fs = internal unnamed_addr global ptr null, align 4
@dfs_tst_rcvry = internal unnamed_addr global ptr null, align 4
@.str.280 = private unnamed_addr constant [34 x i8] c"UBIFS assert failed: %s, in %s:%u\00", align 1
@ubifs_dbg = dso_local local_unnamed_addr global %struct.ubifs_global_debug_info zeroinitializer, align 4
@.str.281 = private unnamed_addr constant [6 x i8] c"inode\00", align 1
@.str.282 = private unnamed_addr constant [9 x i8] c"direntry\00", align 1
@.str.283 = private unnamed_addr constant [7 x i8] c"xentry\00", align 1
@.str.284 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.285 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@.str.286 = private unnamed_addr constant [20 x i8] c"unknown/invalid key\00", align 1
@.str.287 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.288 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.289 = private unnamed_addr constant [8 x i8] c"symlink\00", align 1
@.str.290 = private unnamed_addr constant [7 x i8] c"blkdev\00", align 1
@.str.291 = private unnamed_addr constant [9 x i8] c"char dev\00", align 1
@.str.292 = private unnamed_addr constant [5 x i8] c"fifo\00", align 1
@.str.293 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.294 = private unnamed_addr constant [21 x i8] c"unknown/invalid type\00", align 1
@.str.295 = private unnamed_addr constant [23 x i8] c"\013\09magic          %#x\0A\00", align 1
@.str.296 = private unnamed_addr constant [23 x i8] c"\013\09crc            %#x\0A\00", align 1
@.str.297 = private unnamed_addr constant [27 x i8] c"\013\09node_type      %d (%s)\0A\00", align 1
@.str.298 = private unnamed_addr constant [27 x i8] c"\013\09group_type     %d (%s)\0A\00", align 1
@.str.299 = private unnamed_addr constant [24 x i8] c"\013\09sqnum          %llu\0A\00", align 1
@.str.300 = private unnamed_addr constant [22 x i8] c"\013\09len            %u\0A\00", align 1
@.str.301 = private unnamed_addr constant [14 x i8] c"no node group\00", align 1
@.str.302 = private unnamed_addr constant [14 x i8] c"in node group\00", align 1
@.str.303 = private unnamed_addr constant [19 x i8] c"last of node group\00", align 1
@.str.304 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.305 = private unnamed_addr constant [3 x i8] c"R5\00", align 1
@.str.306 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.307 = private unnamed_addr constant [26 x i8] c"unknown/invalid name hash\00", align 1
@.str.308 = private unnamed_addr constant [7 x i8] c"simple\00", align 1
@.str.309 = private unnamed_addr constant [23 x i8] c"unknown/invalid format\00", align 1
@.str.310 = private unnamed_addr constant [17 x i8] c"failed, error %d\00", align 1
@.str.311 = private unnamed_addr constant [18 x i8] c"dump of the znode\00", align 1
@.str.312 = private unnamed_addr constant [25 x i8] c"dump of the parent znode\00", align 1
@.str.313 = private unnamed_addr constant [37 x i8] c"!keys_cmp(c, &zbr1->key, &zbr2->key)\00", align 1
@.str.314 = private unnamed_addr constant [30 x i8] c"1st entry at %d:%d has key %s\00", align 1
@.str.315 = private unnamed_addr constant [43 x i8] c"but it should have key %s according to tnc\00", align 1
@.str.316 = private unnamed_addr constant [30 x i8] c"2nd entry at %d:%d has key %s\00", align 1
@.str.317 = private unnamed_addr constant [37 x i8] c"2 xent/dent nodes with the same name\00", align 1
@.str.318 = private unnamed_addr constant [30 x i8] c"bad order of colliding key %s\00", align 1
@.str.319 = private unnamed_addr constant [21 x i8] c"first node at %d:%d\0A\00", align 1
@.str.320 = private unnamed_addr constant [22 x i8] c"second node at %d:%d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.321 = private unnamed_addr constant [31 x i8] c"bad leaf length %d (LEB %d:%d)\00", align 1
@.str.322 = private unnamed_addr constant [45 x i8] c"cannot read leaf node at LEB %d:%d, error %d\00", align 1
@.str.323 = private unnamed_addr constant [33 x i8] c"error %d while adding inode node\00", align 1
@.str.324 = private unnamed_addr constant [37 x i8] c"unexpected node type %d at LEB %d:%d\00", align 1
@.str.325 = private unnamed_addr constant [39 x i8] c"too high sequence number, max. is %llu\00", align 1
@.str.326 = private unnamed_addr constant [31 x i8] c"zbr->len >= UBIFS_DATA_NODE_SZ\00", align 1
@.str.327 = private unnamed_addr constant [70 x i8] c"error %d while processing data node and trying to find inode node %lu\00", align 1
@.str.328 = private unnamed_addr constant [53 x i8] c"data node at LEB %d:%d is not within inode size %lld\00", align 1
@.str.329 = private unnamed_addr constant [31 x i8] c"zbr->len >= UBIFS_DENT_NODE_SZ\00", align 1
@.str.330 = private unnamed_addr constant [71 x i8] c"error %d while processing entry node and trying to find inode node %lu\00", align 1
@.str.331 = private unnamed_addr constant [78 x i8] c"error %d while processing entry node and trying to find parent inode node %lu\00", align 1
@.str.332 = private unnamed_addr constant [26 x i8] c"dump of node at LEB %d:%d\00", align 1
@.str.333 = private unnamed_addr constant [35 x i8] c"too high inode number, max. is %lu\00", align 1
@.str.334 = private unnamed_addr constant [29 x i8] c"inode %lu not found in index\00", align 1
@.str.335 = private unnamed_addr constant [36 x i8] c"error %d while looking up inode %lu\00", align 1
@.str.336 = private unnamed_addr constant [28 x i8] c"bad node %lu node length %d\00", align 1
@.str.337 = private unnamed_addr constant [46 x i8] c"cannot read inode node at LEB %d:%d, error %d\00", align 1
@.str.338 = private unnamed_addr constant [38 x i8] c"error %ld while adding inode %lu node\00", align 1
@.str.339 = private unnamed_addr constant [70 x i8] c"directory inode %lu has %d direntries which refer it, but should be 1\00", align 1
@.str.340 = private unnamed_addr constant [59 x i8] c"root inode %lu has non-zero (%d) direntries which refer it\00", align 1
@.str.341 = private unnamed_addr constant [62 x i8] c"directory inode %lu size is %lld, but calculated size is %lld\00", align 1
@.str.342 = private unnamed_addr constant [60 x i8] c"directory inode %lu nlink is %d, but calculated nlink is %d\00", align 1
@.str.343 = private unnamed_addr constant [50 x i8] c"inode %lu nlink is %d, but calculated nlink is %d\00", align 1
@.str.344 = private unnamed_addr constant [57 x i8] c"inode %lu has xattr size %u, but calculated size is %lld\00", align 1
@.str.345 = private unnamed_addr constant [54 x i8] c"inode %lu has %u xattrs, but calculated count is %lld\00", align 1
@.str.346 = private unnamed_addr constant [71 x i8] c"inode %lu has xattr names' size %u, but calculated names' size is %lld\00", align 1
@.str.347 = private unnamed_addr constant [43 x i8] c"dump of the inode %lu sitting in LEB %d:%d\00", align 1
@.str.348 = private unnamed_addr constant [20 x i8] c"dbg_is_tst_rcvry(c)\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.349 = private unnamed_addr constant [20 x i8] c"failing after %lums\00", align 1
@.str.350 = private unnamed_addr constant [24 x i8] c"failing after %lu calls\00", align 1
@.str.351 = private unnamed_addr constant [30 x i8] c"failing in super block LEB %d\00", align 1
@.str.352 = private unnamed_addr constant [25 x i8] c"failing in master LEB %d\00", align 1
@.str.353 = private unnamed_addr constant [22 x i8] c"failing in log LEB %d\00", align 1
@.str.354 = private unnamed_addr constant [22 x i8] c"failing in LPT LEB %d\00", align 1
@.str.355 = private unnamed_addr constant [25 x i8] c"failing in orphan LEB %d\00", align 1
@.str.356 = private unnamed_addr constant [29 x i8] c"failing in index head LEB %d\00", align 1
@.str.357 = private unnamed_addr constant [26 x i8] c"failing in GC head LEB %d\00", align 1
@.str.358 = private unnamed_addr constant [26 x i8] c"failing in non-bud LEB %d\00", align 1
@.str.359 = private unnamed_addr constant [37 x i8] c"failing in bud LEB %d commit running\00", align 1
@.str.360 = private unnamed_addr constant [41 x i8] c"failing in bud LEB %d commit not running\00", align 1
@.str.361 = private unnamed_addr constant [41 x i8] c"========== Power cut emulated ==========\00", align 1
@.str.362 = private unnamed_addr constant [27 x i8] c"filled bytes %u-%u with %s\00", align 1
@.str.363 = private unnamed_addr constant [6 x i8] c"0xFFs\00", align 1
@.str.364 = private unnamed_addr constant [12 x i8] c"random data\00", align 1
@switch.table.dbg_cstate = private unnamed_addr constant [6 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], align 4
@switch.table.ubifs_dump_inode = private unnamed_addr constant [7 x ptr] [ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293], align 4
@switch.table.ubifs_dump_node.367 = private unnamed_addr constant [3 x ptr] [ptr @.str.301, ptr @.str.302, ptr @.str.303], align 4
@switch.table.ubifs_dump_node.368 = private unnamed_addr constant [13 x ptr] [ptr @.str.11, ptr @.str.14, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], align 4
@switch.table.ubifs_dump_lprop = private unnamed_addr constant [6 x ptr] [ptr @.str.179, ptr @.str.180, ptr null, ptr @.str.181, ptr @.str.182, ptr @.str.183], align 4
@switch.table.ubifs_dump_lprop.370 = private unnamed_addr constant [3 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dbg_snprintf_key(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef returned writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 29
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 67
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %4
  switch i32 %7, label %30 [
    i32 0, label %12
    i32 2, label %15
    i32 3, label %15
    i32 1, label %23
    i32 4, label %27
  ]

12:                                               ; preds = %11
  %13 = load i32, ptr %1, align 8
  %14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef %3, ptr noundef nonnull @.str, i32 noundef %13, ptr noundef nonnull @.str.281)
  br label %35

15:                                               ; preds = %11, %11
  %16 = load i32, ptr %1, align 8
  %17 = icmp eq i32 %7, 2
  %18 = select i1 %17, ptr @.str.282, ptr @.str.286
  %19 = icmp eq i32 %7, 3
  %20 = select i1 %19, ptr @.str.283, ptr %18
  %21 = and i32 %6, 536870911
  %22 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef %3, ptr noundef nonnull @.str.1, i32 noundef %16, ptr noundef nonnull %20, i32 noundef %21)
  br label %35

23:                                               ; preds = %11
  %24 = load i32, ptr %1, align 8
  %25 = and i32 %6, 536870911
  %26 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef %3, ptr noundef nonnull @.str.2, i32 noundef %24, ptr noundef nonnull @.str.284, i32 noundef %25)
  br label %35

27:                                               ; preds = %11
  %28 = load i32, ptr %1, align 8
  %29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef %3, ptr noundef nonnull @.str, i32 noundef %28, ptr noundef nonnull @.str.285)
  br label %35

30:                                               ; preds = %11
  %31 = load i32, ptr %1, align 8
  %32 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef %3, ptr noundef nonnull @.str.3, i32 noundef %31, i32 noundef %6)
  br label %35

33:                                               ; preds = %4
  %34 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef %3, ptr noundef nonnull @.str.4, i32 noundef %9)
  br label %35

35:                                               ; preds = %33, %30, %27, %23, %15, %12
  %36 = phi i32 [ %32, %30 ], [ %29, %27 ], [ %26, %23 ], [ %22, %15 ], [ %14, %12 ], [ %34, %33 ]
  %37 = sub i32 %3, %36
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %39, label %40, !prof !8

39:                                               ; preds = %35
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 125)
  br label %40

40:                                               ; preds = %39, %35
  ret ptr %2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_assert_failed(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.280, ptr noundef %1, ptr noundef %2, i32 noundef %3) #15
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %6 = load i16, ptr %5, align 4
  %7 = lshr i16 %6, 9
  %8 = and i16 %7, 3
  %9 = zext i16 %8 to i32
  switch i32 %9, label %12 [
    i32 2, label %10
    i32 1, label %11
  ]

10:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ubifs/debug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3007, 0\0A.popsection", ""() #15, !srcloc !9
  unreachable

11:                                               ; preds = %4
  tail call void @ubifs_ro_mode(ptr noundef %0, i32 noundef -22) #15
  br label %13

12:                                               ; preds = %4
  tail call void @dump_stack() #16
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @dbg_ntype(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp ult i32 %0, 13
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = getelementptr inbounds [13 x ptr], ptr @switch.table.ubifs_dump_node.368, i32 0, i32 %0
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str.20, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @dbg_cstate(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp ult i32 %0, 6
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = getelementptr inbounds [6 x ptr], ptr @switch.table.dbg_cstate, i32 0, i32 %0
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str.27, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @dbg_jhead(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp ult i32 %0, 3
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = getelementptr inbounds [3 x ptr], ptr @switch.table.ubifs_dump_lprop.370, i32 0, i32 %0
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str.31, %1 ]
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_dump_inode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.fscrypt_name, align 4
  %4 = alloca %union.ubifs_key, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store i64 0, ptr %4, align 8, !annotation !10
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #16
  %6 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %7) #16
  %9 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 22
  %10 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  br label %11

11:                                               ; preds = %19, %2
  %12 = load volatile i32, ptr %9, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %15, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !12
  %16 = load volatile i32, ptr %9, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15, %11
  %20 = phi i32 [ %12, %11 ], [ %16, %15 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  %21 = load i64, ptr %10, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  %22 = load volatile i32, ptr %9, align 4
  %23 = icmp eq i32 %22, %20
  br i1 %23, label %24, label %11

24:                                               ; preds = %19
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i64 noundef %21) #16
  %26 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %27 = load i32, ptr %26, align 8
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %27) #16
  %29 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %30) #16
  %32 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %33 = load i32, ptr %32, align 8
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %33) #16
  %35 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %36 = load i64, ptr %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14, i32 1
  %39 = load i32, ptr %38, align 8
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %37, i32 noundef %39) #16
  %41 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  %42 = load i64, ptr %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15, i32 1
  %45 = load i32, ptr %44, align 8
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %43, i32 noundef %45) #16
  %47 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %48 = load i64, ptr %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16, i32 1
  %51 = load i32, ptr %50, align 8
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %49, i32 noundef %51) #16
  %53 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 1
  %54 = load i64, ptr %53, align 8
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i64 noundef %54) #16
  %56 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 3
  %57 = load i32, ptr %56, align 8
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %57) #16
  %59 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %60) #16
  %62 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 5
  %63 = load i32, ptr %62, align 8
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %63) #16
  %65 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 6
  %66 = load i8, ptr %65, align 4
  %67 = and i8 %66, 1
  %68 = zext i8 %67 to i32
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %68) #16
  %70 = load i8, ptr %65, align 4
  %71 = lshr i8 %70, 1
  %72 = and i8 %71, 1
  %73 = zext i8 %72 to i32
  %74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %73) #16
  %75 = load i8, ptr %65, align 4
  %76 = lshr i8 %75, 2
  %77 = and i8 %76, 1
  %78 = zext i8 %77 to i32
  %79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %78) #16
  %80 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 10
  %81 = load i64, ptr %80, align 8
  %82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i64 noundef %81) #16
  %83 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 11
  %84 = load i64, ptr %83, align 8
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i64 noundef %84) #16
  %86 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 12
  %87 = load i32, ptr %86, align 8
  %88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %87) #16
  %89 = load i8, ptr %65, align 4
  %90 = lshr i8 %89, 3
  %91 = and i8 %90, 3
  %92 = zext i8 %91 to i32
  %93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %92) #16
  %94 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 13
  %95 = load i32, ptr %94, align 4
  %96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %95) #16
  %97 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 14
  %98 = load i32, ptr %97, align 8
  %99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %98) #16
  %100 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 15
  %101 = load i32, ptr %100, align 4
  %102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %101) #16
  %103 = load i16, ptr %1, align 8
  %104 = and i16 %103, -4096
  %105 = icmp eq i16 %104, 16384
  br i1 %105, label %106, label %156

106:                                              ; preds = %24
  %107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #16
  %108 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 31
  %109 = tail call zeroext i1 @mutex_is_locked(ptr noundef %108) #15
  br i1 %109, label %110, label %111, !prof !8

110:                                              ; preds = %106
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.6, i32 noundef 269)
  br label %111

111:                                              ; preds = %110, %106
  %112 = load i32, ptr %6, align 4
  store i32 %112, ptr %4, align 8
  %113 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  store i32 1073741824, ptr %113, align 4
  %114 = call ptr @ubifs_tnc_next_ent(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %115 = icmp ugt ptr %114, inttoptr (i32 -4096 to ptr)
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.fscrypt_name, ptr %3, i32 0, i32 1
  %118 = getelementptr inbounds %struct.fscrypt_name, ptr %3, i32 0, i32 1, i32 1
  br label %126

119:                                              ; preds = %140, %111
  %120 = phi ptr [ null, %111 ], [ %127, %140 ]
  %121 = phi ptr [ %114, %111 ], [ %153, %140 ]
  %122 = icmp eq ptr %121, inttoptr (i32 -2 to ptr)
  br i1 %122, label %155, label %123

123:                                              ; preds = %119
  %124 = ptrtoint ptr %121 to i32
  %125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %124) #16
  br label %155

126:                                              ; preds = %140, %116
  %127 = phi ptr [ %114, %116 ], [ %153, %140 ]
  %128 = phi ptr [ null, %116 ], [ %127, %140 ]
  %129 = phi i32 [ 2, %116 ], [ %130, %140 ]
  %130 = add i32 %129, 1
  %131 = getelementptr inbounds %struct.ubifs_dent_node, ptr %127, i32 0, i32 2
  %132 = load i64, ptr %131, align 1
  %133 = getelementptr inbounds %struct.ubifs_dent_node, ptr %127, i32 0, i32 4
  %134 = load i8, ptr %133, align 1
  %135 = icmp ult i8 %134, 7
  br i1 %135, label %136, label %140

136:                                              ; preds = %126
  %137 = sext i8 %134 to i32
  %138 = getelementptr inbounds [7 x ptr], ptr @switch.table.ubifs_dump_inode, i32 0, i32 %137
  %139 = load ptr, ptr %138, align 4
  br label %140

140:                                              ; preds = %136, %126
  %141 = phi ptr [ %139, %136 ], [ @.str.294, %126 ]
  %142 = getelementptr inbounds %struct.ubifs_dent_node, ptr %127, i32 0, i32 5
  %143 = load i16, ptr %142, align 1
  %144 = zext i16 %143 to i32
  %145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %129, i64 noundef %132, ptr noundef nonnull %141, i32 noundef %144) #16
  %146 = getelementptr inbounds %struct.ubifs_dent_node, ptr %127, i32 0, i32 7
  store ptr %146, ptr %117, align 4
  %147 = load i16, ptr %142, align 1
  %148 = zext i16 %147 to i32
  store i32 %148, ptr %118, align 4
  call void @kfree(ptr noundef %128) #15
  %149 = getelementptr inbounds %struct.ubifs_dent_node, ptr %127, i32 0, i32 1
  %150 = load i32, ptr %149, align 8
  store i32 %150, ptr %4, align 8
  %151 = getelementptr %struct.ubifs_dent_node, ptr %127, i32 0, i32 1, i32 4
  %152 = load i32, ptr %151, align 4
  store i32 %152, ptr %113, align 4
  %153 = call ptr @ubifs_tnc_next_ent(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %154 = icmp ugt ptr %153, inttoptr (i32 -4096 to ptr)
  br i1 %154, label %119, label %126

155:                                              ; preds = %123, %119
  call void @kfree(ptr noundef %120) #15
  br label %156

156:                                              ; preds = %155, %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %4

4:                                                ; preds = %12, %1
  %5 = load volatile i32, ptr %2, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %8, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !12
  %9 = load volatile i32, ptr %2, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %5, %4 ], [ %9, %8 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  %14 = load i64, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  %15 = load volatile i32, ptr %2, align 4
  %16 = icmp eq i32 %15, %13
  br i1 %16, label %17, label %4

17:                                               ; preds = %12
  ret i64 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_tnc_next_ent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_dump_node(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %union.ubifs_key, align 8
  %5 = alloca [48 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store i64 0, ptr %4, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(48) %5, i8 0, i32 48, i1 false), !annotation !10
  %6 = load i32, ptr %1, align 1
  %7 = icmp eq i32 %6, 101718065
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef 24) #16
  tail call void @print_hex_dump(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %1, i32 noundef 24, i1 noundef zeroext true) #15
  br label %467

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 4
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp ugt i8 %12, 13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %13) #16
  br label %467

17:                                               ; preds = %10
  tail call void @_raw_spin_lock(ptr noundef nonnull @dbg_lock) #15
  %18 = load i32, ptr %1, align 1
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.295, i32 noundef %18) #16
  %20 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 1
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.296, i32 noundef %21) #16
  %23 = load i8, ptr %11, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp ult i8 %23, 13
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = sext i8 %23 to i32
  %28 = getelementptr inbounds [13 x ptr], ptr @switch.table.ubifs_dump_node.368, i32 0, i32 %27
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %26, %17
  %31 = phi ptr [ %29, %26 ], [ @.str.20, %17 ]
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.297, i32 noundef %24, ptr noundef nonnull %31) #16
  %33 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 5
  %34 = load i8, ptr %33, align 1
  %35 = icmp ult i8 %34, 3
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = sext i8 %34 to i32
  %38 = getelementptr inbounds [3 x ptr], ptr @switch.table.ubifs_dump_node.367, i32 0, i32 %37
  %39 = load ptr, ptr %38, align 4
  br label %40

40:                                               ; preds = %36, %30
  %41 = phi ptr [ %39, %36 ], [ @.str.304, %30 ]
  %42 = zext i8 %34 to i32
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.298, i32 noundef %42, ptr noundef nonnull %41) #16
  %44 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 2
  %45 = load i64, ptr %44, align 1
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.299, i64 noundef %45) #16
  %47 = getelementptr inbounds %struct.ubifs_ch, ptr %1, i32 0, i32 3
  %48 = load i32, ptr %47, align 1
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.300, i32 noundef %48) #16
  %50 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 99, i32 %13
  %51 = getelementptr %struct.ubifs_info, ptr %0, i32 0, i32 99, i32 %13, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  %54 = load i32, ptr %50, align 4
  %55 = select i1 %53, i32 %54, i32 %52
  %56 = load i32, ptr %47, align 1
  %57 = tail call i32 @llvm.smax.i32(i32 %56, i32 0)
  %58 = tail call i32 @llvm.smin.i32(i32 %57, i32 %55)
  %59 = tail call i32 @llvm.smin.i32(i32 %58, i32 %2)
  %60 = icmp slt i32 %59, %54
  br i1 %60, label %61, label %75

61:                                               ; preds = %40
  %62 = icmp ult i8 %12, 13
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  %64 = sext i8 %12 to i32
  %65 = getelementptr inbounds [13 x ptr], ptr @switch.table.ubifs_dump_node.368, i32 0, i32 %64
  %66 = load ptr, ptr %65, align 4
  br label %67

67:                                               ; preds = %63, %61
  %68 = phi ptr [ %66, %63 ], [ @.str.20, %61 ]
  %69 = icmp ugt i32 %59, 24
  %70 = tail call i32 @llvm.usub.sat.i32(i32 %59, i32 24)
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %59, ptr noundef nonnull %68, i32 noundef %70) #16
  br i1 %69, label %72, label %464

72:                                               ; preds = %67
  %73 = add i32 %59, -24
  %74 = getelementptr i8, ptr %1, i32 24
  tail call void @print_hex_dump(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %74, i32 noundef %73, i1 noundef zeroext false) #15
  br label %464

75:                                               ; preds = %40
  %76 = icmp eq i32 %59, %56
  br i1 %76, label %79, label %77

77:                                               ; preds = %75
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %59) #16
  br label %79

79:                                               ; preds = %77, %75
  switch i8 %12, label %462 [
    i8 5, label %80
    i8 6, label %84
    i8 7, label %162
    i8 8, label %247
    i8 0, label %257
    i8 2, label %317
    i8 3, label %317
    i8 1, label %362
    i8 4, label %383
    i8 9, label %393
    i8 10, label %464
    i8 11, label %441
    i8 12, label %464
  ]

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.ubifs_pad_node, ptr %1, i32 0, i32 1
  %82 = load i32, ptr %81, align 1
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %82) #16
  br label %464

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 4
  %86 = load i32, ptr %85, align 1
  %87 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 2
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i8 %88, 1
  %91 = select i1 %90, ptr @.str.306, ptr @.str.307
  %92 = icmp eq i8 %88, 0
  %93 = select i1 %92, ptr @.str.305, ptr %91
  %94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %89, ptr noundef nonnull %93) #16
  %95 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 3
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i8 %96, 0
  %99 = select i1 %98, ptr @.str.308, ptr @.str.309
  %100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %97, ptr noundef nonnull %99) #16
  %101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %86) #16
  %102 = lshr i32 %86, 1
  %103 = and i32 %102, 1
  %104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %103) #16
  %105 = lshr i32 %86, 2
  %106 = and i32 %105, 1
  %107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %106) #16
  %108 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 5
  %109 = load i32, ptr %108, align 1
  %110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %109) #16
  %111 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 6
  %112 = load i32, ptr %111, align 1
  %113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %112) #16
  %114 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 7
  %115 = load i32, ptr %114, align 1
  %116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %115) #16
  %117 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 8
  %118 = load i32, ptr %117, align 1
  %119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %118) #16
  %120 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 9
  %121 = load i64, ptr %120, align 1
  %122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i64 noundef %121) #16
  %123 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 10
  %124 = load i32, ptr %123, align 1
  %125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %124) #16
  %126 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 11
  %127 = load i32, ptr %126, align 1
  %128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %127) #16
  %129 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 12
  %130 = load i32, ptr %129, align 1
  %131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %130) #16
  %132 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 13
  %133 = load i32, ptr %132, align 1
  %134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %133) #16
  %135 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 14
  %136 = load i32, ptr %135, align 1
  %137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %136) #16
  %138 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 15
  %139 = load i32, ptr %138, align 1
  %140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %139) #16
  %141 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 17
  %142 = load i16, ptr %141, align 1
  %143 = zext i16 %142 to i32
  %144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %143) #16
  %145 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 21
  %146 = load i64, ptr %145, align 1
  %147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i64 noundef %146) #16
  %148 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 19
  %149 = load i32, ptr %148, align 1
  %150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %149) #16
  %151 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 20
  %152 = load i32, ptr %151, align 1
  %153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef %152) #16
  %154 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 16
  %155 = load i32, ptr %154, align 1
  %156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %155) #16
  %157 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 22
  %158 = load i32, ptr %157, align 1
  %159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %158) #16
  %160 = getelementptr inbounds %struct.ubifs_sb_node, ptr %1, i32 0, i32 23
  %161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %160) #16
  br label %464

162:                                              ; preds = %79
  %163 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 1
  %164 = load i64, ptr %163, align 1
  %165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i64 noundef %164) #16
  %166 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 2
  %167 = load i64, ptr %166, align 1
  %168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i64 noundef %167) #16
  %169 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 3
  %170 = load i32, ptr %169, align 1
  %171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %170) #16
  %172 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 4
  %173 = load i32, ptr %172, align 1
  %174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %173) #16
  %175 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 5
  %176 = load i32, ptr %175, align 1
  %177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %176) #16
  %178 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 6
  %179 = load i32, ptr %178, align 1
  %180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %179) #16
  %181 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 7
  %182 = load i32, ptr %181, align 1
  %183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %182) #16
  %184 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 8
  %185 = load i32, ptr %184, align 1
  %186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %185) #16
  %187 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 9
  %188 = load i32, ptr %187, align 1
  %189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %188) #16
  %190 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 10
  %191 = load i32, ptr %190, align 1
  %192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %191) #16
  %193 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 11
  %194 = load i64, ptr %193, align 1
  %195 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i64 noundef %194) #16
  %196 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 17
  %197 = load i32, ptr %196, align 1
  %198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, i32 noundef %197) #16
  %199 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 18
  %200 = load i32, ptr %199, align 1
  %201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %200) #16
  %202 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 19
  %203 = load i32, ptr %202, align 1
  %204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %203) #16
  %205 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 20
  %206 = load i32, ptr %205, align 1
  %207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, i32 noundef %206) #16
  %208 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 21
  %209 = load i32, ptr %208, align 1
  %210 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, i32 noundef %209) #16
  %211 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 22
  %212 = load i32, ptr %211, align 1
  %213 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %212) #16
  %214 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 23
  %215 = load i32, ptr %214, align 1
  %216 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %215) #16
  %217 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 24
  %218 = load i32, ptr %217, align 1
  %219 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %218) #16
  %220 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 25
  %221 = load i32, ptr %220, align 1
  %222 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %221) #16
  %223 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 28
  %224 = load i32, ptr %223, align 1
  %225 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %224) #16
  %226 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 26
  %227 = load i32, ptr %226, align 1
  %228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %227) #16
  %229 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 27
  %230 = load i32, ptr %229, align 1
  %231 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i32 noundef %230) #16
  %232 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 12
  %233 = load i64, ptr %232, align 1
  %234 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i64 noundef %233) #16
  %235 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 13
  %236 = load i64, ptr %235, align 1
  %237 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, i64 noundef %236) #16
  %238 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 14
  %239 = load i64, ptr %238, align 1
  %240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i64 noundef %239) #16
  %241 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 15
  %242 = load i64, ptr %241, align 1
  %243 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, i64 noundef %242) #16
  %244 = getelementptr inbounds %struct.ubifs_mst_node, ptr %1, i32 0, i32 16
  %245 = load i64, ptr %244, align 1
  %246 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i64 noundef %245) #16
  br label %464

247:                                              ; preds = %79
  %248 = getelementptr inbounds %struct.ubifs_ref_node, ptr %1, i32 0, i32 1
  %249 = load i32, ptr %248, align 1
  %250 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %249) #16
  %251 = getelementptr inbounds %struct.ubifs_ref_node, ptr %1, i32 0, i32 2
  %252 = load i32, ptr %251, align 1
  %253 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %252) #16
  %254 = getelementptr inbounds %struct.ubifs_ref_node, ptr %1, i32 0, i32 3
  %255 = load i32, ptr %254, align 1
  %256 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %255) #16
  br label %464

257:                                              ; preds = %79
  %258 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 1
  %259 = load i32, ptr %258, align 8
  store i32 %259, ptr %4, align 8
  %260 = getelementptr %struct.ubifs_ino_node, ptr %1, i32 0, i32 1, i32 4
  %261 = load i32, ptr %260, align 4
  %262 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  store i32 %261, ptr %262, align 4
  %263 = call ptr @dbg_snprintf_key(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 48)
  %264 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull %5) #16
  %265 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 2
  %266 = load i64, ptr %265, align 1
  %267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i64 noundef %266) #16
  %268 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 3
  %269 = load i64, ptr %268, align 1
  %270 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i64 noundef %269) #16
  %271 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 10
  %272 = load i32, ptr %271, align 1
  %273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %272) #16
  %274 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 4
  %275 = load i64, ptr %274, align 1
  %276 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 7
  %277 = load i32, ptr %276, align 1
  %278 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, i64 noundef %275, i32 noundef %277) #16
  %279 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 6
  %280 = load i64, ptr %279, align 1
  %281 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 9
  %282 = load i32, ptr %281, align 1
  %283 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i64 noundef %280, i32 noundef %282) #16
  %284 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 5
  %285 = load i64, ptr %284, align 1
  %286 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 8
  %287 = load i32, ptr %286, align 1
  %288 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i64 noundef %285, i32 noundef %287) #16
  %289 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 11
  %290 = load i32, ptr %289, align 1
  %291 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %290) #16
  %292 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 12
  %293 = load i32, ptr %292, align 1
  %294 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %293) #16
  %295 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 13
  %296 = load i32, ptr %295, align 1
  %297 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, i32 noundef %296) #16
  %298 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 14
  %299 = load i32, ptr %298, align 1
  %300 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %299) #16
  %301 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 16
  %302 = load i32, ptr %301, align 1
  %303 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %302) #16
  %304 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 17
  %305 = load i32, ptr %304, align 1
  %306 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %305) #16
  %307 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 19
  %308 = load i32, ptr %307, align 1
  %309 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %308) #16
  %310 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 20
  %311 = load i16, ptr %310, align 1
  %312 = zext i16 %311 to i32
  %313 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %312) #16
  %314 = getelementptr inbounds %struct.ubifs_ino_node, ptr %1, i32 0, i32 15
  %315 = load i32, ptr %314, align 1
  %316 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %315) #16
  br label %464

317:                                              ; preds = %79, %79
  %318 = getelementptr inbounds %struct.ubifs_dent_node, ptr %1, i32 0, i32 5
  %319 = load i16, ptr %318, align 1
  %320 = zext i16 %319 to i32
  %321 = getelementptr inbounds %struct.ubifs_dent_node, ptr %1, i32 0, i32 1
  %322 = load i32, ptr %321, align 8
  store i32 %322, ptr %4, align 8
  %323 = getelementptr %struct.ubifs_dent_node, ptr %1, i32 0, i32 1, i32 4
  %324 = load i32, ptr %323, align 4
  %325 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  store i32 %324, ptr %325, align 4
  %326 = call ptr @dbg_snprintf_key(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 48)
  %327 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull %5) #16
  %328 = getelementptr inbounds %struct.ubifs_dent_node, ptr %1, i32 0, i32 2
  %329 = load i64, ptr %328, align 1
  %330 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i64 noundef %329) #16
  %331 = getelementptr inbounds %struct.ubifs_dent_node, ptr %1, i32 0, i32 4
  %332 = load i8, ptr %331, align 1
  %333 = zext i8 %332 to i32
  %334 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, i32 noundef %333) #16
  %335 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, i32 noundef %320) #16
  %336 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #16
  %337 = icmp ugt i16 %319, 255
  %338 = add i32 %59, -56
  %339 = icmp ult i32 %338, %320
  %340 = select i1 %337, i1 true, i1 %339
  br i1 %340, label %343, label %341

341:                                              ; preds = %317
  %342 = icmp eq i16 %319, 0
  br i1 %342, label %360, label %345

343:                                              ; preds = %317
  %344 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129) #16
  br label %360

345:                                              ; preds = %350, %341
  %346 = phi i32 [ %358, %350 ], [ 0, %341 ]
  %347 = getelementptr %struct.ubifs_dent_node, ptr %1, i32 0, i32 7, i32 %346
  %348 = load i8, ptr %347, align 1
  %349 = icmp eq i8 %348, 0
  br i1 %349, label %360, label %350

350:                                              ; preds = %345
  %351 = zext i8 %348 to i32
  %352 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %351
  %353 = load i8, ptr %352, align 1
  %354 = and i8 %353, -105
  %355 = icmp eq i8 %354, 0
  %356 = select i1 %355, i32 63, i32 %351
  %357 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %356) #16
  %358 = add nuw nsw i32 %346, 1
  %359 = icmp eq i32 %358, %320
  br i1 %359, label %360, label %345

360:                                              ; preds = %350, %345, %343, %341
  %361 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131) #16
  br label %464

362:                                              ; preds = %79
  %363 = getelementptr inbounds %struct.ubifs_data_node, ptr %1, i32 0, i32 1
  %364 = load i32, ptr %363, align 8
  store i32 %364, ptr %4, align 8
  %365 = getelementptr %struct.ubifs_data_node, ptr %1, i32 0, i32 1, i32 4
  %366 = load i32, ptr %365, align 4
  %367 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  store i32 %366, ptr %367, align 4
  %368 = call ptr @dbg_snprintf_key(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 48)
  %369 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull %5) #16
  %370 = getelementptr inbounds %struct.ubifs_data_node, ptr %1, i32 0, i32 2
  %371 = load i32, ptr %370, align 1
  %372 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, i32 noundef %371) #16
  %373 = getelementptr inbounds %struct.ubifs_data_node, ptr %1, i32 0, i32 3
  %374 = load i16, ptr %373, align 1
  %375 = zext i16 %374 to i32
  %376 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %375) #16
  %377 = load i32, ptr %47, align 1
  %378 = add i32 %377, -48
  %379 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, i32 noundef %378) #16
  %380 = add i32 %59, -48
  %381 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, i32 noundef %380) #16
  %382 = getelementptr inbounds %struct.ubifs_data_node, ptr %1, i32 0, i32 5
  call void @print_hex_dump(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.136, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %382, i32 noundef %380, i1 noundef zeroext false) #15
  br label %464

383:                                              ; preds = %79
  %384 = getelementptr inbounds %struct.ubifs_trun_node, ptr %1, i32 0, i32 1
  %385 = load i32, ptr %384, align 1
  %386 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, i32 noundef %385) #16
  %387 = getelementptr inbounds %struct.ubifs_trun_node, ptr %1, i32 0, i32 3
  %388 = load i64, ptr %387, align 1
  %389 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i64 noundef %388) #16
  %390 = getelementptr inbounds %struct.ubifs_trun_node, ptr %1, i32 0, i32 4
  %391 = load i64, ptr %390, align 1
  %392 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, i64 noundef %391) #16
  br label %464

393:                                              ; preds = %79
  %394 = add i32 %59, -28
  %395 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 68
  %396 = load i32, ptr %395, align 4
  %397 = add i32 %396, 12
  %398 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 69
  %399 = load i32, ptr %398, align 8
  %400 = add i32 %397, %399
  %401 = udiv i32 %394, %400
  %402 = getelementptr inbounds %struct.ubifs_idx_node, ptr %1, i32 0, i32 1
  %403 = load i16, ptr %402, align 1
  %404 = zext i16 %403 to i32
  %405 = tail call i32 @llvm.smin.i32(i32 %401, i32 %404)
  %406 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, i32 noundef %404) #16
  %407 = getelementptr inbounds %struct.ubifs_idx_node, ptr %1, i32 0, i32 2
  %408 = load i16, ptr %407, align 1
  %409 = zext i16 %408 to i32
  %410 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %409) #16
  %411 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142) #16
  %412 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 70
  %413 = icmp sgt i32 %405, 0
  br i1 %413, label %414, label %464

414:                                              ; preds = %393
  %415 = getelementptr inbounds %struct.ubifs_idx_node, ptr %1, i32 0, i32 3
  %416 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  br label %417

417:                                              ; preds = %421, %414
  %418 = phi i32 [ 0, %414 ], [ %439, %421 ]
  %419 = load i32, ptr %412, align 4
  %420 = icmp slt i32 %418, %419
  br i1 %420, label %421, label %464

421:                                              ; preds = %417
  %422 = load i32, ptr %395, align 4
  %423 = add i32 %422, 12
  %424 = load i32, ptr %398, align 8
  %425 = add i32 %423, %424
  %426 = mul i32 %425, %418
  %427 = getelementptr i8, ptr %415, i32 %426
  %428 = getelementptr inbounds %struct.ubifs_branch, ptr %427, i32 0, i32 3
  %429 = load i32, ptr %428, align 8
  store i32 %429, ptr %4, align 8
  %430 = getelementptr [2 x i32], ptr %428, i32 0, i32 1
  %431 = load i32, ptr %430, align 4
  store i32 %431, ptr %416, align 4
  %432 = load i32, ptr %427, align 1
  %433 = getelementptr inbounds %struct.ubifs_branch, ptr %427, i32 0, i32 1
  %434 = load i32, ptr %433, align 1
  %435 = getelementptr inbounds %struct.ubifs_branch, ptr %427, i32 0, i32 2
  %436 = load i32, ptr %435, align 1
  %437 = call ptr @dbg_snprintf_key(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 48)
  %438 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, i32 noundef %418, i32 noundef %432, i32 noundef %434, i32 noundef %436, ptr noundef nonnull %5) #16
  %439 = add nuw nsw i32 %418, 1
  %440 = icmp eq i32 %439, %405
  br i1 %440, label %464, label %417

441:                                              ; preds = %79
  %442 = getelementptr inbounds %struct.ubifs_orph_node, ptr %1, i32 0, i32 1
  %443 = load i64, ptr %442, align 1
  %444 = and i64 %443, 9223372036854775807
  %445 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i64 noundef %444) #16
  %446 = load i64, ptr %442, align 1
  %447 = lshr i64 %446, 63
  %448 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i64 noundef %447) #16
  %449 = add i32 %59, -32
  %450 = lshr i32 %449, 3
  %451 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, i32 noundef %450) #16
  %452 = icmp ult i32 %449, 8
  br i1 %452, label %464, label %453

453:                                              ; preds = %441
  %454 = call i32 @llvm.umax.i32(i32 %450, i32 1)
  br label %455

455:                                              ; preds = %455, %453
  %456 = phi i32 [ %460, %455 ], [ 0, %453 ]
  %457 = getelementptr %struct.ubifs_orph_node, ptr %1, i32 0, i32 2, i32 %456
  %458 = load i64, ptr %457, align 1
  %459 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, i64 noundef %458) #16
  %460 = add nuw nsw i32 %456, 1
  %461 = icmp eq i32 %460, %454
  br i1 %461, label %464, label %455

462:                                              ; preds = %79
  %463 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %13) #16
  br label %464

464:                                              ; preds = %462, %455, %441, %421, %417, %393, %383, %362, %360, %257, %247, %162, %84, %80, %79, %79, %72, %67
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  %465 = load i16, ptr @dbg_lock, align 4
  %466 = add i16 %465, 1
  store i16 %466, ptr @dbg_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !18
  br label %467

467:                                              ; preds = %464, %15, %8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_dump_budget_req(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @dbg_lock) #15
  %2 = load i32, ptr %0, align 4
  %3 = lshr i32 %2, 6
  %4 = and i32 %3, 1
  %5 = lshr i32 %2, 20
  %6 = and i32 %5, 15
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef %4, i32 noundef %6) #16
  %8 = load i32, ptr %0, align 4
  %9 = lshr i32 %8, 7
  %10 = and i32 %9, 8191
  %11 = getelementptr inbounds %struct.ubifs_budget_req, ptr %0, i32 0, i32 1
  %12 = load i16, ptr %11, align 4
  %13 = and i16 %12, 32767
  %14 = zext i16 %13 to i32
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, i32 noundef %10, i32 noundef %14) #16
  %16 = load i32, ptr %0, align 4
  %17 = lshr i32 %16, 2
  %18 = and i32 %17, 1
  %19 = lshr i32 %16, 3
  %20 = and i32 %19, 1
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, i32 noundef %18, i32 noundef %20) #16
  %22 = load i32, ptr %0, align 4
  %23 = lshr i32 %22, 4
  %24 = and i32 %23, 1
  %25 = lshr i32 %22, 5
  %26 = and i32 %25, 1
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %24, i32 noundef %26) #16
  %28 = getelementptr inbounds %struct.ubifs_budget_req, ptr %0, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, i32 noundef %29) #16
  %31 = getelementptr inbounds %struct.ubifs_budget_req, ptr %0, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ubifs_budget_req, ptr %0, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, i32 noundef %32, i32 noundef %34) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  %36 = load i16, ptr @dbg_lock, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr @dbg_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_dump_lstats(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @dbg_lock) #15
  %2 = tail call ptr @llvm.thread.pointer() #15
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 52
  %4 = load i32, ptr %3, align 8
  %5 = load i32, ptr %0, align 8
  %6 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %4, i32 noundef %5, i32 noundef %7) #16
  %9 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %0, i32 0, i32 3
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %0, i32 0, i32 4
  %14 = load i64, ptr %13, align 8
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, i32 noundef %10, i64 noundef %12, i64 noundef %14) #16
  %16 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %0, i32 0, i32 5
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %0, i32 0, i32 7
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %0, i32 0, i32 6
  %21 = load i64, ptr %20, align 8
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, i64 noundef %17, i64 noundef %19, i64 noundef %21) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  %23 = load i16, ptr @dbg_lock, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr @dbg_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_dump_budg(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %3) #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @dbg_lock) #15
  %4 = tail call ptr @llvm.thread.pointer() #15
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 52
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ubifs_budg_info, ptr %1, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ubifs_budg_info, ptr %1, i32 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %10, %8
  %12 = load i64, ptr %1, align 8
  %13 = add i64 %11, %12
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %6, i64 noundef %11, i64 noundef %13) #16
  %15 = load i64, ptr %7, align 8
  %16 = load i64, ptr %9, align 8
  %17 = load i64, ptr %1, align 8
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, i64 noundef %15, i64 noundef %16, i64 noundef %17) #16
  %19 = getelementptr inbounds %struct.ubifs_budg_info, ptr %1, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.ubifs_budg_info, ptr %1, i32 0, i32 4
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds %struct.ubifs_budg_info, ptr %1, i32 0, i32 3
  %24 = load i64, ptr %23, align 8
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, i32 noundef %20, i64 noundef %22, i64 noundef %24) #16
  %26 = getelementptr inbounds %struct.ubifs_budg_info, ptr %1, i32 0, i32 7
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.ubifs_budg_info, ptr %1, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ubifs_budg_info, ptr %1, i32 0, i32 9
  %31 = load i32, ptr %30, align 8
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, i32 noundef %27, i32 noundef %29, i32 noundef %31) #16
  %33 = getelementptr inbounds %struct.ubifs_budg_info, ptr %1, i32 0, i32 6
  %34 = load i8, ptr %33, align 4
  %35 = and i8 %34, 1
  %36 = zext i8 %35 to i32
  %37 = lshr i8 %34, 1
  %38 = and i8 %37, 1
  %39 = zext i8 %38 to i32
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef %36, i32 noundef %39) #16
  %41 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 97
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 96
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 92
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, i32 noundef %42, i32 noundef %44, i32 noundef %46) #16
  %48 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87
  %49 = icmp eq ptr %48, %1
  br i1 %49, label %50, label %146

50:                                               ; preds = %2
  %51 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 164
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 88
  %54 = load i64, ptr %53, align 8
  %55 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 124
  %56 = load i32, ptr %55, align 4
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, i32 noundef %52, i64 noundef %54, i32 noundef %56) #16
  %58 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 82
  %59 = load volatile i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 83
  %61 = load volatile i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 84
  %63 = load volatile i32, ptr %62, align 4
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, i32 noundef %59, i32 noundef %61, i32 noundef %63) #16
  %65 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 121
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 39
  %68 = load i32, ptr %67, align 8
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, i32 noundef %66, i32 noundef %68) #16
  %70 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %71 = load ptr, ptr %70, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %96, label %73

73:                                               ; preds = %50
  %74 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 18
  %75 = load i32, ptr %74, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %94, %73
  %78 = phi ptr [ %95, %94 ], [ %71, %73 ]
  %79 = phi i32 [ %91, %94 ], [ 0, %73 ]
  %80 = getelementptr %struct.ubifs_jhead, ptr %78, i32 %79, i32 0, i32 7
  %81 = load i32, ptr %80, align 4
  %82 = icmp ult i32 %81, 3
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = getelementptr inbounds [3 x ptr], ptr @switch.table.ubifs_dump_lprop.370, i32 0, i32 %81
  %85 = load ptr, ptr %84, align 4
  br label %86

86:                                               ; preds = %83, %77
  %87 = phi ptr [ %85, %83 ], [ @.str.31, %77 ]
  %88 = getelementptr %struct.ubifs_jhead, ptr %78, i32 %79, i32 0, i32 2
  %89 = load i32, ptr %88, align 8
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef nonnull %87, i32 noundef %89) #16
  %91 = add nuw nsw i32 %79, 1
  %92 = load i32, ptr %74, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load ptr, ptr %70, align 8
  br label %77

96:                                               ; preds = %86, %73, %50
  %97 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 15
  %98 = tail call ptr @rb_first(ptr noundef %97) #15
  %99 = icmp eq ptr %98, null
  br i1 %99, label %107, label %100

100:                                              ; preds = %100, %96
  %101 = phi ptr [ %105, %100 ], [ %98, %96 ]
  %102 = getelementptr i8, ptr %101, i32 -20
  %103 = load i32, ptr %102, align 4
  %104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, i32 noundef %103) #16
  %105 = tail call ptr @rb_next(ptr noundef nonnull %101) #15
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %100

107:                                              ; preds = %100, %96
  %108 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 22
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, %108
  br i1 %110, label %118, label %111

111:                                              ; preds = %111, %107
  %112 = phi ptr [ %116, %111 ], [ %109, %107 ]
  %113 = getelementptr i8, ptr %112, i32 -12
  %114 = load i32, ptr %113, align 4
  %115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %114) #16
  %116 = load ptr, ptr %112, align 4
  %117 = icmp eq ptr %116, %108
  br i1 %117, label %118, label %111

118:                                              ; preds = %111, %107
  %119 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 123
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, %119
  br i1 %121, label %131, label %122

122:                                              ; preds = %122, %118
  %123 = phi ptr [ %129, %122 ], [ %120, %118 ]
  %124 = getelementptr inbounds %struct.ubifs_gced_idx_leb, ptr %123, i32 0, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = getelementptr inbounds %struct.ubifs_gced_idx_leb, ptr %123, i32 0, i32 2
  %127 = load i32, ptr %126, align 4
  %128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, i32 noundef %125, i32 noundef %127) #16
  %129 = load ptr, ptr %123, align 4
  %130 = icmp eq ptr %129, %119
  br i1 %130, label %131, label %122

131:                                              ; preds = %122, %118
  %132 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 25
  %133 = load i32, ptr %132, align 4
  %134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, i32 noundef %133) #16
  %135 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 5
  %136 = load i32, ptr %135, align 8
  %137 = tail call i64 @ubifs_calc_available(ptr noundef %0, i32 noundef %136) #15
  %138 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 1
  %139 = load i64, ptr %138, align 8
  %140 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 2
  %141 = load i64, ptr %140, align 8
  %142 = add i64 %141, %139
  %143 = tail call i64 @ubifs_get_free_space_nolock(ptr noundef %0) #15
  %144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170) #16
  %145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, i64 noundef %137, i64 noundef %142, i64 noundef %143) #16
  br label %146

146:                                              ; preds = %131, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  %147 = load i16, ptr @dbg_lock, align 4
  %148 = add i16 %147, 1
  store i16 %148, ptr @dbg_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  %149 = load i16, ptr %3, align 4
  %150 = add i16 %149, 1
  store i16 %150, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ubifs_calc_available(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ubifs_get_free_space_nolock(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_dump_lprop(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %3
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 96
  %8 = load i32, ptr %7, align 8
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @ubifs_calc_dark(ptr noundef %0, i32 noundef %6) #15
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ 0, %10 ], [ %6, %2 ]
  %14 = phi i32 [ %11, %10 ], [ 0, %2 ]
  %15 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %1, align 4
  %22 = load i32, ptr %4, align 4
  %23 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %24 = load i32, ptr %23, align 8
  %25 = sub i32 %24, %6
  br i1 %18, label %28, label %26

26:                                               ; preds = %12
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, i32 noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef %25, i32 noundef %6, i32 noundef %16) #16
  br label %31

28:                                               ; preds = %12
  %29 = udiv i32 %6, 4256
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, i32 noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef %25, i32 noundef %6, i32 noundef %14, i32 noundef %13, i32 noundef %29, i32 noundef %16) #16
  br label %31

31:                                               ; preds = %28, %26
  %32 = load i32, ptr %15, align 4
  %33 = and i32 %32, 16
  %34 = icmp eq i32 %33, 0
  %35 = and i32 %32, 32
  %36 = icmp eq i32 %35, 0
  br i1 %34, label %42, label %37

37:                                               ; preds = %31
  br i1 %36, label %40, label %38

38:                                               ; preds = %37
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174) #16
  br label %57

40:                                               ; preds = %37
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175) #16
  br label %57

42:                                               ; preds = %31
  %43 = and i32 %32, 15
  br i1 %36, label %49, label %44

44:                                               ; preds = %42
  %45 = icmp eq i32 %43, 6
  %46 = select i1 %45, ptr @.str.177, ptr @.str.178
  %47 = icmp eq i32 %43, 2
  %48 = select i1 %47, ptr @.str.176, ptr %46
  br label %54

49:                                               ; preds = %42
  %50 = icmp ult i32 %43, 6
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = getelementptr inbounds [6 x ptr], ptr @switch.table.ubifs_dump_lprop, i32 0, i32 %43
  %53 = load ptr, ptr %52, align 4
  br label %54

54:                                               ; preds = %51, %49, %44
  %55 = phi ptr [ %48, %44 ], [ %53, %51 ], [ null, %49 ]
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef %55) #16
  br label %57

57:                                               ; preds = %54, %40, %38
  %58 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 15
  %59 = tail call ptr @rb_first(ptr noundef %58) #15
  %60 = icmp eq ptr %59, null
  br i1 %60, label %154, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 3
  %63 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 18
  %64 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  br label %65

65:                                               ; preds = %151, %61
  %66 = phi ptr [ %59, %61 ], [ %152, %151 ]
  %67 = getelementptr i8, ptr %66, i32 -20
  %68 = load i32, ptr %67, align 4
  %69 = load i32, ptr %62, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %151

71:                                               ; preds = %65
  %72 = load i32, ptr %63, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %141

74:                                               ; preds = %71
  %75 = load ptr, ptr %64, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %62, align 4
  %79 = getelementptr %struct.ubifs_jhead, ptr %75, i32 0, i32 0, i32 2
  %80 = load i32, ptr %79, align 8
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.28) #16
  %84 = load i32, ptr %63, align 4
  br label %85

85:                                               ; preds = %82, %77, %74
  %86 = phi i32 [ %84, %82 ], [ %72, %77 ], [ %72, %74 ]
  %87 = phi i32 [ 1, %82 ], [ 0, %77 ], [ 0, %74 ]
  %88 = icmp sgt i32 %86, 1
  br i1 %88, label %89, label %138

89:                                               ; preds = %85
  %90 = load ptr, ptr %64, align 8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %100, label %92

92:                                               ; preds = %89
  %93 = load i32, ptr %62, align 4
  %94 = getelementptr %struct.ubifs_jhead, ptr %90, i32 1, i32 0, i32 2
  %95 = load i32, ptr %94, align 8
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.29) #16
  %99 = load i32, ptr %63, align 4
  br label %100

100:                                              ; preds = %97, %92, %89
  %101 = phi i32 [ %99, %97 ], [ %86, %92 ], [ %86, %89 ]
  %102 = phi i32 [ 1, %97 ], [ %87, %92 ], [ %87, %89 ]
  %103 = icmp sgt i32 %101, 2
  br i1 %103, label %104, label %138

104:                                              ; preds = %100
  %105 = load ptr, ptr %64, align 8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %115, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr %62, align 4
  %109 = getelementptr %struct.ubifs_jhead, ptr %105, i32 2, i32 0, i32 2
  %110 = load i32, ptr %109, align 8
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.30) #16
  %114 = load i32, ptr %63, align 4
  br label %115

115:                                              ; preds = %112, %107, %104
  %116 = phi i32 [ %114, %112 ], [ %101, %107 ], [ %101, %104 ]
  %117 = phi i32 [ 1, %112 ], [ %102, %107 ], [ %102, %104 ]
  %118 = icmp sgt i32 %116, 3
  br i1 %118, label %119, label %138

119:                                              ; preds = %133, %115
  %120 = phi i32 [ %134, %133 ], [ %116, %115 ]
  %121 = phi i32 [ %136, %133 ], [ 3, %115 ]
  %122 = phi i32 [ %135, %133 ], [ %117, %115 ]
  %123 = load ptr, ptr %64, align 8
  %124 = icmp eq ptr %123, null
  br i1 %124, label %133, label %125

125:                                              ; preds = %119
  %126 = load i32, ptr %62, align 4
  %127 = getelementptr %struct.ubifs_jhead, ptr %123, i32 %121, i32 0, i32 2
  %128 = load i32, ptr %127, align 8
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.31) #16
  %132 = load i32, ptr %63, align 4
  br label %133

133:                                              ; preds = %130, %125, %119
  %134 = phi i32 [ %132, %130 ], [ %120, %125 ], [ %120, %119 ]
  %135 = phi i32 [ 1, %130 ], [ %122, %125 ], [ %122, %119 ]
  %136 = add nuw nsw i32 %121, 1
  %137 = icmp slt i32 %136, %134
  br i1 %137, label %119, label %138, !llvm.loop !19

138:                                              ; preds = %133, %115, %100, %85
  %139 = phi i32 [ %87, %85 ], [ %102, %100 ], [ %117, %115 ], [ %135, %133 ]
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %138, %71
  %142 = getelementptr i8, ptr %66, i32 -12
  %143 = load i32, ptr %142, align 4
  %144 = icmp ult i32 %143, 3
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = getelementptr inbounds [3 x ptr], ptr @switch.table.ubifs_dump_lprop.370, i32 0, i32 %143
  %147 = load ptr, ptr %146, align 4
  br label %148

148:                                              ; preds = %145, %141
  %149 = phi ptr [ %147, %145 ], [ @.str.31, %141 ]
  %150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, ptr noundef nonnull %149) #16
  br label %151

151:                                              ; preds = %148, %138, %65
  %152 = tail call ptr @rb_next(ptr noundef nonnull %66) #15
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %65

154:                                              ; preds = %151, %57
  %155 = getelementptr inbounds %struct.ubifs_lprops, ptr %1, i32 0, i32 3
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 121
  %158 = load i32, ptr %157, align 4
  %159 = icmp eq i32 %156, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187) #16
  br label %162

162:                                              ; preds = %160, %154
  %163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_calc_dark(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_dump_lprops(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ubifs_lprops, align 4
  %3 = alloca %struct.ubifs_lp_stats, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i32 56, i1 false), !annotation !10
  %4 = tail call ptr @llvm.thread.pointer() #15
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 52
  %6 = load i32, ptr %5, align 8
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, i32 noundef %6) #16
  call void @ubifs_get_lp_stats(ptr noundef %0, ptr noundef nonnull %3) #15
  call void @_raw_spin_lock(ptr noundef nonnull @dbg_lock) #15
  %8 = load i32, ptr %5, align 8
  %9 = load i32, ptr %3, align 8
  %10 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %3, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %8, i32 noundef %9, i32 noundef %11) #16
  %13 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %3, i32 0, i32 3
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %3, i32 0, i32 4
  %18 = load i64, ptr %17, align 8
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, i32 noundef %14, i64 noundef %16, i64 noundef %18) #16
  %20 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %3, i32 0, i32 5
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %3, i32 0, i32 7
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %3, i32 0, i32 6
  %25 = load i64, ptr %24, align 8
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, i64 noundef %21, i64 noundef %23, i64 noundef %25) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  %27 = load i16, ptr @dbg_lock, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr @dbg_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !18
  %29 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 63
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 79
  %32 = load i32, ptr %31, align 8
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %40, %1
  %35 = phi i32 [ %41, %40 ], [ %30, %1 ]
  %36 = call i32 @ubifs_read_one_lp(ptr noundef %0, i32 noundef %35, ptr noundef nonnull %2) #15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.190, i32 noundef %35) #15
  br label %40

39:                                               ; preds = %34
  call void @ubifs_dump_lprop(ptr noundef %0, ptr noundef nonnull %2)
  br label %40

40:                                               ; preds = %39, %38
  %41 = add nsw i32 %35, 1
  %42 = load i32, ptr %31, align 8
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %34, label %44

44:                                               ; preds = %40, %1
  %45 = load i32, ptr %5, align 8
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, i32 noundef %45) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_get_lp_stats(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_read_one_lp(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_dump_lpt_info(ptr noundef readonly %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @dbg_lock) #15
  %2 = tail call ptr @llvm.thread.pointer() #15
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 52
  %4 = load i32, ptr %3, align 8
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, i32 noundef %4) #16
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 153
  %7 = load i64, ptr %6, align 8
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, i64 noundef %7) #16
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 137
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, i32 noundef %10) #16
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 136
  %13 = load i32, ptr %12, align 8
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, i32 noundef %13) #16
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 138
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, i32 noundef %16) #16
  %18 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 139
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, i32 noundef %19) #16
  %21 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 30
  %22 = load i16, ptr %21, align 4
  %23 = and i16 %22, 1
  %24 = zext i16 %23 to i32
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, i32 noundef %24) #16
  %26 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 142
  %27 = load i32, ptr %26, align 8
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, i32 noundef %27) #16
  %29 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 140
  %30 = load i32, ptr %29, align 8
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200, i32 noundef %30) #16
  %32 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 141
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, i32 noundef %33) #16
  %35 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 151
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, i32 noundef %36) #16
  %38 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 150
  %39 = load i32, ptr %38, align 8
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203, i32 noundef %39) #16
  %41 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 170
  %42 = load i32, ptr %41, align 8
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, i32 noundef %42) #16
  %44 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 130
  %45 = load i32, ptr %44, align 8
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, i32 noundef %45) #16
  %47 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 131
  %48 = load i32, ptr %47, align 4
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206, i32 noundef %48) #16
  %50 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 132
  %51 = load i32, ptr %50, align 8
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, i32 noundef %51) #16
  %53 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 133
  %54 = load i32, ptr %53, align 4
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208, i32 noundef %54) #16
  %56 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 134
  %57 = load i32, ptr %56, align 8
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, i32 noundef %57) #16
  %59 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 135
  %60 = load i32, ptr %59, align 4
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, i32 noundef %60) #16
  %62 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 145
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 146
  %65 = load i32, ptr %64, align 8
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %63, i32 noundef %65) #16
  %67 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 147
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 148
  %70 = load i32, ptr %69, align 8
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212, i32 noundef %68, i32 noundef %70) #16
  %72 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 166
  %73 = load i32, ptr %72, align 8
  %74 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 167
  %75 = load i32, ptr %74, align 4
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, i32 noundef %73, i32 noundef %75) #16
  %77 = load i16, ptr %21, align 4
  %78 = and i16 %77, 1
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %1
  %81 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 171
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 172
  %84 = load i32, ptr %83, align 8
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214, i32 noundef %82, i32 noundef %84) #16
  br label %86

86:                                               ; preds = %80, %1
  %87 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 56
  %88 = load i32, ptr %87, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %113

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %92 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 168
  br label %93

93:                                               ; preds = %93, %90
  %94 = phi i32 [ 0, %90 ], [ %110, %93 ]
  %95 = load i32, ptr %91, align 8
  %96 = add i32 %95, %94
  %97 = load ptr, ptr %92, align 8
  %98 = getelementptr %struct.ubifs_lpt_lprops, ptr %97, i32 %94
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr %struct.ubifs_lpt_lprops, ptr %97, i32 %94, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr %struct.ubifs_lpt_lprops, ptr %97, i32 %94, i32 2
  %103 = load i8, ptr %102, align 4
  %104 = and i8 %103, 1
  %105 = zext i8 %104 to i32
  %106 = lshr i8 %103, 1
  %107 = and i8 %106, 1
  %108 = zext i8 %107 to i32
  %109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, i32 noundef %96, i32 noundef %99, i32 noundef %101, i32 noundef %105, i32 noundef %108) #16
  %110 = add nuw nsw i32 %94, 1
  %111 = load i32, ptr %87, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %93, label %113

113:                                              ; preds = %93, %86
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  %114 = load i16, ptr @dbg_lock, align 4
  %115 = add i16 %114, 1
  store i16 %115, ptr @dbg_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_dump_leb(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #15
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 52
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, i32 noundef %5, i32 noundef %1) #16
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %8 = load i32, ptr %7, align 8
  %9 = tail call noalias ptr @__vmalloc(i32 noundef %8, i32 noundef 3136) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.217, i32 noundef %1) #15
  br label %45

12:                                               ; preds = %2
  %13 = tail call ptr @ubifs_scan(ptr noundef %0, i32 noundef %1, i32 noundef 0, ptr noundef nonnull %9, i32 noundef 0) #15
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = ptrtoint ptr %13 to i32
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.218, i32 noundef %16) #15
  br label %44

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %13, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %13, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219, i32 noundef %1, i32 noundef %19, i32 noundef %21) #16
  %23 = getelementptr inbounds %struct.ubifs_scan_leb, ptr %13, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %41, label %26

26:                                               ; preds = %26, %17
  %27 = phi ptr [ %39, %26 ], [ %24, %17 ]
  %28 = tail call i32 @__cond_resched() #15
  %29 = getelementptr inbounds %struct.ubifs_scan_node, ptr %27, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ubifs_scan_node, ptr %27, i32 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, i32 noundef %1, i32 noundef %30, i32 noundef %32) #16
  %34 = getelementptr inbounds %struct.ubifs_scan_node, ptr %27, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %7, align 8
  %37 = load i32, ptr %29, align 4
  %38 = sub i32 %36, %37
  tail call void @ubifs_dump_node(ptr noundef %0, ptr noundef %35, i32 noundef %38)
  %39 = load ptr, ptr %27, align 4
  %40 = icmp eq ptr %39, %23
  br i1 %40, label %41, label %26

41:                                               ; preds = %26, %17
  %42 = load i32, ptr %4, align 8
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221, i32 noundef %42, i32 noundef %1) #16
  tail call void @ubifs_scan_destroy(ptr noundef %13) #15
  br label %44

44:                                               ; preds = %41, %15
  tail call void @vfree(ptr noundef nonnull %9) #15
  br label %45

45:                                               ; preds = %44, %11
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_scan(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_scan_destroy(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_dump_znode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [48 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(48) %3, i8 0, i32 48, i1 false), !annotation !10
  tail call void @_raw_spin_lock(ptr noundef nonnull @dbg_lock) #15
  %4 = load ptr, ptr %1, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ubifs_znode, ptr %1, i32 0, i32 8
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr %struct.ubifs_znode, ptr %4, i32 0, i32 13, i32 %8
  br label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32
  %12 = getelementptr inbounds %struct.ubifs_znode, ptr %1, i32 0, i32 8
  %13 = load i32, ptr %12, align 8
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i32 [ %8, %6 ], [ %13, %10 ]
  %16 = phi ptr [ %9, %6 ], [ %11, %10 ]
  %17 = getelementptr inbounds %struct.ubifs_zbranch, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ubifs_zbranch, ptr %16, i32 0, i32 3
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.ubifs_zbranch, ptr %16, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ubifs_znode, ptr %1, i32 0, i32 6
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.ubifs_znode, ptr %1, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ubifs_znode, ptr %1, i32 0, i32 4
  %28 = load i32, ptr %27, align 8
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, ptr noundef %1, i32 noundef %18, i32 noundef %20, i32 noundef %22, ptr noundef %4, i32 noundef %15, i32 noundef %24, i32 noundef %26, i32 noundef %28) #16
  %30 = load i32, ptr %25, align 4
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %36, label %32

32:                                               ; preds = %14
  %33 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 70
  %34 = load i32, ptr %33, align 4
  %35 = icmp sgt i32 %30, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  %37 = load i16, ptr @dbg_lock, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr @dbg_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !18
  br label %65

39:                                               ; preds = %32
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223) #16
  %41 = load i32, ptr %25, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %43, %39
  %44 = phi i32 [ %59, %43 ], [ 0, %39 ]
  %45 = getelementptr %struct.ubifs_znode, ptr %1, i32 0, i32 13, i32 %44
  %46 = load i32, ptr %23, align 8
  %47 = icmp sgt i32 %46, 0
  %48 = getelementptr %struct.ubifs_znode, ptr %1, i32 0, i32 13, i32 %44, i32 1
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr %struct.ubifs_znode, ptr %1, i32 0, i32 13, i32 %44, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr %struct.ubifs_znode, ptr %1, i32 0, i32 13, i32 %44, i32 3
  %53 = load i32, ptr %52, align 8
  %54 = getelementptr %struct.ubifs_znode, ptr %1, i32 0, i32 13, i32 %44, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = call ptr @dbg_snprintf_key(ptr noundef %0, ptr noundef %45, ptr noundef nonnull %3, i32 noundef 48)
  %57 = select i1 %47, ptr @.str.224, ptr @.str.225
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %57, i32 noundef %44, ptr noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55, ptr noundef nonnull %3) #16
  %59 = add nuw nsw i32 %44, 1
  %60 = load i32, ptr %25, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %43, label %62

62:                                               ; preds = %43, %39
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  %63 = load i16, ptr @dbg_lock, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr @dbg_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !18
  br label %65

65:                                               ; preds = %62, %36
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_dump_heap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @llvm.thread.pointer() #15
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 52
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ubifs_lpt_heap, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226, i32 noundef %6, i32 noundef %2, i32 noundef %8) #16
  %10 = load i32, ptr %7, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %12, %3
  %13 = phi i32 [ %27, %12 ], [ 0, %3 ]
  %14 = load ptr, ptr %1, align 4
  %15 = getelementptr ptr, ptr %14, i32 %13
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ubifs_lprops, ptr %16, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ubifs_lprops, ptr %16, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %16, align 4
  %22 = getelementptr inbounds %struct.ubifs_lprops, ptr %16, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ubifs_lprops, ptr %16, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, i32 noundef %13, i32 noundef %18, i32 noundef %20, i32 noundef %21, i32 noundef %23, i32 noundef %25) #16
  %27 = add nuw nsw i32 %13, 1
  %28 = load i32, ptr %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %12, label %30

30:                                               ; preds = %12, %3
  %31 = load i32, ptr %5, align 8
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228, i32 noundef %31) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_dump_pnode(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @llvm.thread.pointer() #15
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 52
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.229, i32 noundef %7) #16
  %9 = ptrtoint ptr %1 to i32
  %10 = ptrtoint ptr %2 to i32
  %11 = getelementptr inbounds %struct.ubifs_pnode, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, i32 noundef %9, i32 noundef %10, i32 noundef %13) #16
  %15 = getelementptr inbounds %struct.ubifs_pnode, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ubifs_pnode, ptr %1, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ubifs_pnode, ptr %1, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231, i32 noundef %16, i32 noundef %3, i32 noundef %18, i32 noundef %20) #16
  %22 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 0
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.232, i32 noundef 0, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #16
  %31 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 1, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 1, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 1, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.232, i32 noundef 1, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38) #16
  %40 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 2, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 2, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 2, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.232, i32 noundef 2, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47) #16
  %49 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 3, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 3, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr %struct.ubifs_pnode, ptr %1, i32 0, i32 6, i32 3, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.232, i32 noundef 3, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_dump_tnc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233) #16
  %3 = tail call ptr @llvm.thread.pointer() #15
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 52
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.234, i32 noundef %5) #16
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @ubifs_tnc_levelorder_next(ptr noundef %0, ptr noundef %8, ptr noundef null) #15
  %10 = getelementptr inbounds %struct.ubifs_znode, ptr %9, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, i32 noundef %11) #16
  %13 = icmp eq ptr %9, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %22, %1
  %15 = phi ptr [ %25, %22 ], [ %9, %1 ]
  %16 = phi i32 [ %23, %22 ], [ %11, %1 ]
  %17 = getelementptr inbounds %struct.ubifs_znode, ptr %15, i32 0, i32 6
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, i32 noundef %18) #16
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %18, %20 ], [ %16, %14 ]
  tail call void @ubifs_dump_znode(ptr noundef %0, ptr noundef nonnull %15)
  %24 = load ptr, ptr %7, align 8
  %25 = tail call ptr @ubifs_tnc_levelorder_next(ptr noundef %0, ptr noundef %24, ptr noundef nonnull %15) #15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %14

27:                                               ; preds = %22, %1
  %28 = load i32, ptr %4, align 8
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236, i32 noundef %28) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_tnc_levelorder_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_dump_index(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @dbg_walk_index(ptr noundef %0, ptr noundef null, ptr noundef nonnull @dump_znode, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_walk_index(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %6, ptr noundef null, i32 noundef 0) #15
  store ptr %11, ptr %7, align 8
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = ptrtoint ptr %11 to i32
  store ptr null, ptr %7, align 8
  br label %129

15:                                               ; preds = %10, %4
  %16 = phi ptr [ %11, %10 ], [ %8, %4 ]
  %17 = getelementptr inbounds %struct.ubifs_znode, ptr %16, i32 0, i32 6
  %18 = load i32, ptr %17, align 8
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %35, %15
  %21 = phi ptr [ %16, %15 ], [ %36, %35 ]
  %22 = icmp eq ptr %2, null
  %23 = icmp eq ptr %1, null
  br label %40

24:                                               ; preds = %35, %15
  %25 = phi ptr [ %36, %35 ], [ %16, %15 ]
  %26 = getelementptr inbounds %struct.ubifs_znode, ptr %25, i32 1, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ubifs_znode, ptr %25, i32 0, i32 13
  %31 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %30, ptr noundef %25, i32 noundef 0) #15
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = ptrtoint ptr %31 to i32
  br label %129

35:                                               ; preds = %29, %24
  %36 = phi ptr [ %27, %24 ], [ %31, %29 ]
  %37 = getelementptr inbounds %struct.ubifs_znode, ptr %36, i32 0, i32 6
  %38 = load i32, ptr %37, align 8
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %24, label %20

40:                                               ; preds = %96, %20
  %41 = phi ptr [ %21, %20 ], [ %97, %96 ]
  %42 = tail call i32 @__cond_resched() #15
  br i1 %22, label %47, label %43

43:                                               ; preds = %40
  %44 = tail call i32 %2(ptr noundef %0, ptr noundef %41, ptr noundef %3) #15
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.252, i32 noundef %44) #15
  tail call void @ubifs_dump_znode(ptr noundef %0, ptr noundef %41)
  br label %115

47:                                               ; preds = %43, %40
  br i1 %23, label %70, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.ubifs_znode, ptr %41, i32 0, i32 6
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ubifs_znode, ptr %41, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %66, %52
  %57 = phi i32 [ %67, %66 ], [ 0, %52 ]
  %58 = getelementptr %struct.ubifs_znode, ptr %41, i32 0, i32 13, i32 %57
  %59 = tail call i32 %1(ptr noundef %0, ptr noundef %58, ptr noundef %3) #15
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = getelementptr %struct.ubifs_znode, ptr %41, i32 0, i32 13, i32 %57, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr %struct.ubifs_znode, ptr %41, i32 0, i32 13, i32 %57, i32 3
  %65 = load i32, ptr %64, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.253, i32 noundef %59, i32 noundef %63, i32 noundef %65) #15
  br label %115

66:                                               ; preds = %56
  %67 = add nuw nsw i32 %57, 1
  %68 = load i32, ptr %53, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %56, label %70

70:                                               ; preds = %66, %52, %48, %47
  %71 = load ptr, ptr %41, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %129, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.ubifs_znode, ptr %41, i32 0, i32 8
  %75 = load i32, ptr %74, align 8
  %76 = add i32 %75, 1
  %77 = getelementptr inbounds %struct.ubifs_znode, ptr %71, i32 0, i32 7
  %78 = load i32, ptr %77, align 4
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %73
  %81 = getelementptr %struct.ubifs_znode, ptr %71, i32 0, i32 13, i32 %76, i32 1
  %82 = load ptr, ptr %81, align 8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = getelementptr %struct.ubifs_znode, ptr %71, i32 0, i32 13, i32 %76
  %86 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %85, ptr noundef nonnull %71, i32 noundef %76) #15
  %87 = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = ptrtoint ptr %86 to i32
  br label %129

90:                                               ; preds = %84
  store ptr %86, ptr %81, align 8
  br label %91

91:                                               ; preds = %90, %80
  %92 = phi ptr [ %82, %80 ], [ %86, %90 ]
  %93 = getelementptr inbounds %struct.ubifs_znode, ptr %92, i32 0, i32 6
  %94 = load i32, ptr %93, align 8
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %110, %91, %73
  %97 = phi ptr [ %71, %73 ], [ %92, %91 ], [ %111, %110 ]
  br label %40

98:                                               ; preds = %110, %91
  %99 = phi ptr [ %111, %110 ], [ %92, %91 ]
  %100 = getelementptr inbounds %struct.ubifs_znode, ptr %99, i32 1, i32 2
  %101 = load ptr, ptr %100, align 8
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.ubifs_znode, ptr %99, i32 0, i32 13
  %105 = tail call ptr @ubifs_load_znode(ptr noundef %0, ptr noundef %104, ptr noundef %99, i32 noundef 0) #15
  %106 = icmp ugt ptr %105, inttoptr (i32 -4096 to ptr)
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = ptrtoint ptr %105 to i32
  br label %129

109:                                              ; preds = %103
  store ptr %105, ptr %100, align 8
  br label %110

110:                                              ; preds = %109, %98
  %111 = phi ptr [ %101, %98 ], [ %105, %109 ]
  %112 = getelementptr inbounds %struct.ubifs_znode, ptr %111, i32 0, i32 6
  %113 = load i32, ptr %112, align 8
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %98, label %96

115:                                              ; preds = %61, %46
  %116 = phi i32 [ %59, %61 ], [ %44, %46 ]
  %117 = load ptr, ptr %41, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.ubifs_znode, ptr %41, i32 0, i32 8
  %121 = load i32, ptr %120, align 8
  %122 = getelementptr %struct.ubifs_znode, ptr %117, i32 0, i32 13, i32 %121
  br label %123

123:                                              ; preds = %119, %115
  %124 = phi ptr [ %122, %119 ], [ %6, %115 ]
  %125 = getelementptr inbounds %struct.ubifs_zbranch, ptr %124, i32 0, i32 2
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds %struct.ubifs_zbranch, ptr %124, i32 0, i32 3
  %128 = load i32, ptr %127, align 8
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str.254, i32 noundef %126, i32 noundef %128) #15
  tail call void @ubifs_dump_znode(ptr noundef %0, ptr noundef %41)
  br label %129

129:                                              ; preds = %123, %107, %88, %70, %33, %13
  %130 = phi i32 [ %34, %33 ], [ %116, %123 ], [ %14, %13 ], [ %89, %88 ], [ %108, %107 ], [ 0, %70 ]
  tail call void @mutex_unlock(ptr noundef %5) #15
  ret i32 %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dump_znode(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  tail call void @ubifs_dump_znode(ptr noundef %0, ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dbg_save_space_info(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 15
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 86
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) %5, ptr noundef align 8 dereferenceable(56) %6, i32 56, i1 false)
  %7 = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 16
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %7, ptr noundef align 8 dereferenceable(64) %8, i32 64, i1 false)
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 124
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 18
  store i32 %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 164
  %13 = load i32, ptr %12, align 8
  store i32 0, ptr %12, align 8
  %14 = tail call i64 @ubifs_get_free_space_nolock(ptr noundef %0) #15
  %15 = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 17
  store i64 %14, ptr %15, align 8
  store i32 %13, ptr %12, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  %16 = load i16, ptr %4, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !18
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_check_space_info(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ubifs_lp_stats, align 8
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i32 56, i1 false), !annotation !10
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 164
  %7 = load i32, ptr %6, align 8
  store i32 0, ptr %6, align 8
  %8 = tail call i64 @ubifs_get_free_space_nolock(ptr noundef %0) #15
  store i32 %7, ptr %6, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  %9 = load i16, ptr %5, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !18
  %11 = getelementptr inbounds %struct.ubifs_debug_info, ptr %4, i32 0, i32 17
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %8, %12
  br i1 %13, label %64, label %14

14:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.237, i64 noundef %12, i64 noundef %8) #15
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str.238) #15
  %15 = getelementptr inbounds %struct.ubifs_debug_info, ptr %4, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef nonnull @dbg_lock) #15
  %16 = tail call ptr @llvm.thread.pointer() #15
  %17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 52
  %18 = load i32, ptr %17, align 8
  %19 = load i32, ptr %15, align 8
  %20 = getelementptr inbounds %struct.ubifs_debug_info, ptr %4, i32 0, i32 15, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %18, i32 noundef %19, i32 noundef %21) #16
  %23 = getelementptr inbounds %struct.ubifs_debug_info, ptr %4, i32 0, i32 15, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ubifs_debug_info, ptr %4, i32 0, i32 15, i32 3
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds %struct.ubifs_debug_info, ptr %4, i32 0, i32 15, i32 4
  %28 = load i64, ptr %27, align 8
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, i32 noundef %24, i64 noundef %26, i64 noundef %28) #16
  %30 = getelementptr inbounds %struct.ubifs_debug_info, ptr %4, i32 0, i32 15, i32 5
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds %struct.ubifs_debug_info, ptr %4, i32 0, i32 15, i32 7
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds %struct.ubifs_debug_info, ptr %4, i32 0, i32 15, i32 6
  %35 = load i64, ptr %34, align 8
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, i64 noundef %31, i64 noundef %33, i64 noundef %35) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  %37 = load i16, ptr @dbg_lock, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr @dbg_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !18
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str.239) #15
  %39 = getelementptr inbounds %struct.ubifs_debug_info, ptr %4, i32 0, i32 16
  tail call void @ubifs_dump_budg(ptr noundef %0, ptr noundef %39)
  %40 = getelementptr inbounds %struct.ubifs_debug_info, ptr %4, i32 0, i32 18
  %41 = load i32, ptr %40, align 8
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str.240, i32 noundef %41) #15
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str.241) #15
  call void @ubifs_get_lp_stats(ptr noundef %0, ptr noundef nonnull %2) #15
  call void @_raw_spin_lock(ptr noundef nonnull @dbg_lock) #15
  %42 = load i32, ptr %17, align 8
  %43 = load i32, ptr %2, align 8
  %44 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %2, i32 0, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %42, i32 noundef %43, i32 noundef %45) #16
  %47 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %2, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %2, i32 0, i32 3
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %2, i32 0, i32 4
  %52 = load i64, ptr %51, align 8
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, i32 noundef %48, i64 noundef %50, i64 noundef %52) #16
  %54 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %2, i32 0, i32 5
  %55 = load i64, ptr %54, align 8
  %56 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %2, i32 0, i32 7
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %2, i32 0, i32 6
  %59 = load i64, ptr %58, align 8
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, i64 noundef %55, i64 noundef %57, i64 noundef %59) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  %61 = load i16, ptr @dbg_lock, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr @dbg_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !18
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str.242) #15
  %63 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87
  call void @ubifs_dump_budg(ptr noundef %0, ptr noundef %63)
  call void @dump_stack() #16
  br label %64

64:                                               ; preds = %14, %1
  %65 = phi i32 [ -22, %14 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #15
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_check_synced_i_size(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i8, ptr @ubifs_dbg, align 4
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ubifs_debug_info, ptr %8, i32 0, i32 19
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %40, label %13

13:                                               ; preds = %6, %2
  %14 = load i16, ptr %1, align 8
  %15 = and i16 %14, -4096
  %16 = icmp eq i16 %15, -32768
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %18) #15
  %19 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %19) #15
  %20 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 11
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 10
  %23 = load i64, ptr %22, align 8
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %36, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 6
  %27 = load i8, ptr %26, align 4
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.243, i64 noundef %21, i64 noundef %23) #15
  %31 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %32 = load i32, ptr %31, align 4
  %33 = load i16, ptr %1, align 8
  %34 = zext i16 %33 to i32
  %35 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.244, i32 noundef %32, i32 noundef %34, i64 noundef %35) #15
  tail call void @dump_stack() #16
  br label %36

36:                                               ; preds = %30, %25, %17
  %37 = phi i32 [ 0, %25 ], [ -22, %30 ], [ 0, %17 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  %38 = load i16, ptr %19, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !18
  tail call void @mutex_unlock(ptr noundef %18) #15
  br label %40

40:                                               ; preds = %36, %13, %6
  %41 = phi i32 [ %37, %36 ], [ 0, %6 ], [ 0, %13 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_check_dir(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %union.ubifs_key, align 8
  %4 = alloca %struct.fscrypt_name, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false)
  %5 = load i8, ptr @ubifs_dbg, align 4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ubifs_debug_info, ptr %10, i32 0, i32 19
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %87, label %15

15:                                               ; preds = %8, %2
  %16 = load i16, ptr %1, align 8
  %17 = and i16 %16, -4096
  %18 = icmp eq i16 %17, 16384
  br i1 %18, label %19, label %87

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %3, align 8
  %22 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  store i32 1073741824, ptr %22, align 4
  %23 = call ptr @ubifs_tnc_next_ent(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.fscrypt_name, ptr %4, i32 0, i32 1
  %27 = getelementptr inbounds %struct.fscrypt_name, ptr %4, i32 0, i32 1, i32 1
  br label %36

28:                                               ; preds = %36, %19
  %29 = phi i32 [ 2, %19 ], [ %53, %36 ]
  %30 = phi ptr [ null, %19 ], [ %37, %36 ]
  %31 = phi i64 [ 160, %19 ], [ %48, %36 ]
  %32 = phi ptr [ %23, %19 ], [ %58, %36 ]
  %33 = icmp eq ptr %32, inttoptr (i32 -2 to ptr)
  br i1 %33, label %60, label %34

34:                                               ; preds = %28
  %35 = ptrtoint ptr %32 to i32
  call void @kfree(ptr noundef %30) #15
  br label %87

36:                                               ; preds = %36, %25
  %37 = phi ptr [ %23, %25 ], [ %58, %36 ]
  %38 = phi i64 [ 160, %25 ], [ %48, %36 ]
  %39 = phi ptr [ null, %25 ], [ %37, %36 ]
  %40 = phi i32 [ 2, %25 ], [ %53, %36 ]
  %41 = getelementptr inbounds %struct.ubifs_dent_node, ptr %37, i32 0, i32 7
  store ptr %41, ptr %26, align 4
  %42 = getelementptr inbounds %struct.ubifs_dent_node, ptr %37, i32 0, i32 5
  %43 = load i16, ptr %42, align 1
  %44 = zext i16 %43 to i32
  store i32 %44, ptr %27, align 4
  %45 = add nuw nsw i32 %44, 64
  %46 = and i32 %45, 131064
  %47 = zext i32 %46 to i64
  %48 = add i64 %38, %47
  %49 = getelementptr inbounds %struct.ubifs_dent_node, ptr %37, i32 0, i32 4
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 1
  %52 = zext i1 %51 to i32
  %53 = add i32 %40, %52
  call void @kfree(ptr noundef %39) #15
  %54 = getelementptr inbounds %struct.ubifs_dent_node, ptr %37, i32 0, i32 1
  %55 = load i32, ptr %54, align 8
  store i32 %55, ptr %3, align 8
  %56 = getelementptr %struct.ubifs_dent_node, ptr %37, i32 0, i32 1, i32 4
  %57 = load i32, ptr %56, align 4
  store i32 %57, ptr %22, align 4
  %58 = call ptr @ubifs_tnc_next_ent(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %59 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %28, label %36

60:                                               ; preds = %28
  call void @kfree(ptr noundef %30) #15
  %61 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 22
  %62 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  br label %63

63:                                               ; preds = %71, %60
  %64 = load volatile i32, ptr %61, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %67, %63
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !11
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !12
  %68 = load volatile i32, ptr %61, align 4
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %67

71:                                               ; preds = %67, %63
  %72 = phi i32 [ %64, %63 ], [ %68, %67 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  %73 = load i64, ptr %62, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  %74 = load volatile i32, ptr %61, align 4
  %75 = icmp eq i32 %74, %72
  br i1 %75, label %76, label %63

76:                                               ; preds = %71
  %77 = icmp eq i64 %73, %31
  br i1 %77, label %81, label %78

78:                                               ; preds = %76
  %79 = load i32, ptr %20, align 4
  %80 = call fastcc i64 @i_size_read(ptr noundef %1)
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.245, i32 noundef %79, i64 noundef %80, i64 noundef %31) #15
  call void @ubifs_dump_inode(ptr noundef %0, ptr noundef %1)
  call void @dump_stack() #16
  br label %87

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %83 = load i32, ptr %82, align 8
  %84 = icmp eq i32 %83, %29
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = load i32, ptr %20, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.246, i32 noundef %86, i32 noundef %83, i32 noundef %29) #15
  call void @ubifs_dump_inode(ptr noundef %0, ptr noundef %1)
  call void @dump_stack() #16
  br label %87

87:                                               ; preds = %85, %81, %78, %34, %15, %8
  %88 = phi i32 [ -22, %78 ], [ -22, %85 ], [ 0, %8 ], [ 0, %15 ], [ 0, %81 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_check_tnc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = load i8, ptr @ubifs_dbg, align 4
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ubifs_debug_info, ptr %9, i32 0, i32 19
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %300, label %14

14:                                               ; preds = %7, %2
  %15 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 31
  %16 = tail call zeroext i1 @mutex_is_locked(ptr noundef %15) #15
  br i1 %16, label %18, label %17, !prof !21

17:                                               ; preds = %14
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.6, i32 noundef 1498)
  br label %18

18:                                               ; preds = %17, %14
  %19 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32
  %20 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %300, label %23

23:                                               ; preds = %18
  %24 = tail call ptr @ubifs_tnc_postorder_first(ptr noundef nonnull %21) #15
  %25 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 70
  %26 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 186
  %27 = icmp eq i32 %1, 0
  br label %28

28:                                               ; preds = %281, %23
  %29 = phi ptr [ %24, %23 ], [ %252, %281 ]
  %30 = phi i32 [ 0, %23 ], [ %254, %281 ]
  %31 = phi i32 [ 0, %23 ], [ %253, %281 ]
  %32 = load ptr, ptr %29, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.ubifs_znode, ptr %29, i32 0, i32 8
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr %struct.ubifs_znode, ptr %32, i32 0, i32 13, i32 %36
  br label %38

38:                                               ; preds = %34, %28
  %39 = phi ptr [ %37, %34 ], [ %19, %28 ]
  %40 = getelementptr inbounds %struct.ubifs_zbranch, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = load ptr, ptr %41, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !10
  %43 = getelementptr inbounds %struct.ubifs_znode, ptr %41, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %231, label %46

46:                                               ; preds = %38
  %47 = load i32, ptr %25, align 4
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %231, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.ubifs_znode, ptr %41, i32 0, i32 6
  %51 = load i32, ptr %50, align 8
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %231, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ubifs_znode, ptr %41, i32 0, i32 8
  %55 = load i32, ptr %54, align 8
  %56 = icmp sgt i32 %55, -1
  %57 = icmp slt i32 %55, %47
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %231

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.ubifs_zbranch, ptr %39, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.ubifs_znode, ptr %41, i32 0, i32 4
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %231, label %68

68:                                               ; preds = %63, %59
  %69 = getelementptr inbounds %struct.ubifs_znode, ptr %41, i32 0, i32 4
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %68
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %74 = icmp eq ptr %42, null
  br i1 %74, label %148, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.ubifs_znode, ptr %42, i32 0, i32 4
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %81 = load volatile i32, ptr %69, align 4
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %231

84:                                               ; preds = %68
  %85 = icmp eq ptr %42, null
  br i1 %85, label %148, label %86

86:                                               ; preds = %84, %80, %75
  %87 = load i32, ptr %50, align 8
  %88 = getelementptr inbounds %struct.ubifs_znode, ptr %42, i32 0, i32 6
  %89 = load i32, ptr %88, align 8
  %90 = add i32 %89, -1
  %91 = icmp eq i32 %87, %90
  br i1 %91, label %92, label %231

92:                                               ; preds = %86
  %93 = call i32 @ubifs_search_zbranch(ptr noundef %0, ptr noundef nonnull %42, ptr noundef %39, ptr noundef nonnull %3) #15
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %231, label %95

95:                                               ; preds = %92
  %96 = load i32, ptr %54, align 8
  %97 = getelementptr inbounds %struct.ubifs_znode, ptr %42, i32 0, i32 7
  %98 = load i32, ptr %97, align 4
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %231

100:                                              ; preds = %95
  %101 = load i32, ptr %3, align 4
  %102 = icmp eq i32 %96, %101
  br i1 %102, label %116, label %103

103:                                              ; preds = %100
  %104 = getelementptr %struct.ubifs_znode, ptr %42, i32 0, i32 13, i32 %101
  %105 = getelementptr %struct.ubifs_znode, ptr %42, i32 0, i32 13, i32 %96
  %106 = load i32, ptr %104, align 8
  %107 = load i32, ptr %105, align 8
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %231

109:                                              ; preds = %103
  %110 = getelementptr [2 x i32], ptr %104, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr [2 x i32], ptr %105, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %231

115:                                              ; preds = %109
  store i32 %96, ptr %3, align 4
  br label %116

116:                                              ; preds = %115, %100
  %117 = getelementptr inbounds %struct.ubifs_znode, ptr %41, i32 0, i32 13
  %118 = load i32, ptr %39, align 8
  %119 = load i32, ptr %117, align 8
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %129, label %121

121:                                              ; preds = %116
  %122 = icmp ugt i32 %118, %119
  br i1 %122, label %231, label %123

123:                                              ; preds = %121
  %124 = getelementptr [2 x i32], ptr %39, i32 0, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = getelementptr %struct.ubifs_znode, ptr %41, i32 1, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = icmp ugt i32 %125, %127
  br i1 %128, label %231, label %129

129:                                              ; preds = %123, %116
  %130 = add nsw i32 %96, 1
  %131 = icmp slt i32 %130, %98
  br i1 %131, label %132, label %150

132:                                              ; preds = %129
  %133 = getelementptr %struct.ubifs_znode, ptr %42, i32 0, i32 13, i32 %130
  %134 = load i32, ptr %43, align 4
  %135 = add i32 %134, -1
  %136 = getelementptr %struct.ubifs_znode, ptr %41, i32 0, i32 13, i32 %135
  %137 = load i32, ptr %133, align 8
  %138 = load i32, ptr %136, align 8
  %139 = icmp ult i32 %137, %138
  br i1 %139, label %231, label %140

140:                                              ; preds = %132
  %141 = icmp ugt i32 %137, %138
  br i1 %141, label %150, label %142

142:                                              ; preds = %140
  %143 = getelementptr [2 x i32], ptr %133, i32 0, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr [2 x i32], ptr %136, i32 0, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = icmp ult i32 %144, %146
  br i1 %147, label %231, label %150

148:                                              ; preds = %84, %73
  %149 = icmp eq ptr %19, %39
  br i1 %149, label %150, label %231

150:                                              ; preds = %148, %142, %140, %129
  store i32 1, ptr %3, align 4
  %151 = load i32, ptr %43, align 4
  %152 = icmp sgt i32 %151, 1
  br i1 %152, label %156, label %153

153:                                              ; preds = %193, %150
  %154 = phi i32 [ %151, %150 ], [ %194, %193 ]
  store i32 0, ptr %3, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %198, label %238

156:                                              ; preds = %193, %150
  %157 = phi i32 [ %194, %193 ], [ %151, %150 ]
  %158 = phi i32 [ %196, %193 ], [ 1, %150 ]
  %159 = add i32 %158, -1
  %160 = getelementptr %struct.ubifs_znode, ptr %41, i32 0, i32 13, i32 %159
  %161 = getelementptr %struct.ubifs_znode, ptr %41, i32 0, i32 13, i32 %158
  %162 = load i32, ptr %160, align 8
  %163 = load i32, ptr %161, align 8
  %164 = icmp ult i32 %162, %163
  br i1 %164, label %193, label %165

165:                                              ; preds = %156
  %166 = icmp ugt i32 %162, %163
  br i1 %166, label %231, label %167

167:                                              ; preds = %165
  %168 = getelementptr [2 x i32], ptr %160, i32 0, i32 1
  %169 = load i32, ptr %168, align 4
  %170 = getelementptr [2 x i32], ptr %161, i32 0, i32 1
  %171 = load i32, ptr %170, align 4
  %172 = icmp ult i32 %169, %171
  br i1 %172, label %193, label %173

173:                                              ; preds = %167
  %174 = icmp ugt i32 %169, %171
  br i1 %174, label %231, label %175

175:                                              ; preds = %173
  %176 = and i32 %171, -1073741824
  %177 = icmp eq i32 %176, 1073741824
  br i1 %177, label %178, label %231

178:                                              ; preds = %175
  %179 = load i32, ptr %50, align 8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %178
  %182 = load i8, ptr %26, align 4
  %183 = and i8 %182, 4
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %181
  %186 = call fastcc i32 @dbg_check_key_order(ptr noundef %0, ptr noundef %160, ptr noundef %161) #15
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %236, label %188

188:                                              ; preds = %185
  %189 = icmp eq i32 %186, 0
  br i1 %189, label %190, label %231

190:                                              ; preds = %188
  %191 = load i32, ptr %3, align 4
  %192 = load i32, ptr %43, align 4
  br label %193

193:                                              ; preds = %190, %181, %178, %167, %156
  %194 = phi i32 [ %192, %190 ], [ %157, %167 ], [ %157, %156 ], [ %157, %178 ], [ %157, %181 ]
  %195 = phi i32 [ %191, %190 ], [ %158, %167 ], [ %158, %156 ], [ %158, %178 ], [ %158, %181 ]
  %196 = add i32 %195, 1
  store i32 %196, ptr %3, align 4
  %197 = icmp slt i32 %196, %194
  br i1 %197, label %156, label %153

198:                                              ; preds = %228, %153
  %199 = phi i32 [ %229, %228 ], [ 0, %153 ]
  %200 = getelementptr %struct.ubifs_znode, ptr %41, i32 0, i32 13, i32 %199, i32 1
  %201 = load ptr, ptr %200, align 8
  %202 = icmp eq ptr %201, null
  %203 = getelementptr %struct.ubifs_znode, ptr %41, i32 0, i32 13, i32 %199, i32 2
  %204 = load i32, ptr %203, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %202, label %206, label %211

206:                                              ; preds = %198
  br i1 %205, label %231, label %207

207:                                              ; preds = %206
  %208 = getelementptr %struct.ubifs_znode, ptr %41, i32 0, i32 13, i32 %199, i32 4
  %209 = load i32, ptr %208, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %231, label %228

211:                                              ; preds = %198
  %212 = getelementptr %struct.ubifs_znode, ptr %41, i32 0, i32 13, i32 %199, i32 4
  %213 = load i32, ptr %212, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %205, label %216, label %215

215:                                              ; preds = %211
  br i1 %214, label %231, label %221

216:                                              ; preds = %211
  br i1 %214, label %217, label %231

217:                                              ; preds = %216
  %218 = getelementptr %struct.ubifs_znode, ptr %41, i32 0, i32 13, i32 %199, i32 3
  %219 = load i32, ptr %218, align 8
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %217, %215
  %222 = load i32, ptr %50, align 8
  %223 = icmp eq i32 %222, 0
  %224 = select i1 %223, i1 true, i1 %202
  br i1 %224, label %228, label %225

225:                                              ; preds = %221
  %226 = load ptr, ptr %201, align 8
  %227 = icmp eq ptr %226, %41
  br i1 %227, label %228, label %231

228:                                              ; preds = %225, %221, %207
  %229 = add nuw nsw i32 %199, 1
  store i32 %229, ptr %3, align 4
  %230 = icmp eq i32 %229, %154
  br i1 %230, label %238, label %198

231:                                              ; preds = %225, %217, %216, %215, %207, %206, %188, %175, %173, %165, %148, %142, %132, %123, %121, %109, %103, %95, %92, %86, %80, %63, %53, %49, %46, %38
  %232 = phi i32 [ 16, %207 ], [ 16, %206 ], [ 17, %215 ], [ 18, %216 ], [ 19, %217 ], [ 20, %225 ], [ 13, %173 ], [ 14, %175 ], [ 15, %188 ], [ 13, %165 ], [ 10, %123 ], [ 11, %142 ], [ 11, %132 ], [ 10, %121 ], [ 9, %109 ], [ 9, %103 ], [ 6, %86 ], [ 7, %92 ], [ 8, %95 ], [ 12, %148 ], [ 5, %80 ], [ 4, %63 ], [ 3, %53 ], [ 2, %49 ], [ 1, %38 ], [ 1, %46 ]
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.310, i32 noundef %232) #15
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str.311) #15
  call void @ubifs_dump_znode(ptr noundef %0, ptr noundef %41) #15
  %233 = icmp eq ptr %42, null
  br i1 %233, label %235, label %234

234:                                              ; preds = %231
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str.312) #15
  call void @ubifs_dump_znode(ptr noundef %0, ptr noundef nonnull %42) #15
  br label %235

235:                                              ; preds = %234, %231
  call void @dump_stack() #16
  br label %236

236:                                              ; preds = %235, %185
  %237 = phi i32 [ -22, %235 ], [ %186, %185 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %300

238:                                              ; preds = %228, %153
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br i1 %27, label %248, label %239

239:                                              ; preds = %238
  %240 = getelementptr inbounds %struct.ubifs_znode, ptr %29, i32 0, i32 4
  %241 = load volatile i32, ptr %240, align 4
  %242 = and i32 %241, 1
  %243 = xor i32 %242, 1
  %244 = add i32 %243, %30
  %245 = add i32 %242, %31
  %246 = call ptr @ubifs_tnc_postorder_next(ptr noundef %0, ptr noundef %29) #15
  %247 = icmp eq ptr %246, null
  br i1 %247, label %288, label %251

248:                                              ; preds = %238
  %249 = call ptr @ubifs_tnc_postorder_next(ptr noundef %0, ptr noundef %29) #15
  %250 = icmp eq ptr %249, null
  br i1 %250, label %300, label %251

251:                                              ; preds = %248, %239
  %252 = phi ptr [ %249, %248 ], [ %246, %239 ]
  %253 = phi i32 [ %31, %248 ], [ %245, %239 ]
  %254 = phi i32 [ %30, %248 ], [ %244, %239 ]
  %255 = getelementptr inbounds %struct.ubifs_znode, ptr %29, i32 0, i32 7
  %256 = load i32, ptr %255, align 4
  %257 = add i32 %256, -1
  %258 = getelementptr inbounds %struct.ubifs_znode, ptr %29, i32 0, i32 6
  %259 = load i32, ptr %258, align 8
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %281

261:                                              ; preds = %251
  %262 = getelementptr inbounds %struct.ubifs_znode, ptr %252, i32 0, i32 6
  %263 = load i32, ptr %262, align 8
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %281

265:                                              ; preds = %261
  %266 = load i8, ptr %26, align 4
  %267 = and i8 %266, 4
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %269, label %281

269:                                              ; preds = %265
  %270 = getelementptr %struct.ubifs_znode, ptr %29, i32 0, i32 13, i32 %257
  %271 = getelementptr inbounds %struct.ubifs_znode, ptr %252, i32 0, i32 13
  %272 = load i32, ptr %270, align 8
  %273 = load i32, ptr %271, align 8
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %281

275:                                              ; preds = %269
  %276 = getelementptr [2 x i32], ptr %270, i32 0, i32 1
  %277 = load i32, ptr %276, align 4
  %278 = getelementptr %struct.ubifs_znode, ptr %252, i32 1, i32 1
  %279 = load i32, ptr %278, align 4
  %280 = icmp eq i32 %277, %279
  br i1 %280, label %282, label %281

281:                                              ; preds = %285, %275, %269, %265, %261, %251
  br label %28

282:                                              ; preds = %275
  %283 = call fastcc i32 @dbg_check_key_order(ptr noundef %0, ptr noundef %270, ptr noundef %271)
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %300, label %285

285:                                              ; preds = %282
  %286 = icmp eq i32 %283, 0
  br i1 %286, label %281, label %287

287:                                              ; preds = %285
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str.248) #15
  call void @ubifs_dump_znode(ptr noundef %0, ptr noundef %29)
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str.249) #15
  call void @ubifs_dump_znode(ptr noundef %0, ptr noundef nonnull %252)
  br label %300

288:                                              ; preds = %239
  %289 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 84
  %290 = load volatile i32, ptr %289, align 4
  %291 = icmp eq i32 %244, %290
  br i1 %291, label %294, label %292

292:                                              ; preds = %288
  %293 = load volatile i32, ptr %289, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.250, i32 noundef %293, i32 noundef %244) #15
  br label %300

294:                                              ; preds = %288
  %295 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 83
  %296 = load volatile i32, ptr %295, align 4
  %297 = icmp eq i32 %245, %296
  br i1 %297, label %300, label %298

298:                                              ; preds = %294
  %299 = load volatile i32, ptr %295, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.251, i32 noundef %299, i32 noundef %245) #15
  br label %300

300:                                              ; preds = %298, %294, %292, %287, %282, %248, %236, %18, %7
  %301 = phi i32 [ -22, %292 ], [ -22, %298 ], [ 0, %7 ], [ 0, %18 ], [ 0, %294 ], [ %237, %236 ], [ -22, %287 ], [ %283, %282 ], [ 0, %248 ]
  ret i32 %301
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_tnc_postorder_first(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_tnc_postorder_next(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dbg_check_key_order(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %union.ubifs_key, align 8
  %5 = alloca [48 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(48) %5, i8 0, i32 48, i1 false), !annotation !10
  %6 = load i32, ptr %1, align 8
  %7 = load i32, ptr %2, align 8
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr [2 x i32], ptr %2, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %16, label %15, !prof !24

15:                                               ; preds = %9, %3
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.313, ptr noundef nonnull @.str.6, i32 noundef 1202)
  br label %16

16:                                               ; preds = %15, %9
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3136, i32 noundef 312) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %108, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3136, i32 noundef 312) #18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %106, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @ubifs_tnc_read_node(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %18) #15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %106

27:                                               ; preds = %24
  %28 = tail call i32 @ubifs_validate_entry(ptr noundef %0, ptr noundef nonnull %18) #15
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %106

30:                                               ; preds = %27
  %31 = tail call i32 @ubifs_tnc_read_node(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %22) #15
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %106

33:                                               ; preds = %30
  %34 = tail call i32 @ubifs_validate_entry(ptr noundef %0, ptr noundef nonnull %22) #15
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %106

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.ubifs_dent_node, ptr %18, i32 0, i32 1
  %38 = load i32, ptr %37, align 8
  store i32 %38, ptr %4, align 8
  %39 = getelementptr %struct.ubifs_dent_node, ptr %18, i32 0, i32 1, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  store i32 %40, ptr %41, align 4
  %42 = load i32, ptr %1, align 8
  %43 = icmp eq i32 %42, %38
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, %40
  br i1 %47, label %55, label %48

48:                                               ; preds = %44, %36
  %49 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 3
  %52 = load i32, ptr %51, align 8
  %53 = call ptr @dbg_snprintf_key(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 48)
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.314, i32 noundef %50, i32 noundef %52, ptr noundef nonnull %5) #15
  %54 = call ptr @dbg_snprintf_key(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 48)
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.315, ptr noundef nonnull %5) #15
  br label %104

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.ubifs_dent_node, ptr %22, i32 0, i32 1
  %57 = load i32, ptr %56, align 8
  store i32 %57, ptr %4, align 8
  %58 = getelementptr %struct.ubifs_dent_node, ptr %22, i32 0, i32 1, i32 4
  %59 = load i32, ptr %58, align 4
  store i32 %59, ptr %41, align 4
  %60 = load i32, ptr %2, align 8
  %61 = icmp eq i32 %60, %57
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = getelementptr [2 x i32], ptr %2, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, %59
  br i1 %65, label %73, label %66

66:                                               ; preds = %62, %55
  %67 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 3
  %70 = load i32, ptr %69, align 8
  %71 = call ptr @dbg_snprintf_key(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 48)
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.316, i32 noundef %68, i32 noundef %70, ptr noundef nonnull %5) #15
  %72 = call ptr @dbg_snprintf_key(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, i32 noundef 48)
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.315, ptr noundef nonnull %5) #15
  br label %104

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.ubifs_dent_node, ptr %18, i32 0, i32 5
  %75 = load i16, ptr %74, align 2
  %76 = getelementptr inbounds %struct.ubifs_dent_node, ptr %22, i32 0, i32 5
  %77 = load i16, ptr %76, align 2
  %78 = getelementptr inbounds %struct.ubifs_dent_node, ptr %18, i32 0, i32 7
  %79 = getelementptr inbounds %struct.ubifs_dent_node, ptr %22, i32 0, i32 7
  %80 = tail call i16 @llvm.umin.i16(i16 %75, i16 %77)
  %81 = zext i16 %80 to i32
  %82 = tail call i32 @memcmp(ptr noundef %78, ptr noundef %79, i32 noundef %81)
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %106, label %84

84:                                               ; preds = %73
  %85 = icmp uge i16 %75, %77
  %86 = icmp eq i32 %82, 0
  %87 = xor i1 %86, true
  %88 = select i1 %87, i1 true, i1 %85
  br i1 %88, label %89, label %106

89:                                               ; preds = %84
  %90 = icmp eq i16 %75, %77
  %91 = select i1 %86, i1 %90, i1 false
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.317) #15
  br label %95

93:                                               ; preds = %89
  %94 = call ptr @dbg_snprintf_key(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 48)
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.318, ptr noundef nonnull %5) #15
  br label %95

95:                                               ; preds = %93, %92
  %96 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 3
  %99 = load i32, ptr %98, align 8
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str.319, i32 noundef %97, i32 noundef %99) #15
  call void @ubifs_dump_node(ptr noundef %0, ptr noundef nonnull %18, i32 noundef 312)
  %100 = getelementptr inbounds %struct.ubifs_zbranch, ptr %2, i32 0, i32 2
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr inbounds %struct.ubifs_zbranch, ptr %2, i32 0, i32 3
  %103 = load i32, ptr %102, align 8
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str.320, i32 noundef %101, i32 noundef %103) #15
  br label %104

104:                                              ; preds = %95, %66, %48
  %105 = phi ptr [ %22, %95 ], [ %22, %66 ], [ %18, %48 ]
  call void @ubifs_dump_node(ptr noundef %0, ptr noundef nonnull %105, i32 noundef 312)
  br label %106

106:                                              ; preds = %104, %84, %73, %33, %30, %27, %24, %20
  %107 = phi i32 [ %25, %24 ], [ %28, %27 ], [ %31, %30 ], [ %34, %33 ], [ -12, %20 ], [ 0, %84 ], [ 0, %73 ], [ 1, %104 ]
  call void @kfree(ptr noundef %22) #15
  call void @kfree(ptr noundef nonnull %18) #15
  br label %108

108:                                              ; preds = %106, %16
  %109 = phi i32 [ %107, %106 ], [ -12, %16 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_load_znode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_check_idx_size(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store i64 0, ptr %3, align 8
  %4 = load i8, ptr @ubifs_dbg, align 4
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ubifs_debug_info, ptr %9, i32 0, i32 19
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %7, %2
  %15 = call i32 @dbg_walk_index(ptr noundef %0, ptr noundef null, ptr noundef nonnull @add_size, ptr noundef nonnull %3)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.255, i32 noundef %15) #15
  br label %22

18:                                               ; preds = %14
  %19 = load i64, ptr %3, align 8
  %20 = icmp eq i64 %19, %1
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.256, i64 noundef %19, i64 noundef %1) #15
  call void @dump_stack() #16
  br label %22

22:                                               ; preds = %21, %18, %17, %7
  %23 = phi i32 [ %15, %17 ], [ -22, %21 ], [ 0, %7 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i32 %23
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @add_size(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #10 {
  %4 = getelementptr inbounds %struct.ubifs_znode, ptr %1, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 68
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 12
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 69
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %8, %10
  %12 = mul i32 %11, %5
  %13 = add i32 %12, 35
  %14 = and i32 %13, -8
  %15 = sext i32 %14 to i64
  %16 = load i64, ptr %2, align 8
  %17 = add i64 %16, %15
  store i64 %17, ptr %2, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_check_filesystem(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.ubifs_key, align 8
  %4 = alloca ptr, align 4
  %5 = alloca %struct.fsck_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %6 = load i8, ptr @ubifs_dbg, align 4
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ubifs_debug_info, ptr %11, i32 0, i32 19
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 16
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %147, label %16

16:                                               ; preds = %9, %1
  store ptr null, ptr %5, align 4
  %17 = call i32 @dbg_walk_index(ptr noundef %0, ptr noundef nonnull @check_leaf, ptr noundef null, ptr noundef nonnull %5)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %139

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store i64 0, ptr %3, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store ptr null, ptr %4, align 4, !annotation !10
  %20 = call ptr @rb_first(ptr noundef nonnull %5) #15
  br label %21

21:                                               ; preds = %85, %19
  %22 = phi ptr [ %20, %19 ], [ %25, %85 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %132, label %24

24:                                               ; preds = %21
  %25 = call ptr @rb_next(ptr noundef nonnull %22) #15
  %26 = getelementptr inbounds %struct.fsck_inode, ptr %22, i32 0, i32 2
  %27 = load i16, ptr %26, align 8
  %28 = and i16 %27, -4096
  %29 = icmp eq i16 %28, 16384
  br i1 %29, label %30, label %56

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.fsck_inode, ptr %22, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 1
  %34 = getelementptr inbounds %struct.fsck_inode, ptr %22, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  br i1 %33, label %39, label %36

36:                                               ; preds = %30
  %37 = icmp eq i32 %35, 1
  br i1 %37, label %42, label %38

38:                                               ; preds = %36
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.339, i32 noundef %32, i32 noundef %35) #15
  br label %95

39:                                               ; preds = %30
  %40 = icmp eq i32 %35, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %39
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.340, i32 noundef 1, i32 noundef %35) #15
  br label %95

42:                                               ; preds = %39, %36
  %43 = getelementptr inbounds %struct.fsck_inode, ptr %22, i32 0, i32 9
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds %struct.fsck_inode, ptr %22, i32 0, i32 7
  %46 = load i64, ptr %45, align 8
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.341, i32 noundef %32, i64 noundef %46, i64 noundef %44) #15
  br label %95

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.fsck_inode, ptr %22, i32 0, i32 6
  %51 = load i32, ptr %50, align 8
  %52 = getelementptr inbounds %struct.fsck_inode, ptr %22, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %49
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.342, i32 noundef %32, i32 noundef %53, i32 noundef %51) #15
  br label %95

56:                                               ; preds = %24
  %57 = getelementptr inbounds %struct.fsck_inode, ptr %22, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.fsck_inode, ptr %22, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.fsck_inode, ptr %22, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.343, i32 noundef %64, i32 noundef %60, i32 noundef %58) #15
  br label %95

65:                                               ; preds = %56, %49
  %66 = getelementptr inbounds %struct.fsck_inode, ptr %22, i32 0, i32 8
  %67 = load i32, ptr %66, align 8
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.fsck_inode, ptr %22, i32 0, i32 11
  %70 = load i64, ptr %69, align 8
  %71 = icmp eq i64 %70, %68
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.fsck_inode, ptr %22, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.344, i32 noundef %74, i32 noundef %67, i64 noundef %70) #15
  br label %95

75:                                               ; preds = %65
  %76 = getelementptr inbounds %struct.fsck_inode, ptr %22, i32 0, i32 4
  %77 = load i32, ptr %76, align 8
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.fsck_inode, ptr %22, i32 0, i32 10
  %80 = load i64, ptr %79, align 8
  %81 = icmp eq i64 %80, %78
  br i1 %81, label %85, label %82

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.fsck_inode, ptr %22, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.345, i32 noundef %84, i32 noundef %77, i64 noundef %80) #15
  br label %95

85:                                               ; preds = %75
  %86 = getelementptr inbounds %struct.fsck_inode, ptr %22, i32 0, i32 12
  %87 = load i32, ptr %86, align 8
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.fsck_inode, ptr %22, i32 0, i32 13
  %90 = load i64, ptr %89, align 8
  %91 = icmp eq i64 %90, %88
  br i1 %91, label %21, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.fsck_inode, ptr %22, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.346, i32 noundef %94, i32 noundef %87, i64 noundef %90) #15
  br label %95

95:                                               ; preds = %92, %82, %72, %62, %55, %48, %41, %38
  %96 = getelementptr inbounds %struct.fsck_inode, ptr %22, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  store i32 %97, ptr %3, align 8
  %98 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  store i32 0, ptr %98, align 4
  %99 = call i32 @ubifs_lookup_level0(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %2) #15
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, ptr %96, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.334, i32 noundef %102) #15
  br label %130

103:                                              ; preds = %95
  %104 = icmp slt i32 %99, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %103
  %106 = load i32, ptr %96, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.335, i32 noundef %99, i32 noundef %106) #15
  br label %130

107:                                              ; preds = %103
  %108 = load ptr, ptr %4, align 4
  %109 = load i32, ptr %2, align 4
  %110 = getelementptr %struct.ubifs_znode, ptr %108, i32 0, i32 13, i32 %109, i32 4
  %111 = load i32, ptr %110, align 4
  %112 = call noalias align 64 ptr @__kmalloc(i32 noundef %111, i32 noundef 3136) #17
  %113 = icmp eq ptr %112, null
  br i1 %113, label %130, label %114

114:                                              ; preds = %107
  %115 = getelementptr %struct.ubifs_znode, ptr %108, i32 0, i32 13, i32 %109
  %116 = call i32 @ubifs_tnc_read_node(ptr noundef %0, ptr noundef %115, ptr noundef nonnull %112) #15
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %114
  %119 = getelementptr %struct.ubifs_znode, ptr %108, i32 0, i32 13, i32 %109, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr %struct.ubifs_znode, ptr %108, i32 0, i32 13, i32 %109, i32 3
  %122 = load i32, ptr %121, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.337, i32 noundef %120, i32 noundef %122, i32 noundef %116) #15
  call void @kfree(ptr noundef nonnull %112) #15
  br label %130

123:                                              ; preds = %114
  %124 = load i32, ptr %96, align 4
  %125 = getelementptr %struct.ubifs_znode, ptr %108, i32 0, i32 13, i32 %109, i32 2
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr %struct.ubifs_znode, ptr %108, i32 0, i32 13, i32 %109, i32 3
  %128 = load i32, ptr %127, align 8
  call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str.347, i32 noundef %124, i32 noundef %126, i32 noundef %128) #15
  %129 = load i32, ptr %110, align 4
  call void @ubifs_dump_node(ptr noundef %0, ptr noundef nonnull %112, i32 noundef %129) #15
  call void @kfree(ptr noundef nonnull %112) #15
  br label %130

130:                                              ; preds = %123, %118, %107, %105, %101
  %131 = phi i32 [ -12, %107 ], [ -2, %101 ], [ -22, %123 ], [ %116, %118 ], [ %99, %105 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  br label %139

132:                                              ; preds = %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  %133 = call ptr @rb_first_postorder(ptr noundef nonnull %5) #15
  %134 = icmp eq ptr %133, null
  br i1 %134, label %147, label %135

135:                                              ; preds = %135, %132
  %136 = phi ptr [ %137, %135 ], [ %133, %132 ]
  %137 = call ptr @rb_next_postorder(ptr noundef nonnull %136) #15
  call void @kfree(ptr noundef nonnull %136) #15
  %138 = icmp eq ptr %137, null
  br i1 %138, label %147, label %135

139:                                              ; preds = %130, %16
  %140 = phi i32 [ %17, %16 ], [ %131, %130 ]
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.257, i32 noundef %140) #15
  call void @dump_stack() #16
  %141 = call ptr @rb_first_postorder(ptr noundef nonnull %5) #15
  %142 = icmp eq ptr %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %143, %139
  %144 = phi ptr [ %145, %143 ], [ %141, %139 ]
  %145 = call ptr @rb_next_postorder(ptr noundef nonnull %144) #15
  call void @kfree(ptr noundef nonnull %144) #15
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %143

147:                                              ; preds = %143, %139, %135, %132, %9
  %148 = phi i32 [ 0, %9 ], [ 0, %132 ], [ %140, %139 ], [ 0, %135 ], [ %140, %143 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %148
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @check_leaf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 29
  %7 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, 24
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.321, i32 noundef %8, i32 noundef %12, i32 noundef %14) #15
  br label %151

15:                                               ; preds = %3
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %8, i32 noundef 3136) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %151, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @ubifs_tnc_read_node(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %16) #15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 3
  %25 = load i32, ptr %24, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.322, i32 noundef %23, i32 noundef %25, i32 noundef %19) #15
  br label %149

26:                                               ; preds = %18
  %27 = icmp ult i32 %5, 536870912
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = tail call fastcc ptr @add_inode(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %16)
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %141

31:                                               ; preds = %28
  %32 = ptrtoint ptr %29 to i32
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.323, i32 noundef %32) #15
  br label %142

33:                                               ; preds = %26
  %34 = add nsw i32 %6, -4
  %35 = icmp ult i32 %34, -3
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 3
  %40 = load i32, ptr %39, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.324, i32 noundef %6, i32 noundef %38, i32 noundef %40) #15
  br label %149

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.ubifs_ch, ptr %16, i32 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 3
  %45 = load i64, ptr %44, align 8
  %46 = icmp ugt i64 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.325, i64 noundef %45) #15
  br label %142

48:                                               ; preds = %41
  %49 = icmp eq i32 %6, 1
  %50 = load i32, ptr %7, align 4
  br i1 %49, label %51, label %79

51:                                               ; preds = %48
  %52 = icmp ult i32 %50, 48
  br i1 %52, label %53, label %54, !prof !8

53:                                               ; preds = %51
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.326, ptr noundef nonnull @.str.6, i32 noundef 2054)
  br label %54

54:                                               ; preds = %53, %51
  %55 = getelementptr inbounds %struct.ubifs_data_node, ptr %16, i32 0, i32 1
  %56 = load i32, ptr %55, align 8
  %57 = tail call fastcc ptr @read_add_inode(ptr noundef %0, ptr noundef %2, i32 noundef %56)
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = ptrtoint ptr %57 to i32
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.327, i32 noundef %60, i32 noundef %56) #15
  br label %142

61:                                               ; preds = %54
  %62 = getelementptr %struct.ubifs_data_node, ptr %16, i32 0, i32 1, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 536870911
  %65 = zext i32 %64 to i64
  %66 = shl nuw nsw i64 %65, 12
  %67 = getelementptr inbounds %struct.ubifs_data_node, ptr %16, i32 0, i32 2
  %68 = load i32, ptr %67, align 8
  %69 = zext i32 %68 to i64
  %70 = add nuw nsw i64 %66, %69
  %71 = getelementptr inbounds %struct.fsck_inode, ptr %57, i32 0, i32 7
  %72 = load i64, ptr %71, align 8
  %73 = icmp sgt i64 %70, %72
  br i1 %73, label %74, label %141

74:                                               ; preds = %61
  %75 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 3
  %78 = load i32, ptr %77, align 8
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.328, i32 noundef %76, i32 noundef %78, i64 noundef %72) #15
  br label %142

79:                                               ; preds = %48
  %80 = icmp ult i32 %50, 56
  br i1 %80, label %81, label %82, !prof !8

81:                                               ; preds = %79
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.329, ptr noundef nonnull @.str.6, i32 noundef 2084)
  br label %82

82:                                               ; preds = %81, %79
  %83 = tail call i32 @ubifs_validate_entry(ptr noundef %0, ptr noundef nonnull %16) #15
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %142

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.ubifs_dent_node, ptr %16, i32 0, i32 2
  %87 = load i64, ptr %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = tail call fastcc ptr @read_add_inode(ptr noundef %0, ptr noundef %2, i32 noundef %88)
  %90 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = ptrtoint ptr %89 to i32
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.330, i32 noundef %92, i32 noundef %88) #15
  br label %142

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.fsck_inode, ptr %89, i32 0, i32 5
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, 1
  store i32 %96, ptr %94, align 4
  %97 = getelementptr inbounds %struct.ubifs_dent_node, ptr %16, i32 0, i32 1
  %98 = load i32, ptr %97, align 8
  %99 = tail call fastcc ptr @read_add_inode(ptr noundef %0, ptr noundef %2, i32 noundef %98)
  %100 = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = ptrtoint ptr %99 to i32
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.331, i32 noundef %102, i32 noundef %98) #15
  br label %142

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.ubifs_dent_node, ptr %16, i32 0, i32 5
  %105 = load i16, ptr %104, align 2
  %106 = zext i16 %105 to i32
  %107 = icmp eq i32 %6, 3
  br i1 %107, label %108, label %127

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.fsck_inode, ptr %99, i32 0, i32 10
  %110 = load i64, ptr %109, align 8
  %111 = add i64 %110, 1
  store i64 %111, ptr %109, align 8
  %112 = add nuw nsw i32 %106, 64
  %113 = and i32 %112, 131064
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.fsck_inode, ptr %99, i32 0, i32 11
  %116 = load i64, ptr %115, align 8
  %117 = add i64 %116, %114
  store i64 %117, ptr %115, align 8
  %118 = getelementptr inbounds %struct.fsck_inode, ptr %89, i32 0, i32 7
  %119 = load i64, ptr %118, align 8
  %120 = add i64 %119, 168
  %121 = and i64 %120, -8
  %122 = add i64 %121, %117
  store i64 %122, ptr %115, align 8
  %123 = zext i16 %105 to i64
  %124 = getelementptr inbounds %struct.fsck_inode, ptr %99, i32 0, i32 13
  %125 = load i64, ptr %124, align 8
  %126 = add i64 %125, %123
  store i64 %126, ptr %124, align 8
  br label %141

127:                                              ; preds = %103
  %128 = add nuw nsw i32 %106, 64
  %129 = and i32 %128, 131064
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.fsck_inode, ptr %99, i32 0, i32 9
  %132 = load i64, ptr %131, align 8
  %133 = add i64 %132, %130
  store i64 %133, ptr %131, align 8
  %134 = getelementptr inbounds %struct.ubifs_dent_node, ptr %16, i32 0, i32 4
  %135 = load i8, ptr %134, align 1
  %136 = icmp eq i8 %135, 1
  br i1 %136, label %137, label %141

137:                                              ; preds = %127
  %138 = getelementptr inbounds %struct.fsck_inode, ptr %99, i32 0, i32 6
  %139 = load i32, ptr %138, align 8
  %140 = add i32 %139, 1
  store i32 %140, ptr %138, align 8
  br label %141

141:                                              ; preds = %137, %127, %108, %61, %28
  tail call void @kfree(ptr noundef nonnull %16) #15
  br label %151

142:                                              ; preds = %101, %91, %82, %74, %59, %47, %31
  %143 = phi i32 [ %32, %31 ], [ -22, %47 ], [ %92, %91 ], [ %102, %101 ], [ %83, %82 ], [ -22, %74 ], [ %60, %59 ]
  %144 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 2
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr inbounds %struct.ubifs_zbranch, ptr %1, i32 0, i32 3
  %147 = load i32, ptr %146, align 8
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str.332, i32 noundef %145, i32 noundef %147) #15
  %148 = load i32, ptr %7, align 4
  tail call void @ubifs_dump_node(ptr noundef %0, ptr noundef nonnull %16, i32 noundef %148)
  br label %149

149:                                              ; preds = %142, %36, %21
  %150 = phi i32 [ %19, %21 ], [ %143, %142 ], [ -22, %36 ]
  tail call void @kfree(ptr noundef nonnull %16) #15
  br label %151

151:                                              ; preds = %149, %141, %15, %10
  %152 = phi i32 [ -22, %10 ], [ %150, %149 ], [ 0, %141 ], [ -12, %15 ]
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_check_data_nodes_order(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i8, ptr @ubifs_dbg, align 4
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ubifs_debug_info, ptr %8, i32 0, i32 19
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %73, label %13

13:                                               ; preds = %6, %2
  %14 = load ptr, ptr %1, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %73, label %17

17:                                               ; preds = %53, %13
  %18 = phi ptr [ %20, %53 ], [ %14, %13 ]
  %19 = tail call i32 @__cond_resched() #15
  %20 = load ptr, ptr %18, align 4
  %21 = getelementptr inbounds %struct.ubifs_scan_node, ptr %18, i32 0, i32 3
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.258, i32 noundef %22) #15
  %25 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  br label %64

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.ubifs_scan_node, ptr %20, i32 0, i32 3
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.258, i32 noundef %28) #15
  %31 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  br label %64

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.ubifs_scan_node, ptr %18, i32 0, i32 1
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.ubifs_scan_node, ptr %20, i32 0, i32 1
  %36 = load i32, ptr %35, align 8
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %53, label %38

38:                                               ; preds = %32
  %39 = icmp ugt i32 %34, %36
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.259, i32 noundef %34, i32 noundef %36) #15
  br label %56

41:                                               ; preds = %38
  %42 = getelementptr [2 x i32], ptr %33, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 536870911
  %45 = getelementptr [2 x i32], ptr %35, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 536870911
  %48 = icmp ugt i32 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.260, i32 noundef %44, i32 noundef %47) #15
  br label %56

50:                                               ; preds = %41
  %51 = icmp eq i32 %44, %47
  br i1 %51, label %52, label %53

52:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.261) #15
  br label %56

53:                                               ; preds = %50, %32
  %54 = load ptr, ptr %20, align 4
  %55 = icmp eq ptr %54, %1
  br i1 %55, label %73, label %17

56:                                               ; preds = %52, %49, %40
  %57 = getelementptr inbounds %struct.ubifs_scan_node, ptr %18, i32 0, i32 6
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %60 = load i32, ptr %59, align 8
  %61 = getelementptr inbounds %struct.ubifs_scan_node, ptr %18, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = sub i32 %60, %62
  tail call void @ubifs_dump_node(ptr noundef %0, ptr noundef %58, i32 noundef %63)
  br label %64

64:                                               ; preds = %56, %30, %24
  %65 = phi ptr [ %31, %30 ], [ %25, %24 ], [ %59, %56 ]
  %66 = phi ptr [ %20, %30 ], [ %18, %24 ], [ %20, %56 ]
  %67 = getelementptr inbounds %struct.ubifs_scan_node, ptr %66, i32 0, i32 6
  %68 = load ptr, ptr %67, align 4
  %69 = load i32, ptr %65, align 8
  %70 = getelementptr inbounds %struct.ubifs_scan_node, ptr %66, i32 0, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = sub i32 %69, %71
  tail call void @ubifs_dump_node(ptr noundef %0, ptr noundef %68, i32 noundef %72)
  br label %73

73:                                               ; preds = %64, %53, %13, %6
  %74 = phi i32 [ 0, %6 ], [ 0, %13 ], [ -22, %64 ], [ 0, %53 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_check_nondata_nodes_order(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i8, ptr @ubifs_dbg, align 4
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ubifs_debug_info, ptr %8, i32 0, i32 19
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %84, label %13

13:                                               ; preds = %6, %2
  %14 = load ptr, ptr %1, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %84, label %17

17:                                               ; preds = %63, %13
  %18 = phi ptr [ %20, %63 ], [ %14, %13 ]
  %19 = tail call i32 @__cond_resched() #15
  %20 = load ptr, ptr %18, align 4
  %21 = getelementptr inbounds %struct.ubifs_scan_node, ptr %18, i32 0, i32 3
  %22 = load i32, ptr %21, align 8
  switch i32 %22, label %23 [
    i32 0, label %26
    i32 2, label %26
    i32 3, label %26
  ]

23:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.258, i32 noundef %22) #15
  %24 = getelementptr inbounds %struct.ubifs_scan_node, ptr %18, i32 0, i32 6
  %25 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  br label %75

26:                                               ; preds = %17, %17, %17
  %27 = getelementptr inbounds %struct.ubifs_scan_node, ptr %20, i32 0, i32 3
  %28 = load i32, ptr %27, align 8
  switch i32 %28, label %29 [
    i32 0, label %32
    i32 2, label %32
    i32 3, label %32
  ]

29:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.258, i32 noundef %28) #15
  %30 = getelementptr inbounds %struct.ubifs_scan_node, ptr %20, i32 0, i32 6
  %31 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  br label %75

32:                                               ; preds = %26, %26, %26
  %33 = icmp eq i32 %22, 0
  %34 = icmp eq i32 %28, 0
  br i1 %33, label %37, label %35

35:                                               ; preds = %32
  br i1 %34, label %36, label %45

36:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.262) #15
  br label %66

37:                                               ; preds = %32
  br i1 %34, label %38, label %63

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.ubifs_scan_node, ptr %18, i32 0, i32 5
  %40 = load i32, ptr %39, align 8
  %41 = getelementptr inbounds %struct.ubifs_scan_node, ptr %20, i32 0, i32 5
  %42 = load i32, ptr %41, align 8
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.263) #15
  br label %66

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.ubifs_scan_node, ptr %18, i32 0, i32 1
  %47 = load i32, ptr %46, align 8
  %48 = getelementptr inbounds %struct.ubifs_scan_node, ptr %20, i32 0, i32 1
  %49 = load i32, ptr %48, align 8
  %50 = icmp ult i32 %47, %49
  br i1 %50, label %63, label %51

51:                                               ; preds = %45
  %52 = icmp ugt i32 %47, %49
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.259, i32 noundef %47, i32 noundef %49) #15
  br label %66

54:                                               ; preds = %51
  %55 = getelementptr [2 x i32], ptr %46, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 536870911
  %58 = getelementptr [2 x i32], ptr %48, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 536870911
  %61 = icmp ugt i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.264, i32 noundef %57, i32 noundef %60) #15
  br label %66

63:                                               ; preds = %54, %45, %38, %37
  %64 = load ptr, ptr %20, align 4
  %65 = icmp eq ptr %64, %1
  br i1 %65, label %84, label %17

66:                                               ; preds = %62, %53, %44, %36
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str.265) #15
  %67 = getelementptr inbounds %struct.ubifs_scan_node, ptr %18, i32 0, i32 6
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 75
  %70 = load i32, ptr %69, align 8
  %71 = getelementptr inbounds %struct.ubifs_scan_node, ptr %18, i32 0, i32 4
  %72 = load i32, ptr %71, align 4
  %73 = sub i32 %70, %72
  tail call void @ubifs_dump_node(ptr noundef %0, ptr noundef %68, i32 noundef %73)
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str.266) #15
  %74 = getelementptr inbounds %struct.ubifs_scan_node, ptr %20, i32 0, i32 6
  br label %75

75:                                               ; preds = %66, %29, %23
  %76 = phi ptr [ %25, %23 ], [ %31, %29 ], [ %69, %66 ]
  %77 = phi ptr [ %18, %23 ], [ %20, %29 ], [ %20, %66 ]
  %78 = phi ptr [ %24, %23 ], [ %30, %29 ], [ %74, %66 ]
  %79 = load ptr, ptr %78, align 4
  %80 = load i32, ptr %76, align 8
  %81 = getelementptr inbounds %struct.ubifs_scan_node, ptr %77, i32 0, i32 4
  %82 = load i32, ptr %81, align 4
  %83 = sub i32 %80, %82
  tail call void @ubifs_dump_node(ptr noundef %0, ptr noundef %79, i32 noundef %83)
  br label %84

84:                                               ; preds = %75, %63, %13, %6
  %85 = phi i32 [ 0, %6 ], [ 0, %13 ], [ -22, %75 ], [ 0, %63 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_leb_write(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ubifs_debug_info, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %5
  %12 = tail call fastcc i32 @power_cut_emulated(ptr noundef %0, i32 noundef %1, i32 noundef 1)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @prandom_u32() #15
  %16 = and i32 %15, 1
  %17 = tail call i32 @prandom_u32() #15
  %18 = urem i32 %17, %4
  %19 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 73
  %20 = load i32, ptr %19, align 8
  %21 = add i32 %20, %18
  %22 = sub i32 0, %20
  %23 = and i32 %21, %22
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 %4) #15
  %25 = add i32 %24, -1
  %26 = icmp eq i32 %16, 0
  %27 = select i1 %26, ptr @.str.363, ptr @.str.364
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str.362, i32 noundef %18, i32 noundef %25, ptr noundef nonnull %27) #15
  %28 = getelementptr i8, ptr %2, i32 %18
  %29 = sub i32 %24, %18
  br i1 %26, label %30, label %31

30:                                               ; preds = %14
  tail call void @llvm.memset.p0.i32(ptr align 1 %28, i8 -1, i32 %29, i1 false) #15
  br label %32

31:                                               ; preds = %14
  tail call void @prandom_bytes(ptr noundef %28, i32 noundef %29) #15
  br label %32

32:                                               ; preds = %31, %30
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str.267, i32 noundef %24, i32 noundef %1, i32 noundef %3) #15
  br label %33

33:                                               ; preds = %32, %11
  %34 = phi i32 [ -30, %32 ], [ 0, %11 ]
  %35 = phi i32 [ %24, %32 ], [ %4, %11 ]
  %36 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 100
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @ubi_leb_write(ptr noundef %37, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %35) #15
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 %34, i32 %38
  br label %41

41:                                               ; preds = %33, %5
  %42 = phi i32 [ -30, %5 ], [ %40, %33 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @power_cut_emulated(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %5 = load ptr, ptr %4, align 4
  %6 = load i8, ptr @ubifs_dbg, align 4
  %7 = and i8 %6, 32
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 19
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 32
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %9
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.348, ptr noundef nonnull @.str.6, i32 noundef 2478)
  br label %15

15:                                               ; preds = %14, %9, %3
  %16 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = tail call i32 @prandom_u32() #15
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = tail call i32 @prandom_u32() #15
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 4
  br i1 %26, label %28, label %36

28:                                               ; preds = %23
  store i32 1, ptr %27, align 4
  %29 = tail call i32 @prandom_u32() #15
  %30 = urem i32 %29, 60000
  %31 = load volatile i32, ptr @jiffies, align 64
  %32 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 5
  store i32 %31, ptr %32, align 8
  %33 = tail call i32 @__msecs_to_jiffies(i32 noundef %30) #15
  %34 = load i32, ptr %32, align 8
  %35 = add i32 %34, %33
  store i32 %35, ptr %32, align 8
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str.349, i32 noundef %30) #15
  br label %40

36:                                               ; preds = %23
  store i32 2, ptr %27, align 4
  %37 = tail call i32 @prandom_u32() #15
  %38 = urem i32 %37, 10000
  %39 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 7
  store i32 %38, ptr %39, align 8
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str.350, i32 noundef %38) #15
  br label %40

40:                                               ; preds = %36, %28, %19
  %41 = load i32, ptr %16, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %16, align 4
  br label %43

43:                                               ; preds = %40, %15
  %44 = phi i32 [ %42, %40 ], [ %17, %15 ]
  %45 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  switch i32 %46, label %58 [
    i32 1, label %47
    i32 2, label %53
  ]

47:                                               ; preds = %43
  %48 = load volatile i32, ptr @jiffies, align 64
  %49 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 5
  %50 = load i32, ptr %49, align 8
  %51 = sub i32 %48, %50
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %186, label %58

53:                                               ; preds = %43
  %54 = add i32 %44, 1
  store i32 %54, ptr %16, align 4
  %55 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 7
  %56 = load i32, ptr %55, align 8
  %57 = icmp ult i32 %44, %56
  br i1 %57, label %186, label %58

58:                                               ; preds = %53, %47, %43
  %59 = icmp eq i32 %1, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %58
  %61 = icmp eq i32 %2, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %60
  %63 = tail call i32 @prandom_u32() #15
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %186, label %66

66:                                               ; preds = %62, %60
  %67 = tail call i32 @prandom_u32() #15
  %68 = urem i32 %67, 20
  %69 = icmp ugt i32 %68, 18
  br i1 %69, label %70, label %186

70:                                               ; preds = %66
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str.351, i32 noundef 0) #15
  br label %184

71:                                               ; preds = %58
  %72 = add i32 %1, -1
  %73 = icmp ult i32 %72, 2
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = tail call i32 @prandom_u32() #15
  %76 = urem i32 %75, 20
  %77 = icmp ugt i32 %76, 18
  br i1 %77, label %78, label %186

78:                                               ; preds = %74
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str.352, i32 noundef %1) #15
  br label %184

79:                                               ; preds = %71
  %80 = icmp sgt i32 %1, 2
  br i1 %80, label %81, label %96

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 55
  %83 = load i32, ptr %82, align 8
  %84 = icmp slt i32 %83, %1
  br i1 %84, label %96, label %85

85:                                               ; preds = %81
  %86 = icmp eq i32 %2, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %85
  %88 = tail call i32 @prandom_u32() #15
  %89 = urem i32 %88, 100
  %90 = icmp ugt i32 %89, 98
  br i1 %90, label %91, label %186

91:                                               ; preds = %87, %85
  %92 = tail call i32 @prandom_u32() #15
  %93 = urem i32 %92, 400
  %94 = icmp ugt i32 %93, 398
  br i1 %94, label %95, label %186

95:                                               ; preds = %91
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str.353, i32 noundef %1) #15
  br label %184

96:                                               ; preds = %81, %79
  %97 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 57
  %98 = load i32, ptr %97, align 8
  %99 = icmp sgt i32 %98, %1
  br i1 %99, label %115, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 58
  %102 = load i32, ptr %101, align 4
  %103 = icmp slt i32 %102, %1
  br i1 %103, label %115, label %104

104:                                              ; preds = %100
  %105 = icmp eq i32 %2, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %104
  %107 = tail call i32 @prandom_u32() #15
  %108 = and i32 %107, 7
  %109 = icmp eq i32 %108, 7
  br i1 %109, label %110, label %186

110:                                              ; preds = %106, %104
  %111 = tail call i32 @prandom_u32() #15
  %112 = urem i32 %111, 20
  %113 = icmp ugt i32 %112, 18
  br i1 %113, label %114, label %186

114:                                              ; preds = %110
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str.354, i32 noundef %1) #15
  br label %184

115:                                              ; preds = %100, %96
  %116 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 60
  %117 = load i32, ptr %116, align 4
  %118 = icmp sgt i32 %117, %1
  br i1 %118, label %134, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 61
  %121 = load i32, ptr %120, align 8
  %122 = icmp slt i32 %121, %1
  br i1 %122, label %134, label %123

123:                                              ; preds = %119
  %124 = icmp eq i32 %2, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %123
  %126 = tail call i32 @prandom_u32() #15
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %186, label %129

129:                                              ; preds = %125, %123
  %130 = tail call i32 @prandom_u32() #15
  %131 = urem i32 %130, 10
  %132 = icmp ugt i32 %131, 8
  br i1 %132, label %133, label %186

133:                                              ; preds = %129
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str.355, i32 noundef %1) #15
  br label %184

134:                                              ; preds = %119, %115
  %135 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 39
  %136 = load i32, ptr %135, align 8
  %137 = icmp eq i32 %136, %1
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = tail call i32 @prandom_u32() #15
  %140 = urem i32 %139, 100
  %141 = icmp ugt i32 %140, 98
  br i1 %141, label %142, label %186

142:                                              ; preds = %138
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str.356, i32 noundef %1) #15
  br label %184

143:                                              ; preds = %134
  %144 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  %145 = load ptr, ptr %144, align 8
  %146 = icmp eq ptr %145, null
  br i1 %146, label %156, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.ubifs_wbuf, ptr %145, i32 0, i32 2
  %149 = load i32, ptr %148, align 8
  %150 = icmp eq i32 %149, %1
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = tail call i32 @prandom_u32() #15
  %153 = urem i32 %152, 10
  %154 = icmp ugt i32 %153, 8
  br i1 %154, label %155, label %186

155:                                              ; preds = %151
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str.357, i32 noundef %1) #15
  br label %184

156:                                              ; preds = %147, %143
  %157 = icmp eq i32 %2, 0
  br i1 %157, label %170, label %158

158:                                              ; preds = %156
  %159 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 15
  %160 = load volatile ptr, ptr %159, align 8
  %161 = icmp eq ptr %160, null
  br i1 %161, label %170, label %162

162:                                              ; preds = %158
  %163 = tail call ptr @ubifs_search_bud(ptr noundef %0, i32 noundef %1) #15
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = tail call i32 @prandom_u32() #15
  %167 = urem i32 %166, 20
  %168 = icmp ugt i32 %167, 18
  br i1 %168, label %169, label %186

169:                                              ; preds = %165
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str.358, i32 noundef %1) #15
  br label %184

170:                                              ; preds = %162, %158, %156
  %171 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 25
  %172 = load i32, ptr %171, align 4
  %173 = add i32 %172, -3
  %174 = icmp ult i32 %173, 2
  %175 = tail call i32 @prandom_u32() #15
  br i1 %174, label %176, label %180

176:                                              ; preds = %170
  %177 = urem i32 %175, 1000
  %178 = icmp ugt i32 %177, 998
  br i1 %178, label %179, label %186

179:                                              ; preds = %176
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str.359, i32 noundef %1) #15
  br label %184

180:                                              ; preds = %170
  %181 = urem i32 %175, 10000
  %182 = icmp ugt i32 %181, 9998
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str.360, i32 noundef %1) #15
  br label %184

184:                                              ; preds = %183, %179, %169, %155, %142, %133, %114, %95, %78, %70
  %185 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 3
  store i32 1, ptr %185, align 8
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %0, ptr noundef nonnull @.str.361) #15
  tail call void @dump_stack() #16
  br label %186

186:                                              ; preds = %184, %180, %176, %165, %151, %138, %129, %125, %110, %106, %91, %87, %74, %66, %62, %53, %47
  %187 = phi i32 [ 1, %184 ], [ 0, %47 ], [ 0, %53 ], [ 0, %62 ], [ 0, %66 ], [ 0, %74 ], [ 0, %87 ], [ 0, %91 ], [ 0, %106 ], [ 0, %110 ], [ 0, %125 ], [ 0, %129 ], [ 0, %138 ], [ 0, %151 ], [ 0, %165 ], [ 0, %176 ], [ 0, %180 ]
  ret i32 %187
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_leb_change(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ubifs_debug_info, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %4
  %11 = tail call fastcc i32 @power_cut_emulated(ptr noundef %0, i32 noundef %1, i32 noundef 1)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 100
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @ubi_leb_change(ptr noundef %15, i32 noundef %1, ptr noundef %2, i32 noundef %3) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = tail call fastcc i32 @power_cut_emulated(ptr noundef %0, i32 noundef %1, i32 noundef 1)
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 0, i32 -30
  br label %22

22:                                               ; preds = %18, %13, %10, %4
  %23 = phi i32 [ -30, %4 ], [ -30, %10 ], [ %16, %13 ], [ %21, %18 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_change(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_leb_unmap(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ubifs_debug_info, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @power_cut_emulated(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 100
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @ubi_leb_unmap(ptr noundef %13, i32 noundef %1) #15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = tail call fastcc i32 @power_cut_emulated(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 0, i32 -30
  br label %20

20:                                               ; preds = %16, %11, %8, %2
  %21 = phi i32 [ -30, %2 ], [ -30, %8 ], [ %14, %11 ], [ %19, %16 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_unmap(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_leb_map(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ubifs_debug_info, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @power_cut_emulated(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 100
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @ubi_leb_map(ptr noundef %13, i32 noundef %1) #15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = tail call fastcc i32 @power_cut_emulated(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 0, i32 -30
  br label %20

20:                                               ; preds = %16, %11, %8, %2
  %21 = phi i32 [ -30, %2 ], [ -30, %8 ], [ %14, %11 ], [ %19, %16 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_leb_map(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dbg_debugfs_init_fs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 20
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 102
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 102, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %4, i32 noundef 10, ptr noundef nonnull @.str.268, i32 noundef %6, i32 noundef %8)
  %10 = icmp sgt i32 %9, 9
  br i1 %10, label %44, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr @dfs_rootdir, align 4
  %13 = tail call ptr @debugfs_create_dir(ptr noundef %4, ptr noundef %12) #15
  %14 = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 21
  store ptr %13, ptr %14, align 8
  %15 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.269, i16 noundef zeroext 128, ptr noundef %13, ptr noundef %0, ptr noundef nonnull @dfs_fops) #15
  %16 = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 22
  store ptr %15, ptr %16, align 4
  %17 = load ptr, ptr %14, align 8
  %18 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.270, i16 noundef zeroext 128, ptr noundef %17, ptr noundef %0, ptr noundef nonnull @dfs_fops) #15
  %19 = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 23
  store ptr %18, ptr %19, align 8
  %20 = load ptr, ptr %14, align 8
  %21 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.271, i16 noundef zeroext 128, ptr noundef %20, ptr noundef %0, ptr noundef nonnull @dfs_fops) #15
  %22 = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 24
  store ptr %21, ptr %22, align 4
  %23 = load ptr, ptr %14, align 8
  %24 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.272, i16 noundef zeroext 384, ptr noundef %23, ptr noundef %0, ptr noundef nonnull @dfs_fops) #15
  %25 = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 25
  store ptr %24, ptr %25, align 8
  %26 = load ptr, ptr %14, align 8
  %27 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.273, i16 noundef zeroext 384, ptr noundef %26, ptr noundef %0, ptr noundef nonnull @dfs_fops) #15
  %28 = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 26
  store ptr %27, ptr %28, align 4
  %29 = load ptr, ptr %14, align 8
  %30 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.274, i16 noundef zeroext 384, ptr noundef %29, ptr noundef %0, ptr noundef nonnull @dfs_fops) #15
  %31 = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 27
  store ptr %30, ptr %31, align 8
  %32 = load ptr, ptr %14, align 8
  %33 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.275, i16 noundef zeroext 384, ptr noundef %32, ptr noundef %0, ptr noundef nonnull @dfs_fops) #15
  %34 = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 28
  store ptr %33, ptr %34, align 4
  %35 = load ptr, ptr %14, align 8
  %36 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.276, i16 noundef zeroext 384, ptr noundef %35, ptr noundef %0, ptr noundef nonnull @dfs_fops) #15
  %37 = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 29
  store ptr %36, ptr %37, align 8
  %38 = load ptr, ptr %14, align 8
  %39 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.277, i16 noundef zeroext 384, ptr noundef %38, ptr noundef %0, ptr noundef nonnull @dfs_fops) #15
  %40 = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 30
  store ptr %39, ptr %40, align 4
  %41 = load ptr, ptr %14, align 8
  %42 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.278, i16 noundef zeroext 384, ptr noundef %41, ptr noundef %0, ptr noundef nonnull @dfs_fops) #15
  %43 = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 31
  store ptr %42, ptr %43, align 8
  br label %44

44:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dbg_debugfs_exit_fs(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ubifs_debug_info, ptr %3, i32 0, i32 21
  %5 = load ptr, ptr %4, align 8
  tail call void @debugfs_remove(ptr noundef %5) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dbg_debugfs_init() local_unnamed_addr #0 {
  %1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.279, ptr noundef null) #15
  store ptr %1, ptr @dfs_rootdir, align 4
  %2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.272, i16 noundef zeroext 384, ptr noundef %1, ptr noundef null, ptr noundef nonnull @dfs_global_fops) #15
  store ptr %2, ptr @dfs_chk_gen, align 4
  %3 = load ptr, ptr @dfs_rootdir, align 4
  %4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.273, i16 noundef zeroext 384, ptr noundef %3, ptr noundef null, ptr noundef nonnull @dfs_global_fops) #15
  store ptr %4, ptr @dfs_chk_index, align 4
  %5 = load ptr, ptr @dfs_rootdir, align 4
  %6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.274, i16 noundef zeroext 384, ptr noundef %5, ptr noundef null, ptr noundef nonnull @dfs_global_fops) #15
  store ptr %6, ptr @dfs_chk_orph, align 4
  %7 = load ptr, ptr @dfs_rootdir, align 4
  %8 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.275, i16 noundef zeroext 384, ptr noundef %7, ptr noundef null, ptr noundef nonnull @dfs_global_fops) #15
  store ptr %8, ptr @dfs_chk_lprops, align 4
  %9 = load ptr, ptr @dfs_rootdir, align 4
  %10 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.276, i16 noundef zeroext 384, ptr noundef %9, ptr noundef null, ptr noundef nonnull @dfs_global_fops) #15
  store ptr %10, ptr @dfs_chk_fs, align 4
  %11 = load ptr, ptr @dfs_rootdir, align 4
  %12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.277, i16 noundef zeroext 384, ptr noundef %11, ptr noundef null, ptr noundef nonnull @dfs_global_fops) #15
  store ptr %12, ptr @dfs_tst_rcvry, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dbg_debugfs_exit() local_unnamed_addr #0 {
  %1 = load ptr, ptr @dfs_rootdir, align 4
  tail call void @debugfs_remove(ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_ro_mode(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_debugging_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 296) #18
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  store ptr %3, ptr %4, align 4
  %5 = icmp eq ptr %3, null
  %6 = select i1 %5, i32 -12, i32 0
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_debugging_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_search_zbranch(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_read_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_validate_entry(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @add_inode(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ubifs_ino_node, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %19, %3
  %9 = phi ptr [ %21, %19 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.fsck_inode, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %5, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2
  br label %19

15:                                               ; preds = %8
  %16 = icmp ugt i32 %5, %11
  br i1 %16, label %17, label %90

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi ptr [ %14, %13 ], [ %18, %17 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %8

23:                                               ; preds = %19
  %24 = ptrtoint ptr %9 to i32
  br label %25

25:                                               ; preds = %23, %3
  %26 = phi i32 [ %24, %23 ], [ 0, %3 ]
  %27 = phi ptr [ %20, %23 ], [ %1, %3 ]
  %28 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = icmp ugt i32 %5, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.333, i32 noundef %29) #15
  br label %90

32:                                               ; preds = %25
  %33 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %34 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3392, i32 noundef 96) #18
  %35 = icmp eq ptr %34, null
  br i1 %35, label %90, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %0, align 8
  %38 = tail call ptr @ilookup(ptr noundef %37, i32 noundef %5) #15
  %39 = getelementptr inbounds %struct.fsck_inode, ptr %34, i32 0, i32 1
  store i32 %5, ptr %39, align 4
  %40 = icmp eq ptr %38, null
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.ubifs_ino_node, ptr %2, i32 0, i32 10
  %43 = load i32, ptr %42, align 1
  %44 = getelementptr inbounds %struct.fsck_inode, ptr %34, i32 0, i32 3
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.ubifs_ino_node, ptr %2, i32 0, i32 3
  %46 = load i64, ptr %45, align 1
  %47 = getelementptr inbounds %struct.fsck_inode, ptr %34, i32 0, i32 7
  store i64 %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.ubifs_ino_node, ptr %2, i32 0, i32 16
  %49 = load i32, ptr %48, align 1
  %50 = getelementptr inbounds %struct.fsck_inode, ptr %34, i32 0, i32 4
  store i32 %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.ubifs_ino_node, ptr %2, i32 0, i32 17
  %52 = load i32, ptr %51, align 1
  %53 = getelementptr inbounds %struct.fsck_inode, ptr %34, i32 0, i32 8
  store i32 %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.ubifs_ino_node, ptr %2, i32 0, i32 19
  %55 = load i32, ptr %54, align 1
  %56 = getelementptr inbounds %struct.fsck_inode, ptr %34, i32 0, i32 12
  store i32 %55, ptr %56, align 8
  %57 = getelementptr inbounds %struct.ubifs_ino_node, ptr %2, i32 0, i32 13
  %58 = load i32, ptr %57, align 1
  %59 = trunc i32 %58 to i16
  %60 = getelementptr inbounds %struct.fsck_inode, ptr %34, i32 0, i32 2
  store i16 %59, ptr %60, align 8
  br label %80

61:                                               ; preds = %36
  %62 = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 11
  %63 = load i32, ptr %62, align 8
  %64 = getelementptr inbounds %struct.fsck_inode, ptr %34, i32 0, i32 3
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 13
  %66 = load i64, ptr %65, align 8
  %67 = getelementptr inbounds %struct.fsck_inode, ptr %34, i32 0, i32 7
  store i64 %66, ptr %67, align 8
  %68 = getelementptr inbounds %struct.ubifs_inode, ptr %38, i32 0, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.fsck_inode, ptr %34, i32 0, i32 4
  store i32 %69, ptr %70, align 8
  %71 = getelementptr inbounds %struct.ubifs_inode, ptr %38, i32 0, i32 3
  %72 = load i32, ptr %71, align 8
  %73 = getelementptr inbounds %struct.fsck_inode, ptr %34, i32 0, i32 8
  store i32 %72, ptr %73, align 8
  %74 = getelementptr inbounds %struct.ubifs_inode, ptr %38, i32 0, i32 5
  %75 = load i32, ptr %74, align 8
  %76 = getelementptr inbounds %struct.fsck_inode, ptr %34, i32 0, i32 12
  store i32 %75, ptr %76, align 8
  %77 = load i16, ptr %38, align 8
  %78 = getelementptr inbounds %struct.fsck_inode, ptr %34, i32 0, i32 2
  store i16 %77, ptr %78, align 8
  tail call void @iput(ptr noundef nonnull %38) #15
  %79 = load i16, ptr %78, align 8
  br label %80

80:                                               ; preds = %61, %41
  %81 = phi i16 [ %79, %61 ], [ %59, %41 ]
  %82 = and i16 %81, -4096
  %83 = icmp eq i16 %82, 16384
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.fsck_inode, ptr %34, i32 0, i32 9
  store i64 160, ptr %85, align 8
  %86 = getelementptr inbounds %struct.fsck_inode, ptr %34, i32 0, i32 6
  store i32 2, ptr %86, align 8
  br label %87

87:                                               ; preds = %84, %80
  store i32 %26, ptr %34, align 8
  %88 = getelementptr inbounds %struct.rb_node, ptr %34, i32 0, i32 1
  store ptr null, ptr %88, align 4
  %89 = getelementptr inbounds %struct.rb_node, ptr %34, i32 0, i32 2
  store ptr null, ptr %89, align 8
  store ptr %34, ptr %27, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %34, ptr noundef %1) #15
  br label %90

90:                                               ; preds = %87, %32, %31, %15
  %91 = phi ptr [ inttoptr (i32 -22 to ptr), %31 ], [ %34, %87 ], [ inttoptr (i32 -12 to ptr), %32 ], [ %9, %15 ]
  ret ptr %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @read_add_inode(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.ubifs_key, align 8
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store ptr null, ptr %6, align 4, !annotation !10
  %7 = load ptr, ptr %1, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %20, %3
  %10 = phi ptr [ %22, %20 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.fsck_inode, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %2
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 2
  br label %20

16:                                               ; preds = %9
  %17 = icmp ult i32 %12, %2
  br i1 %17, label %18, label %58

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 1
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi ptr [ %15, %14 ], [ %19, %18 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %9

24:                                               ; preds = %20, %3
  store i32 %2, ptr %5, align 8
  %25 = getelementptr inbounds [2 x i32], ptr %5, i32 0, i32 1
  store i32 0, ptr %25, align 4
  %26 = call i32 @ubifs_lookup_level0(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4) #15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.334, i32 noundef %2) #15
  br label %58

29:                                               ; preds = %24
  %30 = icmp slt i32 %26, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.335, i32 noundef %26, i32 noundef %2) #15
  %32 = inttoptr i32 %26 to ptr
  br label %58

33:                                               ; preds = %29
  %34 = load ptr, ptr %6, align 4
  %35 = load i32, ptr %4, align 4
  %36 = getelementptr %struct.ubifs_znode, ptr %34, i32 0, i32 13, i32 %35
  %37 = getelementptr %struct.ubifs_znode, ptr %34, i32 0, i32 13, i32 %35, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = icmp ult i32 %38, 160
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.336, i32 noundef %2, i32 noundef %38) #15
  br label %58

41:                                               ; preds = %33
  %42 = call noalias align 64 ptr @__kmalloc(i32 noundef %38, i32 noundef 3136) #17
  %43 = icmp eq ptr %42, null
  br i1 %43, label %58, label %44

44:                                               ; preds = %41
  %45 = call i32 @ubifs_tnc_read_node(ptr noundef %0, ptr noundef %36, ptr noundef nonnull %42) #15
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = getelementptr %struct.ubifs_znode, ptr %34, i32 0, i32 13, i32 %35, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr %struct.ubifs_znode, ptr %34, i32 0, i32 13, i32 %35, i32 3
  %51 = load i32, ptr %50, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.337, i32 noundef %49, i32 noundef %51, i32 noundef %45) #15
  call void @kfree(ptr noundef nonnull %42) #15
  %52 = inttoptr i32 %45 to ptr
  br label %58

53:                                               ; preds = %44
  %54 = call fastcc ptr @add_inode(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %42)
  call void @kfree(ptr noundef nonnull %42) #15
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = ptrtoint ptr %54 to i32
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.338, i32 noundef %57, i32 noundef %2) #15
  br label %58

58:                                               ; preds = %56, %53, %47, %41, %40, %31, %28, %16
  %59 = phi ptr [ %32, %31 ], [ inttoptr (i32 -22 to ptr), %40 ], [ %52, %47 ], [ %54, %56 ], [ inttoptr (i32 -2 to ptr), %28 ], [ %54, %53 ], [ inttoptr (i32 -12 to ptr), %41 ], [ %10, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret ptr %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_lookup_level0(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_search_bud(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_bytes(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dfs_file_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %9, i32 0, i32 194
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ubifs_debug_info, ptr %11, i32 0, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %7, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.ubifs_debug_info, ptr %11, i32 0, i32 19
  %17 = load i8, ptr %16, align 4
  br label %66

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.ubifs_debug_info, ptr %11, i32 0, i32 26
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %7, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ubifs_debug_info, ptr %11, i32 0, i32 19
  %24 = load i8, ptr %23, align 4
  %25 = lshr i8 %24, 1
  br label %66

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.ubifs_debug_info, ptr %11, i32 0, i32 27
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %7, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ubifs_debug_info, ptr %11, i32 0, i32 19
  %32 = load i8, ptr %31, align 4
  %33 = lshr i8 %32, 2
  br label %66

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.ubifs_debug_info, ptr %11, i32 0, i32 28
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %7, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ubifs_debug_info, ptr %11, i32 0, i32 19
  %40 = load i8, ptr %39, align 4
  %41 = lshr i8 %40, 3
  br label %66

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.ubifs_debug_info, ptr %11, i32 0, i32 29
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %7, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ubifs_debug_info, ptr %11, i32 0, i32 19
  %48 = load i8, ptr %47, align 4
  %49 = lshr i8 %48, 4
  br label %66

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.ubifs_debug_info, ptr %11, i32 0, i32 30
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %7, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ubifs_debug_info, ptr %11, i32 0, i32 19
  %56 = load i8, ptr %55, align 4
  %57 = lshr i8 %56, 5
  br label %66

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.ubifs_debug_info, ptr %11, i32 0, i32 31
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %7, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.ubifs_info, ptr %9, i32 0, i32 81
  %64 = load i8, ptr %63, align 8
  %65 = lshr i8 %64, 2
  br label %66

66:                                               ; preds = %62, %54, %46, %38, %30, %22, %15
  %67 = phi i8 [ %17, %15 ], [ %25, %22 ], [ %33, %30 ], [ %41, %38 ], [ %49, %46 ], [ %57, %54 ], [ %65, %62 ]
  %68 = and i8 %67, 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #15
  %69 = or i8 %68, 48
  store i8 %69, ptr %5, align 1
  %70 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  store i8 10, ptr %70, align 1
  %71 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  store i8 0, ptr %71, align 1
  %72 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef 2) #15
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #15
  br label %73

73:                                               ; preds = %66, %58
  %74 = phi i32 [ %72, %66 ], [ -22, %58 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dfs_file_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [8 x i8], align 8
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %7, i32 0, i32 194
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ubifs_debug_info, ptr %9, i32 0, i32 22
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  tail call void @ubifs_dump_lprops(ptr noundef %7)
  br label %120

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.ubifs_debug_info, ptr %9, i32 0, i32 23
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %11, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ubifs_info, ptr %7, i32 0, i32 87
  tail call void @ubifs_dump_budg(ptr noundef %7, ptr noundef %21)
  br label %120

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ubifs_debug_info, ptr %9, i32 0, i32 24
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %11, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ubifs_info, ptr %7, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %27) #15
  tail call void @ubifs_dump_tnc(ptr noundef %7)
  tail call void @mutex_unlock(ptr noundef %27) #15
  br label %120

28:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  store i64 0, ptr %5, align 8, !annotation !10
  %29 = tail call i32 @llvm.umin.i32(i32 %2, i32 7) #15
  %30 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %29, i32 -1090519040) #19, !srcloc !25
  %31 = extractvalue { i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40, !prof !21

33:                                               ; preds = %28
  %34 = tail call ptr @llvm.thread.pointer() #15
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %35) #20, !srcloc !26
  %37 = and i32 %36, -13
  %38 = or i32 %37, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #15, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !28
  %39 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %29) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #15, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !28
  br label %40

40:                                               ; preds = %33, %28
  %41 = phi i32 [ %39, %33 ], [ %29, %28 ]
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43, !prof !21

43:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %120

44:                                               ; preds = %40
  %45 = load i8, ptr %5, align 8
  %46 = icmp eq i8 %45, 49
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %50

48:                                               ; preds = %44
  %49 = icmp eq i8 %45, 48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br i1 %49, label %50, label %120

50:                                               ; preds = %48, %47
  %51 = phi i8 [ 1, %47 ], [ 0, %48 ]
  %52 = getelementptr inbounds %struct.ubifs_debug_info, ptr %9, i32 0, i32 25
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %11, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.ubifs_debug_info, ptr %9, i32 0, i32 19
  %57 = load i8, ptr %56, align 4
  %58 = and i8 %57, -2
  %59 = or i8 %58, %51
  store i8 %59, ptr %56, align 4
  br label %120

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.ubifs_debug_info, ptr %9, i32 0, i32 26
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %11, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ubifs_debug_info, ptr %9, i32 0, i32 19
  %66 = load i8, ptr %65, align 4
  %67 = shl nuw nsw i8 %51, 1
  %68 = and i8 %66, -3
  %69 = or i8 %68, %67
  store i8 %69, ptr %65, align 4
  br label %120

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.ubifs_debug_info, ptr %9, i32 0, i32 27
  %72 = load ptr, ptr %71, align 8
  %73 = icmp eq ptr %11, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.ubifs_debug_info, ptr %9, i32 0, i32 19
  %76 = load i8, ptr %75, align 4
  %77 = shl nuw nsw i8 %51, 2
  %78 = and i8 %76, -5
  %79 = or i8 %78, %77
  store i8 %79, ptr %75, align 4
  br label %120

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.ubifs_debug_info, ptr %9, i32 0, i32 28
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %11, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.ubifs_debug_info, ptr %9, i32 0, i32 19
  %86 = load i8, ptr %85, align 4
  %87 = shl nuw nsw i8 %51, 3
  %88 = and i8 %86, -9
  %89 = or i8 %88, %87
  store i8 %89, ptr %85, align 4
  br label %120

90:                                               ; preds = %80
  %91 = getelementptr inbounds %struct.ubifs_debug_info, ptr %9, i32 0, i32 29
  %92 = load ptr, ptr %91, align 8
  %93 = icmp eq ptr %11, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.ubifs_debug_info, ptr %9, i32 0, i32 19
  %96 = load i8, ptr %95, align 4
  %97 = shl nuw nsw i8 %51, 4
  %98 = and i8 %96, -17
  %99 = or i8 %98, %97
  store i8 %99, ptr %95, align 4
  br label %120

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.ubifs_debug_info, ptr %9, i32 0, i32 30
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %11, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.ubifs_debug_info, ptr %9, i32 0, i32 19
  %106 = load i8, ptr %105, align 4
  %107 = shl nuw nsw i8 %51, 5
  %108 = and i8 %106, -33
  %109 = or i8 %108, %107
  store i8 %109, ptr %105, align 4
  br label %120

110:                                              ; preds = %100
  %111 = getelementptr inbounds %struct.ubifs_debug_info, ptr %9, i32 0, i32 31
  %112 = load ptr, ptr %111, align 8
  %113 = icmp eq ptr %11, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.ubifs_info, ptr %7, i32 0, i32 81
  %116 = load i8, ptr %115, align 8
  %117 = select i1 %46, i8 4, i8 0
  %118 = and i8 %116, -5
  %119 = or i8 %118, %117
  store i8 %119, ptr %115, align 8
  br label %120

120:                                              ; preds = %114, %110, %104, %94, %84, %74, %64, %55, %48, %43, %26, %20, %15
  %121 = phi i32 [ %2, %15 ], [ %2, %20 ], [ %2, %26 ], [ -22, %48 ], [ -22, %110 ], [ %2, %64 ], [ %2, %84 ], [ %2, %104 ], [ %2, %114 ], [ %2, %94 ], [ %2, %74 ], [ %2, %55 ], [ -14, %43 ]
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dfs_file_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %4, ptr %5, align 8
  %6 = tail call i32 @nonseekable_open(ptr noundef %0, ptr noundef %1) #15
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dfs_global_file_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr @dfs_chk_gen, align 4
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = load i8, ptr @ubifs_dbg, align 4
  br label %42

12:                                               ; preds = %4
  %13 = load ptr, ptr @dfs_chk_index, align 4
  %14 = icmp eq ptr %7, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i8, ptr @ubifs_dbg, align 4
  %17 = lshr i8 %16, 1
  br label %42

18:                                               ; preds = %12
  %19 = load ptr, ptr @dfs_chk_orph, align 4
  %20 = icmp eq ptr %7, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8, ptr @ubifs_dbg, align 4
  %23 = lshr i8 %22, 2
  br label %42

24:                                               ; preds = %18
  %25 = load ptr, ptr @dfs_chk_lprops, align 4
  %26 = icmp eq ptr %7, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8, ptr @ubifs_dbg, align 4
  %29 = lshr i8 %28, 3
  br label %42

30:                                               ; preds = %24
  %31 = load ptr, ptr @dfs_chk_fs, align 4
  %32 = icmp eq ptr %7, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i8, ptr @ubifs_dbg, align 4
  %35 = lshr i8 %34, 4
  br label %42

36:                                               ; preds = %30
  %37 = load ptr, ptr @dfs_tst_rcvry, align 4
  %38 = icmp eq ptr %7, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i8, ptr @ubifs_dbg, align 4
  %41 = lshr i8 %40, 5
  br label %42

42:                                               ; preds = %39, %33, %27, %21, %15, %10
  %43 = phi i8 [ %11, %10 ], [ %17, %15 ], [ %23, %21 ], [ %29, %27 ], [ %35, %33 ], [ %41, %39 ]
  %44 = and i8 %43, 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #15
  %45 = or i8 %44, 48
  store i8 %45, ptr %5, align 1
  %46 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  store i8 10, ptr %46, align 1
  %47 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  store i8 0, ptr %47, align 1
  %48 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef 2) #15
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #15
  br label %49

49:                                               ; preds = %42, %36
  %50 = phi i32 [ %48, %42 ], [ -22, %36 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dfs_global_file_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [8 x i8], align 8
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  store i64 0, ptr %5, align 8, !annotation !10
  %8 = tail call i32 @llvm.umin.i32(i32 %2, i32 7) #15
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %8, i32 -1090519040) #19, !srcloc !25
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19, !prof !21

12:                                               ; preds = %4
  %13 = tail call ptr @llvm.thread.pointer() #15
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #20, !srcloc !26
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #15, !srcloc !27
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !28
  %18 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %8) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #15, !srcloc !27
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !28
  br label %19

19:                                               ; preds = %12, %4
  %20 = phi i32 [ %18, %12 ], [ %8, %4 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22, !prof !21

22:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %77

23:                                               ; preds = %19
  %24 = load i8, ptr %5, align 8
  %25 = icmp eq i8 %24, 49
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %29

27:                                               ; preds = %23
  %28 = icmp eq i8 %24, 48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br i1 %28, label %29, label %77

29:                                               ; preds = %27, %26
  %30 = phi i8 [ 1, %26 ], [ 0, %27 ]
  %31 = load ptr, ptr @dfs_chk_gen, align 4
  %32 = icmp eq ptr %7, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i8, ptr @ubifs_dbg, align 4
  %35 = and i8 %34, -2
  %36 = or i8 %35, %30
  store i8 %36, ptr @ubifs_dbg, align 4
  br label %77

37:                                               ; preds = %29
  %38 = load ptr, ptr @dfs_chk_index, align 4
  %39 = icmp eq ptr %7, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i8, ptr @ubifs_dbg, align 4
  %42 = shl nuw nsw i8 %30, 1
  %43 = and i8 %41, -3
  %44 = or i8 %43, %42
  store i8 %44, ptr @ubifs_dbg, align 4
  br label %77

45:                                               ; preds = %37
  %46 = load ptr, ptr @dfs_chk_orph, align 4
  %47 = icmp eq ptr %7, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i8, ptr @ubifs_dbg, align 4
  %50 = shl nuw nsw i8 %30, 2
  %51 = and i8 %49, -5
  %52 = or i8 %51, %50
  store i8 %52, ptr @ubifs_dbg, align 4
  br label %77

53:                                               ; preds = %45
  %54 = load ptr, ptr @dfs_chk_lprops, align 4
  %55 = icmp eq ptr %7, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i8, ptr @ubifs_dbg, align 4
  %58 = shl nuw nsw i8 %30, 3
  %59 = and i8 %57, -9
  %60 = or i8 %59, %58
  store i8 %60, ptr @ubifs_dbg, align 4
  br label %77

61:                                               ; preds = %53
  %62 = load ptr, ptr @dfs_chk_fs, align 4
  %63 = icmp eq ptr %7, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i8, ptr @ubifs_dbg, align 4
  %66 = shl nuw nsw i8 %30, 4
  %67 = and i8 %65, -17
  %68 = or i8 %67, %66
  store i8 %68, ptr @ubifs_dbg, align 4
  br label %77

69:                                               ; preds = %61
  %70 = load ptr, ptr @dfs_tst_rcvry, align 4
  %71 = icmp eq ptr %7, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i8, ptr @ubifs_dbg, align 4
  %74 = shl nuw nsw i8 %30, 5
  %75 = and i8 %73, -33
  %76 = or i8 %75, %74
  store i8 %76, ptr @ubifs_dbg, align 4
  br label %77

77:                                               ; preds = %72, %69, %64, %56, %48, %40, %33, %27, %22
  %78 = phi i32 [ -22, %27 ], [ -22, %69 ], [ %2, %40 ], [ %2, %56 ], [ %2, %72 ], [ %2, %64 ], [ %2, %48 ], [ %2, %33 ], [ -14, %22 ]
  ret i32 %78
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #14

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2153711714, i64 2153712196, i64 2153711751, i64 2153711807, i64 2153711841, i64 2153711865, i64 2153711906, i64 2153711927, i64 2153711955, i64 2153711989}
!10 = !{!"auto-init"}
!11 = !{i64 2151602417}
!12 = !{i64 2151602259}
!13 = !{i64 2151602561}
!14 = !{i64 2149464154}
!15 = !{i64 2149008578}
!16 = !{i64 2149004402}
!17 = !{i64 2149004477, i64 2149004504, i64 2149004551, i64 2149004573, i64 2149004601, i64 2149004621}
!18 = !{i64 2149031581}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.peeled.count", i32 3}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2153684675}
!23 = !{i64 2153684801}
!24 = !{!"branch_weights", i32 2000, i32 2002}
!25 = !{i64 2151323402, i64 2151323427}
!26 = !{i64 3819514}
!27 = !{i64 3819711}
!28 = !{i64 2151304990}
