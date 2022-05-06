; ModuleID = '/llk/IR/block/mq-deadline.c_pt.bc'
source_filename = "../block/mq-deadline.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.elevator_type = type { ptr, %struct.elevator_mq_ops, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.elv_fs_entry = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.blk_mq_debugfs_attr = type { ptr, i16, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.elevator_queue = type { ptr, ptr, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.dd_per_prio = type { %struct.list_head, [2 x %struct.rb_root], [2 x %struct.list_head], [2 x ptr], %struct.io_stats_per_prio }
%struct.rb_root = type { ptr }
%struct.io_stats_per_prio = type { i32, i32, i32, %struct.atomic_t }
%struct.deadline_data = type { [3 x %struct.dd_per_prio], i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.lockdep_map = type {}
%struct.blk_mq_hw_ctx = type { %struct.anon.1, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [16 x i8] }
%struct.anon.1 = type { %struct.spinlock, %struct.list_head, i32, [48 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.36, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.36 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.66, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.72, %union.anon.73, %union.anon.74, %union.anon.79, ptr, ptr }
%union.anon.66 = type { %struct.list_head }
%union.anon.72 = type { %struct.hlist_node }
%union.anon.73 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.74 = type { %struct.anon.78 }
%struct.anon.78 = type { i32, %struct.list_head, ptr }
%union.anon.79 = type { i64, [8 x i8] }
%struct.blk_mq_alloc_data = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__UNIQUE_ID_alias315 = internal constant [38 x i8] c"mq_deadline.alias=mq-deadline-iosched\00", section ".modinfo", align 1
@mq_deadline = internal global %struct.elevator_type { ptr null, %struct.elevator_mq_ops { ptr @dd_init_sched, ptr @dd_exit_sched, ptr @dd_init_hctx, ptr null, ptr @dd_depth_updated, ptr null, ptr @dd_bio_merge, ptr @dd_request_merge, ptr @dd_request_merged, ptr @dd_merged_requests, ptr @dd_limit_depth, ptr @dd_prepare_request, ptr @dd_finish_request, ptr @dd_insert_requests, ptr @dd_dispatch_request, ptr @dd_has_work, ptr null, ptr null, ptr @elv_rb_former_request, ptr @elv_rb_latter_request, ptr null, ptr null }, i32 0, i32 0, ptr @deadline_attrs, ptr @.str, ptr @.str.1, i32 1, ptr null, ptr @deadline_queue_debugfs_attrs, ptr null, [22 x i8] zeroinitializer, %struct.list_head zeroinitializer }, align 4
@__initcall__kmod_mq_deadline__316_1167_deadline_init6 = internal global ptr @deadline_init, section ".initcall6.init", align 4
@__exitcall_deadline_exit = internal global ptr @deadline_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author317 = internal constant [66 x i8] c"mq_deadline.author=Jens Axboe, Damien Le Moal and Bart Van Assche\00", section ".modinfo", align 1
@__UNIQUE_ID_file318 = internal constant [35 x i8] c"mq_deadline.file=block/mq-deadline\00", section ".modinfo", align 1
@__UNIQUE_ID_license319 = internal constant [24 x i8] c"mq_deadline.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description320 = internal constant [49 x i8] c"mq_deadline.description=MQ deadline IO scheduler\00", section ".modinfo", align 1
@deadline_attrs = internal global [8 x %struct.elv_fs_entry] [%struct.elv_fs_entry { %struct.attribute { ptr @.str.7, i16 420 }, ptr @deadline_read_expire_show, ptr @deadline_read_expire_store }, %struct.elv_fs_entry { %struct.attribute { ptr @.str.8, i16 420 }, ptr @deadline_write_expire_show, ptr @deadline_write_expire_store }, %struct.elv_fs_entry { %struct.attribute { ptr @.str.9, i16 420 }, ptr @deadline_writes_starved_show, ptr @deadline_writes_starved_store }, %struct.elv_fs_entry { %struct.attribute { ptr @.str.10, i16 420 }, ptr @deadline_front_merges_show, ptr @deadline_front_merges_store }, %struct.elv_fs_entry { %struct.attribute { ptr @.str.11, i16 420 }, ptr @deadline_async_depth_show, ptr @deadline_async_depth_store }, %struct.elv_fs_entry { %struct.attribute { ptr @.str.12, i16 420 }, ptr @deadline_fifo_batch_show, ptr @deadline_fifo_batch_store }, %struct.elv_fs_entry { %struct.attribute { ptr @.str.13, i16 420 }, ptr @deadline_prio_aging_expire_show, ptr @deadline_prio_aging_expire_store }, %struct.elv_fs_entry zeroinitializer], align 4
@.str = private unnamed_addr constant [12 x i8] c"mq-deadline\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"deadline\00", align 1
@deadline_queue_debugfs_attrs = internal constant [21 x %struct.blk_mq_debugfs_attr] [%struct.blk_mq_debugfs_attr { ptr @.str.15, i16 256, ptr null, ptr null, ptr @deadline_read0_fifo_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.16, i16 256, ptr null, ptr null, ptr @deadline_write0_fifo_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.17, i16 256, ptr null, ptr null, ptr @deadline_read1_fifo_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.18, i16 256, ptr null, ptr null, ptr @deadline_write1_fifo_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.19, i16 256, ptr null, ptr null, ptr @deadline_read2_fifo_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.20, i16 256, ptr null, ptr null, ptr @deadline_write2_fifo_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.21, i16 256, ptr @deadline_read0_next_rq_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.22, i16 256, ptr @deadline_write0_next_rq_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.23, i16 256, ptr @deadline_read1_next_rq_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.24, i16 256, ptr @deadline_write1_next_rq_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.25, i16 256, ptr @deadline_read2_next_rq_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.26, i16 256, ptr @deadline_write2_next_rq_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.27, i16 256, ptr @deadline_batching_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.28, i16 256, ptr @deadline_starved_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.11, i16 256, ptr @dd_async_depth_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.29, i16 256, ptr null, ptr null, ptr @deadline_dispatch0_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.30, i16 256, ptr null, ptr null, ptr @deadline_dispatch1_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.31, i16 256, ptr null, ptr null, ptr @deadline_dispatch2_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.32, i16 256, ptr @dd_owned_by_driver_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.33, i16 256, ptr @dd_queued_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr zeroinitializer], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dd_exit_sched.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"block/mq-deadline.c\00", align 1
@dd_exit_sched.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@dd_exit_sched.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"statistics for priority %d: i %u m %u d %u c %u\0A\00", align 1
@ioprio_class_to_prio = internal unnamed_addr constant [4 x i32] [i32 1, i32 0, i32 1, i32 2], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__tracepoint_block_rq_insert = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"read_expire\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"write_expire\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"writes_starved\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"front_merges\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"async_depth\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"fifo_batch\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"prio_aging_expire\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"read0_fifo_list\00", align 1
@deadline_read0_fifo_seq_ops = internal constant %struct.seq_operations { ptr @deadline_read0_fifo_start, ptr @deadline_read0_fifo_stop, ptr @deadline_read0_fifo_next, ptr @blk_mq_debugfs_rq_show }, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"write0_fifo_list\00", align 1
@deadline_write0_fifo_seq_ops = internal constant %struct.seq_operations { ptr @deadline_write0_fifo_start, ptr @deadline_write0_fifo_stop, ptr @deadline_write0_fifo_next, ptr @blk_mq_debugfs_rq_show }, align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"read1_fifo_list\00", align 1
@deadline_read1_fifo_seq_ops = internal constant %struct.seq_operations { ptr @deadline_read1_fifo_start, ptr @deadline_read1_fifo_stop, ptr @deadline_read1_fifo_next, ptr @blk_mq_debugfs_rq_show }, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"write1_fifo_list\00", align 1
@deadline_write1_fifo_seq_ops = internal constant %struct.seq_operations { ptr @deadline_write1_fifo_start, ptr @deadline_write1_fifo_stop, ptr @deadline_write1_fifo_next, ptr @blk_mq_debugfs_rq_show }, align 4
@.str.19 = private unnamed_addr constant [16 x i8] c"read2_fifo_list\00", align 1
@deadline_read2_fifo_seq_ops = internal constant %struct.seq_operations { ptr @deadline_read2_fifo_start, ptr @deadline_read2_fifo_stop, ptr @deadline_read2_fifo_next, ptr @blk_mq_debugfs_rq_show }, align 4
@.str.20 = private unnamed_addr constant [17 x i8] c"write2_fifo_list\00", align 1
@deadline_write2_fifo_seq_ops = internal constant %struct.seq_operations { ptr @deadline_write2_fifo_start, ptr @deadline_write2_fifo_stop, ptr @deadline_write2_fifo_next, ptr @blk_mq_debugfs_rq_show }, align 4
@.str.21 = private unnamed_addr constant [14 x i8] c"read0_next_rq\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"write0_next_rq\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"read1_next_rq\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"write1_next_rq\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"read2_next_rq\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"write2_next_rq\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"batching\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"starved\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"dispatch0\00", align 1
@deadline_dispatch0_seq_ops = internal constant %struct.seq_operations { ptr @deadline_dispatch0_start, ptr @deadline_dispatch0_stop, ptr @deadline_dispatch0_next, ptr @blk_mq_debugfs_rq_show }, align 4
@.str.30 = private unnamed_addr constant [10 x i8] c"dispatch1\00", align 1
@deadline_dispatch1_seq_ops = internal constant %struct.seq_operations { ptr @deadline_dispatch1_start, ptr @deadline_dispatch1_stop, ptr @deadline_dispatch1_next, ptr @blk_mq_debugfs_rq_show }, align 4
@.str.31 = private unnamed_addr constant [10 x i8] c"dispatch2\00", align 1
@deadline_dispatch2_seq_ops = internal constant %struct.seq_operations { ptr @deadline_dispatch2_start, ptr @deadline_dispatch2_stop, ptr @deadline_dispatch2_next, ptr @blk_mq_debugfs_rq_show }, align 4
@.str.32 = private unnamed_addr constant [16 x i8] c"owned_by_driver\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"queued\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"%u %u %u\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias315, ptr @__UNIQUE_ID_author317, ptr @__UNIQUE_ID_description320, ptr @__UNIQUE_ID_file318, ptr @__UNIQUE_ID_license319, ptr @__exitcall_deadline_exit, ptr @__initcall__kmod_mq_deadline__316_1167_deadline_init6, ptr @deadline_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @deadline_exit() #0 section ".exit.text" {
  tail call void @elv_unregister(ptr noundef nonnull @mq_deadline) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @elv_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @deadline_init() #0 section ".init.text" {
  %1 = tail call i32 @elv_register(ptr noundef nonnull @mq_deadline) #9
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dd_init_sched(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call ptr @elevator_alloc(ptr noundef %0, ptr noundef %1) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 216) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %44, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  store ptr %7, ptr %10, align 4
  store volatile ptr %7, ptr %7, align 8
  %11 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %7, ptr %11, align 4
  %12 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 0, i32 2
  store volatile ptr %12, ptr %12, align 8
  %13 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 0, i32 2, i32 1
  store volatile ptr %14, ptr %14, align 8
  %15 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 0, i32 2, i32 1, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 0, i32 1
  store ptr null, ptr %16, align 8
  %17 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 0, i32 1, i32 1
  store ptr null, ptr %17, align 4
  %18 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 1
  store volatile ptr %18, ptr %18, align 8
  %19 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 1, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 1, i32 2
  store volatile ptr %20, ptr %20, align 8
  %21 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 1, i32 2, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 1, i32 2, i32 1
  store volatile ptr %22, ptr %22, align 8
  %23 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 1, i32 2, i32 1, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 1, i32 1
  store ptr null, ptr %24, align 8
  %25 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 1, i32 1, i32 1
  store ptr null, ptr %25, align 4
  %26 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 2
  store volatile ptr %26, ptr %26, align 8
  %27 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 2, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 2, i32 2
  store volatile ptr %28, ptr %28, align 8
  %29 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 2, i32 2, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 2, i32 2, i32 1
  store volatile ptr %30, ptr %30, align 8
  %31 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 2, i32 2, i32 1, i32 1
  store ptr %30, ptr %31, align 4
  %32 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 2, i32 1
  store ptr null, ptr %32, align 8
  %33 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 2, i32 1, i32 1
  store ptr null, ptr %33, align 4
  %34 = getelementptr inbounds %struct.deadline_data, ptr %7, i32 0, i32 4
  store i32 50, ptr %34, align 4
  %35 = getelementptr %struct.deadline_data, ptr %7, i32 0, i32 4, i32 1
  store i32 500, ptr %35, align 8
  %36 = getelementptr inbounds %struct.deadline_data, ptr %7, i32 0, i32 6
  store i32 2, ptr %36, align 8
  %37 = getelementptr inbounds %struct.deadline_data, ptr %7, i32 0, i32 7
  store i32 1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.deadline_data, ptr %7, i32 0, i32 1
  store i32 1, ptr %38, align 8
  %39 = getelementptr inbounds %struct.deadline_data, ptr %7, i32 0, i32 5
  store i32 16, ptr %39, align 4
  %40 = getelementptr inbounds %struct.deadline_data, ptr %7, i32 0, i32 9
  store i32 1000, ptr %40, align 4
  %41 = getelementptr inbounds %struct.deadline_data, ptr %7, i32 0, i32 10
  store i32 0, ptr %41, align 8
  %42 = getelementptr inbounds %struct.deadline_data, ptr %7, i32 0, i32 11
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  store ptr %3, ptr %43, align 4
  br label %46

44:                                               ; preds = %5
  %45 = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %45) #9
  br label %46

46:                                               ; preds = %44, %9, %2
  %47 = phi i32 [ 0, %9 ], [ -12, %44 ], [ -12, %2 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dd_exit_sched(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.elevator_queue, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.deadline_data, ptr %3, i32 0, i32 10
  br label %5

5:                                                ; preds = %40, %1
  %6 = phi i32 [ 0, %1 ], [ %41, %40 ]
  %7 = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 %6, i32 4
  %8 = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 %6, i32 2
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp ne ptr %9, %8
  %11 = load i1, ptr @dd_exit_sched.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %5
  store i1 true, ptr @dd_exit_sched.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 590, i32 noundef 9, ptr noundef null) #9
  br label %15

15:                                               ; preds = %14, %5
  %16 = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 %6, i32 2, i32 1
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp ne ptr %17, %16
  %19 = load i1, ptr @dd_exit_sched.__already_done.3, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %15
  store i1 true, ptr @dd_exit_sched.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 591, i32 noundef 9, ptr noundef null) #9
  br label %23

23:                                               ; preds = %22, %15
  tail call void @_raw_spin_lock(ptr noundef %4) #9
  %24 = load i32, ptr %7, align 4
  %25 = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 %6, i32 4, i32 3
  %26 = load volatile i32, ptr %25, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %27 = load i16, ptr %4, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %29 = icmp ne i32 %24, %26
  %30 = load i1, ptr @dd_exit_sched.__already_done.4, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %40, !prof !8

33:                                               ; preds = %23
  store i1 true, ptr @dd_exit_sched.__already_done.4, align 1
  %34 = load i32, ptr %7, align 4
  %35 = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 %6, i32 4, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 %6, i32 4, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = load volatile i32, ptr %25, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 600, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %6, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %39) #9
  br label %40

40:                                               ; preds = %33, %23
  %41 = add nuw nsw i32 %6, 1
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %5

43:                                               ; preds = %40
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dd_init_hctx(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.elevator_queue, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 20
  %12 = load i32, ptr %11, align 4
  %13 = mul i32 %12, 3
  %14 = lshr i32 %13, 2
  %15 = icmp ult i32 %13, 4
  %16 = select i1 %15, i32 1, i32 %14
  %17 = getelementptr inbounds %struct.deadline_data, ptr %8, i32 0, i32 8
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.blk_mq_tags, ptr %10, i32 0, i32 3
  tail call void @sbitmap_queue_min_shallow_depth(ptr noundef %18, i32 noundef %16) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dd_depth_updated(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.elevator_queue, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 20
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 20
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, 3
  %13 = lshr i32 %12, 2
  %14 = icmp ult i32 %12, 4
  %15 = select i1 %14, i32 1, i32 %13
  %16 = getelementptr inbounds %struct.deadline_data, ptr %7, i32 0, i32 8
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.blk_mq_tags, ptr %9, i32 0, i32 3
  tail call void @sbitmap_queue_min_shallow_depth(ptr noundef %17, i32 noundef %15) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @dd_bio_merge(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.elevator_queue, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store ptr null, ptr %4, align 4
  %9 = getelementptr inbounds %struct.deadline_data, ptr %8, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %9) #9
  %10 = call zeroext i1 @blk_mq_sched_try_merge(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %11 = load i16, ptr %9, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %9, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %13 = load ptr, ptr %4, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  call void @blk_mq_free_request(ptr noundef nonnull %13) #9
  br label %16

16:                                               ; preds = %15, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i1 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dd_request_merge(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.elevator_queue, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 8
  %9 = load i64, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 8, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 9
  %13 = zext i32 %12 to i64
  %14 = add i64 %9, %13
  %15 = getelementptr inbounds %struct.deadline_data, ptr %7, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %49, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 4
  %20 = load i16, ptr %19, align 2
  %21 = lshr i16 %20, 13
  %22 = zext i16 %21 to i32
  %23 = getelementptr [4 x i32], ptr @ioprio_class_to_prio, i32 0, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 %24, i32 1, i32 %27
  %29 = tail call ptr @elv_rb_find(ptr noundef %28, i64 noundef %14) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.request, ptr %29, i32 0, i32 9
  %33 = load i64, ptr %32, align 8
  %34 = icmp eq i64 %14, %33
  br i1 %34, label %36, label %35, !prof !13

35:                                               ; preds = %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/mq-deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 672, 0\0A.popsection", ""() #9, !srcloc !14
  unreachable

36:                                               ; preds = %31
  %37 = tail call zeroext i1 @elv_bio_merge_ok(ptr noundef nonnull %29, ptr noundef %2) #9
  br i1 %37, label %38, label %49

38:                                               ; preds = %36
  store ptr %29, ptr %1, align 4
  %39 = getelementptr inbounds %struct.request, ptr %29, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 255
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load ptr, ptr %29, align 8
  %45 = getelementptr inbounds %struct.request_queue, ptr %44, i32 0, i32 32, i32 23
  %46 = load i16, ptr %45, align 4
  %47 = icmp ugt i16 %46, 1
  %48 = select i1 %47, i32 3, i32 1
  br label %49

49:                                               ; preds = %43, %38, %36, %18, %3
  %50 = phi i32 [ 0, %3 ], [ 0, %36 ], [ 0, %18 ], [ 1, %38 ], [ %48, %43 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dd_request_merged(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %5, label %23

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 19
  %7 = load i16, ptr %6, align 2
  %8 = lshr i16 %7, 13
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.elevator_queue, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr [4 x i32], ptr @ioprio_class_to_prio, i32 0, i32 %9
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = getelementptr [3 x %struct.dd_per_prio], ptr %13, i32 0, i32 %15, i32 1, i32 %18
  tail call void @elv_rb_del(ptr noundef %19, ptr noundef %1) #9
  %20 = load i32, ptr %16, align 4
  %21 = and i32 %20, 1
  %22 = getelementptr [3 x %struct.dd_per_prio], ptr %13, i32 0, i32 %15, i32 1, i32 %21
  tail call void @elv_rb_add(ptr noundef %22, ptr noundef %1) #9
  br label %23

23:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dd_merged_requests(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.elevator_queue, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 19
  %9 = load i16, ptr %8, align 2
  %10 = lshr i16 %9, 13
  %11 = zext i16 %10 to i32
  %12 = getelementptr [4 x i32], ptr @ioprio_class_to_prio, i32 0, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 %13, i32 4, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 12
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %40, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 12
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %40, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 26
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 26
  %29 = load i64, ptr %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = sub i32 %27, %30
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 12, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  store volatile ptr %18, ptr %35, align 4
  %37 = load ptr, ptr %21, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %17, ptr %38, align 4
  store ptr %37, ptr %17, align 4
  store ptr %21, ptr %34, align 4
  store volatile ptr %17, ptr %21, align 4
  %39 = load i64, ptr %25, align 8
  store i64 %39, ptr %28, align 8
  br label %40

40:                                               ; preds = %33, %24, %20, %3
  %41 = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 12
  %42 = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 12, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %41, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %43, ptr %45, align 4
  store volatile ptr %44, ptr %43, align 4
  store volatile ptr %41, ptr %41, align 4
  store ptr %41, ptr %42, align 4
  %46 = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 24
  %47 = load i32, ptr %46, align 4
  %48 = ptrtoint ptr %46 to i32
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %67, label %50

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.request, ptr %2, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 1
  %54 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 %13, i32 3, i32 %53
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %2
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = tail call ptr @rb_next(ptr noundef %46) #9
  %59 = icmp eq ptr %58, null
  %60 = getelementptr i8, ptr %58, i32 -116
  %61 = select i1 %59, ptr null, ptr %60
  store ptr %61, ptr %54, align 4
  %62 = load i32, ptr %51, align 4
  %63 = and i32 %62, 1
  br label %64

64:                                               ; preds = %57, %50
  %65 = phi i32 [ %63, %57 ], [ %53, %50 ]
  %66 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 %13, i32 1, i32 %65
  tail call void @elv_rb_del(ptr noundef %66, ptr noundef %2) #9
  br label %67

67:                                               ; preds = %64, %40
  tail call void @elv_rqhash_del(ptr noundef %0, ptr noundef %2) #9
  %68 = load ptr, ptr %0, align 8
  %69 = icmp eq ptr %68, %2
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store ptr null, ptr %0, align 8
  br label %71

71:                                               ; preds = %70, %67
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dd_limit_depth(i32 noundef %0, ptr nocapture noundef %1) #3 {
  %3 = and i32 %0, 255
  %4 = icmp ne i32 %3, 0
  %5 = and i32 %0, 395264
  %6 = icmp eq i32 %5, 0
  %7 = and i1 %4, %6
  %8 = and i32 %0, 1
  %9 = icmp ne i32 %8, 0
  %10 = or i1 %9, %7
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load ptr, ptr %1, align 4
  %13 = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.elevator_queue, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.deadline_data, ptr %16, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %1, i32 0, i32 2
  store i32 %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dd_prepare_request(ptr nocapture noundef writeonly %0) #4 {
  %2 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 25, i32 0, i32 1
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dd_finish_request(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 25, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 19
  %7 = load i16, ptr %6, align 2
  %8 = lshr i16 %7, 13
  %9 = zext i16 %8 to i32
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.request_queue, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.elevator_queue, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr [4 x i32], ptr @ioprio_class_to_prio, i32 0, i32 %9
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr [3 x %struct.dd_per_prio], ptr %14, i32 0, i32 %16, i32 4, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #9, !srcloc !15
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #9, !srcloc !16
  br label %19

19:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dd_insert_requests(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) #2 {
  %4 = alloca %struct.list_head, align 8
  %5 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.elevator_queue, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.deadline_data, ptr %10, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %11) #9
  %12 = load volatile ptr, ptr %1, align 4
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %117, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  br label %16

16:                                               ; preds = %114, %14
  %17 = phi ptr [ %12, %14 ], [ %115, %114 ]
  %18 = getelementptr i8, ptr %17, i32 -56
  %19 = getelementptr %struct.list_head, ptr %17, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  store volatile ptr %21, ptr %20, align 4
  store volatile ptr %17, ptr %17, align 4
  store ptr %17, ptr %19, align 4
  %23 = load ptr, ptr %5, align 64
  %24 = getelementptr inbounds %struct.request_queue, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.elevator_queue, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %17, i32 -44
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = getelementptr i8, ptr %17, i32 38
  %32 = load i16, ptr %31, align 2
  %33 = lshr i16 %32, 13
  %34 = zext i16 %33 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store ptr %4, ptr %4, align 8
  store ptr %4, ptr %15, align 4
  %35 = getelementptr [4 x i32], ptr @ioprio_class_to_prio, i32 0, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr [3 x %struct.dd_per_prio], ptr %27, i32 0, i32 %36
  %38 = getelementptr i8, ptr %17, i32 76
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %16
  %42 = getelementptr [3 x %struct.dd_per_prio], ptr %27, i32 0, i32 %36, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  store ptr inttoptr (i32 1 to ptr), ptr %38, align 4
  br label %45

45:                                               ; preds = %41, %16
  %46 = call zeroext i1 @blk_mq_sched_try_insert_merge(ptr noundef %23, ptr noundef %18, ptr noundef nonnull %4) #9
  br i1 %46, label %47, label %59

47:                                               ; preds = %45
  %48 = load volatile ptr, ptr %4, align 8
  %49 = icmp eq ptr %48, %4
  br i1 %49, label %114, label %50

50:                                               ; preds = %50, %47
  %51 = phi ptr [ %57, %50 ], [ %48, %47 ]
  %52 = getelementptr i8, ptr %51, i32 -56
  %53 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %51, align 4
  %56 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %54, ptr %56, align 4
  store volatile ptr %55, ptr %54, align 4
  store volatile ptr %51, ptr %51, align 4
  store ptr %51, ptr %53, align 4
  call void @blk_mq_free_request(ptr noundef %52) #9
  %57 = load volatile ptr, ptr %4, align 8
  %58 = icmp eq ptr %57, %4
  br i1 %58, label %114, label %50

59:                                               ; preds = %45
  %60 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_rq_insert, i32 0, i32 1), align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = tail call ptr @llvm.thread.pointer() #9
  %64 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %65 = load i32, ptr %64, align 8
  %66 = lshr i32 %65, 5
  %67 = getelementptr i32, ptr @__cpu_online_mask, i32 %66
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %65, 31
  %70 = shl nuw i32 1, %69
  %71 = and i32 %70, %68
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %62
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  %74 = call i32 @__traceiter_block_rq_insert(ptr noundef null, ptr noundef %18) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  br label %75

75:                                               ; preds = %73, %62, %59
  br i1 %2, label %76, label %79

76:                                               ; preds = %75
  %77 = load ptr, ptr %37, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  br label %110

79:                                               ; preds = %75
  %80 = load i32, ptr %28, align 4
  %81 = and i32 %80, 1
  %82 = getelementptr [3 x %struct.dd_per_prio], ptr %27, i32 0, i32 %36, i32 1, i32 %81
  call void @elv_rb_add(ptr noundef %82, ptr noundef %18) #9
  %83 = load i32, ptr %28, align 4
  %84 = and i32 %83, 254
  %85 = icmp eq i32 %84, 34
  br i1 %85, label %100, label %86

86:                                               ; preds = %79
  %87 = trunc i32 %83 to i8
  switch i8 %87, label %88 [
    i8 2, label %100
    i8 9, label %100
    i8 13, label %100
  ]

88:                                               ; preds = %86
  %89 = and i32 %83, 409600
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  %92 = getelementptr i8, ptr %17, i32 -40
  %93 = load i32, ptr %92, align 8
  %94 = and i32 %93, 262170
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  call void @elv_rqhash_add(ptr noundef %23, ptr noundef %18) #9
  %97 = load ptr, ptr %23, align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store ptr %18, ptr %23, align 8
  br label %100

100:                                              ; preds = %99, %96, %91, %88, %86, %86, %86, %79
  %101 = load volatile i32, ptr @jiffies, align 64
  %102 = getelementptr %struct.deadline_data, ptr %27, i32 0, i32 4, i32 %30
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, %101
  %105 = zext i32 %104 to i64
  %106 = getelementptr i8, ptr %17, i32 88
  store i64 %105, ptr %106, align 8
  %107 = getelementptr [3 x %struct.dd_per_prio], ptr %27, i32 0, i32 %36, i32 2, i32 %30
  %108 = getelementptr [3 x %struct.dd_per_prio], ptr %27, i32 0, i32 %36, i32 2, i32 %30, i32 1
  %109 = load ptr, ptr %108, align 4
  br label %110

110:                                              ; preds = %100, %76
  %111 = phi ptr [ %78, %76 ], [ %108, %100 ]
  %112 = phi ptr [ %77, %76 ], [ %107, %100 ]
  %113 = phi ptr [ %37, %76 ], [ %109, %100 ]
  store ptr %17, ptr %111, align 4
  store ptr %112, ptr %17, align 4
  store ptr %113, ptr %19, align 4
  store volatile ptr %17, ptr %113, align 4
  br label %114

114:                                              ; preds = %110, %50, %47
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  %115 = load volatile ptr, ptr %1, align 4
  %116 = icmp eq ptr %115, %1
  br i1 %116, label %117, label %16

117:                                              ; preds = %114, %3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %118 = load i16, ptr %11, align 4
  %119 = add i16 %118, 1
  store i16 %119, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @dd_dispatch_request(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.elevator_queue, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load volatile i32, ptr @jiffies, align 64
  %9 = getelementptr inbounds %struct.deadline_data, ptr %7, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %9) #9
  %10 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 0, i32 4, i32 3
  %13 = load volatile i32, ptr %12, align 4
  %14 = icmp ne i32 %11, %13
  %15 = zext i1 %14 to i32
  %16 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 1, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 1, i32 4, i32 3
  %19 = load volatile i32, ptr %18, align 4
  %20 = icmp ne i32 %17, %19
  %21 = zext i1 %20 to i32
  %22 = add nuw nsw i32 %21, %15
  %23 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 2, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 2, i32 4, i32 3
  %26 = load volatile i32, ptr %25, align 4
  %27 = icmp ne i32 %24, %26
  %28 = zext i1 %27 to i32
  %29 = add nuw nsw i32 %22, %28
  %30 = icmp ult i32 %29, 2
  br i1 %30, label %44, label %31

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.deadline_data, ptr %7, i32 0, i32 9
  %33 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 1
  %34 = load i32, ptr %32, align 4
  %35 = sub i32 %8, %34
  %36 = tail call fastcc ptr @__dd_dispatch_request(ptr noundef %7, ptr noundef %33, i32 noundef %35) #9
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %65

38:                                               ; preds = %31
  %39 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 2
  %40 = load i32, ptr %32, align 4
  %41 = sub i32 %8, %40
  %42 = tail call fastcc ptr @__dd_dispatch_request(ptr noundef %7, ptr noundef %39, i32 noundef %41) #9
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %65

44:                                               ; preds = %38, %1
  %45 = tail call fastcc ptr @__dd_dispatch_request(ptr noundef %7, ptr noundef %7, i32 noundef %8)
  %46 = icmp eq ptr %45, null
  br i1 %46, label %61, label %65

47:                                               ; preds = %61
  %48 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 1
  %49 = tail call fastcc ptr @__dd_dispatch_request(ptr noundef %7, ptr noundef %48, i32 noundef %8)
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load i32, ptr %16, align 4
  %53 = load volatile i32, ptr %18, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 2
  %57 = tail call fastcc ptr @__dd_dispatch_request(ptr noundef %7, ptr noundef %56, i32 noundef %8)
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load volatile i32, ptr %25, align 4
  br label %65

61:                                               ; preds = %44
  %62 = load i32, ptr %10, align 4
  %63 = load volatile i32, ptr %12, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %47, label %65

65:                                               ; preds = %61, %59, %55, %51, %47, %44, %38, %31
  %66 = phi ptr [ %42, %38 ], [ %36, %31 ], [ %45, %44 ], [ null, %61 ], [ %49, %47 ], [ null, %51 ], [ %57, %55 ], [ null, %59 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %67 = load i16, ptr %9, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  ret ptr %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @dd_has_work(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.elevator_queue, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load volatile ptr, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %58, label %78

10:                                               ; preds = %74
  %11 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 1
  %12 = load volatile ptr, ptr %11, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %14, label %78

14:                                               ; preds = %10
  %15 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %11
  br i1 %17, label %18, label %78

18:                                               ; preds = %14
  %19 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 1, i32 2
  %20 = load volatile ptr, ptr %19, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %22, label %78

22:                                               ; preds = %18
  %23 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 1, i32 2, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %19
  br i1 %25, label %26, label %78

26:                                               ; preds = %22
  %27 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 1, i32 2, i32 1
  %28 = load volatile ptr, ptr %27, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %30, label %78

30:                                               ; preds = %26
  %31 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 1, i32 2, i32 1, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %27
  br i1 %33, label %34, label %78

34:                                               ; preds = %30
  %35 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 2
  %36 = load volatile ptr, ptr %35, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %38, label %78

38:                                               ; preds = %34
  %39 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 2, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %35
  br i1 %41, label %42, label %78

42:                                               ; preds = %38
  %43 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 2, i32 2
  %44 = load volatile ptr, ptr %43, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %45 = icmp eq ptr %44, %43
  br i1 %45, label %46, label %78

46:                                               ; preds = %42
  %47 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 2, i32 2, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %43
  br i1 %49, label %50, label %78

50:                                               ; preds = %46
  %51 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 2, i32 2, i32 1
  %52 = load volatile ptr, ptr %51, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %53 = icmp eq ptr %52, %51
  br i1 %53, label %54, label %78

54:                                               ; preds = %50
  %55 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 2, i32 2, i32 1, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp ne ptr %56, %51
  br label %78

58:                                               ; preds = %1
  %59 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %7
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 0, i32 2
  %64 = load volatile ptr, ptr %63, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %65 = icmp eq ptr %64, %63
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 0, i32 2, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %63
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 0, i32 2, i32 1
  %72 = load volatile ptr, ptr %71, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %73 = icmp eq ptr %72, %71
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = getelementptr [3 x %struct.dd_per_prio], ptr %7, i32 0, i32 0, i32 2, i32 1, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, %71
  br i1 %77, label %10, label %78

78:                                               ; preds = %74, %70, %66, %62, %58, %54, %50, %46, %42, %38, %34, %30, %26, %22, %18, %14, %10, %1
  %79 = phi i1 [ true, %70 ], [ true, %62 ], [ true, %1 ], [ true, %58 ], [ true, %66 ], [ true, %74 ], [ true, %10 ], [ true, %14 ], [ true, %18 ], [ true, %22 ], [ true, %26 ], [ true, %30 ], [ true, %34 ], [ true, %38 ], [ true, %42 ], [ true, %46 ], [ true, %50 ], [ %57, %54 ]
  ret i1 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @elv_rb_former_request(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @elv_rb_latter_request(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @elevator_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_min_shallow_depth(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_mq_sched_try_merge(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @elv_rb_find(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @elv_bio_merge_ok(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @elv_rb_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @elv_rb_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @elv_rqhash_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_mq_sched_try_insert_merge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @elv_rqhash_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_rq_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__dd_dispatch_request(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = load volatile ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %24, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %4, i32 88
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = getelementptr i8, ptr %4, i32 -44
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = getelementptr %struct.deadline_data, ptr %0, i32 0, i32 4, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %2, %9
  %16 = add i32 %15, %14
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %162, label %18

18:                                               ; preds = %6
  %19 = getelementptr i8, ptr %4, i32 -56
  %20 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %20, align 4
  br label %148

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.deadline_data, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.dd_per_prio, ptr %1, i32 0, i32 3, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.deadline_data, ptr %0, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.deadline_data, ptr %0, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %94, label %36

36:                                               ; preds = %30, %24
  %37 = getelementptr inbounds %struct.dd_per_prio, ptr %1, i32 0, i32 2
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %37
  br i1 %39, label %59, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.dd_per_prio, ptr %1, i32 0, i32 1
  %42 = load volatile ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45, !prof !8

44:                                               ; preds = %40
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/mq-deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 399, 0\0A.popsection", ""() #9, !srcloc !20
  unreachable

45:                                               ; preds = %40
  %46 = getelementptr %struct.dd_per_prio, ptr %1, i32 0, i32 2, i32 1
  %47 = load volatile ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %46
  %49 = getelementptr i8, ptr %47, i32 -56
  %50 = icmp eq ptr %49, null
  %51 = or i1 %48, %50
  br i1 %51, label %70, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.deadline_data, ptr %0, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 4
  %56 = getelementptr inbounds %struct.deadline_data, ptr %0, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %70, label %63

59:                                               ; preds = %36
  %60 = getelementptr %struct.dd_per_prio, ptr %1, i32 0, i32 2, i32 1
  %61 = load volatile ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %162, label %63

63:                                               ; preds = %59, %52
  %64 = getelementptr %struct.dd_per_prio, ptr %1, i32 0, i32 1, i32 1
  %65 = load volatile ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68, !prof !8

67:                                               ; preds = %63
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/mq-deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.deadline_data, ptr %0, i32 0, i32 3
  store i32 0, ptr %69, align 4
  br label %70

70:                                               ; preds = %68, %52, %45
  %71 = phi i32 [ 1, %68 ], [ 0, %52 ], [ 0, %45 ]
  %72 = getelementptr %struct.dd_per_prio, ptr %1, i32 0, i32 3, i32 %71
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr %struct.dd_per_prio, ptr %1, i32 0, i32 2, i32 %71
  %75 = load ptr, ptr %74, align 4
  %76 = load volatile i32, ptr @jiffies, align 64
  %77 = getelementptr i8, ptr %75, i32 88
  %78 = load i64, ptr %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = xor i32 %76, -1
  %81 = add i32 %79, %80
  %82 = icmp sgt i32 %81, -1
  %83 = icmp ne ptr %73, null
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %91, label %85

85:                                               ; preds = %70
  %86 = load volatile ptr, ptr %74, align 4
  %87 = icmp eq ptr %86, %74
  %88 = getelementptr i8, ptr %86, i32 -56
  %89 = icmp eq ptr %88, null
  %90 = or i1 %87, %89
  br i1 %90, label %162, label %91

91:                                               ; preds = %85, %70
  %92 = phi ptr [ %73, %70 ], [ %88, %85 ]
  store i32 %71, ptr %25, align 4
  %93 = getelementptr inbounds %struct.deadline_data, ptr %0, i32 0, i32 2
  store i32 0, ptr %93, align 4
  br label %94

94:                                               ; preds = %91, %30
  %95 = phi i32 [ %32, %30 ], [ 0, %91 ]
  %96 = phi ptr [ %28, %30 ], [ %92, %91 ]
  %97 = getelementptr inbounds %struct.request, ptr %96, i32 0, i32 26
  %98 = load i64, ptr %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = getelementptr inbounds %struct.request, ptr %96, i32 0, i32 3
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, 1
  %103 = getelementptr %struct.deadline_data, ptr %0, i32 0, i32 4, i32 %102
  %104 = load i32, ptr %103, align 4
  %105 = sub i32 %2, %99
  %106 = add i32 %105, %104
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %162, label %108

108:                                              ; preds = %94
  %109 = getelementptr inbounds %struct.deadline_data, ptr %0, i32 0, i32 2
  %110 = add nuw i32 %95, 1
  store i32 %110, ptr %109, align 4
  %111 = load i32, ptr %100, align 4
  %112 = and i32 %111, 1
  %113 = getelementptr inbounds %struct.request, ptr %96, i32 0, i32 24
  %114 = tail call ptr @rb_next(ptr noundef %113) #9
  %115 = icmp eq ptr %114, null
  %116 = getelementptr i8, ptr %114, i32 -116
  %117 = select i1 %115, ptr null, ptr %116
  %118 = getelementptr %struct.dd_per_prio, ptr %1, i32 0, i32 3, i32 %112
  store ptr %117, ptr %118, align 4
  %119 = load ptr, ptr %96, align 8
  %120 = getelementptr inbounds %struct.request, ptr %96, i32 0, i32 12
  %121 = getelementptr inbounds %struct.request, ptr %96, i32 0, i32 12, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = load ptr, ptr %120, align 4
  %124 = getelementptr inbounds %struct.list_head, ptr %123, i32 0, i32 1
  store ptr %122, ptr %124, align 4
  store volatile ptr %123, ptr %122, align 4
  store volatile ptr %120, ptr %120, align 4
  store ptr %120, ptr %121, align 4
  %125 = load i32, ptr %113, align 4
  %126 = ptrtoint ptr %113 to i32
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %144, label %128

128:                                              ; preds = %108
  %129 = load i32, ptr %100, align 4
  %130 = and i32 %129, 1
  %131 = getelementptr %struct.dd_per_prio, ptr %1, i32 0, i32 3, i32 %130
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, %96
  br i1 %133, label %134, label %141

134:                                              ; preds = %128
  %135 = tail call ptr @rb_next(ptr noundef %113) #9
  %136 = icmp eq ptr %135, null
  %137 = getelementptr i8, ptr %135, i32 -116
  %138 = select i1 %136, ptr null, ptr %137
  store ptr %138, ptr %131, align 4
  %139 = load i32, ptr %100, align 4
  %140 = and i32 %139, 1
  br label %141

141:                                              ; preds = %134, %128
  %142 = phi i32 [ %140, %134 ], [ %130, %128 ]
  %143 = getelementptr %struct.dd_per_prio, ptr %1, i32 0, i32 1, i32 %142
  tail call void @elv_rb_del(ptr noundef %143, ptr noundef nonnull %96) #9
  br label %144

144:                                              ; preds = %141, %108
  tail call void @elv_rqhash_del(ptr noundef %119, ptr noundef nonnull %96) #9
  %145 = load ptr, ptr %119, align 8
  %146 = icmp eq ptr %145, %96
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store ptr null, ptr %119, align 8
  br label %148

148:                                              ; preds = %147, %144, %18
  %149 = phi ptr [ %19, %18 ], [ %96, %144 ], [ %96, %147 ]
  %150 = getelementptr inbounds %struct.request, ptr %149, i32 0, i32 19
  %151 = load i16, ptr %150, align 2
  %152 = lshr i16 %151, 13
  %153 = zext i16 %152 to i32
  %154 = getelementptr [4 x i32], ptr @ioprio_class_to_prio, i32 0, i32 %153
  %155 = load i32, ptr %154, align 4
  %156 = getelementptr [3 x %struct.dd_per_prio], ptr %0, i32 0, i32 %155, i32 4, i32 2
  %157 = load i32, ptr %156, align 4
  %158 = add i32 %157, 1
  store i32 %158, ptr %156, align 4
  %159 = getelementptr inbounds %struct.request, ptr %149, i32 0, i32 4
  %160 = load i32, ptr %159, align 8
  %161 = or i32 %160, 2
  store i32 %161, ptr %159, align 8
  br label %162

162:                                              ; preds = %148, %94, %85, %59, %6
  %163 = phi ptr [ %149, %148 ], [ null, %6 ], [ null, %59 ], [ null, %94 ], [ null, %85 ]
  ret ptr %163
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deadline_read_expire_show(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.elevator_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.deadline_data, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @jiffies_to_msecs(i32 noundef %6) #9
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %7) #9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deadline_read_expire_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !22
  %7 = call i32 @kstrtoint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 0, ptr %4, align 4
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi i32 [ %10, %9 ], [ 0, %12 ]
  %15 = call i32 @__msecs_to_jiffies(i32 noundef %14) #9
  %16 = getelementptr inbounds %struct.deadline_data, ptr %6, i32 0, i32 4
  store i32 %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i32 [ %2, %13 ], [ %7, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deadline_write_expire_show(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.elevator_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.deadline_data, ptr %4, i32 0, i32 4, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @jiffies_to_msecs(i32 noundef %6) #9
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %7) #9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deadline_write_expire_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !22
  %7 = call i32 @kstrtoint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 0, ptr %4, align 4
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi i32 [ %10, %9 ], [ 0, %12 ]
  %15 = call i32 @__msecs_to_jiffies(i32 noundef %14) #9
  %16 = getelementptr %struct.deadline_data, ptr %6, i32 0, i32 4, i32 1
  store i32 %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i32 [ %2, %13 ], [ %7, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deadline_writes_starved_show(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.elevator_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.deadline_data, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %6) #9
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deadline_writes_starved_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !22
  %7 = call i32 @kstrtoint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %4, align 4
  %11 = getelementptr inbounds %struct.deadline_data, ptr %6, i32 0, i32 6
  store i32 %10, ptr %11, align 4
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %2, %9 ], [ %7, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deadline_front_merges_show(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.elevator_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.deadline_data, ptr %4, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %6) #9
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deadline_front_merges_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !22
  %7 = call i32 @kstrtoint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %4, align 4
  %11 = icmp sgt i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = getelementptr inbounds %struct.deadline_data, ptr %6, i32 0, i32 7
  store i32 %12, ptr %13, align 4
  br label %14

14:                                               ; preds = %9, %3
  %15 = phi i32 [ %2, %9 ], [ %7, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deadline_async_depth_show(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.elevator_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.deadline_data, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %6) #9
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deadline_async_depth_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !22
  %7 = call i32 @kstrtoint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %4, align 4
  %11 = call i32 @llvm.smax.i32(i32 %10, i32 1)
  %12 = getelementptr inbounds %struct.deadline_data, ptr %6, i32 0, i32 8
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i32 [ %2, %9 ], [ %7, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deadline_fifo_batch_show(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.elevator_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.deadline_data, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %6) #9
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deadline_fifo_batch_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !22
  %7 = call i32 @kstrtoint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %4, align 4
  %11 = call i32 @llvm.smax.i32(i32 %10, i32 0)
  %12 = getelementptr inbounds %struct.deadline_data, ptr %6, i32 0, i32 5
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i32 [ %2, %9 ], [ %7, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deadline_prio_aging_expire_show(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.elevator_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.deadline_data, ptr %4, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @jiffies_to_msecs(i32 noundef %6) #9
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %7) #9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deadline_prio_aging_expire_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !22
  %7 = call i32 @kstrtoint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 0, ptr %4, align 4
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi i32 [ %10, %9 ], [ 0, %12 ]
  %15 = call i32 @__msecs_to_jiffies(i32 noundef %14) #9
  %16 = getelementptr inbounds %struct.deadline_data, ptr %6, i32 0, i32 9
  store i32 %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i32 [ %2, %13 ], [ %7, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deadline_read0_next_rq_show(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dd_per_prio, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @__blk_mq_debugfs_rq_show(ptr noundef %1, ptr noundef nonnull %8) #9
  br label %12

12:                                               ; preds = %10, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deadline_write0_next_rq_show(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.dd_per_prio, ptr %6, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @__blk_mq_debugfs_rq_show(ptr noundef %1, ptr noundef nonnull %8) #9
  br label %12

12:                                               ; preds = %10, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deadline_read1_next_rq_show(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr [3 x %struct.dd_per_prio], ptr %6, i32 0, i32 1, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @__blk_mq_debugfs_rq_show(ptr noundef %1, ptr noundef nonnull %8) #9
  br label %12

12:                                               ; preds = %10, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deadline_write1_next_rq_show(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr [3 x %struct.dd_per_prio], ptr %6, i32 0, i32 1, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @__blk_mq_debugfs_rq_show(ptr noundef %1, ptr noundef nonnull %8) #9
  br label %12

12:                                               ; preds = %10, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deadline_read2_next_rq_show(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr [3 x %struct.dd_per_prio], ptr %6, i32 0, i32 2, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @__blk_mq_debugfs_rq_show(ptr noundef %1, ptr noundef nonnull %8) #9
  br label %12

12:                                               ; preds = %10, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deadline_write2_next_rq_show(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr [3 x %struct.dd_per_prio], ptr %6, i32 0, i32 2, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @__blk_mq_debugfs_rq_show(ptr noundef %1, ptr noundef nonnull %8) #9
  br label %12

12:                                               ; preds = %10, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deadline_batching_show(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.deadline_data, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %8) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deadline_starved_show(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.deadline_data, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %8) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dd_async_depth_show(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.deadline_data, ptr %6, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %8) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dd_owned_by_driver_show(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.deadline_data, ptr %6, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %7) #9
  %8 = getelementptr [3 x %struct.dd_per_prio], ptr %6, i32 0, i32 0, i32 4, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [3 x %struct.dd_per_prio], ptr %6, i32 0, i32 0, i32 4, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %9
  %13 = getelementptr [3 x %struct.dd_per_prio], ptr %6, i32 0, i32 0, i32 4, i32 3
  %14 = load volatile i32, ptr %13, align 4
  %15 = sub i32 %12, %14
  %16 = getelementptr [3 x %struct.dd_per_prio], ptr %6, i32 0, i32 1, i32 4, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr [3 x %struct.dd_per_prio], ptr %6, i32 0, i32 1, i32 4, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %17
  %21 = getelementptr [3 x %struct.dd_per_prio], ptr %6, i32 0, i32 1, i32 4, i32 3
  %22 = load volatile i32, ptr %21, align 4
  %23 = sub i32 %20, %22
  %24 = getelementptr [3 x %struct.dd_per_prio], ptr %6, i32 0, i32 2, i32 4, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr [3 x %struct.dd_per_prio], ptr %6, i32 0, i32 2, i32 4, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  %29 = getelementptr [3 x %struct.dd_per_prio], ptr %6, i32 0, i32 2, i32 4, i32 3
  %30 = load volatile i32, ptr %29, align 4
  %31 = sub i32 %28, %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %32 = load i16, ptr %7, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.35, i32 noundef %15, i32 noundef %23, i32 noundef %31) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dd_queued_show(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.deadline_data, ptr %6, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %7) #9
  %8 = getelementptr [3 x %struct.dd_per_prio], ptr %6, i32 0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [3 x %struct.dd_per_prio], ptr %6, i32 0, i32 0, i32 4, i32 3
  %11 = load volatile i32, ptr %10, align 4
  %12 = sub i32 %9, %11
  %13 = getelementptr [3 x %struct.dd_per_prio], ptr %6, i32 0, i32 1, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr [3 x %struct.dd_per_prio], ptr %6, i32 0, i32 1, i32 4, i32 3
  %16 = load volatile i32, ptr %15, align 4
  %17 = sub i32 %14, %16
  %18 = getelementptr [3 x %struct.dd_per_prio], ptr %6, i32 0, i32 2, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr [3 x %struct.dd_per_prio], ptr %6, i32 0, i32 2, i32 4, i32 3
  %21 = load volatile i32, ptr %20, align 4
  %22 = sub i32 %19, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %23 = load i16, ptr %7, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.35, i32 noundef %12, i32 noundef %17, i32 noundef %22) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @deadline_read0_fifo_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.elevator_queue, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.deadline_data, ptr %8, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %9) #9
  %10 = getelementptr inbounds %struct.dd_per_prio, ptr %8, i32 0, i32 2
  %11 = load i64, ptr %1, align 8
  %12 = tail call ptr @seq_list_start(ptr noundef %10, i64 noundef %11) #9
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @deadline_read0_fifo_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.elevator_queue, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.deadline_data, ptr %8, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %10 = load i16, ptr %9, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @deadline_read0_fifo_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.elevator_queue, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dd_per_prio, ptr %9, i32 0, i32 2
  %11 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef %10, ptr noundef %2) #9
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_debugfs_rq_show(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @deadline_write0_fifo_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.elevator_queue, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.deadline_data, ptr %8, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %9) #9
  %10 = getelementptr %struct.dd_per_prio, ptr %8, i32 0, i32 2, i32 1
  %11 = load i64, ptr %1, align 8
  %12 = tail call ptr @seq_list_start(ptr noundef %10, i64 noundef %11) #9
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @deadline_write0_fifo_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.elevator_queue, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.deadline_data, ptr %8, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %10 = load i16, ptr %9, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @deadline_write0_fifo_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.elevator_queue, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.dd_per_prio, ptr %9, i32 0, i32 2, i32 1
  %11 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef %10, ptr noundef %2) #9
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @deadline_read1_fifo_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.elevator_queue, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.deadline_data, ptr %8, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %9) #9
  %10 = getelementptr [3 x %struct.dd_per_prio], ptr %8, i32 0, i32 1, i32 2
  %11 = load i64, ptr %1, align 8
  %12 = tail call ptr @seq_list_start(ptr noundef %10, i64 noundef %11) #9
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @deadline_read1_fifo_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.elevator_queue, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.deadline_data, ptr %8, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %10 = load i16, ptr %9, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @deadline_read1_fifo_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.elevator_queue, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr [3 x %struct.dd_per_prio], ptr %9, i32 0, i32 1, i32 2
  %11 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef %10, ptr noundef %2) #9
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @deadline_write1_fifo_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.elevator_queue, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.deadline_data, ptr %8, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %9) #9
  %10 = getelementptr [3 x %struct.dd_per_prio], ptr %8, i32 0, i32 1, i32 2, i32 1
  %11 = load i64, ptr %1, align 8
  %12 = tail call ptr @seq_list_start(ptr noundef %10, i64 noundef %11) #9
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @deadline_write1_fifo_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.elevator_queue, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.deadline_data, ptr %8, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %10 = load i16, ptr %9, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @deadline_write1_fifo_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.elevator_queue, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr [3 x %struct.dd_per_prio], ptr %9, i32 0, i32 1, i32 2, i32 1
  %11 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef %10, ptr noundef %2) #9
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @deadline_read2_fifo_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.elevator_queue, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.deadline_data, ptr %8, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %9) #9
  %10 = getelementptr [3 x %struct.dd_per_prio], ptr %8, i32 0, i32 2, i32 2
  %11 = load i64, ptr %1, align 8
  %12 = tail call ptr @seq_list_start(ptr noundef %10, i64 noundef %11) #9
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @deadline_read2_fifo_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.elevator_queue, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.deadline_data, ptr %8, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %10 = load i16, ptr %9, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @deadline_read2_fifo_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.elevator_queue, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr [3 x %struct.dd_per_prio], ptr %9, i32 0, i32 2, i32 2
  %11 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef %10, ptr noundef %2) #9
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @deadline_write2_fifo_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.elevator_queue, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.deadline_data, ptr %8, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %9) #9
  %10 = getelementptr [3 x %struct.dd_per_prio], ptr %8, i32 0, i32 2, i32 2, i32 1
  %11 = load i64, ptr %1, align 8
  %12 = tail call ptr @seq_list_start(ptr noundef %10, i64 noundef %11) #9
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @deadline_write2_fifo_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.elevator_queue, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.deadline_data, ptr %8, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %10 = load i16, ptr %9, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @deadline_write2_fifo_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.elevator_queue, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr [3 x %struct.dd_per_prio], ptr %9, i32 0, i32 2, i32 2, i32 1
  %11 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef %10, ptr noundef %2) #9
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_mq_debugfs_rq_show(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @deadline_dispatch0_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.elevator_queue, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.deadline_data, ptr %8, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %9) #9
  %10 = load i64, ptr %1, align 8
  %11 = tail call ptr @seq_list_start(ptr noundef %8, i64 noundef %10) #9
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @deadline_dispatch0_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.elevator_queue, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.deadline_data, ptr %8, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %10 = load i16, ptr %9, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @deadline_dispatch0_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.elevator_queue, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef %9, ptr noundef %2) #9
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @deadline_dispatch1_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.elevator_queue, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr [3 x %struct.dd_per_prio], ptr %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.deadline_data, ptr %8, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %10) #9
  %11 = load i64, ptr %1, align 8
  %12 = tail call ptr @seq_list_start(ptr noundef %9, i64 noundef %11) #9
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @deadline_dispatch1_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.elevator_queue, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.deadline_data, ptr %8, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %10 = load i16, ptr %9, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @deadline_dispatch1_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.elevator_queue, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr [3 x %struct.dd_per_prio], ptr %9, i32 0, i32 1
  %11 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef %10, ptr noundef %2) #9
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @deadline_dispatch2_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.elevator_queue, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr [3 x %struct.dd_per_prio], ptr %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.deadline_data, ptr %8, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %10) #9
  %11 = load i64, ptr %1, align 8
  %12 = tail call ptr @seq_list_start(ptr noundef %9, i64 noundef %11) #9
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @deadline_dispatch2_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.elevator_queue, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.deadline_data, ptr %8, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %10 = load i16, ptr %9, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @deadline_dispatch2_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.elevator_queue, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr [3 x %struct.dd_per_prio], ptr %9, i32 0, i32 2
  %11 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef %10, ptr noundef %2) #9
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elv_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!9 = !{i64 2149026468}
!10 = !{i64 2149022292}
!11 = !{i64 2149022367, i64 2149022394, i64 2149022441, i64 2149022463, i64 2149022491, i64 2149022511}
!12 = !{i64 2149049471}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2153964550, i64 2153965034, i64 2153964587, i64 2153964643, i64 2153964677, i64 2153964701, i64 2153964742, i64 2153964763, i64 2153964791, i64 2153964825}
!15 = !{i64 440774, i64 2147930745, i64 2147930771, i64 2147930818, i64 2147930840, i64 2147930868, i64 2147930888}
!16 = !{i64 2147942957, i64 2147942983, i64 2147943012, i64 2147943046, i64 2147943077, i64 2147943100}
!17 = !{i64 2153542700}
!18 = !{i64 2153542846}
!19 = !{i64 2148663360}
!20 = !{i64 2153949537, i64 2153950021, i64 2153949574, i64 2153949630, i64 2153949664, i64 2153949688, i64 2153949729, i64 2153949750, i64 2153949778, i64 2153949812}
!21 = !{i64 2153956778, i64 2153957262, i64 2153956815, i64 2153956871, i64 2153956905, i64 2153956929, i64 2153956970, i64 2153956991, i64 2153957019, i64 2153957053}
!22 = !{!"auto-init"}
