; ModuleID = '/llk/IR/block/blk-mq-debugfs.c_pt.bc'
source_filename = "../block/blk-mq-debugfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___blk_mq_debugfs_rq_show:\09\09\09\09\09"
module asm "\09.asciz \09\22__blk_mq_debugfs_rq_show\22\09\09\09\09\09"
module asm "__kstrtabns___blk_mq_debugfs_rq_show:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_debugfs_rq_show:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_debugfs_rq_show\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_debugfs_rq_show:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.blk_mq_debugfs_attr = type { ptr, i16, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.lockdep_map = type {}
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.28, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.29, %union.anon.30, %union.anon.31, %union.anon.36, ptr, ptr }
%union.anon.28 = type { %struct.list_head }
%union.anon.29 = type { %struct.hlist_node }
%union.anon.30 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.31 = type { %struct.anon.35 }
%struct.anon.35 = type { i32, %struct.list_head, ptr }
%union.anon.36 = type { i64, [8 x i8] }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.78, %struct.list_head, %struct.list_head, %union.anon.79 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.1, ptr }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.76 }
%union.anon.76 = type { i64 }
%union.anon.78 = type { %struct.list_head }
%union.anon.79 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.71 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.75 = type { ptr }
%struct.elevator_type = type { ptr, %struct.elevator_mq_ops, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.blk_mq_hw_ctx = type { %struct.anon.27, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [16 x i8] }
%struct.anon.27 = type { %struct.spinlock, %struct.list_head, i32, [48 x i8] }
%struct.cpumask = type { [1 x i32] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.rq_qos = type { ptr, ptr, i32, ptr, ptr }
%struct.blk_mq_ctx = type { %struct.anon.26, i32, [3 x i16], [3 x ptr], ptr, ptr, %struct.kobject, [60 x i8] }
%struct.anon.26 = type { %struct.spinlock, [3 x %struct.list_head], [36 x i8] }
%struct.rq_qos_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.show_busy_params = type { ptr, ptr }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%p {.op=\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c", .cmd_flags=\00", align 1
@cmd_flag_name = internal unnamed_addr constant [25 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr null, ptr @.str.28, ptr @.str.29], align 4
@.str.5 = private unnamed_addr constant [13 x i8] c", .rq_flags=\00", align 1
@rqf_name = internal unnamed_addr constant [23 x ptr] [ptr null, ptr @.str.30, ptr null, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr null, ptr null, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr null, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr null, ptr @.str.46], align 4
@.str.6 = private unnamed_addr constant [12 x i8] c", .state=%s\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c", .tag=%d, .internal_tag=%d\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@__kstrtab___blk_mq_debugfs_rq_show = external dso_local constant [0 x i8], align 1
@__kstrtabns___blk_mq_debugfs_rq_show = external dso_local constant [0 x i8], align 1
@__ksymtab___blk_mq_debugfs_rq_show = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__blk_mq_debugfs_rq_show to i32), ptr @__kstrtab___blk_mq_debugfs_rq_show, ptr @__kstrtabns___blk_mq_debugfs_rq_show }, section "___ksymtab_gpl+__blk_mq_debugfs_rq_show", align 4
@__kstrtab_blk_mq_debugfs_rq_show = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_debugfs_rq_show = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_debugfs_rq_show = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_debugfs_rq_show to i32), ptr @__kstrtab_blk_mq_debugfs_rq_show, ptr @__kstrtabns_blk_mq_debugfs_rq_show }, section "___ksymtab_gpl+blk_mq_debugfs_rq_show", align 4
@blk_mq_debugfs_queue_attrs = internal constant [7 x %struct.blk_mq_debugfs_attr] [%struct.blk_mq_debugfs_attr { ptr @.str.52, i16 256, ptr @queue_poll_stat_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.53, i16 256, ptr null, ptr null, ptr @queue_requeue_list_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.54, i16 384, ptr @queue_pm_only_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.55, i16 384, ptr @queue_state_show, ptr @queue_state_write, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.56, i16 384, ptr @queue_write_hint_show, ptr @queue_write_hint_store, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.57, i16 256, ptr @queue_zone_wlock_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr zeroinitializer], align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"hctx%u\00", align 1
@blk_mq_debugfs_hctx_attrs = internal constant [14 x %struct.blk_mq_debugfs_attr] [%struct.blk_mq_debugfs_attr { ptr @.str.55, i16 256, ptr @hctx_state_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.96, i16 256, ptr @hctx_flags_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.97, i16 256, ptr null, ptr null, ptr @hctx_dispatch_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.98, i16 256, ptr @hctx_busy_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.99, i16 256, ptr @hctx_ctx_map_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.100, i16 256, ptr @hctx_tags_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.101, i16 256, ptr @hctx_tags_bitmap_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.102, i16 256, ptr @hctx_sched_tags_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.103, i16 256, ptr @hctx_sched_tags_bitmap_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.88, i16 384, ptr @hctx_run_show, ptr @hctx_run_write, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.104, i16 256, ptr @hctx_active_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.105, i16 256, ptr @hctx_dispatch_busy_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.106, i16 256, ptr @hctx_type_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr zeroinitializer], align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"sched\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"rqos\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"FAILFAST_DEV\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"FAILFAST_TRANSPORT\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"FAILFAST_DRIVER\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"SYNC\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"META\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"PRIO\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"NOMERGE\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"IDLE\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"INTEGRITY\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"FUA\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"PREFLUSH\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"RAHEAD\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"BACKGROUND\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"NOWAIT\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"NOUNMAP\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"POLLED\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"STARTED\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"SOFTBARRIER\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"FLUSH_SEQ\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"MIXED_MERGE\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"MQ_INFLIGHT\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"DONTPREP\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"QUIET\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"ELVPRIV\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"IO_STAT\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"PM\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"HASHED\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"STATS\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"SPECIAL_PAYLOAD\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"ZONE_WRITE_LOCKED\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"MQ_POLL_SLEPT\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"ELV\00", align 1
@blk_mq_rq_state_name.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"block/blk-mq-debugfs.c\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"(?)\00", align 1
@blk_mq_rq_state_name_array = internal unnamed_addr constant [3 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51], align 4
@.str.49 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"in_flight\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"complete\00", align 1
@blk_mq_debugfs_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @blk_mq_debugfs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @blk_mq_debugfs_open, ptr null, ptr @blk_mq_debugfs_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@blk_mq_debugfs_open.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"poll_stat\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"requeue_list\00", align 1
@queue_requeue_list_seq_ops = internal constant %struct.seq_operations { ptr @queue_requeue_list_start, ptr @queue_requeue_list_stop, ptr @queue_requeue_list_next, ptr @blk_mq_debugfs_rq_show }, align 4
@.str.54 = private unnamed_addr constant [8 x i8] c"pm_only\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"write_hints\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"zone_wlock\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"read  (%d Bytes): \00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"write (%d Bytes): \00", align 1
@.str.61 = private unnamed_addr constant [42 x i8] c"samples=%d, mean=%llu, min=%llu, max=%llu\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"samples=0\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@blk_queue_flag_name = internal unnamed_addr constant [30 x ptr] [ptr @.str.64, ptr @.str.65, ptr null, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.39, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.23, ptr @.str.80, ptr @.str.42, ptr null, ptr @.str.81, ptr null, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.27], align 4
@.str.64 = private unnamed_addr constant [8 x i8] c"STOPPED\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"DYING\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"NOMERGES\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"SAME_COMP\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"FAIL_IO\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"NONROT\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"DISCARD\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"NOXMERGES\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"ADD_RANDOM\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"SECERASE\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"SAME_FORCE\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"DEAD\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"INIT_DONE\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"STABLE_WRITES\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"POLL\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"WC\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"DAX\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"REGISTERED\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"QUIESCED\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"PCI_P2PDMA\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"ZONE_RESETALL\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"RQ_ALLOC_TIME\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"HCTX_ACTIVE\00", align 1
@.str.87 = private unnamed_addr constant [26 x i8] c"\013%s: operation too long\0A\00", align 1
@__func__.queue_state_write = private unnamed_addr constant [18 x i8] c"queue_state_write\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"run\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"kick\00", align 1
@.str.91 = private unnamed_addr constant [34 x i8] c"\013%s: unsupported operation '%s'\0A\00", align 1
@.str.92 = private unnamed_addr constant [36 x i8] c"\013%s: use 'run', 'start' or 'kick'\0A\00", align 1
@.str.95 = private unnamed_addr constant [14 x i8] c"hint%d: %llu\0A\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"dispatch\00", align 1
@hctx_dispatch_seq_ops = internal constant %struct.seq_operations { ptr @hctx_dispatch_start, ptr @hctx_dispatch_stop, ptr @hctx_dispatch_next, ptr @blk_mq_debugfs_rq_show }, align 4
@.str.98 = private unnamed_addr constant [5 x i8] c"busy\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"ctx_map\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"tags\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"tags_bitmap\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"sched_tags\00", align 1
@.str.103 = private unnamed_addr constant [18 x i8] c"sched_tags_bitmap\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"dispatch_busy\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"TAG_ACTIVE\00", align 1
@.str.108 = private unnamed_addr constant [14 x i8] c"SCHED_RESTART\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"INACTIVE\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"alloc_policy=\00", align 1
@alloc_policy_name = internal unnamed_addr constant [2 x ptr] [ptr @.str.112, ptr @.str.113], align 4
@.str.111 = private unnamed_addr constant [2 x i8] c" \00", align 1
@hctx_flag_name = internal unnamed_addr constant [7 x ptr] [ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr null, ptr @.str.118, ptr @.str.119], align 4
@.str.112 = private unnamed_addr constant [5 x i8] c"FIFO\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"RR\00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"SHOULD_MERGE\00", align 1
@.str.115 = private unnamed_addr constant [17 x i8] c"TAG_QUEUE_SHARED\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"STACKING\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"TAG_HCTX_SHARED\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"BLOCKING\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"NO_SCHED\00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"nr_tags=%u\0A\00", align 1
@.str.121 = private unnamed_addr constant [21 x i8] c"nr_reserved_tags=%u\0A\00", align 1
@.str.122 = private unnamed_addr constant [18 x i8] c"active_queues=%d\0A\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"\0Abitmap_tags:\0A\00", align 1
@.str.124 = private unnamed_addr constant [18 x i8] c"\0Abreserved_tags:\0A\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@hctx_types = internal unnamed_addr constant [3 x ptr] [ptr @.str.128, ptr @.str.129, ptr @.str.130], align 4
@.str.128 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"cpu%u\00", align 1
@blk_mq_debugfs_ctx_attrs = internal constant [4 x %struct.blk_mq_debugfs_attr] [%struct.blk_mq_debugfs_attr { ptr @.str.132, i16 256, ptr null, ptr null, ptr @ctx_default_rq_list_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.133, i16 256, ptr null, ptr null, ptr @ctx_read_rq_list_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.134, i16 256, ptr null, ptr null, ptr @ctx_poll_rq_list_seq_ops }, %struct.blk_mq_debugfs_attr zeroinitializer], align 4
@.str.132 = private unnamed_addr constant [16 x i8] c"default_rq_list\00", align 1
@ctx_default_rq_list_seq_ops = internal constant %struct.seq_operations { ptr @ctx_default_rq_list_start, ptr @ctx_default_rq_list_stop, ptr @ctx_default_rq_list_next, ptr @blk_mq_debugfs_rq_show }, align 4
@.str.133 = private unnamed_addr constant [13 x i8] c"read_rq_list\00", align 1
@ctx_read_rq_list_seq_ops = internal constant %struct.seq_operations { ptr @ctx_read_rq_list_start, ptr @ctx_read_rq_list_stop, ptr @ctx_read_rq_list_next, ptr @blk_mq_debugfs_rq_show }, align 4
@.str.134 = private unnamed_addr constant [13 x i8] c"poll_rq_list\00", align 1
@ctx_poll_rq_list_seq_ops = internal constant %struct.seq_operations { ptr @ctx_poll_rq_list_start, ptr @ctx_poll_rq_list_stop, ptr @ctx_poll_rq_list_next, ptr @blk_mq_debugfs_rq_show }, align 4
@.str.135 = private unnamed_addr constant [4 x i8] c"wbt\00", align 1
@.str.136 = private unnamed_addr constant [8 x i8] c"latency\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"cost\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"ioprio\00", align 1
@.str.139 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab___blk_mq_debugfs_rq_show, ptr @__ksymtab_blk_mq_debugfs_rq_show], section "llvm.metadata"
@switch.table.blk_mq_debugfs_register_rqos = private unnamed_addr constant [4 x ptr] [ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__blk_mq_debugfs_rq_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 255
  %9 = tail call ptr @blk_op_str(i32 noundef %8) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %1) #11
  %10 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(8) @.str.1)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %8) #11
  br label %14

13:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %9) #11
  br label %14

14:                                               ; preds = %13, %12
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.4) #11
  %15 = load i32, ptr %6, align 4
  %16 = and i32 %15, -256
  br label %17

17:                                               ; preds = %33, %14
  %18 = phi i32 [ 0, %14 ], [ %35, %33 ]
  %19 = phi i1 [ false, %14 ], [ %34, %33 ]
  %20 = shl nuw i32 1, %18
  %21 = and i32 %16, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %17
  br i1 %19, label %24, label %25

24:                                               ; preds = %23
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.12) #11
  br label %25

25:                                               ; preds = %24, %23
  %26 = icmp ult i32 %18, 25
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = getelementptr ptr, ptr @cmd_flag_name, i32 %18
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %29) #11
  br label %33

32:                                               ; preds = %27, %25
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %18) #11
  br label %33

33:                                               ; preds = %32, %31, %17
  %34 = phi i1 [ true, %31 ], [ true, %32 ], [ %19, %17 ]
  %35 = add nuw nsw i32 %18, 1
  %36 = icmp eq i32 %35, 32
  br i1 %36, label %37, label %17

37:                                               ; preds = %33
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.5) #11
  %38 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  br label %40

40:                                               ; preds = %56, %37
  %41 = phi i32 [ 0, %37 ], [ %58, %56 ]
  %42 = phi i1 [ false, %37 ], [ %57, %56 ]
  %43 = shl nuw i32 1, %41
  %44 = and i32 %43, %39
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %40
  br i1 %42, label %47, label %48

47:                                               ; preds = %46
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.12) #11
  br label %48

48:                                               ; preds = %47, %46
  %49 = icmp ult i32 %41, 23
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  %51 = getelementptr ptr, ptr @rqf_name, i32 %41
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %52) #11
  br label %56

55:                                               ; preds = %50, %48
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %41) #11
  br label %56

56:                                               ; preds = %55, %54, %40
  %57 = phi i1 [ true, %54 ], [ true, %55 ], [ %42, %40 ]
  %58 = add nuw nsw i32 %41, 1
  %59 = icmp eq i32 %58, 32
  br i1 %59, label %60, label %40

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 20
  %62 = load volatile i32, ptr %61, align 8
  %63 = icmp ugt i32 %62, 2
  %64 = load i1, ptr @blk_mq_rq_state_name.__already_done, align 1
  %65 = xor i1 %64, true
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %68, !prof !8

67:                                               ; preds = %60
  store i1 true, ptr @blk_mq_rq_state_name.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 327, i32 noundef 9, ptr noundef null) #11
  br label %68

68:                                               ; preds = %67, %60
  br i1 %63, label %72, label %69

69:                                               ; preds = %68
  %70 = getelementptr [3 x ptr], ptr @blk_mq_rq_state_name_array, i32 0, i32 %62
  %71 = load ptr, ptr %70, align 4
  br label %72

72:                                               ; preds = %69, %68
  %73 = phi ptr [ %71, %69 ], [ @.str.48, %68 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %73) #11
  %74 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 6
  %77 = load i32, ptr %76, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %75, i32 noundef %77) #11
  %78 = getelementptr inbounds %struct.blk_mq_ops, ptr %5, i32 0, i32 17
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %72
  tail call void %79(ptr noundef %0, ptr noundef %1) #11
  br label %82

82:                                               ; preds = %81, %72
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.8) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_op_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_mq_debugfs_rq_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -56
  %4 = tail call i32 @__blk_mq_debugfs_rq_show(ptr noundef %0, ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 52
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 47
  store ptr %0, ptr %10, align 4
  %11 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.52, i16 noundef zeroext 256, ptr noundef nonnull %3, ptr noundef nonnull @blk_mq_debugfs_queue_attrs, ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.53, i16 noundef zeroext 256, ptr noundef nonnull %3, ptr noundef getelementptr inbounds ([7 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_queue_attrs, i32 0, i32 1), ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %13 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.54, i16 noundef zeroext 384, ptr noundef nonnull %3, ptr noundef getelementptr inbounds ([7 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_queue_attrs, i32 0, i32 2), ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %14 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.55, i16 noundef zeroext 384, ptr noundef nonnull %3, ptr noundef getelementptr inbounds ([7 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_queue_attrs, i32 0, i32 3), ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %15 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.56, i16 noundef zeroext 384, ptr noundef nonnull %3, ptr noundef getelementptr inbounds ([7 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_queue_attrs, i32 0, i32 4), ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %16 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.57, i16 noundef zeroext 256, ptr noundef nonnull %3, ptr noundef getelementptr inbounds ([7 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_queue_attrs, i32 0, i32 5), ptr noundef nonnull @blk_mq_debugfs_fops) #11
  br label %17

17:                                               ; preds = %7, %1
  %18 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %54, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 53
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %54

25:                                               ; preds = %21
  %26 = load ptr, ptr %2, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %54, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %19, align 4
  %30 = getelementptr inbounds %struct.elevator_type, ptr %29, i32 0, i32 9
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %54, label %33

33:                                               ; preds = %28
  %34 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.10, ptr noundef nonnull %26) #11
  store ptr %34, ptr %22, align 4
  %35 = icmp eq ptr %34, null
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  %37 = or i1 %35, %36
  br i1 %37, label %54, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %30, align 4
  %40 = getelementptr inbounds %struct.dentry, ptr %34, i32 0, i32 5
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 47
  store ptr %0, ptr %42, align 4
  %43 = load ptr, ptr %39, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %45, %38
  %46 = phi ptr [ %52, %45 ], [ %43, %38 ]
  %47 = phi ptr [ %51, %45 ], [ %39, %38 ]
  %48 = getelementptr inbounds %struct.blk_mq_debugfs_attr, ptr %47, i32 0, i32 1
  %49 = load i16, ptr %48, align 4
  %50 = tail call ptr @debugfs_create_file(ptr noundef nonnull %46, i16 noundef zeroext %49, ptr noundef %34, ptr noundef %47, ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %51 = getelementptr %struct.blk_mq_debugfs_attr, ptr %47, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %45

54:                                               ; preds = %45, %38, %33, %28, %25, %21, %17
  %55 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9
  %56 = load i32, ptr %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %109, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  br label %60

60:                                               ; preds = %105, %58
  %61 = phi i32 [ 0, %58 ], [ %106, %105 ]
  %62 = load ptr, ptr %59, align 4
  %63 = getelementptr ptr, ptr %62, i32 %61
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %64, i32 0, i32 29
  %66 = load ptr, ptr %65, align 32
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  tail call void @blk_mq_debugfs_register_hctx(ptr noundef %0, ptr noundef %64)
  br label %69

69:                                               ; preds = %68, %60
  %70 = load ptr, ptr %18, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %105, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %64, i32 0, i32 30
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %105

76:                                               ; preds = %72
  %77 = load ptr, ptr %65, align 32
  %78 = icmp eq ptr %77, null
  br i1 %78, label %105, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %70, align 4
  %81 = getelementptr inbounds %struct.elevator_type, ptr %80, i32 0, i32 10
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %105, label %84

84:                                               ; preds = %79
  %85 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.10, ptr noundef nonnull %77) #11
  store ptr %85, ptr %73, align 4
  %86 = icmp eq ptr %85, null
  %87 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  %88 = or i1 %86, %87
  br i1 %88, label %105, label %89

89:                                               ; preds = %84
  %90 = load ptr, ptr %81, align 4
  %91 = getelementptr inbounds %struct.dentry, ptr %85, i32 0, i32 5
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds %struct.inode, ptr %92, i32 0, i32 47
  store ptr %64, ptr %93, align 4
  %94 = load ptr, ptr %90, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %105, label %96

96:                                               ; preds = %96, %89
  %97 = phi ptr [ %103, %96 ], [ %94, %89 ]
  %98 = phi ptr [ %102, %96 ], [ %90, %89 ]
  %99 = getelementptr inbounds %struct.blk_mq_debugfs_attr, ptr %98, i32 0, i32 1
  %100 = load i16, ptr %99, align 4
  %101 = tail call ptr @debugfs_create_file(ptr noundef nonnull %97, i16 noundef zeroext %100, ptr noundef %85, ptr noundef %98, ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %102 = getelementptr %struct.blk_mq_debugfs_attr, ptr %98, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %96

105:                                              ; preds = %96, %89, %84, %79, %76, %72, %69
  %106 = add nuw i32 %61, 1
  %107 = load i32, ptr %55, align 8
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %60, label %109

109:                                              ; preds = %105, %54
  %110 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 4
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %113, %109
  %114 = phi ptr [ %116, %113 ], [ %111, %109 ]
  tail call void @blk_mq_debugfs_register_rqos(ptr noundef nonnull %114)
  %115 = getelementptr inbounds %struct.rq_qos, ptr %114, i32 0, i32 3
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %113

118:                                              ; preds = %113, %109
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_register_sched(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 52
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.elevator_type, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %5
  %13 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.10, ptr noundef nonnull %3) #11
  %14 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 53
  store ptr %13, ptr %14, align 4
  %15 = icmp eq ptr %13, null
  %16 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %17 = or i1 %15, %16
  br i1 %17, label %34, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 47
  store ptr %0, ptr %22, align 4
  %23 = load ptr, ptr %19, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %25, %18
  %26 = phi ptr [ %32, %25 ], [ %23, %18 ]
  %27 = phi ptr [ %31, %25 ], [ %19, %18 ]
  %28 = getelementptr inbounds %struct.blk_mq_debugfs_attr, ptr %27, i32 0, i32 1
  %29 = load i16, ptr %28, align 4
  %30 = tail call ptr @debugfs_create_file(ptr noundef nonnull %26, i16 noundef zeroext %29, ptr noundef %13, ptr noundef %27, ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %31 = getelementptr %struct.blk_mq_debugfs_attr, ptr %27, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %25

34:                                               ; preds = %25, %18, %12, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_register_hctx(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [20 x i8], align 1
  %4 = alloca [20 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %1, i32 0, i32 24
  %6 = load i32, ptr %5, align 4
  %7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 20, ptr noundef nonnull @.str.9, i32 noundef %6)
  %8 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 52
  %9 = load ptr, ptr %8, align 8
  %10 = call ptr @debugfs_create_dir(ptr noundef nonnull %4, ptr noundef %9) #11
  %11 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %1, i32 0, i32 29
  store ptr %10, ptr %11, align 32
  %12 = icmp eq ptr %10, null
  %13 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %14 = or i1 %12, %13
  br i1 %14, label %32, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 5
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 47
  store ptr %1, ptr %18, align 4
  %19 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.55, i16 noundef zeroext 256, ptr noundef nonnull %10, ptr noundef nonnull @blk_mq_debugfs_hctx_attrs, ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %20 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.96, i16 noundef zeroext 256, ptr noundef nonnull %10, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 1), ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %21 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.97, i16 noundef zeroext 256, ptr noundef nonnull %10, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 2), ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %22 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.98, i16 noundef zeroext 256, ptr noundef nonnull %10, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 3), ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %23 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.99, i16 noundef zeroext 256, ptr noundef nonnull %10, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 4), ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %24 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.100, i16 noundef zeroext 256, ptr noundef nonnull %10, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 5), ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %25 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.101, i16 noundef zeroext 256, ptr noundef nonnull %10, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 6), ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %26 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.102, i16 noundef zeroext 256, ptr noundef nonnull %10, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 7), ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %27 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.103, i16 noundef zeroext 256, ptr noundef nonnull %10, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 8), ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %28 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.88, i16 noundef zeroext 384, ptr noundef nonnull %10, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 9), ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %29 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.104, i16 noundef zeroext 256, ptr noundef nonnull %10, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 10), ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %30 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.105, i16 noundef zeroext 256, ptr noundef nonnull %10, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 11), ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %31 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.106, i16 noundef zeroext 256, ptr noundef nonnull %10, ptr noundef getelementptr inbounds ([14 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_hctx_attrs, i32 0, i32 12), ptr noundef nonnull @blk_mq_debugfs_fops) #11
  br label %32

32:                                               ; preds = %15, %2
  %33 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %1, i32 0, i32 14
  %34 = load i16, ptr %33, align 2
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %63, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %1, i32 0, i32 15
  br label %38

38:                                               ; preds = %58, %36
  %39 = phi i32 [ 0, %36 ], [ %59, %58 ]
  %40 = load ptr, ptr %37, align 16
  %41 = getelementptr ptr, ptr %40, i32 %39
  %42 = load ptr, ptr %41, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %3, i8 0, i32 20, i1 false) #11, !annotation !9
  %43 = getelementptr inbounds %struct.blk_mq_ctx, ptr %42, i32 0, i32 1
  %44 = load i32, ptr %43, align 64
  %45 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 20, ptr noundef nonnull @.str.131, i32 noundef %44) #11
  %46 = load ptr, ptr %11, align 32
  %47 = call ptr @debugfs_create_dir(ptr noundef nonnull %3, ptr noundef %46) #11
  %48 = icmp eq ptr %47, null
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  %50 = or i1 %48, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %38
  %52 = getelementptr inbounds %struct.dentry, ptr %47, i32 0, i32 5
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.inode, ptr %53, i32 0, i32 47
  store ptr %42, ptr %54, align 4
  %55 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.132, i16 noundef zeroext 256, ptr noundef nonnull %47, ptr noundef nonnull @blk_mq_debugfs_ctx_attrs, ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %56 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.133, i16 noundef zeroext 256, ptr noundef nonnull %47, ptr noundef getelementptr inbounds ([4 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_ctx_attrs, i32 0, i32 1), ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %57 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.134, i16 noundef zeroext 256, ptr noundef nonnull %47, ptr noundef getelementptr inbounds ([4 x %struct.blk_mq_debugfs_attr], ptr @blk_mq_debugfs_ctx_attrs, i32 0, i32 2), ptr noundef nonnull @blk_mq_debugfs_fops) #11
  br label %58

58:                                               ; preds = %51, %38
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #11
  %59 = add nuw nsw i32 %39, 1
  %60 = load i16, ptr %33, align 2
  %61 = zext i16 %60 to i32
  %62 = icmp ult i32 %59, %61
  br i1 %62, label %38, label %63

63:                                               ; preds = %58, %32
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_register_sched_hctx(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %1, i32 0, i32 29
  %4 = load ptr, ptr %3, align 32
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.elevator_type, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %6
  %14 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.10, ptr noundef nonnull %4) #11
  %15 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %1, i32 0, i32 30
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  %17 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  %18 = or i1 %16, %17
  br i1 %18, label %35, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %10, align 4
  %21 = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 5
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 47
  store ptr %1, ptr %23, align 4
  %24 = load ptr, ptr %20, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %26, %19
  %27 = phi ptr [ %33, %26 ], [ %24, %19 ]
  %28 = phi ptr [ %32, %26 ], [ %20, %19 ]
  %29 = getelementptr inbounds %struct.blk_mq_debugfs_attr, ptr %28, i32 0, i32 1
  %30 = load i16, ptr %29, align 4
  %31 = tail call ptr @debugfs_create_file(ptr noundef nonnull %27, i16 noundef zeroext %30, ptr noundef %14, ptr noundef %28, ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %32 = getelementptr %struct.blk_mq_debugfs_attr, ptr %28, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %26

35:                                               ; preds = %26, %19, %13, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_register_rqos(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rq_qos, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rq_qos, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds [4 x ptr], ptr @switch.table.blk_mq_debugfs_register_rqos, i32 0, i32 %5
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi ptr [ %9, %7 ], [ @.str.139, %1 ]
  %12 = getelementptr inbounds %struct.rq_qos, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %55

15:                                               ; preds = %10
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.rq_qos_ops, ptr %16, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %55, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 54
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 52
  %26 = load ptr, ptr %25, align 8
  %27 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.11, ptr noundef %26) #11
  store ptr %27, ptr %21, align 8
  %28 = load ptr, ptr %2, align 4
  %29 = getelementptr inbounds %struct.request_queue, ptr %28, i32 0, i32 54
  %30 = load ptr, ptr %29, align 8
  br label %31

31:                                               ; preds = %24, %20
  %32 = phi ptr [ %30, %24 ], [ %22, %20 ]
  %33 = tail call ptr @debugfs_create_dir(ptr noundef nonnull %11, ptr noundef %32) #11
  store ptr %33, ptr %12, align 4
  %34 = icmp eq ptr %33, null
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  %36 = or i1 %34, %35
  br i1 %36, label %55, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr inbounds %struct.rq_qos_ops, ptr %38, i32 0, i32 10
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.dentry, ptr %33, i32 0, i32 5
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 47
  store ptr %0, ptr %43, align 4
  %44 = load ptr, ptr %40, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %46, %37
  %47 = phi ptr [ %53, %46 ], [ %44, %37 ]
  %48 = phi ptr [ %52, %46 ], [ %40, %37 ]
  %49 = getelementptr inbounds %struct.blk_mq_debugfs_attr, ptr %48, i32 0, i32 1
  %50 = load i16, ptr %49, align 4
  %51 = tail call ptr @debugfs_create_file(ptr noundef nonnull %47, i16 noundef zeroext %50, ptr noundef %33, ptr noundef %48, ptr noundef nonnull @blk_mq_debugfs_fops) #11
  %52 = getelementptr %struct.blk_mq_debugfs_attr, ptr %48, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %46

55:                                               ; preds = %46, %37, %31, %15, %10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @blk_mq_debugfs_unregister(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 53
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_unregister_hctx(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 32
  tail call void @debugfs_remove(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 30
  store ptr null, ptr %4, align 4
  store ptr null, ptr %2, align 32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_register_hctxs(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %12, %7 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr ptr, ptr %9, i32 %8
  %11 = load ptr, ptr %10, align 4
  tail call void @blk_mq_debugfs_register_hctx(ptr noundef %0, ptr noundef %11)
  %12 = add nuw i32 %8, 1
  %13 = load i32, ptr %2, align 8
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %7, label %15

15:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_unregister_hctxs(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %15, %7 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr ptr, ptr %9, i32 %8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %11, i32 0, i32 29
  %13 = load ptr, ptr %12, align 32
  tail call void @debugfs_remove(ptr noundef %13) #11
  %14 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %11, i32 0, i32 30
  store ptr null, ptr %14, align 4
  store ptr null, ptr %12, align 32
  %15 = add nuw i32 %8, 1
  %16 = load i32, ptr %2, align 8
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %7, label %18

18:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_unregister_sched(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 53
  %3 = load ptr, ptr %2, align 4
  tail call void @debugfs_remove(ptr noundef %3) #11
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_unregister_rqos(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rq_qos, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @debugfs_remove(ptr noundef %3) #11
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_unregister_queue_rqos(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 54
  %3 = load ptr, ptr %2, align 8
  tail call void @debugfs_remove(ptr noundef %3) #11
  store ptr null, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_debugfs_unregister_sched_hctx(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  tail call void @debugfs_remove(ptr noundef %3) #11
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blk_mq_debugfs_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.seq_file, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 47
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %8, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.blk_mq_debugfs_attr, ptr %8, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 %20(ptr noundef %16, ptr noundef %1, i32 noundef %2, ptr noundef %3) #11
  br label %24

24:                                               ; preds = %22, %18, %4
  %25 = phi i32 [ %23, %22 ], [ -1, %18 ], [ -1, %4 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blk_mq_debugfs_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 47
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.blk_mq_debugfs_attr, ptr %4, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull %14) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.seq_file, ptr %21, i32 0, i32 11
  store ptr %12, ptr %22, align 8
  br label %35

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.blk_mq_debugfs_attr, ptr %4, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  %27 = load i1, ptr @blk_mq_debugfs_open.__already_done, align 1
  %28 = xor i1 %27, true
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %31, !prof !8

30:                                               ; preds = %23
  store i1 true, ptr @blk_mq_debugfs_open.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 646, i32 noundef 9, ptr noundef null) #11
  br label %31

31:                                               ; preds = %30, %23
  br i1 %26, label %35, label %32

32:                                               ; preds = %31
  %33 = load ptr, ptr %3, align 4
  %34 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @blk_mq_debugfs_show, ptr noundef %33) #11
  br label %35

35:                                               ; preds = %32, %31, %19, %16
  %36 = phi i32 [ %34, %32 ], [ 0, %19 ], [ %17, %16 ], [ -1, %31 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blk_mq_debugfs_release(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.blk_mq_debugfs_attr, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @single_release(ptr noundef %0, ptr noundef %1) #11
  br label %12

10:                                               ; preds = %2
  %11 = tail call i32 @seq_release(ptr noundef %0, ptr noundef %1) #11
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blk_mq_debugfs_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 47
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.blk_mq_debugfs_attr, ptr %4, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %14, ptr noundef %0) #11
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_poll_stat_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 26
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %36, %2
  %7 = phi i32 [ %37, %36 ], [ 0, %2 ]
  %8 = shl i32 512, %7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.58, i32 noundef %8) #11
  %9 = load ptr, ptr %3, align 4
  %10 = shl nuw i32 %7, 1
  %11 = getelementptr %struct.blk_rq_stat, ptr %9, i32 %10, i32 3
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %6
  %15 = getelementptr %struct.blk_rq_stat, ptr %9, i32 %10
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr %struct.blk_rq_stat, ptr %9, i32 %10, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr %struct.blk_rq_stat, ptr %9, i32 %10, i32 2
  %20 = load i64, ptr %19, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.61, i32 noundef %12, i64 noundef %16, i64 noundef %18, i64 noundef %20) #11
  br label %22

21:                                               ; preds = %6
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.62) #11
  br label %22

22:                                               ; preds = %21, %14
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.59) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.60, i32 noundef %8) #11
  %23 = load ptr, ptr %3, align 4
  %24 = or i32 %10, 1
  %25 = getelementptr %struct.blk_rq_stat, ptr %23, i32 %24, i32 3
  %26 = load i32, ptr %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %22
  %29 = getelementptr %struct.blk_rq_stat, ptr %23, i32 %24
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr %struct.blk_rq_stat, ptr %23, i32 %24, i32 1
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr %struct.blk_rq_stat, ptr %23, i32 %24, i32 2
  %34 = load i64, ptr %33, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.61, i32 noundef %26, i64 noundef %30, i64 noundef %32, i64 noundef %34) #11
  br label %36

35:                                               ; preds = %22
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.62) #11
  br label %36

36:                                               ; preds = %35, %28
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.59) #11
  %37 = add nuw nsw i32 %7, 1
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %39, label %6

39:                                               ; preds = %36, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_pm_only_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 12
  %4 = load volatile i32, ptr %3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.63, i32 noundef %4) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_state_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 11
  %4 = load i32, ptr %3, align 8
  br label %5

5:                                                ; preds = %21, %2
  %6 = phi i32 [ 0, %2 ], [ %23, %21 ]
  %7 = phi i1 [ false, %2 ], [ %22, %21 ]
  %8 = shl nuw i32 1, %6
  %9 = and i32 %8, %4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %5
  br i1 %7, label %12, label %13

12:                                               ; preds = %11
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.12) #11
  br label %13

13:                                               ; preds = %12, %11
  %14 = icmp ult i32 %6, 30
  br i1 %14, label %15, label %20

15:                                               ; preds = %13
  %16 = getelementptr ptr, ptr @blk_queue_flag_name, i32 %6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull %17) #11
  br label %21

20:                                               ; preds = %15, %13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %6) #11
  br label %21

21:                                               ; preds = %20, %19, %5
  %22 = phi i1 [ true, %19 ], [ true, %20 ], [ %7, %5 ]
  %23 = add nuw nsw i32 %6, 1
  %24 = icmp eq i32 %23, 32
  br i1 %24, label %25, label %5

25:                                               ; preds = %21
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.59) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_state_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false)
  %6 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 11
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 8192
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %48

10:                                               ; preds = %4
  %11 = icmp ugt i32 %2, 15
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @__func__.queue_state_write) #12
  br label %46

14:                                               ; preds = %10
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #13, !srcloc !10
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25, !prof !11

18:                                               ; preds = %14
  %19 = tail call ptr @llvm.thread.pointer() #11
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #14, !srcloc !12
  %22 = and i32 %21, -13
  %23 = or i32 %22, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #11, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !14
  %24 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #11, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !14
  br label %25

25:                                               ; preds = %18, %14
  %26 = phi i32 [ %24, %18 ], [ %2, %14 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28, !prof !11

28:                                               ; preds = %25
  %29 = sub i32 %2, %26
  %30 = getelementptr i8, ptr %5, i32 %29
  call void @llvm.memset.p0.i32(ptr align 1 %30, i8 0, i32 %26, i1 false) #11
  br label %48

31:                                               ; preds = %25
  %32 = call ptr @strim(ptr noundef nonnull %5) #11
  %33 = call i32 @strcmp(ptr noundef %32, ptr noundef nonnull dereferenceable(4) @.str.88)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  call void @blk_mq_run_hw_queues(ptr noundef %0, i1 noundef zeroext true) #11
  br label %48

36:                                               ; preds = %31
  %37 = call i32 @strcmp(ptr noundef %32, ptr noundef nonnull dereferenceable(6) @.str.89)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  call void @blk_mq_start_stopped_hw_queues(ptr noundef %0, i1 noundef zeroext true) #11
  br label %48

40:                                               ; preds = %36
  %41 = call i32 @strcmp(ptr noundef %32, ptr noundef nonnull dereferenceable(5) @.str.90)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  call void @blk_mq_kick_requeue_list(ptr noundef %0) #11
  br label %48

44:                                               ; preds = %40
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @__func__.queue_state_write, ptr noundef %32) #12
  br label %46

46:                                               ; preds = %44, %12
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @__func__.queue_state_write) #12
  br label %48

48:                                               ; preds = %46, %43, %39, %35, %28, %4
  %49 = phi i32 [ -22, %46 ], [ -2, %4 ], [ %2, %39 ], [ %2, %43 ], [ %2, %35 ], [ -14, %28 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_write_hint_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr %struct.request_queue, ptr %0, i32 0, i32 56, i32 0
  %4 = load i64, ptr %3, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.95, i32 noundef 0, i64 noundef %4) #11
  %5 = getelementptr %struct.request_queue, ptr %0, i32 0, i32 56, i32 1
  %6 = load i64, ptr %5, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.95, i32 noundef 1, i64 noundef %6) #11
  %7 = getelementptr %struct.request_queue, ptr %0, i32 0, i32 56, i32 2
  %8 = load i64, ptr %7, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.95, i32 noundef 2, i64 noundef %8) #11
  %9 = getelementptr %struct.request_queue, ptr %0, i32 0, i32 56, i32 3
  %10 = load i64, ptr %9, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.95, i32 noundef 3, i64 noundef %10) #11
  %11 = getelementptr %struct.request_queue, ptr %0, i32 0, i32 56, i32 4
  %12 = load i64, ptr %11, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.95, i32 noundef 4, i64 noundef %12) #11
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define internal i32 @queue_write_hint_store(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, i32 noundef returned %2, ptr nocapture noundef readnone %3) #7 {
  %5 = getelementptr i8, ptr %0, i32 648
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(40) %5, i8 0, i32 40, i1 false)
  ret i32 %2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @queue_zone_wlock_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #8 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @queue_requeue_list_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 38
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 37
  %7 = load i64, ptr %1, align 8
  %8 = tail call ptr @seq_list_start(ptr noundef %6, i64 noundef %7) #11
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @queue_requeue_list_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  %6 = load i16, ptr %5, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @queue_requeue_list_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 37
  %7 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef %6, ptr noundef %2) #11
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_run_hw_queues(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_stopped_hw_queues(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_kick_requeue_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hctx_state_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.anon.27, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.64) #11
  %8 = and i32 %4, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %13

10:                                               ; preds = %2
  %11 = and i32 %4, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %14

13:                                               ; preds = %7
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.12) #11
  br label %14

14:                                               ; preds = %13, %10
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.107) #11
  br label %15

15:                                               ; preds = %14, %7
  %16 = and i32 %4, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %21

18:                                               ; preds = %10
  %19 = and i32 %4, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %22

21:                                               ; preds = %15
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.12) #11
  br label %22

22:                                               ; preds = %21, %18
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.108) #11
  br label %23

23:                                               ; preds = %22, %15
  %24 = and i32 %4, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %29

26:                                               ; preds = %18
  %27 = and i32 %4, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %30

29:                                               ; preds = %23
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.12) #11
  br label %30

30:                                               ; preds = %29, %26
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.109) #11
  br label %31

31:                                               ; preds = %30, %26, %23
  %32 = phi i1 [ false, %26 ], [ true, %30 ], [ true, %23 ]
  br label %33

33:                                               ; preds = %42, %31
  %34 = phi i32 [ %44, %42 ], [ 4, %31 ]
  %35 = phi i1 [ %43, %42 ], [ %32, %31 ]
  %36 = shl nuw i32 1, %34
  %37 = and i32 %36, %4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  br i1 %35, label %40, label %41

40:                                               ; preds = %39
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.12) #11
  br label %41

41:                                               ; preds = %40, %39
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %34) #11
  br label %42

42:                                               ; preds = %41, %33
  %43 = phi i1 [ true, %41 ], [ %35, %33 ]
  %44 = add nuw nsw i32 %34, 1
  %45 = icmp eq i32 %44, 32
  br i1 %45, label %46, label %33, !llvm.loop !20

46:                                               ; preds = %42
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.59) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hctx_flags_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = lshr i32 %4, 8
  %6 = and i32 %5, 1
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.110) #11
  %7 = getelementptr [2 x ptr], ptr @alloc_policy_name, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  tail call void @seq_puts(ptr noundef %1, ptr noundef %8) #11
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.111) #11
  %9 = load i32, ptr %3, align 8
  %10 = shl nuw nsw i32 %6, 8
  %11 = xor i32 %9, %10
  br label %12

12:                                               ; preds = %28, %2
  %13 = phi i32 [ 0, %2 ], [ %30, %28 ]
  %14 = phi i1 [ false, %2 ], [ %29, %28 ]
  %15 = shl nuw i32 1, %13
  %16 = and i32 %15, %11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %12
  br i1 %14, label %19, label %20

19:                                               ; preds = %18
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.12) #11
  br label %20

20:                                               ; preds = %19, %18
  %21 = icmp ult i32 %13, 7
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  %23 = getelementptr ptr, ptr @hctx_flag_name, i32 %13
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull %24) #11
  br label %28

27:                                               ; preds = %22, %20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %13) #11
  br label %28

28:                                               ; preds = %27, %26, %12
  %29 = phi i1 [ true, %26 ], [ true, %27 ], [ %14, %12 ]
  %30 = add nuw nsw i32 %13, 1
  %31 = icmp eq i32 %30, 32
  br i1 %31, label %32, label %12

32:                                               ; preds = %28
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.59) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hctx_busy_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.show_busy_params, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store ptr %1, ptr %3, align 8
  %4 = getelementptr inbounds %struct.show_busy_params, ptr %3, i32 0, i32 1
  store ptr %0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 49
  %8 = load ptr, ptr %7, align 4
  call void @blk_mq_tagset_busy_iter(ptr noundef %8, ptr noundef nonnull @hctx_show_busy_rq, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hctx_ctx_map_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 10
  tail call void @sbitmap_bitmap_show(ptr noundef %3, ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hctx_tags_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 40
  %6 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 19
  %10 = load ptr, ptr %9, align 16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call fastcc void @blk_mq_debugfs_tags_show(ptr noundef %1, ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %12, %8
  tail call void @mutex_unlock(ptr noundef %5) #11
  br label %14

14:                                               ; preds = %13, %2
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hctx_tags_bitmap_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 40
  %6 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 19
  %10 = load ptr, ptr %9, align 16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.blk_mq_tags, ptr %10, i32 0, i32 3
  tail call void @sbitmap_bitmap_show(ptr noundef %13, ptr noundef %1) #11
  br label %14

14:                                               ; preds = %12, %8
  tail call void @mutex_unlock(ptr noundef %5) #11
  br label %15

15:                                               ; preds = %14, %2
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hctx_sched_tags_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 40
  %6 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call fastcc void @blk_mq_debugfs_tags_show(ptr noundef %1, ptr noundef nonnull %10)
  br label %13

13:                                               ; preds = %12, %8
  tail call void @mutex_unlock(ptr noundef %5) #11
  br label %14

14:                                               ; preds = %13, %2
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hctx_sched_tags_bitmap_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 40
  %6 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.blk_mq_tags, ptr %10, i32 0, i32 3
  tail call void @sbitmap_bitmap_show(ptr noundef %13, ptr noundef %1) #11
  br label %14

14:                                               ; preds = %12, %8
  tail call void @mutex_unlock(ptr noundef %5) #11
  br label %15

15:                                               ; preds = %14, %2
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hctx_run_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 22
  %4 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.125, i32 noundef %4) #11
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @hctx_run_write(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, i32 noundef returned %2, ptr nocapture noundef readnone %3) #4 {
  %5 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 22
  store i32 0, ptr %5, align 4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hctx_active_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 64
  %10 = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 29
  br label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 25
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %10, %7 ], [ %12, %11 ]
  %15 = load volatile i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.63, i32 noundef %15) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hctx_dispatch_busy_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.126, i32 noundef %4) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hctx_type_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 13
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = getelementptr [3 x ptr], ptr @hctx_types, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.127, ptr noundef %7) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @hctx_dispatch_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @_raw_spin_lock(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.anon.27, ptr %4, i32 0, i32 1
  %6 = load i64, ptr %1, align 8
  %7 = tail call ptr @seq_list_start(ptr noundef %5, i64 noundef %6) #11
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hctx_dispatch_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  %5 = load i16, ptr %4, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @hctx_dispatch_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.anon.27, ptr %5, i32 0, i32 1
  %7 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef %6, ptr noundef %2) #11
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_tagset_busy_iter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @hctx_show_busy_rq(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.show_busy_params, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 4
  %11 = tail call i32 @__blk_mq_debugfs_rq_show(ptr noundef %10, ptr noundef %0)
  br label %12

12:                                               ; preds = %9, %3
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_bitmap_show(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @blk_mq_debugfs_tags_show(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.120, i32 noundef %3) #11
  %4 = getelementptr inbounds %struct.blk_mq_tags, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.121, i32 noundef %5) #11
  %6 = getelementptr inbounds %struct.blk_mq_tags, ptr %1, i32 0, i32 2
  %7 = load volatile i32, ptr %6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.122, i32 noundef %7) #11
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.123) #11
  %8 = getelementptr inbounds %struct.blk_mq_tags, ptr %1, i32 0, i32 3
  tail call void @sbitmap_queue_show(ptr noundef %8, ptr noundef %0) #11
  %9 = load i32, ptr %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.124) #11
  %12 = getelementptr inbounds %struct.blk_mq_tags, ptr %1, i32 0, i32 4
  tail call void @sbitmap_queue_show(ptr noundef %12, ptr noundef %0) #11
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_show(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ctx_default_rq_list_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @_raw_spin_lock(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.anon.26, ptr %4, i32 0, i32 1
  %6 = load i64, ptr %1, align 8
  %7 = tail call ptr @seq_list_start(ptr noundef %5, i64 noundef %6) #11
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ctx_default_rq_list_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  %5 = load i16, ptr %4, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ctx_default_rq_list_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.anon.26, ptr %5, i32 0, i32 1
  %7 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef %6, ptr noundef %2) #11
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ctx_read_rq_list_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @_raw_spin_lock(ptr noundef %4) #11
  %5 = getelementptr %struct.anon.26, ptr %4, i32 0, i32 1, i32 1
  %6 = load i64, ptr %1, align 8
  %7 = tail call ptr @seq_list_start(ptr noundef %5, i64 noundef %6) #11
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ctx_read_rq_list_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  %5 = load i16, ptr %4, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ctx_read_rq_list_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr %struct.anon.26, ptr %5, i32 0, i32 1, i32 1
  %7 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef %6, ptr noundef %2) #11
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ctx_poll_rq_list_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @_raw_spin_lock(ptr noundef %4) #11
  %5 = getelementptr %struct.anon.26, ptr %4, i32 0, i32 1, i32 2
  %6 = load i64, ptr %1, align 8
  %7 = tail call ptr @seq_list_start(ptr noundef %5, i64 noundef %6) #11
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ctx_poll_rq_list_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  %5 = load i16, ptr %4, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ctx_poll_rq_list_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr %struct.anon.26, ptr %5, i32 0, i32 1, i32 2
  %7 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef %6, ptr noundef %2) #11
  ret ptr %7
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readonly }

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
!9 = !{!"auto-init"}
!10 = !{i64 2151068749, i64 2151068774}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 3564861}
!13 = !{i64 3565058}
!14 = !{i64 2151050337}
!15 = !{i64 2149225344}
!16 = !{i64 2149221168}
!17 = !{i64 2149221243, i64 2149221270, i64 2149221317, i64 2149221339, i64 2149221367, i64 2149221387}
!18 = !{i64 326419}
!19 = !{i64 2149249488}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.peeled.count", i32 4}
!22 = !{i64 2149248347}
